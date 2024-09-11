#!/usr/bin/env python
import argparse
import collections

import numpy as np
import six

import chainer
from chainer import cuda
import chainer.functions as F
import chainer.initializers as I
import chainer.links as L
import chainer.optimizers as O
from chainer import reporter
from chainer import training
from chainer.training import extensions


parser = argparse.ArgumentParser()
parser.add_argument('--gpu', '-g', default=-1, type=int,
                    help='GPU ID (negative value indicates CPU)')
parser.add_argument('--unit', '-u', default=200, type=int,
                    help='number of units')
parser.add_argument('--window', '-w', default=10, type=int,
                    help='window size')
parser.add_argument('--batchsize', '-b', type=int, default=1000,
                    help='learning minibatch size')
parser.add_argument('--epoch', '-e', default=20, type=int,
                    help='number of epochs to learn')
parser.add_argument('--model', '-m', choices=['dm', 'dbow', 'dm-dbow'],
                    default='dm',
                    help='model type ("dm", "dbow", "dm-dbow")')
parser.add_argument('--negative-size', default=5, type=int,
                    help='number of negative samples')
parser.add_argument('--out-type', '-o', choices=['hsm', 'ns', 'original'],
                    default='hsm',
                    help='output model type ("hsm": hierarchical softmax, '
                    '"ns": negative sampling, "original": no approximation)')
parser.add_argument('--out', default='result',
                    help='Directory to output the result')
args = parser.parse_args()

if args.gpu >= 0:
    chainer.cuda.get_device_from_id(args.gpu).use()
    cuda.check_cuda_available()

print('GPU: {}'.format(args.gpu),flush=True)
print('# unit: {}'.format(args.unit),flush=True)
print('Window: {}'.format(args.window,flush=True))
print('Minibatch-size: {}'.format(args.batchsize),flush=True)
print('# epoch: {}'.format(args.epoch),flush=True)
print('Training model: {}'.format(args.model),flush=True)
print('Output type: {}'.format(args.out_type),flush=True)
print('')


class DistributedMemory(chainer.Chain):

    def __init__(self, n_vocab, n_docs, n_units, loss_func):
        super(DistributedMemory, self).__init__(
            embed=L.EmbedID(
                n_vocab+n_docs, n_units, initialW=I.Uniform(1. / n_units)),
            loss_func=loss_func,
        )

    def __call__(self, x, doc, context):
        d = self.embed(doc)
        e = self.embed(context)
        h = F.sum(e, axis=1) + d
        h = h * (1. / (context.shape[1] + 1))
        loss = self.loss_func(h, x)
        reporter.report({'loss': loss}, self)
        return loss


class DistributedBoW(chainer.Chain):

    def __init__(self, n_vocab, n_docs, n_units, loss_func):
        super(DistributedBoW, self).__init__(
            embed=L.EmbedID(
                n_vocab+n_docs, n_units, initialW=I.Uniform(1. / n_units)),
            loss_func=loss_func,
        )

    def __call__(self, x, doc, context, train_word=True):
        window = context.shape
        shape = doc.shape
        d = F.broadcast_to(doc[:, None], (shape[0], window[1]))
        d = F.reshape(d, (shape[0] * window[1],))
        e = F.reshape(context, (shape[0] * window[1],))
        d = self.embed(d)
        loss = self.loss_func(d, e)

        if train_word:
            x = F.broadcast_to(x[:, None], (shape[0], window[1]))
            x = F.reshape(x, (shape[0] * window[1],))
            x = self.embed(x)
            loss += self.loss_func(x, e)

        reporter.report({'loss': loss}, self)
        return loss


class DM_DBoW(chainer.Chain):

    def __init__(self, n_vocab, n_docs, n_units, loss_func):
        super(DM_DBoW, self).__init__(
            embed=L.EmbedID(
                n_vocab+n_docs, n_units, initialW=I.Uniform(1. / n_units)),
            loss_func=loss_func,
        )

    def __call__(self, x, doc, context, train_word=True):
        d = self.embed(doc)
        e = self.embed(context)
        h = F.sum(e, axis=1) + d
        h = h * (1. / (context.shape[1] + 1))
        loss = self.loss_func(h, x)

        window = context.shape
        shape = doc.shape
        d = F.broadcast_to(doc[:, None], (shape[0], window[1]))
        d = F.reshape(d, (shape[0] * window[1],))
        e = F.reshape(context, (shape[0] * window[1],))
        d = self.embed(d)
        loss += self.loss_func(d, e)

        if train_word:
            x = F.broadcast_to(x[:, None], (shape[0], window[1]))
            x = F.reshape(x, (shape[0] * window[1],))
            x = self.embed(x)
            loss += self.loss_func(x, e)

        reporter.report({'loss': loss}, self)
        return loss


class SoftmaxCrossEntropyLoss(chainer.Chain):

    def __init__(self, n_in, n_out):
        super(SoftmaxCrossEntropyLoss, self).__init__(
            out=L.Linear(n_in, n_out, initialW=0),
        )

    def __call__(self, x, t):
        return F.softmax_cross_entropy(self.out(x), t)


class WindowIterator(chainer.dataset.Iterator):

    def __init__(self, text, label, window, batch_size, repeat=True):
        self.text = np.array(text, np.int32)
        self.label = np.array(label, np.int32)
        self.window = window
        self.batch_size = batch_size
        self._repeat = repeat

        self.order = np.random.permutation(
            len(text) - window * 2).astype(np.int32)
        self.order += window
        self.current_position = 0
        self.epoch = 0
        self.is_new_epoch = False

    def __next__(self):
        if not self._repeat and self.epoch > 0:
            raise StopIteration

        i = self.current_position
        i_end = i + self.batch_size
        position = self.order[i: i_end]
        w = np.random.randint(self.window - 1) + 1
        offset = np.concatenate([np.arange(-w, 0), np.arange(1, w + 1)])
        pos = position[:, None] + offset[None, :]
        context = self.text.take(pos)
        doc = self.label.take(position)
        center = self.text.take(position)

        if i_end >= len(self.order):
            np.random.shuffle(self.order)
            self.epoch += 1
            self.is_new_epoch = True
            self.current_position = 0
        else:
            self.is_new_epoch = False
            self.current_position = i_end

        return center, doc, context

    @property
    def epoch_detail(self):
        return self.epoch + float(self.current_position) / len(self.order)

    def serialize(self, serializer):
        self.current_position = serializer('current_position',
                                           self.current_position)
        self.epoch = serializer('epoch', self.epoch)
        self.is_new_epoch = serializer('is_new_epoch', self.is_new_epoch)
        if self._order is not None:
            serializer('_order', self._order)


def convert(batch, device):
    center, doc, context = batch
    if device >= 0:
        center = cuda.to_gpu(center)
        doc = cuda.to_gpu(doc)
        context = cuda.to_gpu(context)
    return center, doc, context


if args.gpu >= 0:
    cuda.get_device_from_id(args.gpu).use()

with open('sample_text.txt', 'r', encoding='utf-8') as f:
    text = []
    l_text = []
    vocab = {}
    count = 0
    for item in f:
        item = item.rstrip()
        tmp = item.split(' ')
        l_text.append(len(tmp))
        for word in tmp:
            if word not in vocab:
                vocab[word] = count
                count += 1
        text += [vocab[word] for word in tmp]

with open('sample_title.txt', 'r', encoding='utf-8') as f:
    title = []
    docs = {}
    for doc in f:
        doc = doc.rstrip()
        if doc not in docs:
            docs[doc] = count
            count += 1
        title.append(docs[doc])

len_label = 0
for j in l_text:
    len_label += j
label = np.zeros((len_label,))
cursor_label = 0
for i, j in enumerate(l_text):
    tmp = np.broadcast_to(title[i], (j,))
    label[cursor_label:cursor_label+j] = tmp
    cursor_label += j

index2word = {wid: word for word, wid in six.iteritems(vocab)}
index2doc = {did: doc for doc, did in six.iteritems(docs)}
text = np.asarray(text).astype(np.int32)
label = label.astype(np.int32)

counts = collections.Counter(title)
counts.update(collections.Counter(text))
n_vocab = len(vocab)
n_docs = len(docs)

print('n_vocab: %d' % n_vocab,flush=True)
print('n_docs: %d' % n_docs,flush=True)
print('data length: %d' % len(text),flush=True)

if args.out_type == 'hsm':
    HSM = L.BinaryHierarchicalSoftmax
    tree = HSM.create_huffman_tree(counts)
    loss_func = HSM(args.unit, tree)
    loss_func.W.data[...] = 0
elif args.out_type == 'ns':
    cs = [counts[w] for w in range(len(counts))]
    loss_func = L.NegativeSampling(args.unit, cs, args.negative_size)
    loss_func.W.data[...] = 0
elif args.out_type == 'original':
    loss_func = SoftmaxCrossEntropyLoss(args.unit, n_vocab)
else:
    raise Exception('Unknown output type: {}'.format(args.out_type))

if args.model == 'dbow':
    model = DistributedBoW(n_vocab, n_docs, args.unit, loss_func)
elif args.model == 'dm':
    model = DistributedMemory(n_vocab, n_docs, args.unit, loss_func)
elif args.model == 'dm-dbow':
    model = DM_DBoW(n_vocab, n_docs, args.unit, loss_func)
else:
    raise Exception('Unknown model type: {}'.format(args.model))

if args.gpu >= 0:
    model.to_gpu()


optimizer = O.Adam()
optimizer.setup(model)

train_iter = WindowIterator(text, label, args.window, args.batchsize)
updater = training.StandardUpdater(
    train_iter, optimizer, converter=convert, device=args.gpu)
trainer = training.Trainer(updater, (args.epoch, 'epoch'), out=args.out)
trainer.extend(extensions.LogReport())
trainer.extend(extensions.PrintReport(['epoch', 'main/loss']))
trainer.extend(extensions.ProgressBar())
trainer.run()

with open('word2vec.model', 'w', encoding='utf-8') as f:
    f.write('%d %d\n' % (len(index2word), args.unit))
    w = cuda.to_cpu(model.embed.W.data[:n_vocab])
    for i, wi in enumerate(w):
        v = ','.join(map(str, wi))
        f.write('%s,%s\n' % (index2word[i], v))

with open('doc2vec.model', 'w', encoding='utf-8') as f:
    f.write('%d %d\n' % (len(index2doc), args.unit))
    w = cuda.to_cpu(model.embed.W.data[n_vocab:])
    for i, wi in enumerate(w, start=n_vocab):
        v = ','.join(map(str, wi))
        f.write('%s,%s\n' % (index2doc[i], v))

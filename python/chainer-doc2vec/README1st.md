# chainer-doc2vec
A Chainer implementation of Distributed Representations of Sentences and Documents ([https://arxiv.org/pdf/1405.4053v2.pdf](https://arxiv.org/pdf/1405.4053v2.pdf))

## Requirements
- Python 2.7 or 3.4
- Chainer 1.15.0

## Usage
```
$ python train_doc2vec.py -ti <path/to/title_file> -te <path/to/text_file> -m <model type>
```

There are three model types,
- Distributed Memory (dm)
- Distributed Bag of Words (dbow)
- Distributed Memory & Distributed Bag of Words (dm-dbow)

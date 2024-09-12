@echo off
cls
echo https://github.com/monthly-hack/chainer-doc2vec/tree/master

rem pip install chainer

echo TRAIN: must be patient...if have not more resources like GPU....

python train_doc2vec.py --model dm-dbow |more

pause

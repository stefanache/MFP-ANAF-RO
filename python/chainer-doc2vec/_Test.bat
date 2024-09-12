@echo off
cls
echo https://github.com/monthly-hack/chainer-doc2vec/tree/master

echo TEST: must be patient...if have not more resources like GPU....

python search.py < query.txt |more

pause

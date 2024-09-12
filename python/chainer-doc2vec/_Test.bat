@echo off
cls
echo https://github.com/monthly-hack/chainer-doc2vec/tree/master

echo TEST: do not must be patient...

python search.py < query.txt |more

pause

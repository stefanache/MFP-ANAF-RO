@echo off
cls

echo https://gist.github.com/fullstackwebdev/3a34561a0c1d13db547c4c5f7a14e4b5

echo the server llavafile(LLM=llava1.5, server bazat pe llama.cpp) must be in 'running' state
echo must be patient...

python request_image.py|more
pause
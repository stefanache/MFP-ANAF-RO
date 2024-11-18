@echo off
cls
REM pip install -r requirements.txt

REM echo the following command is only one single from CMD.exe:
REM ollama pull llama2

python test_whisper.py |more

REM python app.py |more
pause
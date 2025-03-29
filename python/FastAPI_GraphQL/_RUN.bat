@echo off
cls

REM python -m pip install fastapi uvicorn | more
REM python -m pip list |more

REM notepad main.py
REM type main.py

start Chrome http://127.0.0.1:8000/
python -m uvicorn main:app --reload
pause

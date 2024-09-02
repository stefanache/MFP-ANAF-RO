@echo off
cls

echo https://github.com/ThomasJay/SpeakLLM/blob/main/app.py

rem pip install -U flask |more 
rem pip install -U langchain_community |more
rem pip install ollama|more
rem pip install -U pyttsx3 |more

rem pip install pyttsx3 flask langchain ollama

set PYTHONUNBUFFERED=1
python app.py |more
pause
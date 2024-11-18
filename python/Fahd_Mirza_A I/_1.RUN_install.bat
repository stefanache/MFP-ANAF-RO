@echo off
cls
echo https://www.youtube.com/watch?v=txflvGG_hIc
echo https://github.com/TheBlewish/Web-LLM-Assistant-Llamacpp-Ollama

REM git clone https://github.com/TheBlewish/Web-LLM-Assistant-Llamacpp-Ollama


cd Web-LLM-Assistant-Llamacpp-Ollama

REM python -m venv venv 


rem echo Linux:source venv/bin/activate
echo Windows activate:
C:\development\python\LLM\Web_LLM_Assistant\Web-LLM-Assistant-Llamacpp-Ollama\venv\Scripts\activate.bat |more
REM pause

REM pip install -r C:\development\python\LLM\Web_LLM_Assistant\Web-LLM-Assistant-Llamacpp-Ollama\requirements.txt |more
REM pause

REM ollama pull gemma2:9b-instruct-q5_K_M
REM ollama list
REM pause

REM explorer %USERPROFILE%\.ollama\models
chcp 65001
echo EXAMPLE-1: /latest news on AI advancements
echo EXAMPLE-2: /github ANAF
echo CTRL-Z ENTER
python Web-LLM.py |more
pause
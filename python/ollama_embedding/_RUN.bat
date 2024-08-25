@echo off
cls
echo https://python.langchain.com/v0.2/docs/integrations/text_embedding/ollama/

rem pip install -qU langchain-ollama |more

rem ollama pull llama3 }more
rem echo OR
rem ollama run llama3 |more
ollama list |more

python app.py|more
pause
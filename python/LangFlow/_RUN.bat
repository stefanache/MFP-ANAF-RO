@echo off
cls

echo https://bytesupreme.online/crafting-no-code-local-rag-chatbots-with-langflow-and-ollama/

rem pip install streamlit
REM pip install langflow
rem pip install langchain-community

echo -dati refresh in browser daca server-ul langflow nu a fost incarcat inca!
start Chrome http://127.0.0.1:7860
langflow run

pause

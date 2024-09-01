@echo off
cls
where ollama

ollama help |more

ollama list |more

curl http://127.0.0.1:11434/|more

echo for linux replace ^^ with \
curl http://127.0.0.1:11434/v1/models 			^
    -H "Content-Type: application/json"

echo https://github.com/ChatGPTNextWeb/ChatGPT-Next-Web/issues/4219
curl http://localhost:11434/api/tags |more
curl http://localhost:11434/api/version|more

echo https://www.soinside.com/question/oDPLVCf6X6XpPaadHF62LN
echo trebuie sa fiti rabdatoari daca resursele computerului dvs sunt modeste...
echo .
echo https://github.com/ollama/ollama/blob/main/docs/api.md?plain=1
echo .

echo -generate response
rem curl http://localhost:11434/api/generate -d @text.txt |more
curl http://localhost:11434/api/generate -d @generate.txt |more

rem curl http://localhost:11434/api/chat -d @chat.txt |more

rem echo -embeddings
rem curl http://localhost:11434/api/embeddings -d @embeddings.txt |more

pause	

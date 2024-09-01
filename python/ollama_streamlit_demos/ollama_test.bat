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
curl http://localhost:11434/api/generate -d @text.txt |more

pause	

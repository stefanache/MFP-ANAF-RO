@echo off
cls
where ollama

ollama help

curl http://127.0.0.1:11434/|more

echo for linux replace ^^ with \
curl http://127.0.0.1:11434/v1/models 			^
    -H "Content-Type: application/json"

pause	

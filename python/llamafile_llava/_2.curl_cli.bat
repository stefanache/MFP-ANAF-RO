@echo off
cls

pip install json

echo https://github.com/Mozilla-Ocho/llamafile

curl http://localhost:8080/v1/chat/completions ^
-H "Content-Type: application/json" ^
-H "Authorization: Bearer no-key" ^
-d @cli_rest_llama_cpp.txt |more

pause

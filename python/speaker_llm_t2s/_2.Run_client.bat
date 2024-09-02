@echo off
cls
where curl
echo https://github.com/ThomasJay/SpeakLLM/blob/main/app.py
echo if you don't have enough resources, you should be much more patient... a coffee can be a good idea in this case...
curl -X POST http://localhost:8080/llm -H "Content-Type: application/json" -d @query.txt
pause
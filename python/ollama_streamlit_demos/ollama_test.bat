@echo off
cls
curl http://127.0.0.1:11434/|more
curl http://localhost:11434/v1/models |more
pause	
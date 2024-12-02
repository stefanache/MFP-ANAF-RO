@echo off
cls
echo trebuie sa aveti setat WebGPU:  chrome://flags/#enable-unsafe-webgpu
start Chrome --user-data-dir="C:\development\python\TransformersJS\dev" http://localhost:8000/index.html
rem pause
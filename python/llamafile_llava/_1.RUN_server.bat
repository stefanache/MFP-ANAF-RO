@echo off
cls
rem ollama rm llame3 |more
rem pip unintall -y ollama |more

echo https://github.com/Mozilla-Ocho/llamafile
echo - dupa descarcarea modelului llamafileva(interpreteaza si imagini), pe wgetindows 10(Pro), trebuie ...
echo ... adaugata extensia .exe,...
echo ... pt a deveni executabil!
rem wget https://huggingface.co/Mozilla/llava-v1.5-7b-llamafile/resolve/main/llava-v1.5-7b-q4.llamafile?download=true |more
rem pause

echo rulam executabilul LLM-ului llava - versiune 1.5
echo nu inchideti fereastra serverului local Llava(oprirea se face cu CTRL+C) ci doar o minimizati

start Chrome http://localhost:8080

.\llava-v1.5-7b-q4.llamafile  --server --nobrowser 

pause
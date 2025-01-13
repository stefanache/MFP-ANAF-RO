@echo off
cls
echo https://www.youtube.com/watch?v=n1vAZJt1tzc&ab_channel=FahdMirza
echo https://github.com/browser-use/browser-use
echo Acest videoclip arată cum să instalați local utilizarea browserului cu Ollama, care este cea mai simplă modalitate de a vă conecta agenții AI cu browserul.

echo instalarea modelului LLM=Qwen2.5 pe serverul de LLM-uri Ollama
echo https://ollama.com/library/qwen2.5:32b-instruct-q4_K_M
echo Modelele Qwen2.5 sunt preantrenate pe cel mai recent set de date la scară largă al Alibaba, cuprinzând până la 18 trilioane de jetoane. Modelul acceptă până la 128.000 de jetoane și are suport multilingv.

REM ollama pull qwen2.5:32b-instruct-q4_K_M
rem  ollama pull llama3.1
REM Ollama list

echo utilizand Windows 11 24H2(W11 24H2 and Ollama - are preinstalled) 
cd C:\development\python\Browser_use_with_Ollama

echo -Utilizand CONDA(preinstalled):
echo Nota: Recomand instalrea manuala pt a vedea efectul fiecarei comenzi in parte

nvidia-smi

rem conda deactivate
rem conda env list
rem conda remove -n ai -y --all
REM conda create -n ai python=3.11 -v -y
conda activate ai

REM pip install asyncio
REM pip install playwright
REM pip install browser-use
REM pip install langchain_ollama

REM playwright install 

echo ... must to be patient...
python app.py
pause

rem conda deactivate
rem pause
rem cls

rem conda remove -n ai -y --all
rem pause
rem cls

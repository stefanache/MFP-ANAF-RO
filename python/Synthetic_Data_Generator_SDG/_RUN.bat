@echo off
cls
echo Construiți seturi de date folosind limbajul natural(NLP)
echo https://www.youtube.com/watch?v=yQy_hSFSyIY
echo https://github.com/argilla-io/synthetic-data-generator

cd C:\development\python\Synthetic_Data_Generator_SDG

rem nvidia-smi | more
rem ollama list |more
rem ollama pull llama3.1
rem pause
rem cls

rem conda deactivate |more
rem conda remove -n ai --all |more


REM conda create - n ai python=3.11 -y 
conda activate ai 
pause
REM pip install synthetic-dataset-generator 

REM git clone https://github.com/argilla-io/synthetic-data-generator.git |more
cd synthetic-data-generator

rem echo inlocuiti {hf_...} cu token-ul dvs creat pt scriere/citire pe site-ul HF
set HF_TOKEN={hf_...}
set BASE_URL=http://localhost:1134
set MODEL=ollama/llama3.1

echo lansez in avans interfata-utilizator GRADIO
echo probabil va trebui sa dati un refresh(Reload) in cazul in care ... nu apare interfata de dialog cu utilizatorul...
start Chrome http://127.0.0.1:7860

python app.py | more

pause
conda deactivate
pause
cls

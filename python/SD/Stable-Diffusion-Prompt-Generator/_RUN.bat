@echo off
cls
echo https://github.com/Kaludii/Stable-Diffusion-Prompt-Generator
cd C:\development\python\LLM\Stable-Diffusion-Prompt-Generator
REM pip install -r requirements.txt
REM pip install streamlit transformers
echo are nevoie de adresa ta de email: 
echo ion.stefanache@yahoo.com
echo primul exemplu din fisierul examples.txt este:
echo The Dusk of the Damned Hamlet
echo https://discuss.huggingface.co/t/setting-pad-token-id-to-eos-token-id-50256-for-open-end-generation/22247/2
echo gpt2_pipe = pipeline('text-generation', model='Gustavosta/MagicPrompt-Stable-Diffusion', tokenizer='gpt2', pad_token_id=50256)
streamlit run app.py |more
pause
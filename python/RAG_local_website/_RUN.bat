@echo off
cls

echo https://anakin.ai/blog/llama-3-rag-locally/

echo IF YOUR COMPUTER HAVE NOT MANY RESOURCES THEN MUST BE MORE PATIENT

echo -introduceti la url:
echo https://anakin.ai/blog/llama-3-rag-locally/
echo -iar ca intrebare puteti avea:
echo despre ce se vorbeste pe scurt in acest tutorial?

set USER_AGENT='my_RAG_agent'
streamlit run app.py |more

pause
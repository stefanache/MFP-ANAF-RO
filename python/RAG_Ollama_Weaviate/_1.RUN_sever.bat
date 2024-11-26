@echo off

cls
echo https://weaviate.io/blog/local-rag-with-ollama-and-weaviate

REM ollama pull llama2
REM ollama pull all-minilm
REM ollama list

REM pip install ollama
REM pip install -U weaviate-client

echo Atentie: nu inchideti fereastra ci doar o minimizati...
echo ........ apoi rulati(o singura data) clientul de ingestie a datelor(_2a.RUN_client_ingest.bat)...ori... 
echo          ... rulati(ori de cate ori doriti) clientul-RAG de valorificare/digestie/utilizare a datelor(_2b.RUN_client_rag.bat)
docker run -p 8080:8080 -p 50051:50051 cr.weaviate.io/semitechnologies/weaviate:1.24.8
pause
Atunci cand implementezi un [**RAG**](https://weaviate.io/blog/local-rag-with-ollama-and-weaviate) local(utilizand pt conversatii cu datele tale. serverul LLM **Ollama**) vei avea nevoie cu siguranta si de o [baza de date vectoriala](https://weaviate.io/blog/local-rag-with-ollama-and-weaviate) unde sa-ti memorezi datele tale private si asta pt a evita rapsunsurile nedorite/halucinante/imprecise. [***Weaviate***](https://www.tyrell.co/2023/12/weaving-path-to-relevance-leveraging.html) poate fi o astfel de **baza de date vectoriala** care permite un acces extrem de rapid la informatiile mele ce permit [RAG](https://ragaboutit.com/graph-rag-vs-vector-rag-a-comprehensive-tutorial-with-code-examples/)-ului construit sa raspunda cu informatii **specifice** si **precise** despre/extrase din zona mea particulara de invatare la care il focusez/aplic/pe care ma concentrez. O instalare [dockerizata](https://docs.docker.com/desktop/setup/install/windows-install/) ar permite gazduirea si rularea locala a  acestui [SGBD](https://ro.wikipedia.org/wiki/Sistem_de_gestiune_a_bazelor_de_date)(serverul bazei de date vectoriale), intr-un mod foarte rapid, doar printr-o singura si simpla comanda shell(cmd.exe):

        docker run -p 8080:8080 -p 50051:50051 cr.weaviate.io/semitechnologies/weaviate:1.24.8

Zona mea particulara/specifica/privata adica **datele primare** de intrare care sunt incarcate/**ingerate** in aceasta baza de date vectoriala(***Weaviate***) pot fi reliefate prin acest mic si simplu exemplu de variabila-tablou python:

        documents = [
          "Llamas are members of the camelid family meaning they're pretty closely related to vicuñas and camels",
          "Llamas were first domesticated and used as pack animals 4,000 to 5,000 years ago in the Peruvian highlands",
          "Llamas can grow as much as 6 feet tall though the average llama between 5 feet 6 inches and 5 feet 9 inches tall",
          "Llamas weigh between 280 and 450 pounds and can carry 25 to 30 percent of their body weight",
          "Llamas are vegetarians and have very efficient digestive systems",
          "Llamas live to be about 20 years old, though some only live for 15 years and others live to be 30 years old",
        ]


   Odata ce ati [incarcat/ingerat](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_2a.RUN_client_ingest.bat) datele in [**VectorDB**](https://medium.com/@hellolasantha/qna-rag-application-using-large-lanaguage-model-llm-langchain-ollama-llama2-vectordb-fbc87d3139f6)(in acest caz: ***Weaviate***), le puteti [utiliza/consuma/digera](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_2b.RUN_client_rag.bat), ori de cate ori doriti, pt conversatia cu RAG-ul dvs.

   Am incercat in acest [proiect](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/RAG_Ollama_Weaviate), pe partea de **client**,  sa separ partea de [***ingestie***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_2a.RUN_client_ingest.bat) de partea de [***digestie***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_2b.RUN_client_rag.bat)(**RAG**-ul propriu zis-deci partea conversationala cu serverul-LLM **Ollama**)

   Asadar partea de ingestie(clientul de incarcare/memorare persistenta a datelor in baza de date vectoriala ***Weaviate***) se efectueaza/ruleaza o singura data, in timp ce partea de digestie/consum/conversatia propriu-zisa(clientul [RAG](https://github.com/HKUDS/LightRAG)) se ruleaza ori de cate ori doriti.
   
   Pe parte de client, aceste 2 parti([***_2a.RUN_client_ingest.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_2a.RUN_client_ingest.bat) si [***_2b.RUN_client_rag.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_2b.RUN_client_rag.bat)), pt rulare, necesita in prealabil ca sa fie startata/rulata(doar minizati fereastra/consola server-ului dar nu o inchideti) partea de [server](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_1.RUN_sever.bat)-dockerizata a SGBD-ului vectorial ***Weaviate***(***_1.RUN_sever.bat***).

   Nu uitati!...in plus, pe parte de client, pentru partea de digestie/[**RAG**](https://www.moveworks.com/us/en/resources/blog/bring-reasoning-to-agentic-rag)([***_2b.RUN_client_rag.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_2b.RUN_client_rag.bat)) trebuie sa aveti startat/pus in functiune si serverul-LLM **Ollama** - care va deservi/oferi modelele preinstalate: [***llama2***](https://ollama.com/blog/run-llama2-uncensored-locally)(modelul conversational LLM) si [***all-minilm***](https://medium.com/@rahultiwari065/unlocking-the-power-of-sentence-embeddings-with-all-minilm-l6-v2-7d6589a5f0aa)(modelul utilizat pt [incorcoprare](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/)/digitizarea textului/transformarea ori conversia text to digits/numbers =i.e= [txt2digits](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/REDUCEREA_dimensionalitatii)) 

   Inainte de toate, tot pe parte de [server](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_Ollama_Weaviate/_1.RUN_sever.bat), trebuie sa instalati si sa puneti in functiune server-ul [**Ollama**](https://github.com/mtayyab2/RAG), ca mai apoi, sa descarcati si instalati cele 2 modele(de care are nevoie acest proiect), utilizand 2 comenzi shell(cmd.exe) succesive:

        ollama pull llama2
        ollama pull all-minilm

Pentru a verifica daca s-au instalat cele 2 [modele](https://www.datacamp.com/tutorial/llama-3-1-rag) sau pentru a verifica daca nu aveti deja instalate cele 2 [modele](https://qwenlm.github.io/blog/qwen2-math/)(cu alta ocazie), veti putea plasa comanda shell(cmd.exe):

        ollama list

   <hr/>
   
   Un alt proiect, legat de **Weaviate**, care prezinta o line de procesare a unui [**RAG *multimodal***](https://github.com/keitazoumana/multimodal-rag-esg)(denumit asa pt ca manipuleaza-in mai ***multe moduri*** datele sau care manevreaza  mai ***multe*** categorii de date: text, imagini, grafice, tabele si date audio) si care este prezentat in acest [video](https://www.youtube.com/watch?v=D5iKsvK7cXg).
      
   Un alt exemplu runtime-***dockerizat*** este acest proiect-***Chat*** [**Ollama** + **LC** + **Streamlit**](https://abvijaykumar.medium.com/ollama-build-a-chatbot-with-langchain-ollama-deploy-on-docker-5dfcfd140363)
 

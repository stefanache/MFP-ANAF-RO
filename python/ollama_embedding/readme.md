[**OllamaEmbeddings**](https://python.langchain.com/v0.2/docs/integrations/text_embedding/ollama/)

Pentru a vedea in mod practic cum se produce ***incapsularea textelor***(provenind/[incarcate](https://python.langchain.com/v0.2/docs/integrations/document_loaders/) din orice sursa/container de informatii **nestructurate**: fisier .txt, continut de pagina web/cloud, fisier .doc[x], fisier .pdf... sau chiar si texte extrase/incarcate din baze de date **structurate** de tip ***relational***, gen *MySQL* sau baze de date ***nerelationale***, gen *NoSQL* ) in **vectori**(vectori care permit ca atunci cand se formuleaza un **raspuns**,  sa se poata efectua **regasirea**/extragerea lor/textelor sau a unor parti din acestea, in cazul in care sunt considerate **relevante**, pt o **intrebare** adresata unui **RAG/Chatbot**), am ales sa implementez micul exemplu oferit de **langchain**(un integrator AI): [**OllamaEmbeddings**](https://python.langchain.com/v0.2/docs/integrations/text_embedding/ollama/)

Trebuie sa priviti aceasta operatiune de ***conversie/transformare/codificare*** ca o parte necesara pt a-i spune **RAG/ML**-ului(care "conduce" masina/PC/Laptop-ul :) care sunt textele lui private/particulare/specifice de care trebuie sa tina cont/seama atunci cand i se va pune o anumita *intrebare* ce se preteaza la un *raspuns*, care necesita inglobarea si deci **regasirea** de parti de text **relevante** care sunt desigur continute in aceste containere/depozite private de informatii/texte .

Acesti **vectori** obtinuti in urma acestui proces de **inglobare/embedding**  pot si si ei la randul lor stocati de catre **RAG/Chatbot**, in baze de date, desigur denumite [**b.d.-vectoriale**](https://python.langchain.com/v0.2/docs/integrations/vectorstores/).

Stocajul in [**baze de date vectoriale**](https://python.langchain.com/v0.2/docs/integrations/vectorstores/) cumva se ***potriveste/are legatura cu*** sau poate fi substituit de/impletit cu  o anumita alternativa de stocaj, deja cunoscuta pt viteza sa ridicata de regasire, si anume este vorba de stocajul de tip [**cheie-valoare**](https://python.langchain.com/v0.2/docs/integrations/stores/), gen [*Redis*](https://appmaster.io/blog/what-is-a-key-value-database-redis), [MongoDB](https://stackoverflow.com/questions/33973945/mongodb-best-way-to-storing-key-value-data), [NoSQL](https://www.influxdata.com/key-value-database/).

In momentul in care sunt necesare(fie pt **formularea unui raspuns relevant**, fie pt. **cautari semantice** sau daca vreti, pt. oricare alt scop de **regasire**), aceste informatii trebuiesc extrase/prelevate/**regasite** de catre [**extractori**](https://python.langchain.com/v0.2/docs/integrations/retrievers/) specifici/specializati.

As vrea sa mai reamintesc ca partea din RAG/Chatbot care este responsabila cu/de dialogul general sau comun este **Modelul LLM**.
Adica **LLM**-ul este cel care primeste **intrebarea** si tot el formuleaza un **raspuns**(fie el mai general sau mai nuantat/specific).

Bineinteles, de multe ori lucrurile nu stau asa cum ne dorim noi sau alteori ne dorim mai mult deci dorim optimizari/imbunatatiri, adaptari... :
 - uneori textele din documente necesita in prealabil sau ulterior extractiei unele transformari si atunci vom apela la [Transformato-ri/are](https://python.langchain.com/v0.2/docs/integrations/document_transformers/)
 - alteori ne dorim ca atunci cand un LLM primeste o anumita intrebare care a mai fost pusa in trecut/anterior(deci o intrebare care se repeta) sa avem deja o scurtatura in timp si sa raspunda cat se poate de rapid daca nu imediat. Pentru aceasta ar trebui sa pastram(undeva) istoria perechilor intrebare-raspuns, in memorie sau intr-un fisier sau chiar intr-o BD, ca sa putem furniza raspunsul in cel mai scurt timp. Astfel putem vorbi de [Cache-uri de model/LLM caching/Model caches](https://python.langchain.com/v0.2/docs/integrations/llm_caching/).
 - unul dintre tipurile comune de baze de date pentru care putem construi sisteme de întrebări și răspunsuri(Q&A) sunt [bazele de date grafice/cu grafuri](https://python.langchain.com/v0.2/docs/integrations/graphs/)/[graf-urile](https://python.langchain.com/v0.1/docs/use_cases/graph/). LangChain vine cu o serie de lanțuri și agenți încorporați care sunt compatibile cu dialectele limbajului de interogare grafică precum Cypher, SparQL și altele (de  exemplu, Neo4j, MemGraph, Amazon Neptune, Kùzu, OntoText, Tigergraph). Acestea permit cazuri de utilizare precum:
 
    - Generarea de interogări(SQL) care vor fi executate pe baza întrebărilor(Q) în limbaj natural,
    - Crearea de chatbot care pot răspunde la întrebări(Q) pe baza datelor bazei de date; ex.MySQL( adica putem "vorbi/discuta/dialoga" cu baza noastra privata de date),
    - Crearea de tablouri de bord(dashboard) personalizate bazate pe informații pe care un utilizator dorește să le analizeze, si ...
    - ...multe altele.

Construirea sistemelor de întrebări și răspunsuri(Q&A) ale [bazelor de date grafice](https://en.wikipedia.org/wiki/Graph_database) poate necesita executarea interogărilor de baze de date generate de model. Există riscuri inerente în a face acest lucru. Asigurați-vă că permisiunile de conexiune la baza de date sunt întotdeauna cât mai restrânse posibil pentru nevoile lanțului/agentului. Acest lucru va atenua, dar nu va elimina riscurile construirii unui sistem bazat pe modele. 

 - un alt concept interesant este [**Memory**](https://python.langchain.com/v0.2/docs/integrations/memory/) / [**Memory in Langchain**](https://python.langchain.com/v0.1/docs/modules/memory/adding_memory/) / [**Memory management**](https://python.langchain.com/v0.1/docs/modules/memory/)

In cele ce urmeaza , vom numi „**memorie**”, capacitatea de a stoca informații despre interacțiunile trecute(*menținerea/reținerea informațiilor despre entități și relațiile lor*).

 - [re-apeluri](https://python.langchain.com/v0.1/docs/modules/callbacks/)/[callbacks](https://python.langchain.com/v0.2/docs/integrations/callbacks/)

LangChain oferă un sistem de [apeluri inverse](https://medium.com/@shrinath.suresh/implementing-streaming-chatbot-with-langchain-callbacks-a-step-by-step-guide-a527a7d65b8b)(re-apeluri) care vă permite să vă conectați la diferitele etape ale aplicației dvs. LLM. 

Acest lucru este util pentru înregistrare, monitorizare, streaming și alte sarcini. Aceste integrări sunt pentru încorporate pentru apeluri inverse cu instrumente terțe.

 - [chat-incarcatorii](https://python.langchain.com/v0.2/api_reference/community/chat_loaders.html) / [chat-loaders](https://python.langchain.com/v0.2/docs/integrations/chat_loaders/) / [**incarcatorii de documente / documents-loaders**](https://python.langchain.com/v0.2/docs/integrations/document_loaders/)

    - [**Chat-Loaders**](https://python.langchain.com/v0.2/docs/integrations/chat_loaders/) încarcă mesaje de chat de pe diverse platformele de comunicații comune, cum ar fi *Facebook Messenger*, *Telegram* și *WhatsApp*.
   Mesajele de chat încărcate pot fi folosite pentru [**reglarea fină**](https://www.datacamp.com/tutorial/llama3-fine-tuning-locally) a modelelor LLM.

    - [**Document-Loaders**](https://python.langchain.com/v0.2/docs/integrations/document_loaders/) încarcă datele în formatul standard LangChain Document.
   
 - [adaptorii/adapters](https://python.langchain.com/v0.2/docs/integrations/adapters/)

Chiar daca necesita [GPU](https://github.com/OpenGVLab/LLaMA-Adapter/blob/main/docs/langchain_LLaMA_AdapterV2_demo.ipynb), un articol intitulat ["Utilizați adaptorul LoRA Unsloth cu Ollama în 3 pași / Use Unsloth LoRA Adapter with Ollama in 3 Steps"](https://sarinsuriyakoon.medium.com/unsloth-lora-with-ollama-lightweight-solution-to-full-cycle-llm-development-edadb6d9e0f0) poate fi un bun inceput in lucrul cu [**adaptori**](https://www.reddit.com/r/LocalLLaMA/comments/1dyjh6m/ollama_adapters/)

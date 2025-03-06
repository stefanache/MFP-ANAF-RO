
Pentru a putea avea instalat local un server [Ollama](https://github.com/ollama/ollama/blob/main/docs/faq.md) care furnizeaza modele [LLM](https://ollama.com/library)(ex. Llama3,phi,...medllama2,...)

puteti accesa site-ul [ollama](https://ollama.com/download/windows)



Pt a testa daca serverul [Ollama](https://abvijaykumar.medium.com/ollama-brings-runtime-to-serve-llms-everywhere-8a23b6f6a1b4)este in functiune/ruleaza/este "up" aveti 2 posibilitati:
 - daca aveti instalat **curl** atunci cda:

   C:\> **curl localhost:11434**
   
 - sau puteti deschide direct in browser(Chrome) si tasta adresa:
   
   **http://localhost:11434**

Daca nu spune ca "Ollama is running" puteti sa porniti server-ul fara nici-un model incarcat din cmd.exe:
   
   C:\> **ollama serve**

ori

   C:\> **ollama run llama3**

Daca este in functiune("up") atunci ar trebuie sa-l gasiti in bara de task-uri a sistemului de operar(ex. Windows 10 Pro)
   
Pt a instala modelul LLM=llama3 utilizat in continuare puteti folosi cda cmd.exe: 

 C:\> **ollama run llama3**

Pentru a vedea ce modele(LLM-uri sunt incarcate puteti folosi in fereastra cmd.exe:

 C:\> **ollama list**

Pentru a sterge un model avem spre exemplu in cmd.exe:

 C:> **ollama rm medllama2**

<hr/>

Pentru ***MySQL server*** am instalat **XAMPP** si am startat/pornit webserver-ul ***Apache*** si server-ul ***MySQL***

Apasand butonul **Admin** din dreptul **MySQL-server**(***phpMyAdmin***) am creat baza de date **rag_test** pe care am populat-o cu tabele si inregistrari, copiind 
continutul fisierului ***rag_test.sql*** in fereastra **SQL** aferenta bazei de date(**rag_test**).

In final apoi am executat continutul **SQL**(***rag_test.sql***) apasand butonul **GO**.


Daca aveti un calculator cu resurse generoase(nu neaparat GPU) puteti "dialoga" cu BD MySQL adica veti putea pune intrebari in limbaj natural, sa zicem spre exemplu despre facturi(**invoice**)

<hr/>

UN [RAG](https://python.langchain.com/v0.2/docs/tutorials/rag/) poate dialoga cu tot felul de [resuse multiple](https://christophergs.com/blog/ai-engineering-retrieval-augmented-generation-rag-llama-index) **structurate**(baze de date,csv,xml,...) sau **nestructurate**(pdf,docx,text) localizate in fisiere,SGBD-uri sau chiar pe website-uri(URL/URI-uri gen blog,website de prezentare)

[**Langchain**](https://python.langchain.com/v0.2/docs/introduction/) este un framework deci un complex de librarii care permit integrarea LLM-urilor obtinute din diverse surse/cai.

Alt proiect interesant este si acest [RAG](https://www.fahdmirza.com/2024/05/free-local-rag-pipeline-step-by-step.html)



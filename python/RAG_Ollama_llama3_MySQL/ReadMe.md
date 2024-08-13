
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


Pentru ***MySQL server*** am instalat **XAMPP** si am startat/pornit webserver-ul ***Apache*** si server-ul ***MySQL***

Cu ***phpMyAdmin*** am creat baza de date **rag_test** pe care am populat-o cu tabele si inregistrari, copiind 

continutul fisierului ***rag_test.sql*** in fereastra **SQL** aferenta bazei de date.


Pentru a putea avea instalat local un server Ollama care furnizeaza modele LLM(ex. Llama3,phi,...medllama2,...)

puteti accesa site-ul [ollama](https://ollama.com/download/windows)

Pt a testa daca serverul este in functiune aveti 2 posibilitati:
 - daca aveti instalat curl atunci cda:
   C:> curl localhost:11434
 - sau puteti deschide direct in browser(Chrome) si tasta adresa:
   http://localhost:11434

Daca nu spune ca "Ollama is running" puteti sa porniti server-ul fara nici-un model incarcat din cmd.exe:
   C:> ollama seeve

ori
   C:> ollama run llama3
   
Pt a instala modelul LLM=llama3 utilizat in continuare puteti folosi cda cmd.exe: 

C:> ollama run llama3

Pentru a vedea ce modele(LLM-uri sunt incarcate puteti folosi in fereastra cmd.exe:
   C:> ollama list

Pentru a sterge un model avem spre exemplu in cmd.exe:
   C:> ollama rm medllama2

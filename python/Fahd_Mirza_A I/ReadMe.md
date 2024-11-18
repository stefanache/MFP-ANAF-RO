Va propun sa urmariti seria de episoade Youtube elaborate de [Fahd Mirza](https://www.youtube.com/results?search_query=Fahd+Mirza+AI)

Mi-a atras in mod atentia acest proiect [Web LLM Assistant](https://www.youtube.com/watch?v=txflvGG_hIc); 

In fisierul batch [**_1.RUN_install**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/Fahd_Mirza_A%20I/_1.RUN_install.bat) veti gasi comentate(instructiunile prefixate cu ***REM***) instructiunile pentru instalare(care sunt necesare doar o singura data la momentul instalrii) cat si instructiunele active pt rulare(*Nota*: in procesul de instalare se va crea un director al aplicatiei denumit ***Web-LLM-Assistant-Llamacpp-Ollama***). Acest exemplu permite interogarea/cautarea web, gen ***Google***, prefixand... cererea  de interogare tastata la prompt-ul modelului conversational/de chatting(**gemma2:9b-instruct-q5_K_M**), oferit de server-ul local(preinstalat) **Ollama**, ...cu semnul/simbolul **/**); In interiorul directorului aplicatiei(***Web-LLM-Assistant-Llamacpp-Ollama***) veti gasi un fisier **requirements.txt**(*Nota*: care contine dependenta de librariile: **llama-cpp-python**, duckduck, go_search, colorama, requests, beautifulsoup4, trafilatura, readchar);

Eu am avut urmatorul context-software(**SW**) de instalare si rulare:

- Windows 10 Pro
- git(utilitarul preinstatlat si utilizat pt descarcarea/download-area depozitului github al aplicatiei-exemplu)
- python 3.10.0 (cu environment/mediu vrtual specific: "venv", pt instalarea dependentelor: librariilor de care depinde aplicatia)

Ca si context hardware(**HW**), pe PC-ul meu(**i7**, **32GB GDDR4 RAM** si **1TB SSD**) am avut la dispozitie un GPU modest(**Geforce RTX 4060**)
  

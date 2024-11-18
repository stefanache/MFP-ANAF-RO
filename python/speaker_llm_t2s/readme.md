
Am plecat de la idea de a crea un simplu **speaker-LLM** si am gasit acest [depozit](https://github.com/ThomasJay/SpeakLLM/blob/main/app.py)

Totusi studiind codul am vazut ca ar fi nevoie de o api-key... lucru care nu mi-a suras deloc.

Asa ca am apelat din nou la asistenta [ChatGPT](https://chatgpt.com/c/e5162420-9644-4178-a470-c22fffdbf952)-ului)

Pentru partea de conversie **text2sound** a intrarii preluate, am folosit **pyttsx3** iar ca (web)server-REST am pastrat [**Flask**](https://en.wikipedia.org/wiki/Flask_(web_framework))-ul.

Cum era de asteptat, trebuie mai [intai](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/speaker_llm_t2s/_1.Run_server.bat) rulat (web)serverul-bazat pe [**Flask**](https://en.wikipedia.org/wiki/Flask_(web_framework))(fereastra server-ului nu trebuie inchisa ci doar minimizata...pt ca el trebuie sa ramana in functiune!) si [apoi](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/speaker_llm_t2s/_2.Run_client.bat) desigur, in paralel,  trebuie rulat clientul(bazat pe **cURL**).

Daca doriti, cele 2 ferestre CLI/shell(cmd.exe) ale **server**-ului si a **client**-ului pot fi *re-dimensionate* si afisate in *paralel* dar niciuna nu trebuie inchisa ... inainte de a auzi mesajul de raspuns(adica pana nu se incheie procesarea intrebarii de catre **LLM**-ul [**llama3**/**Ollama**](https://medium.com/@manuelescobar-dev/running-llama-3-locally-with-ollama-9881706df7ac))


Clientul acceseaza un endpoint-Flask(***http://localhost:8080/llm***) folosind **cURL**(care desigur trebuie instalat in prealabil!) si va trimite un mesaj/o intrebare catre (web)server-ul(**Flask**)

[**Flask**](https://en.wikipedia.org/wiki/Flask_(web_framework))-ul(care asculta pe portul **8080**, folosind **REST** ca protocol), de indata ce primeste mesajul(intrebarea), il(o) reda ***vocal***, ca mai apoi sa-l(o) transmita **chatbot**-ului(format din clientul [*pythonic*](https://github.com/dylanhogg/awesome-python) **Ollama** si serverul [**Ollama**](https://emmakodes.medium.com/how-to-run-llama-3-1-locally-in-python-using-ollama-langchain-331c9984a4b5), acesta din urma, (de)servind/furnizand local ***LLM***-ul [**llama3**](https://medium.com/@manuelescobar-dev/running-llama-3-locally-with-ollama-9881706df7ac))

**Chatbot**-ul(***app.py***) elaboreaza raspunsul-textual/iesirea iar mai apoi, **server**-ul il reda si pe acesta ***vocal/audio***(efectuand aceiasi conversie ***text-to-sound/voice*** a.k.a **tts** sau **t2s**)

**Server**-ul(***app.py***) ar cam trebui [**optimizat**](https://github.com/dylanhogg/awesome-python) dar pt. inceput, acest cod poate fi un bun punct de plecare!

**Nota:**

Operatiunea inversa **speach-to-text**(**stt**/**s2t**) poate fi asigurata prin implementarea proiectului [***speaker LLLM t2s***](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/speaker_llm_t2s/local-talking-llm)

In acest sens poate fi util si un alt proiect [***voice bot stt***](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/voice_bot_stt)


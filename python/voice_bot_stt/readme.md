
Ideea acestui [**tutorial**](https://github.com/iamaziz/llm-voice-bot) mi-a suras, insa pt mine, codul original nu a functionat(din prima!!!) ....
asa ca am apelat la ... de acum, bine-cunoscutul [**ChatGPT**](https://chatgpt.com/c/b69c44f2-836b-43f0-b696-c83ed413f290)

Asadar, in aceasta pagina este vorba despre un **VoiceBot** cu care puteti "*vorbi*"(cumva la propriu... :) si deci pune intrebarile dorite. 

Acest **bot** transforma vocea/sunetul/intrarea in text(**stt** sau **s2t**) si apoi, inarmat cu textul intrebarii rostite anterior, urmeaza cursul firesc al oricarui [***chatbot***](https://emmakodes.medium.com/how-to-run-llama-3-1-locally-in-python-using-ollama-langchain-331c9984a4b5).

Pentru a rula acest **Voicebot**, va trebui sa faceti *dublu-click* pe fisierul **_RUN.bat**, care va rula ***streamlit***.

**Streamlit**-ul la randul sau, va face sa apara o fereastra de/in browser(in cazul meu browser-ul implicit este **MS Edge**) **GUI**, in care trebuie sa *click*-ati butonul **RecordVoice**, iar dupa ce apare mesajul ***listening....***, puteti rosti(desigur vocal) o intrebare(in limba pe care ati selectat-o in prealabil).

Intrebarea rostita(desigur **vocal**) ar trebui sa fie tradusa ca si ***text***(spre ex. in acest caz: ***who was Napoleon***),  inainte de a fi transmisa ***LLM***-ului(in acest caz [**llama3**](https://medium.com/@manuelescobar-dev/running-llama-3-locally-with-ollama-9881706df7ac)), (de)servit/oferit de catre server-ul local [**Ollama**](https://medium.com/@manuelescobar-dev/running-llama-3-locally-with-ollama-9881706df7ac).

In final, modelul **llama3**, beneficiind de/avand textul **intrebarii(Q)** si fiind pre-antrenat in arta dialogului, va elabora un **raspuns(A)** cat mai adecvat(speram noi...!); Raspunsul va fi afisat in consola-GUI a browser-ului dvs.(daca doriti, puteti adauga rostirea textului-raspuns/iesirea folosind o biblioteca de conversie ***text2sound(t2s/tts)***, gen [**pyttsx3**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/speaker_llm_t2s)!)

<details><summary>Iata dialogul:</summary>
  
<hr/>


  <h2><b>Voice Bot with LLaMA 3</b></h2>
  
  Select Language: **en-US**

  <button style="color:blue;background-color:cyan;"><h5>RecordVoice</h5></button>
  
  *Listening...*
  
  Recognized: **who was Napoleon**
  
  Question: ***who was Napoleon***
  
  Response: <i>Napoleon Bonaparte (1769-1821) was a French military and political leader who rose to prominence during the late 18th century and early 19th century. He is considered one of the most influential figures in modern history, known for his military conquests, administrative reforms, and lasting impact on European politics.
  
  Early Life and Career:
  
  Napoleon was born in Ajaccio, Corsica (then a French colony), to Carlo Buonaparte and Letizia Ramolino. His family was of Italian descent and had connections to the French aristocracy. Napoleon studied at the École Militaire in Paris and later attended the École Polytechnique.
  
  In 1796, Napoleon married Joséphine Beauharnais, and they had one son, Napoléon II (1811-1832). He quickly rose through the ranks of the French military during the French Revolution, becoming a brigadier general at age 26. His military successes earned him recognition and admiration from the French people.
  
  Rise to Power:
  
  In 1799, Napoleon overthrew the Directory, the ruling council of France, and established the Consulate, with himself as First Consul. He centralized power, reformed education, administration, and finance, and expanded the country's borders through military conquests.
  
  Napoleon reorganized Europe, creating a system of alliances and diplomacy that lasted for centuries. His military campaigns led to the creation of the Napoleonic Code, a set of civil laws that emphasized equality before the law, the separation of powers, and individual rights.
  
  Empire and Downfall:
  
  In 1804, Napoleon declared himself Emperor of France, marking the beginning of the French Empire. He reorganized Europe into a system of client states, with France at its center. His military campaigns led to the creation of new territories, such as the Confederation of the Rhine (a loose alliance of German states) and the Italian Republic.
  
  However, Napoleon's aggressive expansion and military defeats in Russia (1812) and Spain (1813-1814) weakened his power. The Sixth Coalition, an alliance of European powers, eventually defeated him at the Battle of Leipzig in 1813 and again at Waterloo in 1815.
  
  Exile and Legacy:
  
  Napoleon was exiled to the island of Elba, Italy, where he remained for a brief period before escaping and briefly regaining power in France (Hundred Days). He was ultimately defeated and exiled again, this time to the remote island of Saint Helena, where he died in 1821.
  
  Despite his defeat, Napoleon's legacy has endured. He is remembered as a brilliant military strategist, a skilled politician, and a visionary leader who transformed Europe and left a lasting impact on modern history.</i>



<hr/>

</details>

<br/>


**Nota**:

O paralela/comparatie intre aceasta operatie de **transcriere** / **ASR**(***Automatic Speech Recognition***, ***speech recognition*** sau [***STT*** ori ***S2T***](https://www.google.com/search?q=asr+vs+stt&rlz=1C1CHBF_enRO1132RO1132&oq=asr+vs+stt&gs_lcrp=EgZjaHJvbWUqCQgAEAAYExiABDIJCAAQABgTGIAEMgoIARAAGIAEGKIEMgoIAhAAGIAEGKIEMgoIAxAAGIAEGKIEMgoIBBAAGIAEGKIEMgoIBRAAGIAEGKIE0gEKMTk3OTBqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8)) si/vs. ***TTS sau T2S*** poate fi utila pentru unii dintre voi(in acest sens puteti consulta [Google](https://www.google.com/search?q=asr+vs.+tts+stt&rlz=1C1CHBF_enRO1132RO1132&oq=asr+vs.+tts+stt&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQIRigATIHCAIQIRigATIHCAMQIRigATIHCAQQIRiPAjIHCAUQIRiPAtIBCjE0MjMwajBqMTWoAgiwAgE&sourceid=chrome&ie=UTF-8))

Operatia/Functia inversa, **text-to-speach/voice** poate fi implementata urmarind proiectul [***speaker LLM t2s***](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/speaker_llm_t2s)

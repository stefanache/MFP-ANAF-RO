
Uneori o sa vreti sa construiți seturi de date folosind limbajul natural(NLP). Datele sintetice sunt informații generate artificial care imită datele din lumea reală. Astfel, acest lucru ne permite depășirea limitărilor privind datele prin extinderea sau îmbunătățirea seturilor de date.

In ajutorul dumneavoastra vine acest caz de utilizare/show-case care se refera la [proiectul](https://github.com/argilla-io/synthetic-data-generator) prezentat de domnul ***Fahd-Mirza***: [Synthetic Data Generator(**SDG**)](https://www.youtube.com/watch?v=yQy_hSFSyIY)

Synthetic Data Generator este un instrument care vă permite să creați seturi de date de înaltă calitate pentru antrenament și reglare fină a modelelor de limbaj. Acesta valorifică(fiind utilizat in fundal) puterea [**disti-etichetatorului**](https://distilabel.argilla.io/latest/) și a LLM-urilor pentru a genera date sintetice adaptate nevoilor dumneavoastră specifice. 

In afara de acest [**distilabel**](https://distilabel.argilla.io/latest/), in fundal, acest proiect se mai bazeaza si pe  [**API-ul gratuit de generare de text Hugging Face**](https://huggingface.co/docs/api-inference/en/index), dar nu trebuie să ne facem griji cu privire la aceste complexități ci trebuie doar sa concentram pe utilizarea interfeței de utilizare.

 [Blogul HF care-l anunța](https://huggingface.co/blog/synthetic-data-generator) trece in revista un exemplu practic de utilizare, dar puteți, de asemenea, să urmăriți [video-clipul](https://www.youtube.com/watch?v=nXjVtnGeEss) pentru a-l vedea în acțiune.

 Sarcini acceptate:

 - Clasificarea textului
 - Date de chat pentru reglaj fin supravegheat

Acest instrument simplifică procesul de creare a seturilor de date personalizate, permițându-vă să:

 - Descrieți caracteristicile aplicației dorite
 - Iterați pe seturi de date eșantion
 - Produceți seturi de date la scară completă
 - Împingeți seturile de date către [Hugging Face Hub](https://huggingface.co/datasets?other=datacraft) și/sau [Argilla](https://docs.argilla.io/)

Folosind Generatorul de date sintetice, puteți crea rapid prototipuri și crea seturi de date pentru a vă accelera procesul de dezvoltare AI.

Asa cum v-am obisnuit, toate comenzile de care aveti nevoie le regasiti in fisierul _RUN.bat(va recomand sa deschindeti ***Command prompt(cmd.exe)*** si sa  executati manual, aceste comenzi, rand pe rand, pentru a putea vedea efectul fiecareia in parte!!!)

Cea mai bună parte a acestui proces simplu este ca, pas cu pas, putem sa cream, setul de date de o maniera usoara si non-tehnică, permițând oricui să creeze seturi de date și modele în câteva minute și asta fără niciun cod.

In acest proiect avem nevoie si vom folosi server-ul de LLM-uri : **Ollama**. Acesta ne va oferi(ne va deservi) ca si LLM, modelul **Llama3.1**.<br/>
In acest context vom folosi partea de generare de seturi de date, care ne vor fi necesare pt sarcina de **Clasificare de text**.<br/>
Dupa operatia de **Sign-In**, ca si descriere pt setul de date pe care veti dori sa-l generati putweti apela la unul dintre exemplele oferite:
  - *A dataset covering customer reviews for an e-commerce website.*
 <br/>ori...<br/>
  - *A dataset covering news articles about various topics.*

Desigur puteti concepe si alte descrieri in functie de task-ul dumneavoastra.

De asemenea va recomand sa vizualizati [video-clipul](https://www.youtube.com/watch?v=nXjVtnGeEss) pus la dispozitie pt a vedea cum trebuie sa utilizati intefata-utilizator(**gradio**)


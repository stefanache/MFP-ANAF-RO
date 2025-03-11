Salut,

Mi-a atras in mod deosebit acest [**mozilla.org**: *articol*](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API) astfel incat am decis sa deschid acest nou post intitulat ["***Broadcast Channel API***"](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API).

Api-ul permite comunicarea(chatting-ul) intre fisiere-locale *.html* aflate local pe acelasi PC/desktop/tableta/dispozitive-mobile.

 - ***API-ul Broadcast Channel***

API -ul Broadcast Channel permite comunicarea de bază între [contexte de navigare](https://developer.mozilla.org/en-US/docs/Glossary/Browsing_context) (adică ferestre , file , cadre sau iframes ) și lucrători(workers) de pe aceeași [origine](https://developer.mozilla.org/en-US/docs/Glossary/Origin).

***Notă***: 
<br/>Pentru a fi mai exact, comunicarea este permisă între contextele de navigare folosind aceeași [partiție de stocare](https://developer.mozilla.org/en-US/docs/Web/Privacy/Guides/State_Partitioning). 
<br/>Spațiul de stocare este mai întâi împărțit în funcție de site-urile de nivel superior, deci, de exemplu, dacă aveți o pagină deschisă **a.com** care încorporează un iframe din **b.com**, și o altă pagină deschisă către **b.com**, atunci iframe-ul nu poate comunica cu a doua pagină, deși din punct de vedere tehnic sunt de aceeași origine. <br/>Cu toate acestea, dacă prima pagină este și pe **b.com**, atunci iframe-ul poate comunica cu a doua pagină.

Prin crearea unui [***BroadcastChannelobiect***](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel), puteți primi orice mesaje postate pe acesta. 
<br/>Nu trebuie să mențineți o referință la cadrele(frames) sau lucrătorii(workers) cu care doriți să comunicați: aceștia se pot „abona” la un anumit canal construindu-și propriul canal [***BroadcastChannel***](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel) cu același nume și au o comunicare
bidirecțională între toți.

<br/><a href="https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API" width="95%" height="auto"><img src="https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API/broadcastchannel.png">BroadcastChannel<img></a><br/>

 - ***Interfață Broadcast Channel***

   - **Crearea sau alăturarea unui(atasarea/alipirea/conectarea la un) canal**
     <br/>Un client se alătură unui canal de difuzare creând un [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel) obiect.
     <br/>[Constructorul](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/BroadcastChannel) său preia un singur parametru: numele canalului(ex: "*test_channel*").
     <br/>Dacă acest cod-JS este primul care se conectează la acel nume("*test_channel*") de canal de difuzare, canalul de bază este creat(in acest caz: *bc*).
     <br/><code>// Connection to a broadcast channel
const bc = new BroadcastChannel("test_channel");</code><br/>

   - **Trimiterea unui mesaj**
     <br/>Este suficient să apelați metoda [postMessage()](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/postMessage) pe obiectul creat [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/BroadcastChannel), care ia ca argument orice obiect.
     <br/>Un exemplu de mesaj șir:
     <br/><code>// Example of sending of a very simple message
bc.postMessage("This is a test message.");</code><br/>

   - **Primirea unui mesaj**
   - **Deconectarea unui canal**

 - ***Concluzie***
 - ***Interfete***
   - ***Specificatii***
 - **Caietul de sarcini**
 - ***Compatibilitate browser***
 - ***Vezi de asemenea***

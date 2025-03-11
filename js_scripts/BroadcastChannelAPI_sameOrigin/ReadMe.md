Salut,

Mi-a atras in mod deosebit un [**mozilla.org** - *developer* - Web API: *articol*](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API) astfel incat am decis sa deschid acest nou post intitulat ["***Broadcast Channel API***"](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API).

Api-ul permite comunicarea(chatting-ul) intre fisiere-locale *.html*(care poate include desigur portiuni de cod/snippet JS) aflate local pe ace[l]asi PC/desktop/tableta/dispozitive-mobile.
<br>Acest api/protocol seamana foarte mult cu/implementeaza protocolul(client-server) **MQTT**(sau cu protocolul(client-server) ***WebSocket*** care sta la baza **MQTT**), doar ca totul(protocolul client-server) se petrece pe acelasi device(PC/desktop/tabela/mobil) deci pe aceiasi(*same*) origine(*origin*).
<br/>Noutatea consta in faptul ca, dezvoltatorul nu trebuie/nu este necesar sa se preocupe de implementarea si/sau folosirea unui server anume sau de anumite operatii neintuitive, precum serializarea datelor in vederea transportului, operatiuni care sunt ascunse acestuia(utilizatorului/dezvoltatorului), care in mare masura este/se va preocupa[t] doar de utilizarea/fructificarea acestui mecanism(ascuns), permitandu-i acestuia sa se poata concentra mai mult asupra aplicatiei/proiectului sale/sau pe care doreste sa-l finalizeze/proiecteze/dezvolte.

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
     <br/><br/><code>// Connection to a broadcast channel
const bc = new BroadcastChannel("test_channel");</code><br/>
     <br/>Primul snippet-JS care executa instructiunea de mai sus va *crea*(in mod automat) canalul si se si va *atasa*(in mod automat) la acesta iar urmatoarele snippet-uri care ruleaza fix aceiasi instructiune, doar(fara a mai crea unul cu acelasi nume:"*test_channel*") se vor *atasa*(efectiv) la acest canal(*bc*) anterior/deja creat/existent.
     <br/>Cu alte cuvinte aceiasi linie-de-cod(*const bc = new BroadcastChannel("test_channel");*), mai intai/initial *creaza* si *ataseaza* iar apoi cand, ori de cate ori(repetitiv), o utilizezi(din nou/repetitiv), fix in aceiasi forma/linie de cod(*const bc = new BroadcastChannel("test_channel");*), doar *ataseaza* html-ul respectiv.<br/><br/>
   - **Trimiterea unui mesaj**
     <br/>Este suficient să apelați metoda [postMessage()](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/postMessage) pe obiectul creat [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/BroadcastChannel), care ia ca argument orice obiect.
     <br/>Un exemplu de mesaj șir:
     <br/><br/><code>// Example of sending of a very simple message
bc.postMessage("This is a test message.");</code><br/>
<br/>Datele trimise către canal sunt serializate folosind [algoritmul de clonare structurată](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm).
<br/>Aceasta înseamnă că puteți trimite o mare varietate de obiecte de date în siguranță, fără a fi nevoie să le serializați singur.<br/>
<br/>API-ul nu asociază nicio semantică mesajelor, așa că depinde de cod să știe la ce fel de mesaje să se aștepte și ce să facă cu ele.

   - **Primirea unui mesaj**
     <br/>Când un mesaj este postat, un eveniment [message](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/message_event)  este trimis fiecărui obiect [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel)  conectat la acest canal(*bc*).
     <br/>O funcție poate fi rulată pentru acest eveniment folosind handler-ul(manipulatorul)  de evenimente intitulat [onmessage](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/message_event):
     <br/><br/><code>// A handler that only logs the event to the console:
bc.onmessage = (event) => {
                            console.log(event);
                          };</code><br/>br/>
<br/>*Nota*: <br/>dupa cum se poate lesne/usor observa acest handler cand primeste un eveniment(event) acesta il/se afiseaza(efectueaza/face un *log*/se *logs*) in consola(console) browser-ului.<br/>
   - **Deconectarea unui canal**

 - ***Concluzie***
 - ***Interfete***
   - ***Specificatii***
 - **Caietul de sarcini**
 - ***Compatibilitate browser***
 - ***Vezi de asemenea***

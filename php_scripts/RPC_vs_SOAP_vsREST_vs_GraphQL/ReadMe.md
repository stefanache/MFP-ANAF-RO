
Va propun spre lectura acest [articol](https://www.altexsoft.com/blog/soap-vs-rest-vs-graphql-vs-rpc/), unde veti intalni o comparatie intre toate aceste protocoale:
 - RPC
 - SOAP
 - REST
 - GraphQL

Două aplicații separate au nevoie de un intermediar pentru a vorbi între ele. 
<br/>Deci, dezvoltatorii construiesc adesea punți(bridges) - [Interfețe de programare a aplicațiilor](https://www.altexsoft.com/blog/engineering/what-is-api-definition-types-specifications-documentation/) - 
pentru a permite unui sistem să acceseze informațiile sau funcționalitățile altuia.

Pentru a integra aplicațiile rapid și la scară, API-urile sunt realizate folosind protocoale și/sau specificații 
pentru a defini semantica și sintaxa mesajelor transmise prin cablu. 
<br/>Aceste specificații alcătuiesc arhitectura API.

De-a lungul timpului, au fost lansate diferite stiluri arhitecturale API. 
<br/>Fiecare dintre ele are propriile modele de standardizare a schimbului de date. 
<br/>O atracție de alegeri ridică dezbateri nesfârșite cu privire la stilul arhitectural care este cel mai bun.

Astăzi, mulți consumatori de API se referă la REST ca „ ODIHNEȘTE în pace ” și încurajează GraphQL, 
în timp ce acum zece ani era o poveste inversă, cu REST ca câștigător pentru a înlocui SOAP. 
<br/>Problema cu aceste opinii este că ele aleg o tehnologie în sine, în loc să ia în considerare modul în care proprietățile și caracteristicile sale reale
se potrivesc cu situația în cauză(cazul de utilizare).

În acest articol, vom incerca sa rămânem obiectivi și vom discuta cele patru stiluri API majore în ordinea aspectului lor, vom compara laturile lor puternice și cele slabe și vom evidenția scenariile în care fiecare dintre ele se potrivește cel mai bine.

...restul va las pe voi sa descoperiti argumentele pro si contra...lectura placuta!

***PS***:In subdirectorul **restapi** veti gasi un [exemplu de api](https://dev.to/devabdul/building-a-rest-api-with-php-mysql-using-xampp-3i9p) PhP-REST care consuma date din MySQL.
<br/>Pentru a avea PhP si MySQL am folosit [XAMPP](https://www.apachefriends.org/ro/download.html)(instalat cu **xampp-windows-x64-8.2.12-0-VS16-installer**) iar pentru a testa api-ul REST am folosit binecunoscutul [POSTMAN](https://www.postman.com/downloads/)(instalat cu **Postman-win64-Setup**).
<br/>Am ales pt formatul datelor vehiculate intre PostMAN si XAMPP/PhP, formatul **JSON**.

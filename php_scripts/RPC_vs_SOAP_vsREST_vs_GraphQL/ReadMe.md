
Va propun spre lectura acest [articol](https://www.altexsoft.com/blog/soap-vs-rest-vs-graphql-vs-rpc/), unde veti intalni o comparatie intre toate aceste protocoale:
 - RPC
 - SOAP
 - REST
 - GraphQL

Două aplicații(fiecare cu API-ul său propriu) separate au nevoie de un intermediar pentru a vorbi/discuta/comunica între ele. 
<br/>Deci, dezvoltatorii construiesc adesea punți(bridges) - [Interfețe de programare a aplicațiilor](https://www.altexsoft.com/blog/engineering/what-is-api-definition-types-specifications-documentation/) - 
pentru a permite unui sistem să acceseze informațiile sau funcționalitățile altuia.

Pentru a integra aplicațiile rapid și la scară, API-urile sunt realizate folosind protocoale și/sau specificații 
pentru a defini semantica și sintaxa mesajelor(transmise prin cablu). 
<br/>Aceste specificații alcătuiesc arhitectura-API.

De-a lungul timpului, au fost lansate diferite stiluri arhitecturale-API. 
<br/>Fiecare dintre ele are propriile modele de standardizare a schimbului de date. 
<br/>O atracție de alegeri ridică dezbateri nesfârșite cu privire la stilul arhitectural care este cel mai bun.

Astăzi, mulți consumatori de API se referă la ***REST*** ca „ ODIHNEȘTE în pace ” și încurajează **GraphQL**, 
în timp ce, acum zece ani, era o poveste inversă, cu **REST** ca si câștigător pentru a înlocui ***SOAP***. 
<br/>Problema cu aceste opinii este că acestea aleg o tehnologie în sine, <ins>în loc să ...</ins> ia în considerare modul în care, proprietățile și caracteristicile sale reale, se potrivesc cu situația în cauză(cazul specific de utilizare).

În acest articol, autorul a incercat sa rămână obiectiv și a pus in discutie cele patru stiluri API majore în ordinea aspectului lor.
Vor fi comparate laturile lor puternice și cele slabe și vor fi om evidențiate scenariile în care, fiecare dintre ele/acestea se potrivește cel mai bine.

...restul, va las pe voi sa descoperiti argumentele Pro si Contra...lectura placuta!

***PS***:

 - In subdirectorul [**restapi**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/RPC_vs_SOAP_vsREST_vs_GraphQL/restapi) veti gasi un [exemplu de api](https://dev.to/devabdul/building-a-rest-api-with-php-mysql-using-xampp-3i9p) PhP-REST care consuma date din MySQL.
<br/>Pentru a avea **PhP*( si eventual ***MySQL***, dar nu neaparat!) am folosit [**XAMPP**](https://www.apachefriends.org/ro/download.html)(instalat cu **xampp-windows-x64-8.2.12-0-VS16-installer**) iar pentru a testa(in calitate de client), ***api-ul REST***, am folosit binecunoscutul [**POSTMAN**](https://www.postman.com/downloads/)(instalat cu **Postman-win64-Setup**).
<br/>Am ales, pt formatul datelor vehiculate, intre PostMAN si [XAMPP](https://www.apachefriends.org/)/PhP, formatul ***JSON***.
<br/>De retinut  este si faptul ca, puteti instala, fara a folosi [***XAMPP***](https://www.apachefriends.org/), **PhP**-ul stand-alone/de sine statator, si eventual(daca aveti nevoie), tot asa de sine statator, puteti instala  **MySQL**-server.
Tot ce am discutat aici poate fi instalat si rulat ***direct*** pe PC/Laptop-ul dvs sau/ori puteti folosi instalarea si rularea pe/in docker(***dockerizata***) daca doriti/pentru a face api-ul *agnostic*(*independent*/sa nu depinda...) de sistemul-de-operare-gazda(adica sa folositi ce SO doriti voi pt acest api).

 - pt un [**GraphQL-server**(PhP-CLI)](https://github.com/mchojrin/GraphQL-PHP) as recomanda, pentru inceput, acest [exemplu](https://adevait.com/php/creating-graphql-server-with-php).
Pentru vehicularea datelor(incorporate in aplicatie-pentru simplificarea gestionarii acestora de catre aplicatie) se foloseste ***SDL***,un format/limbaj(propriu-GraphQL) de formatare a datelor(similar cu ***JSON***).
<br/>Un alt exemplu-dockerizat de **GraphQL**, il puteti gasi si intr-unul din [posturile](https://medium.com/swlh/setting-up-graphql-with-php-9baba3f21501), oferite gratie de publicatia online **Medium**. Si [exemplele](https://webonyx.github.io/graphql-php/data-fetching/) pot continua...

- pt protocolul **RPC**( PhP-CLI, in paradigma: server-client) puteti incarca acest [exemplu-PhP](https://github.com/rambler-digital-solutions/php-json-rpc)

- pt protocolul **SOAP** puteti incepe cu aceasta [clasa-client](https://www.php.net/manual/en/class.soapclient.php), impreuna cu perechea sa, [clasa-server](https://www.php.net/manual/en/class.soapserver.php).
  <br/>Desigur mai sunt si alte exemple-SOAP cum este si acest [gist:CLI+SVR](https://gist.github.com/umidjons/f3de2533c51495a9c557)...

***Nota***: de altfel, pt ultimele 2 protocoale(**SOAP** si **RPC**), recomandarea mea r fi sa lecturati, din manualul-PhP  - sectiunea: "[**PhP Web-Services**](https://www.php.net/manual/en/refs.webservice.php)"

Aici am discutat despre utilizarea protocoalelor din PhP(Web/CLI) dar problema se poate analiza, exact in acelasi mod, si pentru alte limbaje de programare(Perl, Python, JS/NodeJS, Go, C#/.Net, Rust, LISP,...si lista poate continua!)


Va propun spre lectura acest [articol](https://www.altexsoft.com/blog/soap-vs-rest-vs-graphql-vs-rpc/), unde veti intalni o [comparatie](https://dev.to/andreidascalu/soap-vs-rest-vs-grpc-vs-graphql-1ib6) intre toate aceste [protocoale](https://dev.to/atifwattoo/fastapi-vs-flask-key-differences-and-use-cases-4fce) de paradigma client(CLI)-server(SVR):
 - [RPC](https://pecl.php.net/package/xmlrpc) / [gRPC](https://grpc.io/docs/languages/php/basics/)
 - [SOAP](https://www.geeksforgeeks.org/how-to-install-php-soap-extension/)
 - [REST](https://www.geeksforgeeks.org/building-a-rest-api-with-php-and-mysql/)
 - [GraphQL](https://github.com/ricardoalcocer/php_graphql)

Două aplicații(fiecare cu API-ul său propriu) separate au nevoie de un intermediar pentru a vorbi/discuta/comunica între ele. 
<br/>Deci, dezvoltatorii construiesc adesea punți(bridges) - [Interfețe de programare a aplicațiilor](https://www.altexsoft.com/blog/engineering/what-is-api-definition-types-specifications-documentation/) - 
pentru a permite unui sistem să acceseze informațiile sau funcționalitățile altuia.

Pentru a integra aplicațiile rapid și la scară, API-urile sunt realizate folosind protocoale și/sau specificații 
pentru a defini semantica și sintaxa mesajelor(transmise prin/pe cablu...deci la distanta). 
<br/>Aceste specificații alcătuiesc arhitectura-API.

De-a lungul timpului, au fost lansate diferite stiluri arhitecturale-API. 
<br/>Fiecare dintre ele are propriile modele de standardizare a schimbului de date. 
<br/>O atracție de alegeri ridică dezbateri nesfârșite cu privire la stilul arhitectural care este cel mai bun.

Astăzi, mulți consumatori de API se referă la [***REST***](https://medium.com/@dharshithasrimal/php-rest-api-7441197312d7) ca „ ODIHNEASCA-SE în Pace ” și încurajează [**GraphQL**](https://graphql.org/community/tools-and-libraries/), 
în timp ce, acum zece ani, era o poveste inversă, cu [**REST**](https://developer.okta.com/blog/2019/03/08/simple-rest-api-php) ca si câștigător pentru a înlocui [***SOAP***](https://reintech.io/blog/php-soap-library-web-service-development). 
<br/>Problema cu aceste opinii este că acestea aleg o tehnologie în sine, <ins>în loc să ...</ins> ia în considerare modul în care, proprietățile și caracteristicile sale reale, se potrivesc cu situația în cauză(cazul specific de utilizare).

În acest articol, autorul a incercat sa rămână obiectiv și a pus in discuție cele patru stiluri API majore în ordinea aspectului lor.
Vor fi comparate laturile lor puternice și cele slabe și vor fi om evidențiate scenariile în care, fiecare dintre ele/acestea se potrivește cel mai bine.

...restul, vă las pe voi, sa descoperiți, argumentele **Pro** si ***Contra***...lectură placută!

***PS***:

 - In subdirectorul [**restapi**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/RPC_vs_SOAP_vsREST_vs_GraphQL/restapi) veți găsi un [exemplu de api](https://dev.to/devabdul/building-a-rest-api-with-php-mysql-using-xampp-3i9p) PhP-REST care consuma date din MySQL.
<br/>Pentru a avea **PhP*( si eventual ***MySQL***, dar nu neapărat!) am folosit [**XAMPP**](https://www.apachefriends.org/ro/download.html)(instalat cu **xampp-windows-x64-8.2.12-0-VS16-installer**) iar pentru a testa(in calitate de client), ***api-ul REST***, am folosit binecunoscutul [**POSTMAN**](https://www.postman.com/downloads/)(instalat cu **Postman-win64-Setup**).
<br/>Am ales, pt formatul datelor vehiculate, intre **PostMan** si [**PhP/XAMPP**](https://www.apachefriends.org/), formatul ***JSON***.
<br/>De reținut  este si faptul ca, puteti instala, fără a folosi [***XAMPP***](https://www.apachefriends.org/), **PhP**-ul stand-alone/de sine statator, si eventual(daca aveti nevoie), tot asa de sine stătător, puteți instala  **MySQL**-*server*.
Tot ce am discutat aici(in acest articol), poate fi instalat si rulat ***direct*** pe PC/Laptop-ul dvs sau/ori puteți folosi instalarea si rularea pe/in docker(***dockerizata***), dacă doriti/pentru a face api-ul *agnostic*(*independent*/sa nu depindă...) de... sistemul-de-operare-gazda(adică să folositi ce SO doriti voi pt acest api; in plus de cele mai multe ori gasiti pe Docker-HUB, tot ce va trebuie, de-a gata, adica aveti deja produsukll de care aveti nevoie deja instalat si in acest caz scapati si de metoda/modul de instalare).

 - pt un [**GraphQL-server**(PhP-CLI)](https://github.com/mchojrin/GraphQL-PHP) as recomanda, pentru inceput, acest [exemplu](https://adevait.com/php/creating-graphql-server-with-php).
Pentru vehicularea datelor(incorporate in [aplicație](https://reintech.io/blog/php-graphql-building-consuming-apis)-pentru simplificarea gestionării acestora de către [aplicație](https://www.surfsidemedia.in/post/implementing-a-graphql-api-in-php-advanced-techniques)) se foloseste ***SDL***,un format/limbaj(propriu-[GraphQL](https://github.com/jmaxwilson/php-graphql-server)) de formatare a datelor(similar cu ***JSON***).
<br/>Un alt exemplu-dockerizat de [**GraphQL**](https://www.couchbase.com/blog/create-graphql-api-php-nosql/), poate găsit intr-unul din [posturile](https://medium.com/swlh/setting-up-graphql-with-php-9baba3f21501), oferite grație publicației-online [**Medium**](https://medium.com/@jha.ameet/building-apis-with-php-a-guide-to-rest-and-graphql-6d341adae097).
<br/> Si, astfel, [*exemplele*](https://webonyx.github.io/graphql-php/data-fetching/) [**GraphQL**](https://compatt.medium.com/spatial-data-api-with-graphql-php-and-mysql-a48e8b89d4e1) pot [continua](https://github.com/mghoneimy/php-graphql-oqm)...

- pt protocolul [**RPC**](https://pecl.php.net/package/xmlrpc)( in/de paradigmă: [*server(SVR-PhP-CLI)*-*client(CLI)*](https://reintech.io/blog/beginners-guide-php-xml-rpc-library)) puteți incarca acest [exemplu-PhP](https://github.com/rambler-digital-solutions/php-json-rpc).

- pt protocolul [**SOAP**](https://www.youtube.com/watch?v=Cl4puOAk6vk&ab_channel=jinujawadm) puteți incepe cu această [**clasă-client**](https://www.php.net/manual/en/class.soapclient.php), impreună cu perechea sa, [**clasa-server**](https://www.php.net/manual/en/class.soapserver.php).
  <br/>[**SOAP**](https://techtechinfo.com/how-to-call-soap-api-in-php-and-postman/) ramane, ca varianta principala, utilizata in cazul vehicularii de date sensibile(facturi,chitante,...date din zona financiar-contabila), datorita protectiei/securitatii oferite de catre acest protocol.
  <br/>Desigur mai sunt si multe alte exemple-[**SOAP**](https://www.php.net/manual/en/book.soap.php)... cum este si... acest [gist:CLI+SVR](https://gist.github.com/umidjons/f3de2533c51495a9c557)...

***Notă***: de altfel, pt ultimele 2 protocoale([**SOAP**](https://deltastateonline.github.io/soap.tutorial/) si [**RPC**](https://www.php.net/manual/en/book.xmlrpc.php)), recomandarea mea ar fi să lecturați, din manualul-PhP  - sectiunea: "[**PhP Web-Services**](https://www.php.net/manual/en/refs.webservice.php)"

Aici, am ales sa discutăm, despre utilizarea protocoalelor din/utilizand **PhP**(Web/CLI), dar aceasta analiză, dar exact in acelasi mod, se poate extinde/extrapola si pentru alte/celelalte limbaje de programare(Perl, [Python](https://dev.to/atifwattoo/fastapi-vs-flask-key-differences-and-use-cases-4fce), JS & NodeJS, Go, C++, C#/.Net, Objectiv-C, Java, Kotlin, Ruby, Dart, Rust, LISP, Prolog, ...si lista poate continua!)...

La final, s-auzim numa' de la... *[**exceptional**](https://the-guild.dev/blog/graphql-over-websockets) in **sus**!

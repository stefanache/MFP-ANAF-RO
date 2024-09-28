  Am cautat un [***proiect-release***](https://github.com/mevdschee/php-crud-api/tree/main) (sau un [**proiect-showcase**](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api)... evident mai sunt si [alte](https://github.com/topics/php-crud-api) referinte ... sa nu uitam nici de proiectele-derivate/<a href="https://github.com/mevdschee/php-crud-api/forks?page=1">fork</a>) care sa aiba ca facilitati cateva lucruri:
- sa fie un **api**(pe parte de server/backend)de preferat pt o baza de date de tip **SQL**(si care sa permita pt tabelele sale operatii de tip [**CRUD**](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete)); Sistemul de BD va fi desigur privit ca un intermediar/middleware intre api-ul nostru(expus de catre un alt intermediar si anume webserver-ul pt care optati) si utilizator/client(accesat prin browser,din shell utilizand <a href="https://www.baeldung.com/curl-rest">cURL</a>...); Din aceasta perspectiva api-ul **PhP** va functiona la fel ca un **server de aplicatie**.
- sa fie bine securizata(de preferat sa permita autentificare cu <a href="https://reintech.io/blog/implementing-jwt-authentication-php-applications">**token JWT**</a>,...si sa permita un mecanism de autorizare pe partea de operationalizare a resurselor accesate)
- si sa permita un access de tip modern <a href="">REST</a> sau macar/cel putin REST-like(chiar daca mi-as fi dorit/de preferat ar fi fost sa permita utilizarea limbajului de date [**GraphQL**](https://medium.com/swlh/setting-up-graphql-with-php-9baba3f21501))
- sa fie un produs software [free/opensource](https://free-for.dev/#/)

Am [gasit](https://graphql.org/community/tools-and-libraries/) un astfel de [proiect-REST](https://github.com/dbohdan/automatic-api)(chiar daca nu este GraphQL), pe github, intitulat [**PHP-CRUD-API**](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api) si va recomand sa-l [descarcati](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api)  iar apoi sa-l testati(sub ***Windows***, pt b.d. ***MySQL***, probabil ca ati putea folosi cel mai recent [***XAMPP***](https://www.apachefriends.org/download.html))

Desigur trebuie inceput prin a intelege cat mai bine [ReadMe](https://github.com/codemage66/PHP-CRUD-API/blob/main/README.md)-ul [proiectului](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api), 
asa ca in acest [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API), am rearanjat acest document si am incercat o traducere/parafrazare cat mai precisa/succinta/arborescent-structurata, care sper eu o sa permita/ajute la o mai buna intelegere/analiza.

Ca orice document care legifereaza(avand daca vreti, titlu/scop de <b>"lege"</b>) si acest <b>ReadMe.md</b> se refera/descrie(ca de obicei, de altfel ca orice "lege") la/un set de  reguli cu titlu de  <b>obligativitate</b> ori cu titlu de <b>interzicere</b>.
Chiar daca uneori vom vorbi de <b>optiuni</b>(unde <i>obligativitatea</i> si <i>interzicerea</i> par a nu avea/face sens) trebuie stiut faptul ca si acestea se vor <b>supune</b> unor reguli/legi contextuale(sintactice,morfologice si semantice).

<details><summary><h1>PHP-CRUD-API - ReadMe.md</h1></summary>
<br/><hr/>
  Acest proiect poate fi lansat accesand un singur script(<b><a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/api.php">api.php</a></b>).
  Acest principal-fisier, adauga un set de functii CRUD-API <a href="https://www.triguntech.com/blogdetails.php?name=Create-REST-API-using-PHP-and-MYSQL">REST</a> la tabelele unei b.d. <b>SQL</b>(MySQL/MariaDB,PostgreSQL,SQL-Server 
  sau chiar SQLite).
  Desigur, pt a fi rulat, trebuie mai intai sa fie incarcat pe webserver-ul nostru, ca mai apoi sa asiguram conectarea la b.d. SQL, 
  iar in final sa beneficiem de acel set complet de functii CRUD-API accesibile via <a href="https://www.webslesson.info/2018/05/how-to-make-simple-crud-rest-api-in-php-with-mysql.html">REST</a>.<br/><br/>
  
  <i>NotaBene</i>(NB): Acest proiect-php este implementarea de referinta a unui alt proiect simplu(dar eficient) github-php, si anume,  <a href="https://treeql.org/"><b>TreeQL</b></a>(care opereaza <a href="https://github.com/mevdschee/php-crud-api/blob/main/extras/core.php">REST-like</a> pt operatii online/web CRUD cu o B.D. MySQL)

<details><summary><h2><small>Cerinte, Instalare, Configurare, Limite, Caracteristici, Proiecte&PortariConexe si ...<br/>...Compilare + Dezvoltare + Actualizare-Dependente</small></h2></summary>
  <br/><hr/>
  <details><summary><h2>Cerinte</h2></summary>
  <br/><hr/>
     - <b>PHP 7.2</b> sau o versiune ulterioară(eu am testat pe PHP 8.3.7) cu drivere <a href="https://medium.com/@pyk_ouo/php-pdo-basic-database-crud-93dced2bc3d"><i>PDO</i></a> <a href="https://www.php.net/manual/en/pdo.drivers.php">activate</a>(sub <a href="https://www.php.net/manual/en/pdo.installation.php"><b>Windows</b></a>, asa cum am si eu, in <b>php.ini</b> trebuie sa aveti ceva de genul ; <b>extension_dir="{C|D}:\xampp\php\ext"</b> ... <b>extension=php_pdo_mysql.dll</b>  de/necomentat; pt Windows driver-ele <a href="https://www.php.net/manual/en/pdo.drivers.php">PhP/XAMPP</a> de forma  *.dll plasate ca extensie in <b>php.ini</b>, trebuie sa existe/fie deja descarcate in directorul {C:|D}:<b>\xampp\php\ext</b>) pentru <b>unul</b> dintre aceste sisteme de baze de date SQL:<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <a href="https://dev.mysql.com/doc/relnotes/mysql/5.7/en/"><b>MySQL 5.7</b></a> / <a href="https://mariadb.org/mariadb-10-0-36-now-available/"><b>MariaDB 10.0</b></a> sau o versiune ulterioară pentru caracteristici/date spațiale în MySQL<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <a href="https://www.postgresql.org/download/windows/"><b>PostgreSQL 9.5</b></a> sau o versiune ulterioară cu <a href="https://www.postgresonline.com/journal/archives/358-PostGIS-2.2.0-windows-bundle-for-PostgreSQL-9.5beta2-32-and-64-bit.html"><i>PostGIS 2.2</i></a> sau o versiune ulterioară pentru caracteristici spațiale<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <a href="https://www.microsoft.com/en-us/sql-server/sql-server-2017"><b>SQL-Server-2017</b></a> sau o versiune ulterioară (<a href="https://www.microsoft.com/en-us/sql-server/sql-server-2019">SQL-Server-2019</a> are și suport pentru Linux)<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <a href="https://www.sqlite.org/releaselog/3_16_0.html"><b>SQLite 3.16</b></a> sau o versiune ulterioară (funcțiile spațiale <i>NU</i> sunt acceptate)<br/>   
  <hr/><br/>
  </details>
  <details><summary><h2>Instalare</h2></summary>
  <br/><hr/>
   Descarcati(download-ati) fisierul "<b><a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.php">api.php</a></b>" din ultima versiune: <b>https://github.com/mevdschee/php-crud-api/releases/latest</b> ,<br/>
   sau direct din : <b>https://raw.githubusercontent.com/mevdschee/php-crud-api/main/api.php</b>

   Aceasta este o aplicație cu un/intr-un  singur fișier("<b>api.php</b>")! Încarcă [„api.php”](https://github.com/codemage66/PHP-CRUD-API/blob/main/api.php) undeva(pt <a href="https://www.apachefriends.org/faq_windows.html">XAMPP</a>, fișierul "<b>api.php</b>" se salveaza/incarca in directorul C:\xampp\htdocs\PHP-CRUD-API\, caz in care se va apela cu o adresa din/de browser de forma/exemplu: <b>http://localhost:8080/PHP-CRUD-API/api.php/records/posts/1</b> ) și apoi bucură-te de rulare!

   Pentru dezvoltarea locală, fara a folosi un webserver/cadru specializat(cum este <a href="https://www.php.net/manual/en/install.pecl.windows.php">XAMPP</a>), puteți rula serverul-web/webserverul încorporat al lui PHP:
   
      php -S localhost:8080
   
   Testați scriptul deschizând in browserl dvs(ex. Chrome) următoarea adresă URL:

      http://localhost:8080/api.php/records/posts/1
      
   Nu uitați să modificați <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#configurare">configurația/continutul-json</a> din partea de jos a fișierului(<a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/api.php">api.php</a>), care se refera la managementul conexiunii la/catre sistemul de persistenta / sistemul bazei de date SQL utilizat.

   Alternativ, puteți integra acest proiect în cadrul webserver-ului ales de dvs., impreuna(si din nou la alegere: Laravel,Symfony sau Slim) cu unul dintre cadrele de dezvoltare de mai jos.Pentru aceasta integrare de "framework" consultati tutorialele de mai jos:
   
   - [API-ul REST automat pentru Laravel](https://tqdev.com/2019-automatic-rest-api-laravel)
   - [API-ul REST automat pentru Symfony 4](https://tqdev.com/2019-automatic-rest-api-symfony)
   - [API-ul REST automat pentru SlimPHP 4](https://tqdev.com/2019-automatic-api-slimphp-4)

  Chiar daca tutorialele prezinta comenzi Linux, totusi acestea pot fi usor adaptate pt un sistem de operare Windows.<br/>
  În toate aceste integrări, este folosit [Composer](https://getcomposer.org/), pentru a încărca acest proiect ca o dependența.<br/>
  Pentru persoanele care nu folosesc Composer ca builder/instalator a fost furnizat fisierul ["api.include.php"](https://github.com/codemage66/PHP-CRUD-API/blob/main/api.include.php)<br/>
  Acest fișier conține totul din fisierul [„api.php”](https://github.com/codemage66/PHP-CRUD-API/blob/main/api.php), cu excepția configurației de la [„src/index.php”](https://github.com/codemage66/PHP-CRUD-API/blob/main/src/index.php) și poate fi folosit de funcția [„include”](https://www.php.net/manual/en/function.include.php) a PHP-ului.<br/>

  Insa, inainte de toate trebuie 
  
  - creata baza de date( in **MySQL** in cazul meu; numele b.d. este [***php_crud_api_db***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/php_crud_api_db.sql)), 
  - apoi, trebuie modificat in api.php( trebuie verificate configurarea b.d...cititi cu atentie capitolul urmator intitulat [***Configurare***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#configurare)) si 
  - in final trebuie rulat batch-ul(creat de mine) [**_RUN.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/_RUN.bat)(consultati si/cu **phpinfo()** din <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/index.php"><b><i>index.php</i></b></a>, sa vedeti daca suportul **PDO**,din ***php.ini*** este activat?!).

Linia de comanda **composer install** din [**_RUN.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/_RUN.bat) va instala toate librariile/**dependentele** de care depinde acest api intr-un director denumit **vendor**

[**Composer**](https://programam.ro/posts/view/ce-este-composer) va citi fisierul [***composer.json/composer.phare***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/composer.json) pentru a stii ca anume **dependente(librarii,tools-uri...)** trebuiesc instalate pt acest **PHP-CRUD-API**.

In acest fisier de configurare, [***composer.json/composer.phare***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/composer.json), veti vedea/intalni/observa ca aveti niste **keywords** / [**cuvinte-cheie**](https://www.invata-programare.ro/index.php/article/discutii-despre-composerjson-si-composerlock);

Desi aceste "keywords/tags/labels/topics", sunt doar niste meta-informatii(au caracter pur informal, ele-neavand un rol activ in instalare) totusi veti putea afla ce suport ofera sau daca vreti nuanteaza suportul instalarii, oferind informatii utile despre/cum ar fi sistemele de baze de date suportate(in cazul meu **MySQL**) sau daca ofera suport online de documentare/autoprezentare pt/oferit de <a href="https://apidog.com/blog/use-swagger-php-to-create-swagger-documentation/">swagger</a>, openapi, s.a.m.d.

Sau daca vreti, intr-un sens mai larg, sau d.p.d.v conceptual, aceste cuvinte pot sa va focuseze atentia ori sa va duca cu gandul la/catre anumite subiecte/teorii/standarde-cheie care au legatura cu acest proiect...( a se urmari si sectiunea de [**Configurare**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#configurare))

  <hr/><br/>
  </details>  
  <details><summary><h2>Configurare</h2></summary>
  <br/><hr/>
   In partea de jos a fișierului <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.php">api.php</a>
   trebuie sa editati/modificati liniile de mai jos(si sa inlocuiti <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/php_crud_api_db.sql"><B>xxx</B></a> cu datele dvs concrete, de conectare la b.d. MySQL: 
    
      $config = new Config([
          'username' => 'xxx',
          'password' => 'xxx',
          'database' => 'xxx',
      ]);
      
Dupa editare/modificare aceaste linii ar putea arata astfel:

      $config = new Config([
          'username' => 'root',
          'password' => '',
          'database' => 'php_crud_api_db',
      ]); 

Acestea sunt toate opțiunile de configurare și valoarea lor implicită între paranteze:<br/>
    
 - „driver”: mysql, pgsql, sqlsrv sau sqlite( implicit mysql)
 - „address”: numele de gazdă (sau numele fișierului) al serverului bazei de date ( implicit localhost)
 - „port”: portul TCP al serverului de baze de date (valoarea implicita a portului este cea aferenta driverului implicit: well-known ports)
 - **„username”**: numele de utilizator al utilizatorului care se conectează la baza de date (fără implicit)
 - **„password”**: parola utilizatorului care se conectează la baza de date (nu exista o valoare implicita)
 - **„database”**: baza de date la care se face conectarea (nu exista valoare implicita)
 - „command”: ​​SQL suplimentar pentru a inițializa conexiunea la baza de date (implicit nici-un SQL)
 - „tables”: listă separată prin virgulă de tabele de publicat (implicit la „all”)
 - ***„mapping”***: listă separată prin virgulă de mapări de tabel/coloană (fără harta/asociere/mapare)
 - „geometrySRID”: <a href="https://en.wikipedia.org/wiki/Spatial_reference_system">SRID</a> asumat la conversia din <a href="https://en.wikipedia.org/wiki/Well-known_text_representation_of_geometry">WKT</a> în geometrie ( implicit 4326)
 - ***„middlewares”***: Listă de middleware de încărcat ( implicit <a href="https://en.wikipedia.org/wiki/Cross-origin_resource_sharing">CORS</a>)
 - ***„controllers”***: Listă de controlere de încărcat ( records,geojson,openapi,status)
 - ***„customControllers”***: Lista de controlere personalizate de utilizator de încărcat (fără implicit)
 - „openApiBase”: informații despre <a href="https://en.wikipedia.org/wiki/Open_API">OpenAPI</a> ( {"info":{"title":"PHP-CRUD-API","version":"1.0.0"}})
 - *„cacheType”*: TempFile, Redis, Memcache, Memcached sau NoCache( implicit TempFile)
 - *"cachePath"*: calea/adresa cache-ului (implicit în directorul temporar al sistemului)
 - *„cacheTime”*: numărul de secunde în care memoria cache este validă ( implicit 10)
 - „jsonOptions”: Opțiuni utilizate pentru codificarea JSON ( JSON_UNESCAPED_UNICODE)
 - „debug”: afișați erorile în anteturile „X-Exception” ( implicit false)
 - „basePath”: calea de bază URI a API-ului (în mod implicit valoarea este determinată folosind PATH_INFO )

Toate aceste opțiuni de configurare sunt disponibile și ca <b>variabile de mediu</b>(set[x] „<b>PHP_CRUD_API_...=...</b>”).<br/><br/> 
Scrieți opțiunea de configurare cu majuscule, un prefix „<b>PHP_CRUD_API_</b>” și liniuțe de subliniere pentru <br/>despărțiri de cuvinte, de exemplu:<br/><pre>
PHP_CRUD_API_DRIVER=mysql
PHP_CRUD_API_ADDRESS=localhost
PHP_CRUD_API_PORT=3306
PHP_CRUD_API_DATABASE=php-crud-api
PHP_CRUD_API_USERNAME=php-crud-api
PHP_CRUD_API_PASSWORD=php-crud-api
PHP_CRUD_API_DEBUG=1</pre><br/>

Variabilele de mediu(setate in shell/cmd.exe sau in <b>.bat</b>: <b>set PHP_CRUD_API_ADDRESS=127.0.0.1</b>) au prioritate față de <br/>configurarile din cadrul sursei-PHP(<a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/php_scripts/CRUD_API/api.php">api.php</a>).
    
 <hr/><br/>
  </details>
  <details><summary><h2>Limitari</h2></summary>
  <br/><hr/>
    
Aceste limitări și constrângeri se aplică astfel/pentru:
    
     - Cheile primare, care ar trebui să fie fie cu incrementare automată (de la 1 la 2^53) fie UUID
     - Cheile primare și străine compozite nu sunt acceptate
     - Scrierile (tranzacțiile) complexe nu sunt acceptate
     - Interogările complexe care apelează funcții (cum ar fi „concat” sau „sum”) nu sunt acceptate
     - Baza de date trebuie să susțină și să definească constrângeri de cheie străină
     - SQLite nu poate avea chei primare de incrementare automată(autoincrementare) tastate bigint
     - SQLite nu acceptă modificarea coloanelor din tabel (structurii) 

***OBS***:<br/>
- <b>UUID</b> i.e <a href="https://en.wikipedia.org/wiki/Universally_unique_identifier"><b>Universally Unique ID(entifier)</b></a>
- <a href="https://en.wikipedia.org/wiki/SQLite"><b>SQLite</b></a> - un motor de baze de date SQL, bazat pe/orientat catre  fisier
  <hr/><br/>
  </details>
  <details><summary><h2>Caracteristici</h2></summary>
  <br/><hr/>
Sunt acceptate/dispune de următoarele facilitati/caracteristici(features):

 - Instalare <a href="https://en.wikipedia.org/wiki/Composer_(software)">Composer</a> sau un singur fișier PHP, ușor de implementat.
 - Cod foarte mic, ușor de adaptat și întreținut
 - Suportă variabile <a href="https://en.wikipedia.org/wiki/POST_(HTTP)">POST</a> ca intrare (x-www-form-urlencoded)
 - Acceptă un <a href="https://wiki.rptools.info/index.php/JSON_Object">obiect JSON</a> ca intrare
 - Acceptă o <a href="https://wiki.rptools.info/index.php/JSON_Array">matrice JSON</a> ca intrare (inserare in/de lot[uri] de date)
 - Dezinfectați și validați intrarea folosind reguli de tip și apeluri inverse
 - Sistem de permisiuni pentru baze de date, tabele, coloane si inregistrari
 - Sunt acceptate modelele de baze de date cu mai multe locatari unice și multiple
 - Suport <a href="https://en.wikipedia.org/wiki/Cross-origin_resource_sharing">CORS</a> pentru mai multe domenii pentru solicitări între domenii
 - Suport pentru citirea rezultatelor unite din mai multe tabele
 - Căutați asistență pe mai multe criterii
 - Paginare, sortare, lista de top N și selecție coloane
 - Detectarea relației cu rezultate imbricate (belongsTo, hasMany și <a href="https://en.wikipedia.org/wiki/Many-to-many_(data_model)">HABTM</a>)
 - Suport pentru increment atomic prin PATCH (pentru contoare)
 - Câmpuri binare acceptate cu codificare <a href="https://en.wikipedia.org/wiki/Base64">base64</a>
 - Câmpuri și filtre spațiale/GIS acceptate cu <a href="https://libgeos.org/specifications/wkt/">WKT</a> și <a href="https://libgeos.org/specifications/geojson/">GeoJSON</a>
 - Maparea(asocierea) numelor de tabele și coloane pentru a susține sistemele vechi
 - Generați documentație API folosind instrumente <a href="https://en.wikipedia.org/wiki/Open_API">OpenAPI</a>
 - Autentificare prin cheie API, token <a href="https://en.wikipedia.org/wiki/JSON_Web_Token">JWT</a> sau nume de utilizator/parolă
 - Parametrii conexiunii la baza de date pot depinde de autentificare
 - Suport pentru citirea structurii bazei de date în <a href="https://en.wikipedia.org/wiki/JSON">JSON</a>
 - Suport pentru modificarea structurii bazei de date folosind punctul final <a href="https://en.wikipedia.org/wiki/REST">REST</a>(REST endpoint)
 - Middleware-ul de îmbunătățire a securității este inclus
 - Conform standardului <a href="https://en.wikipedia.org/wiki/PHP_Standard_Recommendation">PSRn[n]</a>: PSR-4, PSR-7, PSR-12, PSR-15 și PSR-17   
  <hr/><br/>
  </details>
  <details><summary><h2>Proiecte si portari conexe</h2></summary>
  <br/><hr/>
Proiecte conexe(sursa de inspiratie pt./legate de acest proiect):

 - <a href="https://github.com/nik2208/php-crud-api-quick-start"><b>PHP-CRUD-API Quick Start</b></a>: Un fișier de scriere docker personalizabil, gata de utilizare, care include PHP-CRUD-API.
 - <a href="https://thipages.github.io/jca-filter/#"><b>PHP-CRUD-API filter generator</b></a>: O bibliotecă JavaScript care creează filtre PHP-CRUD-API din expresii.
 - <a href="https://github.com/thipages/js-crud-api"><b>JS-CRUD-API</b></a> : O bibliotecă client JavaScript pentru API-ul PHP-CRUD-API
 - <a href="https://github.com/mevdschee/php-api-auth"><b>PHP-API-AUTH</b></a> : script PHP cu un singur fișier care este un furnizor de autentificare pentru PHP-CRUD-API
 - <a href="https://github.com/mevdschee/php-crud-ui"><b>PHP-CRUD-UI</b></a> : Script PHP cu un singur fișier care adaugă o interfață de utilizare la un proiect PHP-CRUD-API.
 - <a href="https://github.com/mevdschee/php-crud-admin"><b>PHP-CRUD-ADMIN</b></a> : Script PHP cu un singur fișier care adaugă o interfață de administrare a bazei de date la un proiect PHP-CRUD-API.
 - <a href="https://github.com/mevdschee/php-sp-api"><b>PHP-SP-API</b></a> : Script PHP cu un singur fișier care adaugă un API REST la o bază de date SQL.
 - <a href="https://github.com/scriptPilot/dexie-mysql-sync"><b>dexie-mysql-sync</b></a> : Sincronizare între IndexedDB local și baza de date MySQL.
 - <a href="https://github.com/nkappler/ra-data-treeql"><b>ra-data-treeql</b></a> : pachet NPM care oferă un <a href="https://marmelab.com/react-admin/DataProviderIntroduction.html">Data Provider</a>(furnizor de date) pentru <a href="https://marmelab.com/react-admin/">React Admin</a> .
 - <a href="https://github.com/scriptPilot/vueuse/"><b>scriptPilot/vueuse</b></a> : Vue <a href="https://vuejs.org/guide/reusability/composables.html">Composables</a> în plus față de <a href="https://vueuse.org/">VueUse.org</a> (care acceptă PHP-CRUD-API).
 - <a href="https://github.com/scriptPilot/add-php-backend"><b>scriptPilot/add-php-backend</b></a> : Adăugați MySQL, phpMyAdmin și PHP-CRUD-API în mediul dumneavoastră de dezvoltare.
 - <a href="https://github.com/nlware/vue-crud-ui"><b>VUE-CRUD-UI</b></a> : un singur fișier script Vue.js care adaugă o interfață de utilizare la un proiect PHP-CRUD-API.

Există și portari ale acestui script în:

 - <a href="https://github.com/dranih/go-crud-api">Go-CRUD-API</a> (lucrare în curs de elaborare)
 - <a href="https://github.com/kolchagov/java-crud-api">Java JDBC de Ivan Kolchagov</a> (v1)
 - <a href="https://github.com/mevdschee/java-crud-api/tree/master/full">Java Spring Boot + jOOQ</a> (v2: lucru în curs)
  
Există, de asemenea, portari ale acestui script, drept dovadă de concept,  care acceptă doar funcționalitatea REST-CRUD de bază în: <br/>
[PHP](https://github.com/mevdschee/php-crud-api/blob/master/extras/core.php) , [Java](https://github.com/mevdschee/java-crud-api/blob/master/core/src/main/java/com/tqdev/CrudApiHandler.java) , [Go](https://github.com/mevdschee/go-crud-api/blob/master/api.go) , [C# .net core](https://github.com/mevdschee/core-data-api/blob/master/Program.cs) , [Node.js](https://github.com/mevdschee/js-crud-api/blob/master/app.js) și [Python](https://github.com/mevdschee/py-crud-api/blob/master/api.py) .   
   <hr/><br/>
  </details>
  <details><summary><h2>Compilare - Dezvoltare - Actualizarea dependentelor</h2></summary>
  <br/><hr/>
  <details><summary><h3>Compilare</h3></summary>
  <br/><hr/>
Puteți <b>instala</b> toate dependențele acestui proiect, folosind <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_APIinstall.php">install.php</a>, in următoarea comandă:

    php install.php

Folosind sursa <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/build.php"><b>build.php</b></a>, puteti sa combinati continut de fisiere din directoarele <b>src</b> si <b>vendor</b> intr-un singur fisier: <b>api.php</b>.<br/>
Colateral mai prepara/creaza si un alt fisier de tip libarie-include si anume <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.include.php"><b>api.include.php</b></a> spre a fi folosit atunci cand aveti avea nevoie de a include facilitatile acestui api.php si in alte locuri din acest proiect(cum este si cazul <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/test.php"><b>test</b></a>-arii), fara a mai fi nevoiti sa faceti apel direct la  fisierul principal <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/src/index.php"><b>index.php</b></a> ori sa utilizati <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.php"><b>api.php</b></a>(care nu vor functiona in regim de "librarii-include"!!!).<br/>
Asadar, puteți <b>compila/combina</b> toate fișierele necompilate din directoarele <b>src</b> si <b>vendor</b>, într-un singur fișier compilat, "<a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/api.php">api.php</a>"(construind colateral si fisierul librarie-include: <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.include.php"><b>api.include.php</b></a>), folosind fisierul-sursa-constructor <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/build.php">buid.php</a>, in comanda urmatoare:

    php build.php
    
Rețineți că nu puteti sa utilizați ***compilarea*** atunci când **integrați** acest proiect într-un<br/> 
alt proiect sau cadru (puteti sa utilizați, în schimb, <a href="https://getcomposer.org/"><b>Composer</b></a>).   
  <hr/><br/>
  </details>
  <details><summary><h3>Dezvoltare</h3></summary>
  <br/><hr/>
Puteți accesa codul necompilat la adresa-URL:

    http://localhost:8080/src/records/posts/1

Codul necompilat se află în directoarele <a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/src/Tqdev/PhpCrudApi">"src"</a> și <a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/vendor">"vendor"</a>.<br/>
Directorul <a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/vendor">„vendor”</a> conține dependențele.
  <hr/><br/>
  </details>
  <details><summary><h3>Actualizare dependentelor</h3></summary>
  <br/><hr/>
Puteți <b>actualiza</b> toate dependențele acestui proiect, folosind <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/update.php">update.php</a>, in următoarea comandă:

    php update.php

Acest script va instala și rula [Composer](https://getcomposer.org/) pentru a actualiza/rezolva dependențele.   
  <hr/><br/>
  </details> <!--Actualiz.Dependente-->  
  <hr/><br/>
  </details><!--end Compilare+Dezvoltare+Actualiz.Dependente-->
 <hr/><br/>
  </details><!--end Instalare,Cerinte,Configurare,Limitari,Caracteristici,Proiecte&PortariConexe precum si Compilare+Dezvoltare+Actualiz.Dependente-->
  <details><summary><h2>TreeQL, un GraphQL pragmatic</h2></summary>
  <br/><hr/>
   <a href="https://github.com/mevdschee/php-crud-api">PHP-CRUD-API</a>(adica acest proiect) este implementarea de referinta a/pt. <a href="https://treeql.org/">TreeQL</a>.<br/>
    
[TreeQL](https://treeql.org/) vă permite să creați un „arbore”/o arborescenta de obiecte JSON pe baza structurii bazei de date SQL (DB relaționala adica bazata pe relatii) și a interogării dvs.

Se bazează vag/oarecum pe standardul ***REST***(<a href="https://github.com/mevdschee/php-crud-api/blob/main/extras/core.php">REST-like</a>) și, de asemenea, este inspirat de ***json:api***.

  <details><summary><h3>CRUD + List</h3></summary>
  <br/><hr/>
Exemplul de tabel de postări, <b>posts</b>  are doar câteva câmpuri(coloane):

    posts  
    =======
    id     
    title  
    content
    created

Operațiiunile <b>CRUD</b>(<b>C</b>reate <b>R</b>ead <b>U</b>pdate <b>D</b>elete), impreuna cu(<b>+</b>) operatiunea <b>List</b>, de mai jos, acționează asupra acestui tabel( <b>posts</b>).

  <details><summary><h4>Creare(Create)</h4></summary>
  <br/><hr/>
Dacă doriți să <b>creați</b> o înregistrare(desigur o inregistrare noua / care <b>nu</b> exista in baza de date), <br/>
cererea-REST poate fi scrisă în format URL ca:

    POST /records/posts

Trebuie să trimiteți un corp/intrare(<b>JSON-payload)</b>) care să conțină:
    
    {
        "title": "Black is the new red",
        "content": "This is the second post.",
        "created": "2018-03-06T21:34:01Z"
    }

Și va returna valoarea cheii primare(<b>id</b>-ul i.e identificatorul inregistrarii/randului) a înregistrării nou create:

    2  

  <hr/><br/>
  </details>
  <details><summary><h4>Citire(Read)</h4></summary>
  <br/><hr/>
Pentru a <b>citi</b> o înregistrare(<i>xexistenta deja in baza de date</i>) din acest tabel, cererea poate fi scrisă în format URL ca:

    GET /records/posts/1

Unde „1” este valoarea cheii primare a înregistrării(<b>id</b>) pe care doriți să o <b>citiți</b>.<br/> 
Se va întoarce urmatorul rezultat/iesire(<b>JSON-result</b>):

    {
        "id": 1
        "title": "Hello world!",
        "content": "Welcome to the first post.",
        "created": "2018-03-05T20:12:56Z"
    }

La operațiunile de **citire** puteți aplica/utiliza alăturari/reuniuni(**joins**).   
  <hr/><br/>
  </details>
  <details><summary><h4>Actualizare/Modificare(Update)</h4></summary>
  <br/><hr/>
Pentru a <b>actualiza</b> o înregistrare(existenta deja in baza de date) în acest tabel(<b>posts</b>), cererea(REST-query),<br/> poate fi scrisă în format URL ca:

  PUT /records/posts/1

Unde „1” este valoarea cheii primare(<b>id</b>-ul) a înregistrării(<i>existenta deja in baza de date</i>) pe care doriți să o actualizați.<br/> 
Trimiteți ca corp/intrare(<b>JSON-payload</b>):

    {
        "title": "Adjusted title!"
    }

Aceasta ajustează/modifică/<b>actualizează</b> titlul postării si/iar valoarea returnată este <b>numărul de rânduri</b> care sunt afectate/setate/actualizate:

    1
   
  <hr/><br/>
  </details> 
  <details><summary><h4>Stergere(Delete)</h4></summary>
  <br/><hr/>
Dacă doriți să <b>ștergeți</b> o înregistrare(<i>deja existenta</i> si identificata prin <b>id</b>-ul <b>1</b>) din acest tabel,<br/> 
cererea poate fi scrisă în format URL ca:

    DELETE /records/posts/1

Și va returna ca iesire, <b>numărul de rânduri</b> șterse/afectate:

    1

Dupa aceasta operatiune inregistrarea/randul cu **id**-ul <b>1</b> **nu** va mai exista in baza de date(in cazul meu **MySQL**).
  <hr/><br/>
  </details>
  <details><summary><h4>Listare(List)</h4></summary>
  <br/><hr/>
Pentru a vedea/consulta/<b>lista</b> înregistrările din acest tabel(<b>posts</b>), cererea poate fi scrisă în format URL ca:

    GET /records/posts

Se va întoarce ca rezultat/iesire(<b>JSON-result</b>):

    {
        "records":[
            {
                "id": 1,
                "title": "Hello world!",
                "content": "Welcome to the first post.",
                "created": "2018-03-05T20:12:56Z"
            }
        ]
    }

În operațiunile de <b>listare</b> puteți aplica filtre(<b>filters</b>: where...) și alăturari/reuniri cu alte tabele(<b>joins</b>).   
  <hr/><br/>
  </details>  
  <hr/><br/>
  </details>
  <details><summary><h3>Filtrarea, Selectia-coloanelor si Sortarea</h3></summary>
  <br/><hr/>
  <details><summary><h3>Filtrarea</h3></summary>
  <br/><hr/>
  <details><summary><h4>Filtre</h4></summary>
  <br/><hr/>
<b>Filtrele</b> oferă funcționalitate de <b>căutare</b>, în apelurile de listă, folosind parametrul <b>„filter”</b>.<br/> 
Trebuie să specificați numele coloanei/campului, o virgulă, tipul de potrivire(verbul/operatorul), o altă virgulă și valoarea campului<br/> pe care doriți să o filtrați.<br/><br/> 
Acestea sunt tipurile de potrivire/cautare acceptate:

 - „cs”: conține șir (șirul conține valoare)
 - "sw": începe cu (șirul începe cu valoare)
 - "ew": termina cu (șir se termină cu valoare)
 - „eq”: egal (șirul sau numărul se potrivește exact)
 - "lt": mai mic decât (numărul este mai mic decât valoarea)
 - „le”: mai mic sau egal (numărul este mai mic sau egal cu valoarea)
 - „ge”: mai mare sau egal (numărul este mai mare sau egal cu valoarea)
 - „gt”: mai mare decât (numărul este mai mare decât valoarea)
 - „bt”: între (numărul este între două valori separate prin virgulă)
 - „in”: în (numărul sau șirul se află într-o listă de valori separată prin virgulă)
 - „is”: este nul (câmpul conține valoarea „NULL”)

Puteți anula/<b>nega</b> toate filtrele adăugând un caracter <b>„n”</b>, astfel încât <i>„eq”</i> să devină <b>„neq”</b>.<br/>
Exemple de utilizare a filtrelor sunt:

    GET /records/categories?filter=name,eq,Internet
    GET /records/categories?filter=name,sw,Inter
    GET /records/categories?filter=id,le,1
    GET /records/categories?filter=id,ngt,1
    GET /records/categories?filter=id,bt,0,1
    GET /records/categories?filter=id,in,0,1

Ieșirea(<b>JSON-result</b>) poate arata astfel:

    {
        "records":[
            {
                "id": 1
                "name": "Internet"
            }
        ]
    }

În secțiunea următoare([Filtre multiple](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#filtre-multiple)), vom aprofunda modul în care puteți aplica mai <b>multe</b> filtre într-un singur apel de listă/listare.   
  </pre><hr/><br/>
  </details>
  <details><summary><h4>Filtre multiple</h4></summary>
  <br/><hr/>
Filtrele pot fi aplicate prin repetarea parametrului „filter” din URL. De exemplu, următoarea adresă URL:

    GET /records/categories?filter=id,gt,1&filter=id,lt,3

va solicita toate categoriile „unde id > 1 și id < 3”. Dacă doriți „unde id = 2 SAU unde id = 4”, ar trebui să scrieți:

    GET /records/categories?filter1=id,eq,2&filter2=id,eq,4

După cum vedeți, am adăugat un număr la parametrul „filter” pentru a indica faptul că ar trebui aplicat „SAU” în loc de „ȘI”(operatorul logic implicit al filtrarilor/filtrelor succesive). <br/>
Rețineți că puteți, de asemenea, să repetați „filter1” și să creați un „ȘI” (imbricat/inclus) într-un „SAU” (ceva de genul ... filter1=id,gt,1&filter1=id,lt,3&filter2=id,eq,4). <br/>
Deoarece puteți merge, de asemenea, cu un nivel mai adânc(al arborelui logic/de logica) prin adăugarea unei litere (a-f), puteți crea aproape orice arbore de condiții rezonabil de complex.

Atentie la simbolul <b>&</b> din cererea-REST-URL: acesta <b>nu</b> apartine filtrului-SQL(deci nu are rolul unui SI-logic), ci este plasat/are rolul de/pt a <b>inlantui</b> un sir de parametrii in/dintr-o lista-URL de astfel de parametrii-URL(cu alte cuvinte este un separator intre elementele unei liste de parametrii transmisi endpoint-ului-REST).

<b>NB</b>: Puteți filtra numai pe tabelul solicitat (nu pe toate/alte tabelele incluse/din b.d.) și filtrele sunt aplicate numai pentru apelurile pe listă/listare. 
  <hr/><br/>
  </details>
  <hr/><br/>
  </details>  
  <details><summary><h3>Selectia campurilor/coloanelor</h3></summary>
  <br/><hr/>
În mod implicit, toate coloanele sunt <b>selectate</b>. <br/>
Cu parametrul <b>„include”</b> puteți selecta anumite coloane.<br/>
Puteți folosi un punct(<b>.</b>) pentru a separa numele tabelului de numele coloanei. <br/>
Mai multe coloane trebuie separate prin virgulă(<b>„,”</b>).<br/>
Un asterisc (<b>„*"</b>) poate fi folosit ca wildcard pentru a indica "toate coloanele". <br/>
Similar cu „include”, puteți utiliza parametrul <b>„exclude”</b> pentru a elimina anumite coloane:

    GET /records/categories/1?include=name
    GET /records/categories/1?include=categories.name
    GET /records/categories/1?exclude=categories.id

Ieșire:

      {
          "name": "Internet"
      }

<b>NB</b>: <br/>Coloanele care sunt folosite pentru a include entități asociate sunt adăugate automat și nu pot fi lăsate în afara ieșirii.   
  <hr/><br/>
  </details>
  <details><summary><h3>Sortarea(order by)</h3></summary>
  <br/><hr/>
Cu parametrul <b>„order”</b> puteți sorta/ordona.<br/> 
În mod implicit, sortarea este în ordine crescătoare(<b>„asc”</b>), dar prin specificarea <b>„desc”</b> aceasta poate fi inversată:

    GET /records/categories?order=name,desc
    GET /records/categories?order=id,desc&order=name

Ieșire:

      {
          "records":[
              {
                  "id": 3
                  "name": "Web development"
              },
              {
                  "id": 1
                  "name": "Internet"
              }
          ]
      }

<b>NB</b>:<br/> 
Puteți sorta pe mai multe câmpuri/coloane utilizând mai mulți parametri de „order”. 
Nu puteți ordona pe coloane unite(joined).  
  <hr/><br/>
  </details> <!-- end Sortarea-->
  <hr/><br/>
  </details> <!-- end Filtrarea,Selectia-cols si Sortarea--> 
  <details><summary><h3>Parametrii "Size" & "Page"</h3></summary>
  <br/><hr/>
  <details><summary><h3>Limita parametrului "size"</h3></summary>
  <br/><hr/>
Parametrul dimensiune/<b>„size”</b> limitează numărul de înregistrări returnate. <br/>
Acesta poate fi folosit pentru primele N liste împreună cu parametrul „ordine” (utilizați ordinea descrescătoare).

    GET /records/categories?order=id,desc&size=1

Ieșire:

      {
          "records":[
              {
                  "id": 3
                  "name": "Web development"
              }
          ]
      }

<b>NB</b>: 
Dacă doriți să aflați și numărul total de înregistrări, poate doriți să utilizați parametrul „page”.   
  <hr/><br/>
  </details> 
  <details><summary><h3>Paginatia/Paginarea(page)</h3></summary>
  <br/><hr/>
Parametrul <b>„page”</b> deține/retine/specifica pagina solicitată.<br/>
Dimensiunea/Valoarea <b>implicită</b> a paginii este <b>20</b>, dar poate fi ajustată (de exemplu, la <b></b>50</b>).

    GET /records/categories?order=id&page=1
    GET /records/categories?order=id&page=1,50

Ieșire:

      {
          "records":[
              {
                  "id": 1
                  "name": "Internet"
              },
              {
                  "id": 3
                  "name": "Web development"
              }
          ],
          "results": 2
      }

Elementul de iesire <b>„results”</b>/rezutate deține/retine/stocheaza/specifica <b>numărul total de înregistrări/randuri</b> din tabel, care ar fi returnat dacă nu s-ar folosi nicio paginare.

<b>NB</b>: <br/>
Deoarece paginile care nu sunt ordonate nu pot fi paginate, paginile vor fi ordonate implicit după cheia primară(in acest caz, cheia primara a tabelei <b>categories</b> este coloana/campul <b>id</b> care identifica in mod unic fiecare rand/inregistrare).

  <hr/><br/>
  </details> <!-- end Page-->
    <hr/><br/>
  </details> <!-- end Size and Page-->
  <details><summary><h3>Reunirile/Alaturarile/Imbinarile de tabele(Joins)</h3></summary>
  <br/><hr/>
Să presupunem că aveți un tabel de postări(<b>posts</b>) care conțin comentarii (efectuate de catre utilizatori) iar postările pot avea etichete.

    posts    comments  users     post_tags  tags
    =======  ========  =======   =========  ======= 
    id       id        id        id         id
    title    post_id   username  post_id    name
    content  user_id   phone     tag_id
    created  message

Când doriți să enumerați/listati <b>postări cu utilizatorii și etichetele lor</b>, puteți solicita sa se listeze folosind două căi de „arborescenta” relationala:

    posts -> comments  -> users
    posts -> post_tags -> tags

Aceste căi au aceeași rădăcină(tabelul <b>posts</b>) și această solicitare de listare a postarilor, poate fi scrisă în format URL ca:

    GET /records/posts?join=comments,users&join=tags

Aici vi se permite să omiteți(sa nu faceti referire la acesta/sa nu utilizati) tabelul intermediar(<b>post_tags</b>) care leagă postările(<b>posts</b>) de etichete(<b>tags</b>).<br/>
În acest exemplu, vedeți toate cele trei tipuri de relații de tabel (<b>hasMany</b>, <b>belongsTo</b> și <b>hasAndBelongsToMany</b>) în vigoare/folosite:

        „postarea” are                  mai multe „comentarii”    (relatie de tip "hasMany"             1:M)
    iar „comentariul”     aparține      unui       „utilizator”   (relatie de tip "belongsTo"           1:1)
        „postarea” are și aparține      mai multor „etichete”     (relatie de tip "hasAndBelongsToMany" M:M)

Acest lucru poate duce la următoarele date-JSON listate:

    {
        "records":[
            {
                "id": 1,
                "title": "Hello world!",
                "content": "Welcome to the first post.",
                "created": "2018-03-05T20:12:56Z",
                "comments": [
                    {
                        id: 1,
                        post_id: 1,
                        user_id: {
                            id: 1,
                            username: "mevdschee",
                            phone: null,
                        },
                        message: "Hi!"
                    },
                    {
                        id: 2,
                        post_id: 1,
                        user_id: {
                            id: 1,
                            username: "mevdschee",
                            phone: null,
                        },
                        message: "Hi again!"
                    }
                ],
                "tags": []
            },
            {
                "id": 2,
                "title": "Black is the new red",
                "content": "This is the second post.",
                "created": "2018-03-06T21:34:01Z",
                "comments": [],
                "tags": [
                    {
                        id: 1,
                        message: "Funny"
                    },
                    {
                        id: 2,
                        message: "Informational"
                    }
                ]
            }
        ]
    }

Vedeți că relațiile <b>„belongsTo”</b>(<b>comments</b> -> <b>users</b>) sunt detectate și valoarea cheii externe(<b>comments.user_id</b>) este înlocuită cu obiectul referit(este inlocuit cu intregul rand/record al tabelei <b>user</b> de forma <b>{</b>...continut-rand referit <b><i>user</i></b>...</b>}</b>).<br/>
În cazul relatiilor <b>„hasMany”</b>(<b>posts</b> -> <b>comments</b>) și <b>„hasAndBelongsToMany”</b>(<b>posts</b> -> post_tags -> <b>tags</b>), numele tabelului(<b>comments</b>|<b>tags</b>) este folosit ca a o nouă proprietate pe obiectul <b>comments</b>|<b>tags</b> (obiect de forma <br/><b>[</b>...continut-randuri din tabela <b>comments</b>|<b>tags</b> care s-au referit la acest <b>post.id</b> curent: <i><b>comments</b>|<b>tags</b>.post_id -> <b>post.id</b></i> ... <b>])</b>.      
  <hr/><br/>
  </details>
  <details><summary><h3>Operatiile in lot de lucrari(Batch operations)</h3></summary>
  <br/><hr/>
Când doriți să <b>creați/adaugati</b>, să <b>citiți</b>, să <b>actualizați</b> sau să <b>ștergeți</b>, puteți specifica <b>mai multe valori ale cheii primare</b> în adresa URL.<br/>
De asemenea, trebuie să trimiteți <b>o matrice</b> în loc de un obiect în corpul solicitării pentru creare și actualizare.

Pentru a <b>citi</b> o înregistrare din acest tabel, cererea poate fi scrisă în format URL ca:

    GET /records/posts/1,2
    
Rezultatul poate fi:

      [
              {
                  "id": 1,
                  "title": "Hello world!",
                  "content": "Welcome to the first post.",
                  "created": "2018-03-05T20:12:56Z"
              },
              {
                  "id": 2,
                  "title": "Black is the new red",
                  "content": "This is the second post.",
                  "created": "2018-03-06T21:34:01Z"
              }
      ]

În mod similar, atunci când doriți să faceți o <b>actualizare</b> în lot, solicitarea în format URL este scrisă ca:

    PUT /records/posts/1,2

Unde „1” și „2” sunt valorile cheilor primare(<b>posts.id</b>) ale înregistrărilor pe care doriți să le actualizați.<br/>
Corpul(cu date de intrare, pe care le transmiteti) ar trebui să conțină același număr de obiecte ca și cheile primare în adresa URL:

    [   
        {
            "title": "Adjusted title for ID 1"
        },
        {
            "title": "Adjusted title for ID 2"
        }        
    ]

Aceasta ajustează titlurile postărilor. <br/>
Și valorile returnate sunt <b>numărul de rânduri</b> care sunt setate/afectate:

    [1,1]

Ceea ce înseamnă că au fost două operațiuni de actualizare și fiecare dintre ele avea setat/a afectat câte un(1) rând.<br/>
Operațiunile în loturi folosesc tranzacții de bază de date, astfel încât fie <b>toate reușesc</b>, fie <b>toate eșuează</b>(cele care au succes sunt anulate).<br/>
Dacă eșuează, corpul va conține lista documentelor de eroare.<br/>
În următorul răspuns, prima operație a reușit și a doua operațiune a lotului <b>a eșuatv din cauza unei <b>încălcări a integrității</b>:

    [   
        {
            "code": 0,
            "message": "Success"
        },
        {
            "code": 1010,
            "message": "Data integrity violation"
        }
    ]

Codul de stare(<bcode></b>) a răspunsului va fi întotdeauna <b>424</b> (dependență eșuată) în cazul oricărei eșecuri a uneia dintre operațiunile lot.

Pentru a <b>insera/adauga</b> mai multe înregistrări în acest tabel, cererea poate fi scrisă în format URL ca:

    POST /records/posts

Corpul(cu datele de intrare pe care le transmiteti) ar trebui să conțină o serie de înregistrări care trebuie inserate:

    [
            {
                "title": "Hello world!",
                "content": "Welcome to the first post.",
                "created": "2018-03-05T20:12:56Z"
            },
            {
                "title": "Black is the new red",
                "content": "This is the second post.",
                "created": "2018-03-06T21:34:01Z"
            }
    ]

Valoarea returnată este, de asemenea, o matrice care conține <b>cheile primare</b> ale înregistrărilor <b>nou</b> introduse:

      [1,2]

Rețineți că operațiunea batch pentru <b>DELETE</b> urmează același model ca <i>PUT</i>, dar <b>fără corp</b>.   
  <hr/><br/>
  </details>
  <details><summary><h3>Suportul datelor spatiale</h3></summary>
Acest CRUD_API(api.php) poate lucra ata in regim doar-server cat si in regim client-server.<br/>
In ambele ipostaze(client sau server/backend) se poate oferi <a herf="https://gis.stackexchange.com/questions/293004/spatial-functions-with-mysql-xampp-and-wordpress?newreg=ad5e6533d1274d4bad0c1c5e4b47f83a">suport spatial</a> pt ca miezul <b>api.php</b> ofera suport spatial.<br/>
Astfel, spre <a href="https://github.com/codemage66/PHP-CRUD-API/tree/main/examples">exemplu</a>, ne putem imagina ca un <a href="https://github.com/codemage66/PHP-CRUD-API/tree/main/examples/clients/leaflet">Client(leaflet-JS)</a> si-ar dori sa afiseze utilizatorii dintr-un dreptunghi de incadrare(bbox) curent al unei portiuni afisate de harta geografic(tile), desigur ca si strat(layer) suprapus peste/alaturi de alte straturi de informatii GIS, apeland la acest suport de date spatiale oferit ca/in backend de catre CRUD-API(api.php). Si exemplele de astfel de clienti pot continua. Asadar sa ne focusam/concentram pe suportul spatial oferit de catre acest backend(api.php)<br/>
    
Pentru <b>suport spațial</b> există un set suplimentar de <b>filtre</b> care pot fi aplicate pe <b>coloanele/campurile de geometrie</b> și care încep cu un/litera „<b>s</b>”:

 - „<b>sco</b>”: spațiul conține (geometria conține o alta)
 - „<b>scr</b>”: încrucișări spațiale (geometria traversează alta)
 - "<b>sdi</b>": disjuns spațial (geometria este disjunsă de alta)
 - "<b>seq</b>": egal spațial (geometria este egală cu alta)
 - „<b>sin</b>”: intersectări spațiale (geometria intersectează alta)
 - „<b>sov</b>”: suprapuneri spațiale (geometria se suprapune pe alta)
 - „<b>sto</b>”: atingeri spațiale (geometria atinge pe altul)
 - „<b>swi</b>”: spațial în interior (geometria este în interiorul altuia)
 - "<b>sic</b>": spațial este închis (geometria este închisă și simplă)
 - „<b>sis</b>”: spațial este simplu (geometria este simplă)
 - "<b>siv</b>": spațial este valid (geometria este validă)

Aceste <b>filtre</b> se bazează pe standardele [OGC](https://ro.wikipedia.org/wiki/Open_Geospatial_Consortium) și la fel este și specificația [WKT](https://en.wikipedia.org/wiki/Well-known_text_representation_of_geometry), în care sunt reprezentate <b>coloanele/campurile de geometrie</b>.<br/>
Rețineți că [SRID](https://www.alibabacloud.com/blog/an-overview-of-srid-and-coordinate-system_597004)-ul care este presupus la conversia de la [WKT](https://en.wikipedia.org/wiki/Well-known_text_representation_of_geometry) la <b>geometrie</b> este specificat de variabila de configurare <b>geometry</b>-[SRID](https://www.gsatsolar.com/support/glossary/srid) și este implicit [4326](https://ro.wikipedia.org/wiki/EPSG_Parametru_Seturi_de_date_Geodezice) ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).    
  <details><summary><h4>GeoJSON</h4></summary>
  <br/><hr/>
Suportul <b>GeoJSON</b> este o vizualizare(deci pt metoda <b>GET</b>) <b>numai în citire</b>(deci pt operatiile <b>list</b> sau </b>read</b>) a tabelelor și înregistrărilor/randurilor în format <b></b>GeoJSON</b>. Aceste cereri sunt acceptate:

method path                  - operation - description
----------------------------------------------------------------------------------------
<b>GET</b>    <b>/geojson/{table}</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <b>list</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- listeaza inregistrarile/randurile, ca o colectie de caracteristici/trasaturi(<b>GeoJSON FeatureCollection</b>)<br/>      
<b>GET</b>    <b>/geojson/{table}/{id}</b> - <b>read</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- citeste o inregistrare/rand dupa cheia-primara(<b>id</b>), ca o caracteristica/trasatura(<b>GeoJSON Feature</b>)<br/>

Punctul final „<b>/geojson</b>” folosește „<b>/records</b> ”(punctul final  intern) și moștenește(poseda/are) <b>toate funcționalitățile</b>, cum ar fi îmbinările/reunirile(<a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#reunirilealaturarileimbinarile-de-tabelejoins"><b>joins</b></a>) și <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#filtrarea"><b>filtrele</b></a>.<br/>
De asemenea, acceptă un parametru „<b>geometry</b>” pentru a indica denumirea <b>coloanei de geometrie</b>, în cazul în care tabelul are mai multe.<br/>
Pentru vizualizările hărții acceptă parametrul „<b>bbox</b>”(dreptunghiul de incadrare), în care puteți specifica coordonatele coltului din stânga sus și a coltului din dreapta jos (separate prin virgulă: "<b>,</b>").<br/>
Următoarele <b>tipuri de geometrie</b> sunt acceptate de implementarea <b>GeoJSON</b>:
 
 - <b>Punct</b>
 - <b>MultiPoint</b>
 - <b>LineString</b>
 - <b>MultiLineString</b>
 - <b>Poligon</b>
 - <b>Multipoligon</b>

Funcționalitatea <b>GeoJSON</b> este <b>activată</b> în mod <i><b>implicit</b></i>, dar poate fi <b>dezactivată</b> folosind configurația „<i><b>controllers</b></i>”.   
  <hr/><br/>
  </details>   
  <hr/><br/>
  </details>   
  <hr/><br/>
  </details>   
  <details><summary><h2>Maparea/Asocierea denumirilor(pt sistemele mai vechi cum ar fi WP)</h2></summary>
  <br/><hr/>
Pentru a sprijini crearea unui <b>API</b>(cum este acest proiect), pentru (o/acea parte a) sistemului moștenit (deci mai vechi, cum ar fi api-ul WP/Wordpress), poate doriți să mapați/asociati denumirile tabelelor și coloanelor(deoarece nu le puteți îmbunătăți fără o schimbare, de nedorit, a software-ului WP), în timp ce denumirea ar putea avea nevoie de/trebuie sa aiba unele îmbunătățiri(pentru consecvență in/de denumire).<br/>
Configurația/Configurarea vă permite să redenumiți/asociati tabelele și coloanele cu o listă de mapări/asocieri(separate de/prin virgulă: "<b>,</b>"), mapari/asocieri care la randul acestora sunt despărțite cu un semn egal("<b>=</b>"), astfel:

    'mapping' => 'wp_posts=posts,wp_posts.ID=posts.id',

Acest exemplu specific va expune/echivala/asocia/arata tabelul "<b>wp_posts</b>" la/ca un punct-final "<b>posts</b>" (în loc de "<b>wp_posts</b>") și coloana "<b>ID</b>" din acelasi tabel, va fi expusă ca/la o proprietate denumita "<b>id</b>" (deci expune cu/în litere mici: "<b>id</b>"  - în loc de -   litere mari: "<b>ID</b>").

<b>NB</b>:<br/>
Deoarece aceste două mapări/asocieri/echivalări(separate de "<b>,</b>") se <b>suprapun</b>, prima mapare(mai puțin specifică) poate fi <b>omisă</b>(asadar, prima asociere/egalitate nu aduce ceva nou/in plus fată de următoarea asociere/egalitate, astfel incat aceasta poate lipsi, deoarece cu usurintă si in mod automat, această prima asociere, se subintelege sau poate fi dedusă).   
  <hr/><br/>
  </details>
  <details><summary><h2>Intermediere(Middleware)</h2></summary>
  <br/><hr/>
  <details><summary><h3>Intermediari/Mijlocitori/Brokeri/Proxy-uri pt/de suport(Middlewares)</h3></summary>
  <br/><hr/><pre>    
Puteți activa următorul <b>middleware</b> folosind parametrul de configurare <a href="https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#middleware">„<b>middlewares</b>”</a>:<br/>

 - „<b>firewall</b>”: Limitați accesul la anumite adrese <a href="https://en.wikipedia.org/wiki/IP_address">IP</a>
 - „<b>sslRedirect</b>”: Forțați conexiunea prin <a href="https://ro.wikipedia.org/wiki/HTTPS">HTTPS</a> în loc de <a href="https://en.wikipedia.org/wiki/HTTP">HTTP</a>
 - „<b>cors</b>”: suport pentru solicitările <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">CORS</a> (activat implicit)
 - „<b>xsrf</b>”: blocați atacurile <a href="https://en.wikipedia.org/wiki/Cross-site_request_forgery">XSRF</a> folosind metoda „Double Submit Cookie”.
 - „<b>ajaxOnly</b>”: restricționați solicitările non-AJAX pentru a preveni atacurile <a href="https://en.wikipedia.org/wiki/Cross-site_request_forgery">XSRF</a>
 - „<b>apiKeyAuth</b>”: suport pentru „Autentificarea cheii API”
 - „<b>apiKeyDbAuth</b>”: Suport pentru „Autentificarea bazei de date cheie API”
 - „<b>dbAuth</b>”: suport pentru „Autentificarea bazei de date”
 - „<b>wpAuth</b>”: suport pentru „Autentificare Wordpress”
 - „<b>jwtAuth</b>”: suport pentru „Autentificare <a href="https://en.wikipedia.org/wiki/JSON_Web_Token">JWT</a>”
 - „<b>basicAuth</b>”: suport pentru „<a href="https://www.wallarm.com/what/what-is-basic-authentication-all-you-need-to-know"><b>Autentificare de bază</b></a>”
 - "<b>reconnect</b>": Reconectați-vă la baza de date cu parametri diferiți
 - „<b>autorization</b>”: restricționează accesul la anumite tabele sau coloane
 - „<b>validation</b>”: returnează erorile de validare a intrării pentru regulile personalizate și regulile de tip implicite
 - „<b>ipAddress</b>”: completați un câmp protejat cu adresa IP la creare
 - „<b>sanititaion</b>”: Aplicați igienizarea de intrare la crearea și actualizarea
 - „<b>multiTenancy</b>”: restricționează accesul chiriașilor într-un scenariu cu mai mulți chiriași
 - „<b>pageLimits</b>”: Restricționează operațiunile de listă pentru a preveni eliminarea/distrugerea bazei de date
 - „<b>joinLimits</b>”: restricționează parametrii de îmbinare pentru a preveni scrapingul bazei de date
 - „<b>textSearch</b>”: Căutați în toate câmpurile de text cu un parametru simplu
 - „<b>customization</b>”: Oferă handler pentru personalizarea cererilor și răspunsurilor
 - „<b>json</b>”: acceptă citirea/scrierea șirurilor <a href="https://en.wikipedia.org/wiki/JSON">JSON</a> ca obiecte/matrice <a href="https://en.wikipedia.org/wiki/JSON">JSON</a>
 - „<b>xml</b>”: traduce toate intrările și ieșirile din <a href="https://en.wikipedia.org/wiki/JSON">JSON</a> în <a href="https://en.wikipedia.org/wiki/XML">XML</a></pre>
  <details><summary><h4>Parametrii de configure pt Middlewares</h4></summary>
  <br/><hr/><pre> 
Parametrul de configurare <a href="https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#middleware:>„<b>middlewares</b>”</a> este o listă(separată prin virgulă) de/cu <b>middleware</b>-uri activate.<br/>
Puteți regla comportamentul <b>middleware</b> folosind <b>parametrii de configurare</b> specifici <b>middleware</b>-ului aferent:<br/>

„<b>firewall.reverseProxy</b>”: Setați la „adevărat” când este utilizat un proxy invers (“”)
„<b>firewall.allowedIpAddresses</b>”: Listă de adrese IP cărora li se permite conectarea („”)<br/>
„<b>cors.allowedOrigins</b>”: originile permise în antetele CORS ("*")
„<b>cors.allowHeaders</b>”: anteturile permise în cererea CORS („Content-Type, X-XSRF-TOKEN, <a href="https://swagger.io/docs/specification/authentication/bearer-authentication/"><b>X-Authorization</b></a>”)
„<b>cors.allowMethods</b>”: Metodele permise în cererea CORS („OPTIONS, GET, PUT, POST, DELETE, PATCH”)
„<b>cors.allowCredentials</b>”: ​​pentru a permite acreditările în cererea CORS („true”)
„<b>cors.exposeHeaders</b>”: anteturile din lista albă pe care browserele au voie să le acceseze ("")
„<b>cors.maxAge</b>”: timpul în care acordarea CORS este valabilă în secunde („1728000”)<br/>
„<b>xsrf.excludeMethods</b>”: metodele care nu necesită protecție XSRF („OPTIONS,GET”)
„<b>xsrf.cookieName</b>”: numele cookie-ului de protecție XSRF („XSRF-TOKEN”)
„<b>xsrf.headerName</b>”: numele antetului de protecție XSRF („X-XSRF-TOKEN”)<br/>
„<b>ajaxOnly.excludeMethods</b>”: metodele care nu necesită AJAX („OPTIONS,GET”)
"<b>ajaxOnly.headerName</b>": numele antetului necesar ("X-Requested-With")
"<b>ajaxOnly.headerValue</b>": valoarea antetului necesar ("XMLHttpRequest")<br/>
„<b>apiKeyAuth.mode</b>”: Setați la „opțional” dacă doriți să permiteți accesul anonim („required”)
„<b>apiKeyAuth.header</b>”: numele antetului cheii API („X-API-Key”)
„<b>apiKeyAuth.keys</b>”: Listă de chei API care sunt valide ("")
„<b>apiKeyDbAuth.mode</b>”: Setați la „opțional” dacă doriți să permiteți accesul anonim („required”)
„<b>apiKeyDbAuth.header</b>”: numele antetului cheii API („X-API-Key”)
„<b>apiKeyDbAuth.usersTable</b>”: tabelul care este folosit pentru a stoca utilizatorii în („users”)
„<b>apiKeyDbAuth.apiKeyColumn</b>”: coloana tabelului utilizatorilor care deține cheia API („api_key”)<br/>
„<b>dbAuth.mode</b>”: Setați la „opțional” dacă doriți să permiteți accesul anonim („required”)
„<b>dbAuth.usersTable</b>”: tabelul care este folosit pentru a stoca utilizatorii în („users”)
„<b>dbAuth.loginTable</b>”: tabelul sau viz.-rea care este utilizată pt.a prelua info.-le utiliz-lor pt.autentificare („users”)
„<b>dbAuth.usernameColumn</b>”: coloana tabelului utilizatori care conține nume de utilizator („username”)
„<b>dbAuth.passwordColumn</b>”: coloana tabelului utilizatori care conține parole („parolă”)
„<b>dbAuth.returnedColumns</b>”: coloanele returnate la autentificare cu succes, gol înseamnă „toate” („”)
„<b>dbAuth.usernameFormField</b>”: numele câmpului de formular care conține numele de utilizator („username”)
„<b>dbAuth.passwordFormField</b>”: numele câmpului formularului care deține parola („password”)
„<b>dbAuth.newPasswordFormField</b>”: numele câmpului de formular care conține noua parolă („newPassword”)
„<b>dbAuth.registerUser</b>”: date de utilizator JSON (sau „1”) în cazul în care doriți ca punctul final /register să fie activat („”)
„<b>dbAuth.loginAfterRegistration</b>”: 1 sau zero dacă utilizatorii înregistrați ar trebui să fie autentificați după înregistrare („”)
„<b>dbAuth.passwordLength</b>”: lungimea minimă pe care trebuie să o aibă parola („12”)
„<b>dbAuth.sessionName</b>”: numele sesiunii PHP care este pornită („”)<br/>
„<b>wpAuth.mode</b>”: Setați la „opțional” dacă doriți să permiteți accesul anonim („required”)
"<b>wpAuth.wpDirectory</b>": folderul/calea unde poate fi găsită instalarea Wordpress ("".")
„<b>wpAuth.usernameFormField</b>”: numele câmpului de formular care conține numele de utilizator („username”)
„<b>wpAuth.passwordFormField</b>”: numele câmpului formularului care conține parola („password”)<br/>
„<b>jwtAuth.mode</b>”: Setați la „opțional” dacă doriți să permiteți accesul anonim („required”)
„<b>jwtAuth.header</b>”: numele antetului care conține simbolul JWT („<a href="https://www.sitepoint.com/community/t/x-authorization-in-headers-for-api-interface/226388"><b>X-Authorization</b></a>”)
„<b>jwtAuth.leeway</b>”: numărul acceptabil de secunde de înclinare a ceasului („5”)
„<b>jwtAuth.ttl</b>”: numărul de secunde în care simbolul este valid („30”)
„<b>jwtAuth.secrets</b>”: Secretul(ele) partajat(e) folosit(e) pentru a semna simbolul JWT cu ("")
"<b>jwtAuth.algorithms</b>": algoritmii care sunt permisi, gol înseamnă "toți" ("")
„<b>jwtAuth.audiences</b>”: segmentele de public permise, gol înseamnă „toate” („”)
„<b>jwtAuth.issuers</b>”: emitenții care sunt permisi, gol înseamnă „toți” („”)
„<b>jwtAuth.sessionName</b>”: numele sesiunii PHP care este începută („”)<br/>
„<b>basicAuth.mode</b>”: Setați la „opțional” dacă doriți să permiteți accesul anonim („required”)
„<b>basicAuth.realm</b>”: Text pentru a solicita când se afișează autentificare („Username and password required”)
"<b>basicAuth.passwordFile</b>": fișierul de citit pentru combinațiile nume de utilizator/parolă (".htpasswd")
„<b>basicAuth.sessionName</b>”: numele sesiunii PHP care este începută („”)<br/>
"<b>reconnect.driverHandler</b>": Handler pentru a implementa preluarea driverului bazei de date ("")
"<b>reconnect.addressHandler</b>": Handler pentru a implementa preluarea adresei bazei de date ("")
"<b>reconnect.portHandler</b>": Handler pentru a implementa preluarea portului bazei de date ("")
"<b>reconnect.databaseHandler</b>": Handler pentru a implementa preluarea numelui bazei de date ("")
"<b>reconnect.tablesHandler</b>": Handler pentru a implementa preluarea numelor de tabel ("")
"<b>reconnect.mappingHandler</b>": Handler pentru a implementa preluarea mapării numelor ("")
"<b>reconnect.usernameHandler</b>": Handler pentru a implementa preluarea numelui de utilizator al bazei de date ("")
"<b>reconnect.passwordHandler</b>": Handler pentru a implementa regăsirea parolei bazei de date ("")<br/>
"<b>authorization.tableHandler</b>": Handler pentru a implementa regulile de autorizare a tabelelor ("")
"<b>authorization.columnHandler</b>": Handler pentru a implementa regulile de autorizare a coloanei ("")
"<b>authorization.pathHandler</b>": Handler pentru a implementa regulile de autorizare a căii ("")
"<b>authorization.recordHandler</b>": Handler pentru a implementa regulile de filtrare a autorizației de înregistrare ("")<br/>
"<b>validation.handler</b>": Handler pentru a implementa reguli de validare pentru valorile de intrare ("")
„<b>validation.types</b>”: tipuri pentru care să se permită validarea tipului, gol înseamnă „niciunul” („all”)
„<b>validation.tables</b>”: tabele pentru care să se permită validarea tipului, gol înseamnă „niciunul” („all”)<br/>
„<b>ipAddress.tables</b>”: tabele pentru a căuta coloane pe care să le înlocuiți cu adresa IP ("")
„<b>ipAddress.columns</b>”: coloane de protejat și de înlocuit cu adresa IP la creare („”)<br/>
"<b>sanitation.handler</b>": Handler pentru a implementa regulile de salubrizare pentru valorile de intrare ("")
„<b>sanitation.types</b>”: Tipuri pentru a activa tipul de salubrizare, gol înseamnă „niciunul” („all”)
„<b>sanitation.tables</b>”: tabele pentru a permite tipul de salubrizare, gol înseamnă „niciunul” („all”)<br/>
"<b>multiTenancy.handler</b>": Handler pentru a implementa reguli simple de închiriere multiplă ("")<br/>
„<b>pageLimits.pages</b>”: numărul maxim de pagini pe care îl permite o operație de listă („100”)
„<b>pageLimits.records</b>”: numărul maxim de înregistrări returnate de o operație de listă („1000”)<br/>
„<b>joinLimits.depth</b>”: adâncimea (lungimea) maximă care este permisă într-o cale de îmbinare („3”)
„<b>joinLimits.tables</b>”: numărul maxim de mese la care vi se permite să vă alăturați („10”)
„<b>joinLimits.records</b>”: numărul maxim de înregistrări returnate pentru o entitate asociată („1000”)<br/>
„<b>textSearch.parameter</b>”: numele parametrului folosit pentru termenul de căutare („căutare”)<br/>
"<b>customization.beforeHandler</b>": Handler pentru a implementa personalizarea cererii ("")
"<b>customization.afterHandler</b>": Handler pentru a implementa personalizarea răspunsului ("")
„<b>json.controllers</b>”: controlere pentru procesarea șirurilor JSON pentru („records,geojson”)<br/>
„<b>json.tables</b>”: tabele pentru procesarea șirurilor JSON pentru („all”)
„<b>json.columns</b>”: coloane pentru procesarea șirurilor JSON pentru („all”)<br/>
„<b>xml.typesv</b>”: tipuri JSON care ar trebui adăugate la atributul de tip XML („null,array”)<br/></pre>

Dacă nu specificați acești parametri în configurație, atunci se folosesc valorile <b>implicite</b> (cele dintre/între paranteze).

În secțiunile de mai jos găsiți mai multe informații despre <b>middleware</b>-ul încorporat. 
  <hr/><br/>
  </details> <!--h4--> 
  <hr/><br/> 
  </details> <!--h3--> 

  Sa analizam pe rand fiecare parametru de configurare „<b>middleware</b>”:
  
  <details><summary><h3>Autentificari & Autorizari</h3></summary>
  <br/><hr/> 
  <h3><b>Autentificare</b> versus <b>Autorizare</b></h3><br/>
<b>Autentificarea</b> confirmă că utilizatorul care se conectează este cine spune că este(verificarea <b>Identitatii</b> utilizatorului), <br/>
    în timp ce 
<b>Autorizarea</b> confirmă că acesta(utilizatorul) are <b>permisiunile</b> potrivite pentru a accesa <b>informațiile</b> pe care le dorește.</br/></br/>

<b>NB</b>:<br/>
<b>Identitatea utilizatorului</b> versus <b>Permisiunile de acces ale utilizatorului asupra resurselor</b>

  <details><summary><h3>Autentificari</h3></summary>
  <br/><hr/>   
  <details><summary><h4>Autentificare</h4></summary>
  <br/><hr/>
  În prezent, sunt acceptate cinci(<b>5</b>) <b>tipuri de autentificare</b>.<br/>
  <b>Toate</b> aceste <b>tipuri</b>, stochează utilizatorul autentificat în <b>variabila</b> super-globală <b>$_SESSION</b> .<br/>
  Această <b>variabilă</b> poate fi utilizată în <b>manipulatorii de autorizare</b> pentru a decide dacă cineva ar trebui să aibă sau nu <br/>
  acces de citire(<b>Read</b> sau scriere(<b>Write</b>) la anumite <b>tabele</b>, <b>coloane</b> sau <b>înregistrări/randuri</b>.<br/>
  Următoarea prezentare generală arată <b>tipurile de middleware de autentificare</b> pe care le puteți <b>activa</b>.<br/><br/>
    <center>
      <table tabindex="0">
<thead>
<tr>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Denumire</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Middleware</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Autentificat prin</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Utilizatorii sunt stocați în</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Variabila de sesiune</font></font></th>
</tr>
</thead>
<tbody>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1.cheie API</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">apiKeyAuth</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Antetul „X-API-Key”.</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">configurație</font></font></td>
<td><code>$_SESSION['apiKey']</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2.DB cheie API</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">apiKeyDbAuth</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Antetul „X-API-Key”.</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">tabelul bazei de date</font></font></td>
<td><code>$_SESSION['apiUser']</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3.Baza de date(DB)</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dbAuth</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">punctul final „/login”.</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">tabelul bazei de date</font></font></td>
<td><code>$_SESSION['user']</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4.De bază</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">basicAuth</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Antetul „Autorizare”.</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fișierul „.htpasswd”.</font></font></td>
<td><code>$_SESSION['username']</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5.JWT</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">jwtAuth</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Antetul „Autorizare”.</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">furnizor de identitate</font></font></td>
<td><code>$_SESSION['claims']</code></td>
</tr>
</tbody>
</table>
    </center><br/>
    Mai jos găsiți mai multe informații despre fiecare dintre tipurile de autentificare.
  <hr/><br/>
  </details> <!--h4--> 
  
  <details><summary><h4>1.Autentificare cu cheie-API(API-key)</h4></summary>
  <br/><hr/>
Autentificarea cu <b>chei API</b> funcționează prin <u>trimiterea</u> unei <b>chei API</b> într-un <b>antet de solicitare</b>.<br/>
Denumirea antetului este implicit <b>„X-API-Key”</b> și poate fi configurat folosind parametrul de configurare <b>„apiKeyAuth.header”</b>.<br/>
Cheile API valide trebuie configurate folosind parametrul de configurare <b>„apiKeyAuth.keys”</b> (listă separată prin virgulă).

    X-API-Key: 02c042aa-c3c2-4d11-9dae-1a6e230ea95e

Cheia API autentificată va fi <u>stocată</u> în variabila <b>$_SESSION['apiKey']</b>.

Rețineți că autentificarea cheii API <u>nu necesită</u> și <u>nu utilizează</u> module <b>cookie de sesiune</b>.   
  <hr/><br/>
  </details> <!--h4--> 
  
  <details><summary><h4>2.Autentificarea prin intermediul Bazei de Date cu cheie-API(API-key)</h4></summary>
  <br/><hr/>
Autentificarea <b>bazei-de-date cu chei-API</b> funcționează prin <u>trimiterea</u> unei <b>chei API</b> într-un antet de solicitare <b>„X-API-Key”</b> (numele este configurabil).<br/>
Cheile API valide sunt <u>citite</u> din baza de date din coloana <b>„api_key”</b> a tabelului <b>„users”</b> (ambele denumiri sunt configurabile).

    X-API-Key: 02c042aa-c3c2-4d11-9dae-1a6e230ea95e

Utilizatorul autentificat (cu toate proprietățile sale) va fi <u>stocat</u> în variabila <b>$_SESSION['apiUser']</b>.

Rețineți că autentificarea bazei de date cu chei API <u>nu necesită</u> și <u>nu utilizează</u> module <b>cookie de sesiune</b>.  
  <hr/><br/>
  </details> <!--h4--> 
  
  <details><summary><h4>3.Autentificarea prin intermediul Bazei de Date cu cont-utilizator(username si password)</h4></summary>
  <br/><hr/>
    Middleware-ul de <b>autentificare a bazei de date<b></b>details</b> definește cinci(<b>5</b>) <b>rute</b> noi:<br/>
<pre>  
method path       - parameters                      - description
---------------------------------------------------------------------------------------------------
GET    /me        -                                 - returns the user that is currently logged in
POST   /register  - username, password              - adds a user with given username and password
POST   /login     - username, password              - logs a user in by username and password
POST   /password  - username, password, newPassword - updates the password of the logged in user
POST   /logout    -                                 - logs out the currently logged in user 
</pre>  
Un utilizator poate fi conectat trimițând <b>>numele de utilizator</b și <b>parola</b> la punctul-final(<b>endpoint</b>-ul) de conectare (în format <b>JSON</b>).<br/>
Utilizatorul autentificat (cu toate proprietățile sale) va fi stocat în variabila <b>$_SESSION['user']</b>.<br/>
Utilizatorul poate fi deconectat prin trimiterea unei cereri <b>POST</b> cu un corp gol la punctul final de deconectare.<br/>
Parolele sunt stocate ca <b>hash</b>-uri în coloana parolei din tabelul utilizatori(<b>users</b>**.<br/>
Puteți înregistra un utilizator nou utilizând punctul final de înregistrare, dar această funcționalitate trebuie activată<br/>
folosind parametrul de configurare <b>„dbAuth.registerUser”</b>.<br/><br/>

Este IMPORTANT să restricționați accesul la tabelul utilizatori folosind middleware-ul de „autorizare”, altfel toți utilizatorii<br/>
pot adăuga, modifica sau șterge liber orice cont! Configurația minimă este prezentată mai jos:

      'middlewares' => 'dbAuth,authorization',
      'authorization.tableHandler' => function ($operation, $tableName) {
          return $tableName != 'users';
      },

Rețineți că acest middleware utilizează <b>cookie</b>-uri de sesiune și stochează <b>starea</b> de autentificare pe server.<br/>

  <details><summary><h4><b>Conectați-vă folosind vizualizări/viziuni cu o tabela-join(o tabela de alaturare)</b></h4></summary>
  <br/><hr/>

Pentru operațiunile de conectare, este posibil să utilizați o vizualizare ca tabel utilizatori(<b>users</b>).<br/>
O astfel de vizualizare poate returna:<br/>

 - un rezultat filtrat din tabelul utilizatorilor(<b>users</b>), de exemplu, <br/>
    <b>where activ = true</b> sau poate returna, de asemenea, 
 - un rezultat mai multe tabele printr-o <b>unire/uniune de tabele</b>.<br/>
 
Cel puțin, vizualizarea ar trebui să includă <b>numele de utilizator</b> și  <b>parola</b>, precum și un câmp numit <b>id</b>.

Cu toate acestea, <b>vizualizările</b> cu tabele-unite <b>nu sunt inserabile</b> ( vezi <a href="https://github.com/mevdschee/php-crud-api/issues/907">problema 907</a> ).<br/>
Ca o soluție, utilizați proprietatea <b>loginTable</b> pentru a seta un tabel de referință diferit pentru conectare.<br/>
<b>UserTable</b> va fi setat în continuare la tabelul de utilizatori normal, care poate fi inserat(sau este inserabil adica se pot insera randuri/inregistrari noi).
  <hr/><br/>
  </details> <!--h4--> 
  <details><summary><h4>Autentificare prin intermediul Wordpress(WP)</h4></summary>
  <br/><hr/>
 Middleware-ul de <b>autentificare Wordpress(WP)</b> definește trei(<b>3</b>) <b>rute</b>:<br/>
 <pre>

method path       - parameters                      - description
---------------------------------------------------------------------------------------------------
GET    /me        -                                 - returns the user that is currently logged in
POST   /login     - username, password              - logs a user in by username and password
POST   /logout    -                                 - logs out the currently logged in user

</pre>
Un utilizator poate fi conectat trimițând <b>numele de <b>utilizator</b> și <b>parola</b> la punctul-final(endpoint</b>-ul) de conectare (în format <b>JSON</b>).<br/>
Utilizatorul poate fi deconectat prin trimiterea unei cereri <b>POST</b> cu un corp gol la punctul final de deconectare.<br/>
Trebuie să specificați directorul de instalare Wordpress utilizând parametrul de configurare <b>„wpAuth.wpDirectory”</b>.<br/>
Middleware-ul numește <b>„wp-load.php”</b>, ceea ce vă permite să utilizați <b>funcții Wordpress</b> în middleware-ul de autorizare, cum ar fi:

 - wp_get_current_user()
 - is_user_logged_in()
 - is_super_admin()
 - user_can(wp_get_current_user(),'edit_posts');

Rețineți că variabila <b>$_SESSION</b> nu este utilizată de acest middleware.  
  <hr/><br/>
  </details> <!--h4-->
  <hr/><br/>
  </details> <!--h4 end 3.-->  
  <details><summary><h4>4.Autentificare de baza</h4></summary>
  <br/><hr/>
Tipul de bază acceptă un fișier (în mod implicit <b>„.htpasswd”</b>) care deține utilizatorii și parolele lor (<b>hash</b>-uite) separate prin două puncte („<b>:</b>”).<br/>
Când <b>parolele</b> sunt introduse în text simplu, acestea vor fi automat <b>hash</b>-uite/codificate.<br/>
<b>Numele de utilizator</b> autentificat va fi stocat în variabila <b>$_SESSION['username']</b>.<br/> 
Trebuie să trimiteți un antet <b>„Autorization”</b> care să conțină o versiune codificată <b>URL-base64</b> a <b>numelui de utilizator</b> și a <b>parolei</b> separate prin două puncte(<b>:</b>), după cuvântul <b>„Basic”</b>.

    Authorization: Basic dXNlcm5hbWUxOnBhc3N3b3JkMQ

Acest exemplu trimite șirul „<b>username1</b>:<b>password1</b>”.  
  <hr/><br/>
  </details>
  
  <details><summary><h4>5.Autentificari JWT</h4></summary>
  <br/><hr/>
  <details><summary><h5>Autentificare utilizand token/jeton-JWT</h5></summary>
  <br/><hr/>
Tipul <a href="https://en.wikipedia.org/wiki/JSON_Web_Token"><b>JWT</b></a> necesită un alt server (<a href="https://jumpcloud.com/lp/sso-fava-bean?gclid=Cj0KCQjwxsm3BhDrARIsAMtVz6MPbn5of0ohdcQAS5TIlg9TAk1b6-y7WfcrIARJKS-xpGyXPsYL7AAaAtQoEALw_wcB&creative=675783148527&keyword=sso%20software&matchtype=b&network=g&device=c&utm_source=GoogleAds-Paid&utm_medium=Paid-Search&utm_term=sso%20software&utm_content=&utm_campaign=Google_S_EMEA_EN_SSO&cq_src=google_ads&cq_cmp=11819236050&cq_con=159429200292&cq_term=sso%20software&cq_med=&cq_plac=&cq_net=g&cq_pos=&cq_plt=gp&gad_source=1"<b>SSO</b></a>/<b></b>Identity</b>)...-deci un intermediar/middleware-... pt. a <a href="https://medium.com/winkhosting/create-a-basic-php-api-with-token-authentication-96111eada51">semna</a> un simbol(<b>token</b>) care conține revendicări(cerinte).<br/>
Ambele servere partajează(detin in comun) un <b>secret</b>, astfel încât, in dublu-sens/ pe 2-cai, să poată <b>semna(Write)</b> sau să <b>verifice(Read)</b> dacă <b>semnătura</b> este validă.<br/> 
Revendicările(adica ce cereri are de efectuat) sunt stocate în variabila  <b>$_SESSION['claims']</b>.<br/>
Trebuie să trimiteți un antet <a href="https://www.sitepoint.com/community/t/x-authorization-in-headers-for-api-interface/226388"><b>„X-Authorization”</b></a> care să conțină un <b>antet</b>, un <b>corp</b> și o <b>semnătură</b> de simbol(token) cu ​​coduri <b>URL base64</b> și separate prin puncte după cuvântul <b>„Bearer”</b> ( citiți mai multe despre <a href="https://jwt.io/">JWT</a> aici ).<br/>
Standardul spune că trebuie să utilizați antetul <b>„Autorization”</b>, dar acest lucru este problematic în <a href="https://www.geeksforgeeks.org/how-to-set-http-headers-using-apache-server/"><b>webserverul Apache</b></a> și <b>limbajul PHP</b>.

    X-Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6IjE1MzgyMDc2MDUiLCJleHAiOjE1MzgyMDc2MzV9.Z5px_GT15TRKhJCTHhDt5Z6K6LRDSFnLj8U5ok9l7gw

Acest exemplu trimite urmatoarele <a href="https://en.wikipedia.org/wiki/JSON_Web_Token">revendicări</a> <b>semnate</b>:

    {
      "sub": "1234567890",
      "name": "John Doe",
      "admin": true,
      "iat": "1538207605",
      "exp": 1538207635
    }
    
<b>NB</b>: Implementarea <a href="https://jwt.io/introduction"><b>JWT</b></a> acceptă doar algoritmii bazați pe <b>RSA</b> și <b>HMAC</b>.   
  <hr/><br/>
  </details> <!--h5--> 
  <details><summary><h5>Configurarea si testarea autentificarii-JWT cu/prin Auth0</h5></summary>
  <br/><hr/>
Mai întâi trebuie să <b>creați un cont</b> pe web-site-ul <a href="https://auth0.com/auth/login">Auth0</a>.<br/>
In acest caz, intermediarul/middleware-ul(intre aplicatia/client sau operator si backend-ul nostru <b>api.php</b>) nu mai este un server local/aflat la distanta ci un produs-software-web(un api,un server,un cloud,...), daca vreti, mai pe scurt, un website, aflat la distanta, al unei terte parti(in acest caz oferit/mentinut/administrat/gestionat/... de catre cei de la Okta).<br/>
Odată autentificat(logat in site-ul Auth0/by Okta), trebuie să <b>creați o aplicație</b> (tipul acesteia nu contează).<br/>
Colectați din acest site <b>Domain</b> și <b>Client ID</b> și păstrați-le pentru o utilizare ulterioară.<br/>
Apoi, <b>creați un API</b>: dați-i un nume/denumire și <b>completați</b> câmpul <b>identifier</b> cu adresa URL a punctului-final API(<b>API-endpoint URL</b>).

Apoi trebuie să configurați/personalizati configurația <b>jwtAuth.secrets</b> în fișierul dvs <b>api.php</b> .<br/>
Nu o completați cu cele pe care le veți găsi in <b>secret</b>, în setările aplicației dvs. <b>Auth0</b>, ci cu un <b>certificat public</b>.<br/>
Pentru a-l găsi(certificatul public), accesați <b>setările</b> aplicației dvs., apoi mergeti în <b>„Extra settings”</b>.<br/>
Veți găsi acum/aici o filă/zona <b>„Certificates”</b> unde veți găsi <b>cheia publică</b> în câmpul <b>Signing Certificate</b>(Certificat de semnare).

Pentru a vă <b>testa integrarea</b>, puteți copia fișierul <a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/examples/clients/auth0/vanilla.html">auth0/vanilla.html</a>.<br/>
Asigurați-vă că ati completat aceste trei(<b>3</b>) <b>variabile</b>:

 - <b>authUrl</b>  cu domeniul dvs. Auth0(Auth0 domain)
 - <b>clientId</b> cu ID-ul dvs. de client(Client ID)
 - <b>audience</b> cu adresa URL API pe care ați creat-o în Auth0
   
Rețineți că, dacă nu completați parametrul de <b>audience</b>, acesta nu va funcționa deoarece nu veți obține un <b>JWT</b> valid.<br/>
De asemenea, rețineți că trebuie să completați <b>jwtAuth.audiences</b>(cu valoarea <b>audience</b>) pt a vă asigura că token-urile sunt validate(pentru a fi generate spre a fi utilizate in aplicația dvs).

De asemenea, puteți <b>modifica</b> variabila <b>url</b> , folosită pentru a testa API-ul cu autentificare.

<a href="https://auth0.com/docs/api-auth/tutorials/verify-access-token">Mai multe Informații</a>

  <hr/><br/>
  </details> <!--h5--> 
  <details><summary><h5>Configurare si testare autentificare JWT cu/prin Firebase</h5></summary>
  <br/><hr/>
Mai întâi trebuie să <b>creați un proiect</b> Firebase pe <a href="https://console.firebase.google.com/">consola Firebase</a> .<br/>
Adăugați o <b>aplicație web</b> la acest proiect și luați <b>fragmentul de cod</b> pentru o utilizare ulterioară.

Apoi trebuie să <b>configurați</b> zona/configurația <b>jwtAuth.secrets</b> în/din fișierul dvs <b>api.php</b>.<br/>
Acest lucru se poate face după cum urmează:

 - <b>a</b>. Conectați/Adaugați-vă un <b>utilizator</b> la aplicația dvs. bazată pe Firebase/by Google, si apoi obțineți un simbol(<b>token</b>/jeton) de autentificare pentru utilizatorul respectiv<br/>
 - <b>b</b>. Accesați <a href="https://jwt.io/">https://jwt.io/</a> și inserați <b>jeton/token</b>-ul în câmpul de decodare(<b>Encoded</b>)<br/>
 - <b>c</b>. Citiți informațiile <b>antet</b>-ului decodificate din simbol(<b>jeton/token</b>), acesta vă va oferi <b>kid</b> <br/>
 - <b>d</b>. Luați <b>cheia-publică</b> prin această adresă-URL , care corespunde cu <b>kid</b>-ului din pasul anterior <br/>
 - <b>e</b>. Acum, completează <b>jwtAuth.secrets</b> cu <b>cheia-publică</b> în <b>api.php</b>

De asemenea, configurați <b>jwtAuth.audiences</b>(completați <b>ID</b>-ul proiectului Firebase: '<b>your-project-id</b>').

Iată un <b>exemplu</b> despre cum ar trebui să arate acesta, în configurație:

    ...,
            'middlewares' => 'cors, jwtAuth, authorization',
            'jwtAuth.secrets' => "ce5ced6e40dcd1eff407048867b1ed1e706686a0:-----BEGIN CERTIFICATE-----\nMIIDHDCCAgSgAwIBAgIIExun9bJSK1wwDQYJKoZIhvcNAQEFBQAwMTEvMC0GA1UE\nAxMmc2VjdXJldG9rZW4uc3lzdGVtLmdzZXJ2aWNlYWNjb3VudC5jb20wHhcNMTkx\nMjIyMjEyMTA3WhcNMjAwMTA4MDkzNjA3WjAxMS8wLQYDVQQDEyZzZWN1cmV0b2tl\nbi5zeXN0ZW0uZ3NlcnZpY2VhY2NvdW50LmNvbTCCASIwDQYJKoZIhvcNAQEBBQAD\nggEPADCCAQoCggEBAKsvVDUwXeYQtySNvyI1/tZAk0sj7Zx4/1+YLUomwlK6vmEd\nyl2IXOYOj3VR7FBA24A9//nnrp+mV8YOYEOdaWX7PQo0PIPFPqdA0r7CqBUWHPfQ\n1WVHVRQY3G0c7upM97UfMes9xOrMqyvecMRk1e5S6eT12Zh2og7yiVs8gP83M1EB\nGqseUaltaadjyT35w5B0Ny0/7NdLYiv2G6Z0S821SxvSo1/wfmilnBBKYYluP0PA\n9NPznWFP6uXnX7gKxyJT9//cYVxTO6+b1TT13Yvrpm1a4EuCOhLrZH6ErHQTccAM\nhAx8mdNtbROsp0dlPKrSfqO82uFz45RXZYmSeP0CAwEAAaM4MDYwDAYDVR0TAQH/\nBAIwADAOBgNVHQ8BAf8EBAMCB4AwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwIwDQYJ\nKoZIhvcNAQEFBQADggEBACNsJ5m00gdTvD6j6ahURsGrNZ0VJ0YREVQ5U2Jtubr8\nn2fuhMxkB8147ISzfi6wZR+yNwPGjlr8JkAHAC0i+Nam9SqRyfZLqsm+tHdgFT8h\npa+R/FoGrrLzxJNRiv0Trip8hZjgz3PClz6KxBQzqL+rfGV2MbwTXuBoEvLU1mYA\no3/UboJT7cNGjZ8nHXeoKMsec1/H55lUdconbTm5iMU1sTDf+3StGYzTwC+H6yc2\nY3zIq3/cQUCrETkALrqzyCnLjRrLYZu36ITOaKUbtmZhwrP99i2f+H4Ab2i8jeMu\nk61HD29mROYjl95Mko2BxL+76To7+pmn73U9auT+xfA=\n-----END CERTIFICATE-----\n",
            'jwtAuth.audiences' => 'your-project-id',
            'cors.allowedOrigins' => '*',
            'cors.allowHeaders' => 'X-Authorization'
            
Nota:

 - Perechea <b>kid:key</b> este formatată ca șir
 - Nu includeți spații înainte sau după „<b>:</b>”
 - Utilizați ghilimele duble (<b>""</b>) în jurul textului care desemneaza șirul respectiv
 - Șirul trebuie să conțină avansuri de linie (<b>\n</b>)
 - <b>jwtAuth.audiences</b> ar trebui să conțină <b>ID</b>-ul de proiect Firebase

Pentru a vă testa integrarea, puteți copia fișierul <a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/examples/clients/firebase/vanilla.html">firebase/vanilla.html</a> și fișierul <a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/examples/clients/firebase/vanilla-success.html">firebase/vanilla-success.html</a>, folosite ca pagină de <b>„succes”</b> și pentru a afișa <b>rezultatul API</b>.

Înlocuiți, în ambele fișiere, configurația Firebase (obiectul <b>firebaseConfig</b> ).

De asemenea, puteți modifica variabila <b>url</b>, folosită pentru a <b>testa</b> API-ul cu autentificare.

<a href="https://firebase.google.com/docs/auth/admin/verify-id-tokens#verify_id_tokens_using_a_third-party_jwt_library">Mai multe Informații</a>
  <hr/><br/>
  </details> <!--h5-->
  <hr/><br/>
  </details> <!--h4-->
  <hr/><br/>
  </details> <!--h3-->
  <details><summary><h3>Autorizari</h3></summary>
  <br/><hr/>
  <details><summary><h4>Autorizarea operatiilor</h4></summary>
  <br/><hr/>
  Modelul de Autorizare acționează asupra <b>„operations”</b>. <br/>
  Cele mai importante <b>„operatiuni/operatii”</b> sunt enumerate aici:


    method path                  - operation - description
    ----------------------------------------------------------------------------------------
    GET    /records/{table}      - list      - lists records
    POST   /records/{table}      - create    - creates records
    GET    /records/{table}/{id} - read      - reads a record by primary key
    PUT    /records/{table}/{id} - update    - updates columns of a record by primary key
    DELETE /records/{table}/{id} - delete    - deletes a record by primary key
    PATCH  /records/{table}/{id} - increment - increments columns of a record by primary key
    
Punctul-final <b>„ /openapi”</b> va afișa doar ceea ce este <b>permis</b> în sesiunea dumneavoastră.<br/>
De asemenea, are o operațiune specială <b>„document”</b> care vă permite să <b>ascundeți</b> tabelele și coloanele din documentație.<br/>

Pentru punctele-finale care încep cu <b>„ /columns”</b> există operațiunile <b>„reflect”</b> și <b>„remodel”</b>.<br/>
Aceste operațiuni(<b>„reflect”</b> și <b>„remodel”</b>) pot <b>afișa</b> sau <b>modifica definiția</b> bazei de date(<b>db</b>), a tabelului(<b>table</b>) sau a coloanei(<b>column</b>).<br/>
Această funcționalitate(<b>„ /columns”</b>) este <b>dezactivată implicit</b>  și din motive întemeiate (ai grijă!).<br/>
Adăugați controlerul <b>„ /columns”</b> în configurație pentru a <b>activa</b> această funcționalitate.
  <hr/><br/>
  </details><!--h4-->
  <details><summary><h4>Autorizarea tabelelor,coloanelor si inregistrarilor/randurilor</h4></summary>
  <br/><hr/>
În mod <b>implicit</b>, toate tabelele(<b>tables</b>), coloanele(<b>columns</b>) și căile/rutele(<b>paths</b>) sunt <b>accesibile</b>.<br/>
Dacă doriți să <b>restricționați accesul</b> la unele <b>tabele</b>, puteți adăuga middleware-ul <b>„autorizare”</b> și puteți defini o funcție 
<b>„authorization.tableHandler”</b> care returnează <b>„false”</b> pentru aceste tabele.

    'authorization.tableHandler' => function ($operation, $tableName) {
        return $tableName != 'license_keys';
    },

Exemplul de mai sus va <b>restricționa accesul</b> la tabelul <b>„license_keys”</b> pentru <b>toate operațiunile</b>.

    'authorization.columnHandler' => function ($operation, $tableName, $columnName) {
        return !($tableName == 'users' && $columnName == 'password');
    },

Exemplul de mai sus va <b>restricționa accesul</b> la câmpul <b>„password”</b> din tabelul <b>„users”</b> pentru <b>toate operațiunile</b>.

    'authorization.recordHandler' => function ($operation, $tableName) {
        return ($tableName == 'users') ? 'filter=username,neq,admin' : '';
    },

Exemplul de mai sus va <b>interzice accesul</b> la înregistrările/randurile utilizatorilor(<b>users</b>) unde <b>username</b> este <b>„admin”</b>.<br/>
Aceasta constructie adaugă un <b>filtru</b> la fiecare interogare(<b>SQL-query</b>) executată.

      'authorization.pathHandler' => function ($path) {
          return $path === 'openapi' ? false : true;
      },

Exemplul de mai sus va <b>dezactiva</b> ruta <b>/openapi</b>.

<b>NB</b>:<br/>
Trebuie să gestionați crearea de <b>înregistrări/randuri nevalide</b> cu un handler de validare (sau de <b>sanitation</b>/salubrizare/sanitizare/igienizare).   
  <hr/><br/>
  </details> <!--h4-->
  <details><summary><h4>Autorizarea SQL GRANT</h4></summary>
  <br/><hr/>
Puteți utiliza alternativ permisiunile bazei de date (instrucțiuni <b>SQL GRANT</b>) pentru a defini modelul de autorizare.<br/>
În acest caz, <b>nu</b> ar trebui să utilizați middleware-ul de <b>„autorization”</b>, dar trebuie să utilizați middleware-ul de <b>„reconnect”</b>.<br/>
Managerii middleware-ului <b>„reconnect”</b> vă permit să specificați numele de utilizator(<b>username</b>) și parola(<b>password</b>) corecte, astfel:

    'reconnect.usernameHandler' => function () {
        return 'mevdschee';
    },
    'reconnect.passwordHandler' => function () {
        return 'secret123';
    },

Acest lucru va face ca API-ul să se conecteze la baza de date specificând <i>„mevdschee”</i> ca nume de utilizator și <i>„secret123”</i> ca parolă.<br/>
<b>Specificația OpenAPI</b> este mai puțin specifică pentru operațiunile permise și interzise atunci când utilizați permisiunile bazei de date, deoarece permisiunile nu sunt citite în pasul de reflecție.<br/>

<b>NB</b>:<br/>
Poate/Daca doriți să preluați numele de utilizator(<b>username</b>) și parola(<b>password</b>) din sesiune (utilizati variabila <b>„$_SESSION”</b>.   
  <hr/><br/>
  </details> <!--h4-->
  <hr/><br/>
  </details> <!--h3-->
  <hr/><br/> 
  </details> <!--h3 inchidere Autentificari si Autorizari-->  
  <details><summary><h3>Sanitizarea & Validarea intrarii</h3></summary>
  <br/><hr/>
  <details><summary><h3>Sanitizarea intrarii</h3></summary>
  <br/><hr/>
În mod implicit, toate intrările sunt <b></b>acceptate și <b>trimise</b> la baza de date(pentru stocare).<br/>
Dacă doriți să <b>eliminați</b> (anumite) etichete <b>HTML</b> înainte de <i>stocare</i>, puteți adăuga middleware-ul <b>„sanitation”</b> și definiți o funcție <b>„sanitation.handler”</b> care returnează valoarea ajustată.

    'sanitation.handler' => function ($operation, $tableName, $column, $value) {
        return is_string($value) ? strip_tags($value) : $value;
    },

Exemplul de mai sus va <b>elimina toate etichetele HTML</b> din șirurile de caractere din intrare.

  <details><summary><h4>Tipul sanitizarii</h4></summary>
  <br/><hr/>

Dacă activați middleware-ul <b>„sanitation”</b>, atunci activați (automat) și igienizarea de tip(<b>sanitation.types</b>).<br/>
Când aceasta este <b>activată</b>, puteți :

 - să trimiteți spații albe(whitespace) de început(leading) și de final(trailing) într-un câmp fără caractere (non-character field, care va fi ignorat).
 - trimite un float la un câmp întreg(int) sau bigint (va fi rotunjit/rounded) - conversie de tip cu/prin rotunjire.
 - să trimiteți un șir codificat base64 url (va fi convertit în codificare base64 obișnuită).
 - să trimiteți o oră/data/stamp în orice <a href="https://www.php.net/manual/en/datetime.formats.php">format acceptat strtotime</a> (va fi convertit).

Puteți utiliza setările de configurare <b>„sanitation.types„</b> și <b>„sanitation.tables”</b> pentru a defini pentru ce tipuri și în ce tabele doriți să aplicați tipul de igienizare (implicit la „toate/all”).<br/> 
Exemplu:

    'sanitation.types' => 'date,timestamp',
    'sanitation.tables' => 'posts,comments',

Aici activăm igienizarea tipului pentru câmpurile de dată(<b>date</b>) și de timp(<b>timestamp</b>) din tabelele de postări(<b>posts</b>) și comentarii(<b>comments</b>).  
  <hr/><br/>
  </details>  <!--h4--> 
  <hr/><br/>
  </details> <!--h3-->

  <details><summary><h3>Validarea intrarii</h3></summary>
  <br/><hr/>
În mod <b>implicit</b>, toate intrările sunt <b>acceptate</b> și <b>trimise</b> la baza de date(spre stocare).<br/> 
Dacă doriți să validați intrarea într-un mod personalizat, puteți adăuga middleware-ul <b>„validation”</b> și puteți defini o funcție <b>„validation.handler”</b> care returnează un <b>boolean</b> care indică dacă valoarea este validă sau nu.

    'validation.handler' => function ($operation, $tableName, $column, $value, $context) {
        return ($column['name'] == 'post_id' && !is_numeric($value)) ? 'must be numeric' : true;
    },

Când editați un comentariu cu id 4 folosind:

    PUT /records/comments/4

Și trimiți ca si corp(payload):

    {"post_id":"two"}

Apoi serverul va returna un cod de stare HTTP <b>„422”</b> și un mesaj de <b>eroare</b> dragut:

    {
        "code": 1013,
        "message": "Input validation failed for 'comments'",
        "details": {
            "post_id":"must be numeric"
        }
    }

Puteți analiza această ieșire pentru a face câmpurile de formular să apară cu un chenar roșu și mesajul de <b>eroare</b> corespunzător.
  <details><summary><h4>Validari de tip</h4></summary>
  <br/><hr/>
Dacă activați middleware-ul <b>„validation”</b>, atunci activați (in mod automat) și validarea <b>tipului</b>.<br/>
Aceasta(validare de tip) include următoarele <b>mesaje de eroare</b>:<br/>

<table>
<thead>
<tr>
<th>error message</th>
<th>reason</th>
<th>applies to types</th>
</tr>
</thead>
<tbody>
<tr>
<td>cannot be null</td>
<td>unexpected null value</td>
<td>(any non-nullable column)</td>
</tr>
<tr>
<td>illegal whitespace</td>
<td>leading/trailing whitespace</td>
<td>integer bigint decimal float double boolean</td>
</tr>
<tr>
<td>invalid integer</td>
<td>illegal characters</td>
<td>integer bigint</td>
</tr>
<tr>
<td>string too long</td>
<td>too many characters</td>
<td>varchar varbinary</td>
</tr>
<tr>
<td>invalid decimal</td>
<td>illegal characters</td>
<td>decimal</td>
</tr>
<tr>
<td>decimal too large</td>
<td>too many digits before dot</td>
<td>decimal</td>
</tr>
<tr>
<td>decimal too precise</td>
<td>too many digits after dot</td>
<td>decimal</td>
</tr>
<tr>
<td>invalid float</td>
<td>illegal characters</td>
<td>float double</td>
</tr>
<tr>
<td>invalid boolean</td>
<td>use 1, 0, true or false</td>
<td>boolean</td>
</tr>
<tr>
<td>invalid date</td>
<td>use yyyy-mm-dd</td>
<td>date</td>
</tr>
<tr>
<td>invalid time</td>
<td>use hh:mm:ss</td>
<td>time</td>
</tr>
<tr>
<td>invalid timestamp</td>
<td>use yyyy-mm-dd hh:mm:ss</td>
<td>timestamp</td>
</tr>
<tr>
<td>invalid base64</td>
<td>illegal characters</td>
<td>varbinary, blob</td>
</tr>
</tbody>
</table>

Puteți utiliza setările de configurare <b>„validation.types"</b> și <b>„validation.tables”</b> pentru a defini pentru ce tipuri și în ce tabele doriți să aplicați validarea tipului (implicit la „toate/<b>all</b>”).<br/> 
Exemplu:

    'validation.types' => 'date,timestamp',
    'validation.tables' => 'posts,comments',

Aici activăm <b>validarea tipului</b> pentru câmpurile de dată(<b>date</b>) și de timp(<b>timestamp</b>) din tabelele de postari(<b>posts</b>) și comentarii(<b>comments</b>).

<b>NB</b>:<br/>
Tipurile care sunt activate vor fi <i>verificate pentru valori nule</i> atunci când <i>coloana nu poate fi nulă</i>.   
  <hr/><br/>
  </details>   <!--h4-->
  <hr/><br/>
  </details>   <!--h4 end Sanitation & Validation--> 
  
  <hr/><br/>
  </details>   <!--h3-->

  <details><summary><h3>Suport multi-chirias(multi-tenancy)</h3></summary>
  <br/><hr/>

  <details><summary><h4>Intermediar multi-chirias(multi-tenancy middleware)</h4></summary>
  <br/><hr/>
Puteți utiliza middleware-ul <b>„multiTenancy”</b>(Middleware/Intermediere cu mai multe locații) atunci când aveți o singură bază de date(DB) cu mai mulți locatari/chiriași(in sensul stocarii/gazduirii).<br/>
Dacă chiriașii dvs. sunt identificați prin coloana <b>„customer_id”</b>, atunci puteți utiliza următorul <b>handler</b>(functie de manipulare/manipulator):

    'multiTenancy.handler' => function ($operation, $tableName) {
        return ['customer_id' => 12];
    },

Această construcție adaugă un <b>filtru</b> care necesită sa avem setata coloana <b>„customer_id”</b> la valoarea <b>„12”</b> la fiecare <b>operație</b> (cu <i>excepția</i> operatiei de creare/<b>„create”</b>).<br/>
De asemenea, setează coloana <b>„customer_id”</b> in cazul operatiei <b>„create”</b> la valoarea <b>„12”</b> și <b>elimină coloana</b> din orice altă operațiune de <b>scriere</b>(insert,update).

<b>NB</b>:<br/>
Daca doriți, puteti să preluați ID-ul clientului(<b>„customer_id”</b>) din sesiune (variabila <b>„$_SESSION”</b>).   
  <hr/><br/>
  </details> <!--h4-->
  <details><summary><h4>Intermediarul reconectarii</h4></summary>
  <br/><hr/>
Puteți utiliza middleware-ul de <b>„reconnect”</b> atunci când aveți o bază de date(DB) separată pentru fiecare chiriaș.<br/>
Dacă chiriașul are propria sa bază de date denumită <b>„customer_12”</b>, atunci puteți utiliza următorul <b>handler</b>/manipulator:

    'reconnect.databaseHandler' => function () {
        return 'customer_12';
    },

Acest lucru va face ca API-ul să se <b>reconnecteze la baza de date</b> specificând <b>„client_12”</b> ca nume/denumire al/a bazei de date(DB).<br/>
Dacă <b>nu</b> doriți să utilizați aceleași <b>acreditări</b>, atunci ar trebui să implementați și <b>„usernameHandler”</b> și <b>„passwordHandler”</b>.</br>

<b>NB</b>:<br/>
Daca doriți, puteti să preluați numele bazei de date din sesiune (variabila <b>„$_SESSION”</b>).   
  <hr/><br/>
  </details> <!--h4-->  
  <hr/><br/>
  </details><!--h3-->
  <details><summary><h3>Prevenirea răzuirii/"scraping"-ului bazei de date(culegerii/distrugerii nedorite de date)</h3></summary>
  <br/><hr/>
Puteți utiliza middleware-ul <b>„joinLimits”</b> și <b>„pageLimits”</b> pentru a preveni <b>răzuirii</b>/copierea/distrugerea nedorita a bazei de date.<br/> 
Middleware-ul <b>„joinLimits”</b> limitează adâncimea tabelului, numărul de tabele și numărul de înregistrări returnate într-o operație de îmbinare/alăturare/<b>reunire</b>(<b>join</b>).<br/>
Dacă doriți să permiteți <b>5</b> alăturari directe, alăturari directe cu maximum <b>25</b> de înregistrări fiecare, puteți specifica:

    'joinLimits.depth' => 1,
    'joinLimits.tables' => 5,
    'joinLimits.records' => 25,

Middleware-ul <b>„pageLimits”</b> limitează <b>numărul paginii</b> și <b>numărul înregistrărilor returnate</b> (d)intr-o operațiune de listare.<br/>
Dacă doriți să nu permiteți mai mult de <b>10</b> pagini cu maximum <b>25</b> de înregistrări fiecare, puteți specifica:

    'pageLimits.pages' => 10,
    'pageLimits.records' => 25,

<b>NB</b>:<br/>
Numărul maxim de înregistrări(in acest caz <b>25</b>) se aplică și atunci când <b>nu</b> există un număr de pagină(atunci cand <b>'pageLimits.pages'</b> este omis/lipseste) specificat în cerere.   
  <hr/><br/>
  </details>  <!--h3-->
  <details><summary><h3>Cautarea tuturor campurilor text</h3></summary>
  <br/><hr/>
Puteți utiliza middleware-ul <b>„textSearch”</b> pentru a simplifica căutările de text (caracterele metalice) atunci când enumerați înregistrările.<br/>
Vă permite să specificați un parametru de <b>„search”</b> folosind:

    GET /records/posts?search=Hello

Va returna toate înregistrările/randurile(dintr-o tabela a DB-ului) de la <b>„posts”</b> care conțin „Hello world” într-unul dintre câmpurile/coloanele lor de text (tastate):

    {
        "records":[
            {
                "id": 1,
                "title": "Hello world!",
                "content": "Welcome to the first post.",
                "created": "2018-03-05T20:12:56Z"
            }
        ]
    }

Exemplul caută în câmpurile/coloanele <b>„title”</b> sau <b>„content”</b> subșirul „Hello world”.   
  <hr/><br/>
  </details> <!--h3-->
  <details><summary><h3>Personalizarea manipulatorilor(customization handlers)</h3></summary>
  <br/><hr/>
Puteți utiliza middleware-ul de <b>„customization”</b> pentru a modifica cererea și răspunsul și pentru a implementa orice altă funcționalitate.<br/>

    'customization.beforeHandler' => function ($operation, $tableName, $request, $environment) {
        $environment->start = microtime(true);
    },
    
    'customization.afterHandler' => function ($operation, $tableName, $response, $environment) {
        return $response->withHeader('X-Time-Taken', microtime(true) - $environment->start);
    },

Exemplul de mai sus va adăuga un antet <b>„X-Time-Taken”</b> cu numărul de secunde pe care le-a consumat apelul API.   
  <hr/><br/>
  </details> <!--h3-->
  <details><summary><h3>Intermediarii JSON & XML</h3></summary>
  <br/><hr/>  
  <details><summary><h3>Optiuni de codificare JSON(JSON encoding options)</h3></summary>
  <br/><hr/>
  Puteți schimba modul în care este codificat <b>JSON</b> setând parametrul de configurare <b>„jsonOptions”</b>.

    'jsonOptions' => JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES,

Exemplul de mai sus va seta opțiunile <b>JSON</b> la 128+256+64 = <b>448</b>, conform listei de opțiuni de mai jos:

    JSON_HEX_TAG (1)
        All < and > are converted to \u003C and \u003E. 
    JSON_HEX_AMP (2)
        All & are converted to \u0026. 
    JSON_HEX_APOS (4)
        All ' are converted to \u0027. 
    JSON_HEX_QUOT (8)
        All " are converted to \u0022. 
    JSON_FORCE_OBJECT (16)
        Outputs an object rather than an array when a non-associative array is used. 
        Especially useful when the recipient of the output is expecting an object and 
        the array is empty. 
    JSON_NUMERIC_CHECK (32)
        Encodes numeric strings as numbers. 
    JSON_UNESCAPED_SLASHES (+64)
        Don't escape /. 
    JSON_PRETTY_PRINT (+128)
        Use whitespace in returned data to format it. 
    JSON_UNESCAPED_UNICODE (+256)
        Encode multibyte Unicode characters literally (default is to escape as \uXXXX). 
    JSON_PARTIAL_OUTPUT_ON_ERROR (512)
        Substitute some unencodable values instead of failing. 
    JSON_PRESERVE_ZERO_FRACTION (1024)
        Ensures that float values are always encoded as a float value. 
    JSON_UNESCAPED_LINE_TERMINATORS (2048)
        The line terminators are kept unescaped when JSON_UNESCAPED_UNICODE is supplied. 
        It uses the same behaviour as it was before PHP 7.1 without this constant. 
        Available as of PHP 7.1.0.
        
Sursa: <a href="https://www.php.net/manual/en/json.constants.php">documentația PHP privind constantele <b>JSON</b></a> 
  <hr/><br/>
  </details>
  <details><summary><h3>Intermediarul JSON(JSON middleware)</h3></summary>
  <br/><hr/>
 Puteți utiliza middleware-ul <b>„json”</b> pentru a citi/scrie șiruri <b>JSON</b> ca obiecte și matrice <b>JSON</b>.

Șirurile <b>JSON</b> sunt detectate automat când middleware-ul <b>„json”</b> este activat.

Puteți limita scanarea specificând nume specifice de tabel și/sau câmpuri:

    'json.tables' => 'products',
    'json.columns' => 'properties',

Aceasta va schimba rezultatul:

    GET /records/products/1

Fără middleware-ul <b>„json”</b>, rezultatul va fi:

    {
        "id": 1,
        "name": "Calculator",
        "price": "23.01",
        "properties": "{\"depth\":false,\"model\":\"TRX-120\",\"width\":100,\"height\":null}",
    }

Cu middleware-ul <b>„json”</b> rezultatul va fi:

    {
        "id": 1,
        "name": "Calculator",
        "price": "23.01",
        "properties": {
            "depth": false,
            "model": "TRX-120",
            "width": 100,
            "height": null
        },
    }

Acest lucru se aplică și la crearea sau modificarea câmpurilor de șir <b>JSON</b> (și atunci când se utilizează operațiuni în lot).

Rețineți că câmpurile de șir <b>JSON</b> nu pot fi actualizate parțial și că acest middleware este <b>dezactivat implicit</b>.<br/>
Puteți activa middleware-ul <b>„json”</b> utilizând setarea de configurare <b>„middlewares”</b>.  
  <hr/><br/>
  </details>
  <details><summary><h3>Intermediarul XML(XML middleware)</h3></summary>
  <br/><hr/>
 Puteți utiliza middleware-ul <b>„xml”</b> pentru a traduce intrarea și ieșirea din <b>JSON</b> în <b>XML</b>(<b>JSON</b>2<b>XML</b>).<br/>
 Această cerere:

    GET /records/posts/1

are ca Ieșire (când utilizam „pretty printed” adica tiparire draguta/placuta ochiului):

    {
        "id": 1,
        "user_id": 1,
        "category_id": 1,
        "content": "blog started"
    }
    
In timp ce  (rețineți parametrul de interogare <b>„format”</b>) cererea:

    GET /records/posts/1?format=xml

are ca Ieșire:

    <root>
        <id>1</id>
        <user_id>1</user_id>
        <category_id>1</category_id>
        <content>blog started</content>
    </root>

Această funcționalitate este <b>dezactivată</b> în mod <b>implicit</b> și trebuie să fie activată utilizând setarea de configurare <b>„middlewares”</b>.  
  <hr/><br/>
  </details> <!--h3-->
   <hr/><br/>
  </details> <!--h3 end JSON & XML middlewares--> 
  
  <details><summary><h3>Incarcarile de fisier(File uploads)</h3></summary>
  <br/><hr/>
  Încărcările de fișiere sunt acceptate prin <a href="https://caniuse.com/#feat=filereader">API-ul FileReader</a> , consultați <a href="https://github.com/mevdschee/php-crud-api/blob/master/examples/clients/upload/vanilla.html">exemplul</a>. 
  <hr/><br/>
  </details>  <!--h3-->
  <hr/><br/>
  </details> <!--h2-->
  <details><summary><h2>Specificatia OpenAPI</h2></summary>
  <br/><hr/>
Pe punctul-final <b>„/openapi”</b> este furnizată <b>specificația OpenAPI 3.0</b> (numită anterior <a href="https://medium.com/@tatianaensslin/how-to-add-swagger-ui-to-php-server-code-f1610c01dc03"><b>„Swagger”</b></a>).<br/>
Este o documentație instantanee citibilă de catre API-ul de pe masina/computerul dvs.<br/>
Asadar, aceasta documentatie/specificatie REST a fost generata cu OpenAPI(a.k.a Swagger) si a fost plasata in endpoint-ul api-ului <b>„/openapi”</b>.<br/>
Pentru a afla mai multe, consultați aceste link-uri:

 - <a href="https://editor.swagger.io/"><b>Swagger Editor</b></a> poate fi folosit pentru a vizualiza și depana specificația generată.
 - <a href="https://swagger.io/specification/"><b>Specificația OpenAPI</b></a> este un manual pentru crearea unei specificații OpenAPI.
 - <a href="https://petstore.swagger.io/"><b>Swagger Petstore</b></a> este un exemplu de documentație care este generată folosind OpenAPI.
 - <a href="https://loadfocus.com/ro-ro/glossary/what-is-swagger">ce este Swagger?</a>.
     
  <hr/><br/>
  </details>
  <details><summary><h2>Cache,Tipuri-de-date,Erori,Stare si Controler-personalizat</h2></summary>
  <br/><hr/>
  <details><summary><h2>Tampon date reutilizate(Cache)</h2></summary>
  <br/><hr/>
Există <b>4 motoare de cache</b> care pot fi configurate de parametrul de configurare <b>„cacheType”</b>:

 - TempFile (implicit)
 - Redis
 - Memcache
 - Memcached

Puteți instala dependențele pentru ultimele trei motoare(Redis,Memcache,Memcached) rulând:

    sudo apt install php-redis redis
    sudo apt install php-memcache memcached
    sudo apt install php-memcached memcached

Motorul implicit nu are dependențe și va folosi fișiere temporare în calea <b>„temp”</b> a sistemului.

Puteți utiliza parametrul de configurare <b>„cachePath”</b> pentru a specifica calea sistemului de fișiere pentru 
fișierele temporare sau, în cazul în care utilizați un <b>„cacheType”</b> care nu este implicit, numele de gazdă 
(opțional cu portul) al serverului <b>cache</b>.

  <hr/><br/>
  </details>
  <details><summary><h2>Tipurile de date</h2></summary>
  <details><summary><h3>Tipuri de date(Types)</h3></summary>
  <br/><hr/>
    Acestea sunt tipurile acceptate cu lungimea, categoria, tipul și formatul JSON:<br/>
 <table>
<thead>
<tr>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">tip</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">lungime</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">categorie</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">tip JSON</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">format</font></font></th>
</tr>
</thead>
<tbody>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">varchar</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">255</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">caracter</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şir de caractere</font></font></td>
<td></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">clob</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">caracter</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şir de caractere</font></font></td>
<td></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">boolean</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">boolean</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">boolean</font></font></td>
<td></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">integer</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">întreg</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">număr</font></font></td>
<td></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">bigint</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">întreg</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">număr</font></font></td>
<td></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">float</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">virgula mobila</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">număr</font></font></td>
<td></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">double</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">virgula mobila</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">număr</font></font></td>
<td></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">decimal</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">19,4</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">zecimal</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şir de caractere</font></font></td>
<td></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">date</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">data/ora</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şir de caractere</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">aaaa-mm-zz</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">time</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">data/ora</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şir de caractere</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">hh:mm:ss</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">timestamp<br/>(marca[j] temporal[a] sau <br/>stampila de timp/temporala)</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">data/ora</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şir de caractere</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">aaaa-mm-zz hh:mm:ss</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">varbinar</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">255</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">binar</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şir de caractere</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">codificat în base64</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">blob</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">binar</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şir de caractere</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">codificat în base64</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">geometry</font></font></td>
<td></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">alte</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">şirde caractere</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">text bine-cunoscut</font></font></td>
</tr>
</tbody>
</table> <br/>
Rețineți că geometria este un tip non-jdbc și, prin urmare, are suport limitat.    
  <hr/><br/>
  </details>  
  <details><summary><h3>Tipuri de date in JavaScript</h3></summary>
  <br/><hr/>
    Javascript și notația obiect Javascript (JSON) nu sunt foarte potrivite pentru citirea înregistrărilor bazei de date.<br/>
    Tipurile zecimale, date/ora, binare și geometrie trebuie reprezentate ca șiruri de caractere în JSON (binarul este codificat în base64,<br/>
    geometriile sunt în format WKT). <br/>
    Mai jos sunt descrise două probleme mai grave.
  <details><summary><h4>intregi pe 64 biti</h4></summary>
  <br/><hr/>
JavaScript nu acceptă numere întregi pe 64 de biți. <br/>
Toate numerele sunt stocate ca valori în virgulă mobilă pe 64 de biți.<br/>
Mantisa unui număr în virgulă mobilă de 64 de biți este de numai 53 de biți și de aceea toate numerele întregi mai mari de <br/>
53 de biți pot cauza probleme în JavaScript.   
  <hr/><br/>
  </details> 
  <details><summary><h4>reali in virgula mobila - Inf si NaN</h4></summary>
  <br/><hr/>
Valorile valide în virgulă mobilă „Infinit” (calculate cu „1/0”) și „Nu este un număr” (calculate cu „0/0”) nu pot fi exprimate în JSON,<br/>
deoarece nu sunt acceptate de specificația <a href="https://www.json.org/">JSON</a>a>.<br/>
Când aceste valori sunt stocate într-o bază de date, nu le puteți citi, deoarece acest script scoate înregistrările bazei de date ca JSON.   
  <hr/><br/>
  </details>  <!--h4-->
  <hr/><br/>
  </details> <!--h3-->
   <hr/><br/>
  </details> <!--h2--> 
  
  <details><summary><h2>Erori</h2></summary>
  <br/><hr/>
    Pot fi raportate următoarele erori:<br/>
<table>
<thead>
<tr>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Eroare</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Cod de răspuns HTTP</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Mesaj</font></font></th>
</tr>
</thead>
<tbody>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1000</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">404 Nu a fost găsit</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ruta nu a fost găsită</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1001</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">404 Nu a fost găsit</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Tabelul nu a fost găsit</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1002</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">422 Entitate neprocesabilă</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nepotrivirea numărului de argumente</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1003</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">404 Nu a fost găsit</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Înregistrare nu a fost găsită</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1004</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">403 Interzis</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Originea este interzisă</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1005</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">404 Nu a fost găsit</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Coloana nu a fost găsită</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1006</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">409 Conflict</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Tabelul există deja</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1007</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">409 Conflict</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Coloana există deja</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1008</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">422 Entitate neprocesabilă</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nu se poate citi mesajul HTTP</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1009</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">409 Conflict</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Excepție cheie duplicată</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1010</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">409 Conflict</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Încălcarea integrității datelor</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1011</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">401 Neautorizat</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Este necesară autentificarea</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1012</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">403 Interzis</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Autentificarea eșuată</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1013</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">422 Entitate neprocesabilă</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Validarea intrării a eșuat</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1014</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">403 Interzis</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operațiune interzisă</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1015</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">405 Metoda nu este permisă</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operațiunea nu este acceptată</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1016</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">403 Interzis</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Blocat temporar sau definitiv</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1017</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">403 Interzis</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Indicativ XSRF greșit sau lipsă</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1018</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">403 Interzis</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Sunt permise doar cereri AJAX</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1019</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">403 Interzis</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Paginare interzisă</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1020</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">409 Conflict</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Utilizatorul există deja</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1021</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">422 Entitate neprocesabilă</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Parola prea scurtă</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1022</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">422 Entitate neprocesabilă</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Numele de utilizator este gol</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9999</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">500 Eroare internă de server</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Eroare necunoscută</font></font></td>
</tr>
</tbody>
</table> <br/>
Este utilizată următoarea structură JSON:

    {
        "code":1002,
        "message":"Argument count mismatch in '1'"
    }
    
<b>NB</b>:<br/>
Orice răspuns fără eroare va avea starea: <b>200 OK</b>
  
  <hr/><br/>
  </details>
  <details><summary><h2>Stare(status)</h2></summary>
  <br/><hr/>
Pentru a vă conecta la monitorizarea dvs. există un punct final „ping”:

    GET /status/ping

Și aceasta ar trebui să returneze starea 200 și ca date:

    {
        "db": 42,
        "cache": 9
    }

Acestea pot fi folosite pentru a măsura timpul (în microsecunde) pentru conectarea și citirea datelor din baza de date și din cache.   
  <hr/><br/>
  </details>
  <details><summary><h2>Controler personalizat(custom controller)</h2></summary>
  <br/><hr/>
Puteți adăuga propriile puncte-finale personalizate(customizate) API REST scriind propria <b>clasă de controler personalizat</b>.<br/>
Clasa trebuie să furnizeze un <b>constructor</b> care acceptă cinci(<b>5</b>) <b>parametri</b>:<br/>

<pre>
       Clasa             Obiect
       ------            -------
     - Router            $router, 
     - Responder         $responder, 
     - GenericDB         $db, 
     - ReflectionService $reflection, 
     - Cache             $cache
</pre>    
    
Cu acești <b>parametri</b> vă puteți înregistra propriul punct-final(endpoint) pe routerul existent.<br/>.
Acest punct-final poate utiliza <b>baza de date($db)</b> și/sau <b>clasa de reflectare($reflection)</b> a bazei de date.

Iată un exemplu de <b>clasă de controler personalizat</b>:

    use Psr\Http\Message\ResponseInterface;
    use Psr\Http\Message\ServerRequestInterface;
    use Tqdev\PhpCrudApi\Cache\Cache;
    use Tqdev\PhpCrudApi\Column\ReflectionService;
    use Tqdev\PhpCrudApi\Controller\Responder;
    use Tqdev\PhpCrudApi\Database\GenericDB;
    use Tqdev\PhpCrudApi\Middleware\Router\Router;
    
    class MyHelloController {
    
        private $responder;
    
        public function __construct(Router $router, Responder $responder, GenericDB $db, ReflectionService $reflection, Cache $cache)
        {
            $router->register('GET', '/hello', array($this, 'getHello'));
            $this->responder = $responder;
        }
    
        public function getHello(ServerRequestInterface $request): ResponseInterface
        {
            return $this->responder->success(['message' => "Hello World!"]);
        }
    }

Și apoi vă puteți înregistra clasa de controler personalizat(customizat) în obiectul de configurare(<b>$config</b>) astfel:

    $config = new Config([
        ...
        'customControllers' => 'MyHelloController',
        ...
    ]);

Configurația <b>customControllers</b> acceptă o listă separată prin virgulă de clase de controlere personalizate.  
  <hr/><br/>
  </details>
    <hr/><br/>
  </details> <!--end Cache,Tyeps,Errors,Status,...customControllers-->
  <details><summary><h2>Testare,Configurare-Nginx si Containerizare/Dokerizare</h2></summary>
  <br/><hr/> 
   <details><summary><h2>Teste si Testare</h2></summary>
  <br/><hr/>    
   <details><summary><h2>Teste</h2></summary>
  <br/><hr/>
Au fost <a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/test.php">testate</a> în principal implementari containerizate/dockerizate, bazate pe/de sub SO-gazduite, din familia <b>Linux</b>.<br/>Au fost utilizate cateva dintre următoarele <b>setUp</b>-uri/<b>Contexte de rulare</b>/<b>medii-de-testare</b> dockerizate:

 - (Docker) Debian 10 cu PHP 7.3, MariaDB 10.3, PostgreSQL 11.4 (PostGIS 2.5) și SQLite 3.27
 - (Docker) Debian 11 cu PHP 7.4, MariaDB 10.5, PostgreSQL 13.4 (PostGIS 3.1) și SQLite 3.34
 - (Docker) Debian 12 cu PHP 8.2, MariaDB 10.11, PostgreSQL 15.3 (PostGIS 3.3) și SQLite 3.40
 - (Docker) RockyLinux 8 cu PHP 7.2, MariaDB 10.3 și SQLite 3.26
 - (Docker) RockyLinux 9 cu PHP 8.0, MariaDB 10.5 și SQLite 3.34
 - (Docker) Ubuntu 18.04 cu PHP 7.2, MySQL 5.7, PostgreSQL 10.4 (PostGIS 2.4) și SQLite 3.22
 - (Docker) Ubuntu 20.04 cu PHP 7.4, MySQL 8.0, PostgreSQL 12.15 (PostGIS 3.0) și SQLite 3.31 și SQL Server 2019
 - (Docker) Ubuntu 22.04 cu PHP 8.1, MySQL 8.0, PostgreSQL 14.2 (PostGIS 3.2) și SQLite 3.37

Acest lucru nu acoperă (încă) toate mediile, așa că vă rugăm să anunțați dacă <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/tests">testele</a> eșuează și să raportați mediul dumneavoastră.<br/>
Se va încerca să se acopere cele mai relevante setări din folderul <a href="https://github.com/codemage66/PHP-CRUD-API/tree/main/docker"><b>„docker”</b></a> al proiectului.<br/>

Pentru a urmari modul in care se instaleaza docker-ul si cum sunt rulate ulterior aceste teste pentru cazurile <b>dockerizate</b> al acestui proiect(asa cum sunt cele enumerate mai sus), puteti consulta mai jos, sub-sectiunea <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#teste-docker"><i><b>Teste Docker</b></i></a> din cadrul sectiunii(urmatoare de mai jos) denumite <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#containerizare-docker"><b>"Containerizare-docker"</b></a>(o sectiune special destinata dockerizarii/containerizarii acestui proiect-api).<br/>
Trebuie stiut si faptul ca, <b>testele de functionalitate</b>(independente de docker) sunt diferite de <b>testele-docker</b>(dependente de docker). <br/>
<b>Testele de functionalitate</b> pot fi rulate si pe o imagine locala(sau aflata la distanta) dar nedockeritaza(independenta de docker). In acest caz, puteti urmari sectiunea urmatoare denumita <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#testare-functionarerulareexecutierunning"><b>Testare Functionare/Rulare/Executie(running)</b></a>, sectiune care este valabila si pt cazul nedockerizat(independenta fata de docker).
Dupa cum cred ca deja va asteptati, <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#teste-docker"><b>Testele Docker</b></a>, dupa ce realizeaza/construieste contextul de rulare containerizat/dockerizat(de sub SO gazda si specific/adaptat pt SO-gazduit curent/de testat), vor rula/executa(din imaginea-proiectului creata cu ajutorul docker-ului), in mod automat, repetat/in bucla, si aceste <b>Teste de functionalitate</b> .<br/>
Dupa cum se va vedea in sub-sectiunea <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#teste-docker"><b>Testelor Docker</b></a>, <b>contextul dockerizat de rulare al testelor-docker</b>(specific/adaptat fiecarui SO-gazduit curent/de testat) este <b>construit si utilizat</b>(de catre docker-ul rulat/executat pe SO-gazda, pt toate si pt fiecare SO-gazduit in parte), in ordine, <b>dupa cum urmeaza</b>:
- se creaza/instaleaza SO-gazduit(specific/adaptat) curent/de testat,
- cf fisierului <b>Dockerfile</b>(aferent fiecarui SO gazduit curent/de testat), se instaleaza si se starteaza webserverul Apache impreuna cu procesatorul PhP-CLI (inclusiv librariile comune aferente: php-xml, php-mbstring),
- cf fisierului <b>Dockerfile</b>(aferent fiecarui SO gazduit curent/de testat), se instaleaza(versiunile specifice SO-ului gazduit curent/de testat) serverele-SQL si clienti-SQL acestora, impreuna cu librariile php specifice acestor BD(php-mysql, php-pgsql, php-sqlite) iar apoi se starteaza serverele-SQL ale acestor baze de date SQL(MariaDB/MySQL, PostgreSQL, SQL-Server), cu care se vor efectua testele de functionalitate(aceste baze de date SQL, contin datele/tabelele
  relationale ale unui exmeplu de blog),
- cf fisierului <b>Dockerfile</b>(aferent fiecarui SO gazduit curent/de testat), se cloneaza intregul depozit-github al proiectului nostru api,
- pt toate si pt fiecare BD in parte(mysql,pgsql,sqlsrv si ... sqlite; BD deja instalata in pasul anterior pe SO-ul gazduit curent/de testat), cf fisierului specific <b>run.sh</b>(aferent acestui SO gazduit curent/de testat), se ruleaza in mod repetat/in blucla, toate testele de functionalitate.<br/>

Toate aceste fisiere specifice, utilizate succesiv in procesul de testare-docker, aferente fiecarui SO-gazduit in parte, si anume setul de fisiere  <b>Dockerfile</b> si <b>run.sh</b>,  vor fi integrate/utilizate in 2 fisiere integratoare/comune, si anume <b>build_all.sh</b>(utilizat in procesul de constructie succesiva, a contextului de rulare, al testelor functionale) si <b>run_all.sh</b>(utilizat in procesul de rulare/executie, repetata/in bucla, a tuturor testelor functionale succesive) . Aceste 2 fisiere integratoare(<b>build_all.sh</b> si <b>run_all.sh</b>) impreuna cu alte 2 fisiere comune (<b>run.sh</b> si <b>clean_all.sh</b>) alcatuiesc intregul sistem de <b>testare-docker</b>.
  <hr/><br/>
  </details>
  <details><summary><h2>Testare Functionare/Rulare/Executie(running)</h2></summary>
  <br/><hr/>
 Pentru a rula <b>testele de functionare/funcționale/de functionalitate</b> la nivel local(pe computer-ul dvs; pt acest task de testare locala/on-premise, daca nu rulati proiectul dintr-o imagine dockerizata, nu este/va fi necesar ca Docker-ul sa fie pre-instalat/in prealabil, deoarece testele de functionalitate nu au acesta dependenta de instrumentul/tools-ul docker, fiind independente de acesta), pe durata sau dupa perioada dezvoltarii/implementarii proiectului, puteți executa următoarele <b>comenzi</b>:<br/>

    php build.php
    php test.php

Va reamintiti(din sectiunea anterioara intitulata <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#teste">Teste</a>) ca rularea fisierului <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/build.php">build.php</a> va construi/compila/combina, continutul fisierelor necompilate, din directoarele <b>src</b> si <b>vendor</b>, intr-un singur fisier-rezultat(de aceasta data, <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/build.php">acest</a> fisier-rezultat, fiind unul compilat!) si anume  <b>api.php</b>.<br/>
Colateral mai se prepara/creaza si un alt fisier-alternativ si anume <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.include.php"><b>api.include.php</b></a>, care va fi utilizat(ca "librarie-include" in/cu cda PhP-"include") de catre <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/test.php"><b>test.php</b></a>(fara a mai fi nevoiti sa faceti apel direct la  fisierul principal <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/src/index.php"><b>index.php</b></a> sau chiar sa utilizati <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.php"><b>api.php</b></a> - fisiere care nu pot si nu vor functiona in regim de/ca "librarii-include"!!!).<br/>
Apoi urmeaza rularea fisierului <a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/test.php">test.php</a>(cu cda-shell: php test.php). <a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/test.php">Aceasta</a> rulează testele funcționale din directorul <a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/tests"><b>„tests”</b></a>.<br/>
Utilizează dump-urile bazei de date (<a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/tests/fixtures"><b>fixtures</b></a>) și configurația bazei de date (<a href="https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API/tests/config"><b>config</b></a>) din subdirectoarele corespunzătoare/aferente.<br/> 
Junalul .log al acestor teste sunt categorisite pe subdirectoare si pot fi consultate in subdirectorul special destinat jurnalizarii rezultatelor si anume <a href="php_scripts/CRUD_API/tests/functional"><b>functional</b></a>.
  <hr/><br/>
  </details> <!--end rulare teste-->
  <hr/><br/>
  </details> <!--end teste si testare--> 
  <details><summary><h2>Exemplu de configurare webserver Nginx(in loc de Apache)</h2></summary>
  <br/><hr/>
    
      server {
          listen 80 default_server;
          listen [::]:80 default_server;
      
          root /var/www/html;
          index index.php index.html index.htm index.nginx-debian.html;
          server_name server_domain_or_IP;
      
          location / {
              try_files $uri $uri/ =404;
          }
      
          location ~ [^/]\.php(/|$) {
              fastcgi_split_path_info ^(.+\.php)(/.+)$;
              try_files $fastcgi_script_name =404;
              set $path_info $fastcgi_path_info;
              fastcgi_param PATH_INFO $path_info;
              fastcgi_index index.php;
              include fastcgi.conf;
              fastcgi_pass unix:/run/php/php7.0-fpm.sock;
          }
      
          location ~ /\.ht {
              deny all;
          }
      }
      
  <hr/><br/>
  </details>
  <details><summary><h2>Containerizare-Docker</h2></summary>
  <br/><hr/>
    Pentru a afla mai multe depre tehnologia de containerizare Docker(si nu numai!) puteti citi acest <a href="https://www.telacad.ro/importanta-tehnologiilor-docker-si-kubernetes/">articol</a>.<br/>
Docker-izarea necesita, ca pe masina dvs-gazda,pe sistemul dvs de operare,instalat, adica SO-gazda(care poate fi chiar unul din familia <b>Windows</b>), sa aveti setat, in prealabil, <b>docker</b>-ul care la randul sau(deci docker.exe-ul) permite sa lucrati in mod protejat/izolat cu/pe <b>alt</b> sistem de operare,SO-gazduit(desigur, in acest caz,ar fi bine ca SO-gazduit sa fie unul din familia <b>Linux</b>, pentru care s-au efectuat si reusit testele de riguare ale proiectului nostru, cum ar fi Debian10|11|12, RockyLinux8|9, Ubuntu 18|20|22).<br/>In alta ordine de idei, vreau sa va amintesc ca pe o masina-/un sistem-gazda <b>Windows 10 (Pro)</b>(asa cum utilizez de obicei si eu) se mai poate seta/instala si un al 2-lea sistem de operare-gazda(in plus, fata de windows-ul gazda preexistent), si anume <b>Ubuntu-WSL</b>(WSL|WSL2=enabled, cu una dintre versiunile sale de Ubuntu/Linux permise: 18 ori-exclusiv 20 ori-exclusiv 22...), asa-incat puteti folosi pe aceiasi masina-gazda atat <b>Windows 10 (Pro)</b> cat si <a href="https://ubuntu.com/desktop/wsl"><b>Ubuntu-WSL</b></a> ca si sistem-de-operare gazda.<br/>Pentru docker-izarea acestui proiect(api.php), puteti folosi desigur, <b>oricare</b> dintre aceste <b>2</b> sisteme de operare ca si <b>SO-gazda</b>(dar, pe care aveti instalat in prealabil docker-ul: docker enabled) deoarece acesta/<b>docker</b>-ul <i>nu este dependent de sistemul de operare gazda</i>, acesta/docker-ul avand instalat si utilizeaza <b>propriul sau sistem de operare|SO-gazduit</b>(desigur/cu toate acestea/totusi, in acest caz, este <b>preferabil</b> sa utilizati ca si <b>SO-gazduit-docketizat-propriu</b>,gestionat/manageriat/administrat de catre docker, un SO in care proiectul a fost deja testatat in prealabil, cu success, adica unul/un SO din familia <b>Linux</b>: Debian10|11|12, RockyLinux8|9, Ubuntu 18|20|22), <b>SO-dockerizat-gazduit-propriu</b> sub care acesta/<b>docker</b>-ul [isi] ruleaza <b>propria imagine</b> a proiectului respectiv(<b>imagine</b> care contine, in acest caz, proiectul nostru <b>api.php</b>). Pentru reutilizare, imaginea-dockerizata a a acestui proiect, ca de altfel, a oricarui proiect-dockerizat, poate fi incarcata intr-un <a href="https://hub.docker.com"><b>HUB</b></a>(un tert-depozitar de continut/content dockerizat, omolog/asemanator github dar..., special destinat acestui tip de continut si anume acestor imagini-dockerizate). Daca incarcati imaginea-dockerizata a proiectului dvs aici(in acest HUB), aceasta imagine poate fi facuta(oricand doriti) publica(si cu titlu de gratuitate) si astfel oricine o poate descarca (de aici), cand doreste, pt a o [re]utiliza in proiectele sale viitoare<br/>
    
  <details><summary><h3>Teste Docker</h3></summary>
  <br/><hr/>
Pt cazul, in care doriti sa rulati/testati proiectul (pe orice sistem gazda, care poate fi chiar Ubuntu-WSL) dintr-o imagine gazduita(sub un sistem de operare gazduit, din familia Linux si pt care desigur, au fost deja efectuate, cu succes, toate testele-dockerizate),manageriata cu ajutorul docker-ului, veti avea desigur nevoie, ca pe sistemul-dvs gazda, sa instalati dockerul ca gestionar al imaginilor sale izolate/protejate<br/>
Instalați <b>docker </b>-ul folosind următoarele <b>comenzi-linux</b>(eventual de sub windows 10(pro) si asta daca aveti deja instalat Ubuntu-WSL, puteti sa dati comanda-shell/cmd.exe <b>C:Users\{Utilizator-Curent-Windows}> ubuntu </b> pt a activa consola Ubuntu-WSL iar apoi sa plasati comenzile-shell de mai jos/urmatoare, pt a instala docker-ul sub versiunea dvs de Ubuntu-WSL), apoi deconectați-vă și conectați-vă pentru ca modificările să aibă efect:

    sudo apt install docker.io
    sudo usermod -aG docker ${USER}

Pentru a rula in mod automatizat(in lot de lucrari), <a href="https://github.com/codemage66/PHP-CRUD-API/tree/main/docker">testele docker</a>(testele-docker sunt dependente de <a href="https://docs.docker.com/get-started/docker-overview/">docker</a>-ul ... pe care... tocmai l-ati instalat prin suita celor 2 comenzi Linux-shell, de mai sus), rulați, in ordine, urmatoarea suita de 2 comenzi-shell, de mai jos, de sub sistemul dvs local/gazda(poate fi un SO-gazda cum este Windows 10 Pro,asa cum am si eu, dar in acest caz, cele 2 instructiuni de mai sus trebuiesc modificate/adaptate pt windos-shell sau, de ce nu,  puteti chiar puteti incerca Ubuntu-WSL, dar asta doar daca aceasta extensie, Ubuntu-WSL, este deja preinstalata/a fost instalata in prealabil, pe SO-ul gazda/adica de sub Windows 10 Pro ), dupa cum urmeaza:<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>„build_all.sh”</b> <br/>
și apoi <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>„run_all.sh”</b><br/>
din directorul <a href="https://github.com/codemage66/PHP-CRUD-API/tree/main/docker">docker</a>.<br/>

Ieșirea ar trebui să fie(in functie de versiunea de Linux utilizata ca si sistem de operare gazduit/dockerizat):
<pre>
======================================================================================================
Debian 10 (PHP 7.3)
================================================
[1/4] Starting MariaDB 10.3 ..... done
[2/4] Starting PostgreSQL 11.4 .. done
[3/4] Starting SQLServer 2017 ... skipped
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 3279 ms, 1 skipped, 0 failed
pgsql: 120 tests ran in 1802 ms, 1 skipped, 0 failed
sqlsrv: skipped, driver not loaded
sqlite: 120 tests ran in 1720 ms, 13 skipped, 0 failed
================================================
Debian 11 (PHP 7.4)
================================================
[1/4] Starting MariaDB 10.5 ..... done
[2/4] Starting PostgreSQL 13.4 .. done
[3/4] Starting SQLServer 2017 ... skipped
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 2761 ms, 1 skipped, 0 failed
pgsql: 120 tests ran in 2263 ms, 1 skipped, 0 failed
sqlsrv: skipped, driver not loaded
sqlite: 120 tests ran in 1860 ms, 13 skipped, 0 failed
================================================
Debian 12 (PHP 8.2)
================================================
[1/4] Starting MariaDB 10.11 .... done
[2/4] Starting PostgreSQL 15.3 .. done
[3/4] Starting SQLServer 2019 ... skipped
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 3106 ms, 1 skipped, 0 failed
pgsql: 120 tests ran in 1863 ms, 1 skipped, 0 failed
sqlsrv: skipped, driver not loaded
sqlite: 120 tests ran in 1649 ms, 13 skipped, 0 failed
================================================
RockyLinux 8 (PHP 7.2)
================================================
[1/4] Starting MariaDB 10.3 ..... done
[2/4] Starting PostgreSQL 11 .... skipped
[3/4] Starting SQLServer 2017 ... skipped
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 3248 ms, 1 skipped, 0 failed
pgsql: skipped, driver not loaded
sqlsrv: skipped, driver not loaded
sqlite: 120 tests ran in 1745 ms, 13 skipped, 0 failed
================================================
RockyLinux 9 (PHP 8.0)
================================================
[1/4] Starting MariaDB 10.5 ..... done
[2/4] Starting PostgreSQL 12 .... skipped
[3/4] Starting SQLServer 2017 ... skipped
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 2945 ms, 1 skipped, 0 failed
pgsql: skipped, driver not loaded
sqlsrv: skipped, driver not loaded
sqlite: 120 tests ran in 1657 ms, 13 skipped, 0 failed
================================================
Ubuntu 18.04 (PHP 7.2)
================================================
[1/4] Starting MySQL 5.7 ........ done
[2/4] Starting PostgreSQL 10.4 .. done
[3/4] Starting SQLServer 2017 ... skipped
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 4151 ms, 1 skipped, 0 failed
pgsql: 120 tests ran in 1798 ms, 1 skipped, 0 failed
sqlsrv: skipped, driver not loaded
sqlite: 120 tests ran in 1906 ms, 13 skipped, 0 failed
================================================
Ubuntu 20.04 (PHP 7.4)
================================================
[1/4] Starting MySQL 8.0 ........ done
[2/4] Starting PostgreSQL 12.2 .. done
[3/4] Starting SQLServer 2019 ... done
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 6480 ms, 1 skipped, 0 failed
pgsql: 120 tests ran in 2415 ms, 1 skipped, 0 failed
sqlsrv: 120 tests ran in 14517 ms, 1 skipped, 0 failed
sqlite: 120 tests ran in 1694 ms, 13 skipped, 0 failed
================================================
Ubuntu 22.04 (PHP 8.1)
================================================
[1/4] Starting MySQL 8.0 ........ done
[2/4] Starting PostgreSQL 14.2 .. done
[3/4] Starting SQLServer 2019 ... skipped
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 5951 ms, 1 skipped, 0 failed
pgsql: 120 tests ran in 1951 ms, 1 skipped, 0 failed
sqlsrv: skipped, driver not loaded
sqlite: 120 tests ran in 1923 ms, 13 skipped, 0 failed

Testul de mai sus (inclusiv pornirea bazelor de date) durează mai puțin de 5 minute pe laptopul meu lent.

$ ./run.sh
1) debian10
2) debian11
3) debian12
4) rockylinux8
5) rockylinux9
6) ubuntu18
7) ubuntu20
8) ubuntu22
> 6
================================================
Ubuntu 18.04 (PHP 7.2)
================================================
[1/4] Starting MySQL 5.7 ........ done
[2/4] Starting PostgreSQL 10.4 .. done
[3/4] Starting SQLServer 2017 ... skipped
[4/4] Cloning PHP-CRUD-API v2 ... skipped
------------------------------------------------
mysql: 120 tests ran in 4151 ms, 1 skipped, 0 failed
pgsql: 120 tests ran in 1798 ms, 1 skipped, 0 failed
sqlsrv: skipped, driver not loaded
sqlite: 120 tests ran in 1906 ms, 13 skipped, 0 failed
root@b7ab9472e08f:/php-crud-api# 
</pre>

După cum puteți vedea, scriptul-shell <b>„run.sh”</b> vă oferă acces la un prompt în mediul docker ales.<br/>
În acest mediu sunt montate fișierele locale. Acest lucru permite o depanare ușoară în diferite medii.<br/>
Puteți introduce <b>„exit”</b> când ați terminat. 

  <hr/><br/>
  </details>
  <details><summary><h3>Imagine Docker(HUB-Docker)</h3></summary>
  <br/><hr/>
 Există în depozitul proiectului, un fisier denumit <a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/Dockerfile"><b>Dockerfile</b></a>, fisier care poate fi folosit(de catre gestionarul <a href="https://docs.docker.com/get-started/workshop/02_our_app/"><b>docker</b></a>) pentru a <a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/docker/build_all.sh">construi</a>  <b>imaginea</b> acestui proiect-api: <a href="https://hub.docker.com/r/mevdschee/php-crud-api">https://hub.docker.com/r/mevdschee/php-crud-api</a>

 Acesta va fi construit(in mod automat) pe/pt fiecare lansare/rulare. 
 Eticheta <b>„latest tag”</b> indică ultima versiune(cea mai recentă versiune).

 Imaginea docker acceptă parametrii variabilei de mediu din configurație.  
  <hr/><br/>
  </details>
  <details><summary><h3>Compozitorul Docker(Docker compose)</h3></summary>
  <br/><hr/>
De asemenea, acest depozit,  mai contine un fisier mai complet si complex, denumit <a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/docker-compose.yml"><b>docker-compose.yml</b></a>, fisier care va permite sa <a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/docker/build_all.sh">instalati/construiti/rulati</a> manual, imaginea proiectului(rularea imaginii proiectului nostru, va avea loc de sub/in SO-gazduit/dockerizat...si prin urmare ...veti avea dependenta de <a href="https://docs.docker.com/get-started/docker-overview/">docker.exe</a> & <a href="https://docs.docker.com/get-started/workshop/08_using_compose/">docker-compose.exe</a>), folosind urmatoarele comenzi-linux(le puteti folosi/incerca si de sub Ubuntu-WSL):

    sudo apt install docker-compose
    docker-compose build
    docker-compose up

Aceasta suita de comenzi, presupunand ca <b>docker</b> este preinstalat, va instala si <b>docker-compose</b> iar va construi aplicatia conform fisierului <b>docker-compose.yml</b>....adica va seta/instala un s.g.b.d. (<b>MySQL</b>) si un webserver (<b>Apache</b>) iar apoi la final, se va rula ca aplicatie, un exemplu PhP/MySQL de blog, <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/tests/fixtures/blog_mysql.sql"><b>blog-mysql</b></a>, de altfel, utilizat ca date in <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/tests/"><b>testele</b></a> efectuate, cu ocazia <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/tests/"><b>testarii de functionalitate</b></a>.

Dupa executia suitei de comenzi de mai sus, puteti sa testati script-ul PhP(ruland in containerul respectiv/running in the container), prin deschiderea,in SO-ul dvs gazda si dintr-un/intr-un browser oarecare, a urmatoarei adrese-URL:

    http://localhost:8080/records/posts/1

  <hr/><br/>
  </details>
    <hr/><br/>
  </details> <!--end Dockerizare-->
     <hr/><br/>
  </details> <!--end Testare,Rulare,configNginx,Dockerizare-->
  
  <details><summary><h3>Istoricul stelutelor primite(star hystory)</h3></summary>
  <br/><hr/>
   <center><img src="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/68747470733a2f2f6170692e737461722d686973746f72792e636f6d2f7376673f7265706f733d6d65766473636865652f7068702d637275642d61706926747970653d44617465.svg"/></center>
  <hr/><br/>
  </details> 
  
  Bucurati-va!
<hr/><br/>
</details>

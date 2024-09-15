Am cautat un [**proiect**](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api) care sa aiba ca facilitati cateva lucruri:
- sa fie un **api** de preferat pt o baza de date de tip **SQL**(si care sa permita pt tabelele sale operatii de tip [**CRUD**](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete))
- sa fie bine securizata(cu **token JWT**,...)
- si sa permita un access de tip modern REST(de preferat, gen **GraphQL**)

Am gasit un astfel de proiect, pe github, intitulat [**PHP-CRUD-API**](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api) si va recomand sa-l [descarcati](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api)  iar apoi sa-l testati(sub ***Windows***, pt b.d. ***MySQL***, puteti folosi [***XAMPP***](https://www.apachefriends.org/download.html))

Desigur trebuie inceput prin a intelege cat mai bine [ReadMe](https://github.com/codemage66/PHP-CRUD-API/blob/main/README.md)-ul [proiectului](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api), 
asa ca in acest [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API), am rearanjat acest document si am incercat o traducere/parafrazare cat mai precisa/succinta, care sper eu o sa permita/ajute la o mai buna intelegere.

<details><summary><h1>PHP-CRUD-API - ReadMe.md</h1></summary>
<br/><hr/>
  Acest proiect poate fi lansat accesand un singur script(<b><a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/api.php">api.php</a></b>).
  Acest principal-fisier, adauga un set de functii CRUD-API REST la tabelele unei b.d. <b>SQL</b>(MySQL/MariaDB,PostgreSQL,SQL-Server 
  sua chiar SQLite).
  Desigur, pt a fi rulat, trebuie mai intai sa fie incarcat pe webserver-ul nostru, ca mai apoi sa asiguram conectarea la b.d. SQL, 
  iar in final sa beneficiem de acel set complet de functii CRUD-API accesibile via REST.<br/>
  
  <i>NotaBene</i>(NB): Acest proiect-php este implementarea de referinta a unui alt proiect github-php, si anume,  <a href="https://treeql.org/"><b>TreeQL</b></a>
  <details><summary><h2>Cerinte</h2></summary>
  <br/><hr/>
     - <b>PHP 7.2</b> sau o versiune ulterioară(eu am testat pe PHP 8.3.7) cu drivere <i>PDO</i> activate(sub <b>Windows</b>, cum am si eu, in <b>php.ini</b> trebuie sa aveti <b>extension=php_pdo_mysql.dll</b>  de/necomentat) pentru unul dintre aceste sisteme de baze de date(b.d.):<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <b>MySQL 5.7</b> / <b>MariaDB 10.0</b> sau o versiune ulterioară pentru caracteristici spațiale în MySQL<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <b>PostgreSQL 9.5</b> sau o versiune ulterioară cu <i>PostGIS 2.2</i> sau o versiune ulterioară pentru caracteristici spațiale<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <b>SQL Server 2017</b> sau o versiune ulterioară (2019 are și suport pentru Linux)<br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <b>SQLite 3.16</b> sau o versiune ulterioară (funcțiile spațiale <i>NU</i> sunt acceptate)<br/>   
  <hr/><br/>
  </details>
  <details><summary><h2>Instalare</h2></summary>
  <br/><hr/>
   Descarcati(download-ati) fisierul "<b><a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.php">api.php</a></b>" din ultima versiune: <b>https://github.com/mevdschee/php-crud-api/releases/latest</b> ,<br/>
   sau direct din : <b>https://raw.githubusercontent.com/mevdschee/php-crud-api/main/api.php</b>

   Aceasta este o aplicație cu un/intr-un  singur fișier("<b>api.php</b>")! Încarcă [„api.php”](https://github.com/codemage66/PHP-CRUD-API/blob/main/api.php) undeva(pt XAMPP, fișierul "<b>api.php</b>" se salveaza/incarca in directorul C:\xampp\htdocs\PHP-CRUD-API\) și apoi bucură-te de rulare!

   Pentru dezvoltarea locală, fara a folosi un webserver/cadru specializat(cum este XAMPP), puteți rula serverul-web/webserverul încorporat al lui PHP:
   
      php -S localhost:8080
   
   Testați scriptul deschizând in browserl dvs(ex. Chrome) următoarea adresă URL:

      http://localhost:8080/api.php/records/posts/1
      
   Nu uitați să modificați configurația din partea de jos a fișierului.

   Alternativ, puteți integra acest proiect în cadrul webserver ales de dvs., consultați:
   
   - [API-ul REST automat pentru Laravel](https://tqdev.com/2019-automatic-rest-api-laravel)
   - [API-ul REST automat pentru Symfony 4](https://tqdev.com/2019-automatic-rest-api-symfony)
   - [API-ul REST automat pentru SlimPHP 4](https://tqdev.com/2019-automatic-api-slimphp-4)

  În toate aceste integrări, este folosit [Composer](https://getcomposer.org/), pentru a încărca acest proiect ca o dependența.<br/>
  Pentru persoanele care nu folosesc Composer ca builder/instalator a fost furnizat fisierul ["api.include.php"](https://github.com/codemage66/PHP-CRUD-API/blob/main/api.include.php)<br/>
  Acest fișier conține totul din fisierul [„api.php”](https://github.com/codemage66/PHP-CRUD-API/blob/main/api.php), cu excepția configurației de la [„src/index.php”](https://github.com/codemage66/PHP-CRUD-API/blob/main/src/index.php) și poate fi folosit de funcția [„include”](https://www.php.net/manual/en/function.include.php) a PHP-ului.<br/>

  Insa, inainte de toate trebuie 
  
  - creata baza de date( in **MySQL** in cazul meu; numele b.d. este [***php_crud_api_db***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/php_crud_api_db.sql)), 
  - apoi, trebuie modificat in api.php( trebuie verificate configurarea b.d...cititi cu atentie capitolul urmator intitulat [***Configurare***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#configurare)) si 
  - in final trebuie rulat batch-ul(creat de mine) [**_RUN.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/_RUN.bat)(consultati si/cu **phpinfo()** din ***index.php***, sa vedeti daca suportul **PDO**,din ***php.ini*** este activat?!).

Linia de comanda **composer install** din [**_RUN.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/_RUN.bat) va instala toate librariile/**dependentele** de care depinde acest api intr-un director denumit **vendor**

[**Composer**](https://programam.ro/posts/view/ce-este-composer) va citi fisierul [***composer.json/composer.phare***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/composer.json) pentru a stii ca anume **dependente(librarii,tools-uri...)** trebuiesc instalate pt acest **PHP-CRUD-API**.

In acest fisier de configurare, [***composer.json/composer.phare***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/composer.json), veti vedea/intalni/observa ca aveti niste **keywords** / [**cuvinte-cheie**](https://www.invata-programare.ro/index.php/article/discutii-despre-composerjson-si-composerlock);

Desi aceste "keywords/tags/labels/topics", sunt doar niste meta-informatii(au caracter pur informal, ele-neavand un rol activ in instalare) totusi veti putea afla ce suport ofera sau daca vreti nuanteaza suportul instalarii, oferind informatii utile despre sistemele de baze de date suportate(in cazul meu **MySQL**) sau daca ofera suport pt swagger, openapi, s.a.m.d.

Sau daca vreti, intr-un sens mai larg, sau d.p.d.v conceptual, aceste cuvinte pot sa va focuseze atentia ori sa va duca cu gandul la/catre anumite subiecte/teorii/standarde-cheie care au legatura cu acest proiect...( a se urmari si sectiunea de [**Configurare**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md#configurare))

  <hr/><br/>
  </details>  
  <details><summary><h2>Configurare</h2></summary>
  <br/><hr/><pre>
   In partea de jos a fișierului [„api.php”](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/api.php) 
   trebuie sa editati liniile de mai jos(si sa inlocuiti ****xxx*** cu datele dvs concrete, de conectare la b.d. MySQL:  
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
      ]); </pre> 
Acestea sunt toate opțiunile de configurare și valoarea lor implicită între paranteze:<br/>
    
 - „driver”: mysql, pgsql, sqlsrvsau sqlite( implicit mysql)
 - „address”: numele de gazdă (sau numele fișierului) al serverului bazei de date ( implicit localhost)
 - „port”: portul TCP al serverului de baze de date (valoarea implicita a portului este cea aferenta driverului implicit: well-known ports)
 - „username”: numele de utilizator al utilizatorului care se conectează la baza de date (fără implicit)
 - „password”: parola utilizatorului care se conectează la baza de date (nu exista o valoare implicita)
 - „database”: baza de date la care se face conectarea (nu exista valoare implicita)
 - „command”: ​​SQL suplimentar pentru a inițializa conexiunea la baza de date (implicit nici-un SQL)
 - „tables”: listă separată prin virgulă de tabele de publicat (implicit la „all”)
 - „mapping”: listă separată prin virgulă de mapări de tabel/coloană (fără harta/asociere/mapare)
 - „geometrySRID”: <a href="https://en.wikipedia.org/wiki/Spatial_reference_system">SRID</a> asumat la conversia din WKT în geometrie ( implicit 4326)
 - „middlewares”: Listă de middleware de încărcat ( implicit <a href="https://en.wikipedia.org/wiki/Cross-origin_resource_sharing">CORS</a>)
 - „controlere”: Listă de controlere de încărcat ( records,geojson,openapi,status)
 - „customControllers”: Lista de controlere personalizate de utilizator de încărcat (fără implicit)
 - „openApiBase”: informații despre <a href="https://en.wikipedia.org/wiki/Open_API">OpenAPI</a> ( {"info":{"title":"PHP-CRUD-API","version":"1.0.0"}})
 - „cacheType”: TempFile, Redis, Memcache, Memcachedsau NoCache( implicit TempFile)
 - "cachePath": calea/adresa cache-ului (implicit în directorul temporar al sistemului)
 - „cacheTime”: numărul de secunde în care memoria cache este validă ( implicit 10)
 - „jsonOptions”: Opțiuni utilizate pentru codificarea JSON ( JSON_UNESCAPED_UNICODE)
 - „debug”: afișați erorile în anteturile „X-Exception” ( implicit false)
 - „basePath”: calea de bază URI a API-ului (în mod implicit valoarea este determinată folosind PATH_INFO )

Toate aceste opțiuni de configurare sunt disponibile și ca variabile de mediu.<br/><br/> 
Scrieți opțiunea de configurare cu majuscule, un prefix „PHP_CRUD_API_” și liniuțe de subliniere pentru <br/>despărțiri de cuvinte, de exemplu:<pre>
PHP_CRUD_API_DRIVER=mysql
PHP_CRUD_API_ADDRESS=localhost
PHP_CRUD_API_PORT=3306
PHP_CRUD_API_DATABASE=php-crud-api
PHP_CRUD_API_USERNAME=php-crud-api
PHP_CRUD_API_PASSWORD=php-crud-api
PHP_CRUD_API_DEBUG=1

Variabilele de mediu(setate in shell/cmd.exe sau in .bat: set PHP_CRUD_API_ADDRESS=127.0.0.1) au prioritate față de <br/>configurarile din cadrul sursei-PHP(<a href="https://github.com/codemage66/PHP-CRUD-API/blob/main/php_scripts/CRUD_API/api.php">api.php</a>).
    
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
 - Suport pentru modificarea structurii bazei de date folosind punctul final <a href="https://en.wikipedia.org/wiki/REST">REST</a>
 - Middleware-ul de îmbunătățire a securității este inclus
 - Conform standardului <a href="https://en.wikipedia.org/wiki/PHP_Standard_Recommendation">PSRn[n]</a>: PSR-4, PSR-7, PSR-12, PSR-15 și PSR-17   
  <hr/><br/>
  </details>
  <details><summary><h2>Proiecte si portari conexe</h2></summary>
  <br/><hr/>
Proiecte conexe(legate/utilizate/sursa de inspiratie pt. acest proiect):

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

Există și porturi ale acestui script în:

 - <a href="https://github.com/dranih/go-crud-api">Go-CRUD-API</a> (lucrare în curs de elaborare)
 - <a href="https://github.com/kolchagov/java-crud-api">Java JDBC de Ivan Kolchagov</a> (v1)
 - <a href="https://github.com/mevdschee/java-crud-api/tree/master/full">Java Spring Boot + jOOQ</a> (v2: lucru în curs)
  
Există, de asemenea, porturi de dovadă de concept ale acestui script care acceptă doar funcționalitatea REST CRUD de bază în: <br/>
[PHP](https://github.com/mevdschee/php-crud-api/blob/master/extras/core.php) , [Java](https://github.com/mevdschee/java-crud-api/blob/master/core/src/main/java/com/tqdev/CrudApiHandler.java) , [Go](https://github.com/mevdschee/go-crud-api/blob/master/api.go) , [C# .net core](https://github.com/mevdschee/core-data-api/blob/master/Program.cs) , [Node.js](https://github.com/mevdschee/js-crud-api/blob/master/app.js) și [Python](https://github.com/mevdschee/py-crud-api/blob/master/api.py) .   
   <hr/><br/>
  </details>
  <details><summary><h2>Compilare - Dezvoltare - Actualizarea dependentelor</h2></summary>
  <br/><hr/>
  <details><summary><h3>Compilare</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Dezvoltare</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Actualizare dependentelor</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>   
  <hr/><br/>
  </details>

  <details><summary><h2>TreeQL, un GraphQL pragmatic</h2></summary>
  <br/><hr/>
  <details><summary><h3>CRUD + List</h3></summary>
  <br/><hr/>
  <details><summary><h4>Creare(Create)</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h4>Citire(Read)</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h4>Actualizare/Modificare(Update)</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h4>Stergere(Delete)</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h4>Listare(List)</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>  
  <hr/><br/>
  </details>
  <details><summary><h3>Filtre</h3></summary>
  <br/><hr/>
   
  </pre><hr/><br/>
  </details>
  <details><summary><h3>Filtre multiple</h3></summary>
  <br/><hr/><pre>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Selectia coloanelor</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Sortarea</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h3>Limita parametrului "size"</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h3>Paginatia</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h3>Reunirile de tabele(Joins)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Operatiile in lot de lucrari(Batch operations)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h3>Suportul datelor spatiale</h3></summary>
  <br/><hr/>
  <details><summary><h4>Suport spatial</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>     
  <details><summary><h4>GeoJSON</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>    
  <hr/><br/>
  </details> 

  <hr/><br/>
  </details>
  <details><summary><h2>Maparea numelor pt sistemele mai vechi</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h2>Intermediere(Middlereware)</h2></summary>
  <br/><hr/>
  <details><summary><h3>Autentificari</h3></summary>
  <br/><hr/>
  <details><summary><h4>Autentificare</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h4>Autentificare cu cheie-API(API-key)</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h4>Autentificare Baza de Date cu cheie-API(API-key)</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h4>Autentificare Baza de Date</h4></summary>
  <br/><hr/>
   <b>Logare folosind o tabela-join</b>
  <hr/><br/>
  </details>
  <details><summary><h4>Autentificare Wordpress</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h4>Autentificare de baza</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h4>Autentificari JWT</h4></summary>
  <br/><hr/>
  <details><summary><h5>Autentificare JWT</h5></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h5>Configurare si testare autentificare JWT cu Auth0</h5></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h5>Configurare si testare autentificare JWT cu Firebase</h5></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <hr/><br/>
  </details>  
  <hr/><br/> 
  </details>
  <details><summary><h3>Autorizarea operatiilor</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Autorizarea tabelelor,coloanelor si inregistrarilor/randurilor</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Autorizarea SQL GRANT</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h3>Sanitizarea intrarii</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Tipul sanitizarii</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Validarea intrarii</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Tipuri de validari</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Suport multi-chirias(multi-tenancy)</h3></summary>
  <br/><hr/>
  <details><summary><h4>Suport "multi-chirias"</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h4>Intermediar multi-chirias(multi-tenancy middleware)</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h4>Reconectarea intermediarului</h4></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>  
  <hr/><br/>
  </details>
  <details><summary><h3>Prevenirea "scraping"-ului bazei de date(culegerii nedorite de date)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h3>Cautarea tuturor campurilor text</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Personalizarea manipulatorilor(customization handlers)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Optiuni de codificare JSON(JSON encoding options)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Intermediarul JSON(JSON middleware)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Intermediarul XML(XML middleware)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Incarcarile de fisier(File uploads)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>  
  <hr/><br/>
  </details>
  <details><summary><h2>Specificatia OpenAPI</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h2>Tampon date reutilizate(Cache)</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h2>Tipuri de date(Types)</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>  
  <details><summary><h2>Tipuri de date in JavaScript</h2></summary>
  <br/><hr/>
  <details><summary><h3>intregi pe 64 biti</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
  <details><summary><h3>reali in virgula mobila - Inf si NaN</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>  
  <hr/><br/>
  </details>
  <details><summary><h2>Erori</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h2>Stare(status)</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h2>Controler personalizat(custom controller)</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h2>Teste</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h2>Rulare/Executie(running)</h2></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h2>Exemplu de configurare Nginx</h2></summary>
  <br/><hr/>
 
  <hr/><br/>
  </details>
  <details><summary><h2>Dockerizare</h2></summary>
  <br/><hr/>
  <details><summary><h3>Teste Docker</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Imagine Docker</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Compozitorul Docker(Docker compose)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details>
  <details><summary><h3>Istoria Stelutelor(star hystory)</h3></summary>
  <br/><hr/>
   
  <hr/><br/>
  </details> 
    <hr/><br/>
  </details>
  Bucurati-va!
<hr/><br/>
</details>

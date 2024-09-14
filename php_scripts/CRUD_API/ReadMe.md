Am cautat un [**proiect**](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api) care sa aiba ca facilitati cateva lucruri:
- sa fie un **api** de preferat pt o baza de date de tip **SQL**(si care sa permita pt tabelele sale operatii de tip [**CRUD**](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete))
- sa fie bine securizata(cu **token JWT**,...)
- si sa permita un access de tip modern REST(de preferat, gen **GraphQL**)

Am gasit un astfel de proiect, pe github, intitulat [**PHP-CRUD-API**](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api) si va recomand sa-l [descarcati](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api)  iar apoi sa-l testati(sub ***Windows***, pt b.d. ***MySQL***, puteti folosi [***XAMPP***](https://www.apachefriends.org/download.html))

Desigur trebuie inceput prin a intelege cat mai bine [ReadMe](https://github.com/codemage66/PHP-CRUD-API/blob/main/README.md)-ul [proiectului](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api), 
asa ca in acest [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API), am rearanjat acest document si am incercat o traducere/parafrazare cat mai precisa/succinta, care sper eu o sa permita/ajute la o mai buna intelegere.

<details><summary><h1>PHP-CRUD-API - ReadMe.md</h1></summary>
<br/><hr/>
  Acest proiect poate fi lansat accesand un singur script(<b>api.php</b>).
  Acest principal-fisier, adauga un set de functii CRUD-API REST la tabelele unei b.d. <b>SQL</b>(MySQL/MariaDB,PostgreSQL,SQL-Server 
  sua chiar SQLite).
  Desigur, pt a fi rulat, trebuie mai intai sa fie incarcat pe webserver-ul nostru, ca mai apoi sa asiguram conectarea la b.d. SQL, 
  iar in final sa beneficiem de acel set complet de functii CRUD-API accesibile via REST.<br/>
  
  <i>NotaBene</i>(NB): Acest proiect-php este implementarea de referinta a unui alt proiect github-php, si anume,  <a href="https://treeql.org/"><b>TreeQL</b></a>
  <details><summary><h2>Cerinte</h2></summary>
  <br/><hr/>
     - <b>PHP 7.2</b> sau o versiune ulterioară cu drivere <i>PDO</i> activate pentru unul dintre aceste sisteme de baze de date(b.d.):<br/>
     <&nbsp;><&nbsp;><&nbsp;><&nbsp;><&nbsp;>- <b>MySQL 5.7</b> / <b>MariaDB 10.0</b> sau o versiune ulterioară pentru caracteristici spațiale în MySQL<br/>
     <&nbsp;><&nbsp;><&nbsp;><&nbsp;><&nbsp;>- <b>PostgreSQL 9.5</b> sau o versiune ulterioară cu <i>PostGIS 2.2</i> sau o versiune ulterioară pentru caracteristici spațiale<br/>
     <&nbsp;><&nbsp;><&nbsp;><&nbsp;><&nbsp;>- <b>SQL Server 2017</b> sau o versiune ulterioară (2019 are și suport pentru Linux)<br/>
     <&nbsp;><&nbsp;><&nbsp;><&nbsp;><&nbsp;>- <b>SQLite 3.16</b> sau o versiune ulterioară (funcțiile spațiale <i>NU</i> sunt acceptate)<br/>   
  <hr/><br/>
  </details>
  <details><summary><h2>Instalare</h2></summary>
  <br/><hr/>
   Descarcati(download-ati) fisierul "<b>api.php</b>" din ultima versiune: <b>https://github.com/mevdschee/php-crud-api/releases/latest</b> ,
   sau direct din : <b>xhttps://raw.githubusercontent.com/mevdschee/php-crud-api/main/api.php</b>

   Aceasta este o aplicație cu un/intr-un  singur fișier("<b>api.php</b>")! Încarcă „api.php” undeva(pt XAMPP, fișierul "<b>api.php</b>" se salveaza/incarca in directorul C:\xampp\htdocs\PHP_CRUD_API\) și apoi bucură-te de rulare!

   Pentru dezvoltarea locală, fara a folosi un webserver/cadru specializat(cum este XAMPP), puteți rula serverul-web/webserverul încorporat al lui PHP:
   
      <b>php -S localhost:8080</b>
   
   Testați scriptul deschizând in browserl dvs(ex. Chrome) următoarea adresă URL:

      <b>http://localhost:8080/api.php/records/posts/1</b>
      
   Nu uitați să modificați configurația din partea de jos a fișierului.

   Alternativ, puteți integra acest proiect în cadrul web ales de dvs., consultați:
   
  <hr/><br/>
  </details>  
  <details><summary><h2>Configurare</h2></summary>
  <br/><hr/><pre>
   In partea de jos a fișierului „api.php” trebuie sa editati liniile de mai jos(si sa inlocuiti xxx cu datele dvs de conectare la b.d. MySQL:
      
      $config = new Config([
          'username' => 'xxx',
          'password' => 'xxx',
          'database' => 'xxx',
      ]);

      Dupa editare/modificare aceaste linii ar putea arata astfel:
      
      $config = new Config([
          'username' => 'root',
          'password' => '',
          'database' => '',
      ]);

      
  </pre><hr/><br/>
  </details>
  <details><summary><h2>Limitari</h2></summary>
  <br/><hr/><pre>
   
  </pre><hr/><br/>
  </details>
  <details><summary><h2>Caracteristici</h2></summary>
  <br/><hr/><pre>
   
  </pre><hr/><br/>
  </details>
  <details><summary><h2>Proiecte si portari conexe</h2></summary>
  <br/><hr/><pre>
   
  </pre><hr/><br/>
  </details>
  <details><summary><h2>Compilare</h2></summary>
  <br/><hr/><pre>
   
  </pre><hr/><br/>
  </details>
  <details><summary><h2>Dezvoltare</h2></summary>
  <br/><hr/><pre>
   
  </pre><hr/><br/>
  </details>  
<hr/><br/>
</details>

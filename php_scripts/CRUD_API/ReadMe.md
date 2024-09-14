Am cautat un [**proiect**](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api) care sa aiba ca facilitati cateva lucruri:
- sa fie un **api** de preferat pt o baza de date de tip **SQL**(si care sa permita pt tabelele sale operatii de tip [**CRUD**](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete))
- sa fie bine securizata(cu **token JWT**,...)
- si sa permita un access de tip modern REST(de preferat, gen **GraphQL**)

Am gasit un astfel de proiect, pe github, intitulat [**PHP-CRUD-API**](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api) si va recomand sa-l [descarcati](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api)  iar apoi sa-l testati(sub ***Windows***, pt b.d. ***MySQL***, puteti folosi [***XAMPP***](https://www.apachefriends.org/download.html))

Desigur trebuie inceput prin a intelege cat mai bine [ReadMe](https://github.com/codemage66/PHP-CRUD-API/blob/main/README.md)-ul [proiectului](https://github.com/codemage66/PHP-CRUD-API?tab=readme-ov-file#php-crud-api), 
asa ca in acest [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/CRUD_API), am rearanjat acest document si am incercat o traducere/parafrazare cat mai precisa/succinta care sper eu o sa permita o mai buna intelegere.

<details><summary><h1>PHP-CRUD-API</h1></summary>
<br/><hr/><pre>
  Acest proiect poate fi lansat accesand un singur script(<b>api.php</b>).
  Acest principal-fisier, adauga un set de functii CRUD-API REST la tabelele unei b.d. <b>SQL</b>(MySQL/MariaDB,PostgreSQL,SQL-Server 
  sua chiar SQLite).
  Desigur, pt a fi rulat, trebuie mai intai sa fie incarcat pe webserver-ul nostru, ca mai apoi sa asiguram conectarea la b.d. SQL, 
  iar in final sa beneficiem de acel set complet de functii CRUD-API accesibile via REST.<br/>
  
  <i>NotaBene</i>(NB): Acest proiect-php este implementarea de referinta a unui alt proiect github-php, si anume,  <a href="https://treeql.org/"><b>TreeQL</b></a>
  <details><summary><h2>Cerinte</h2></summary>
  <br/><hr/><pre>
     - PHP 7.2 sau o versiune ulterioară cu drivere PDO activate pentru unul dintre aceste sisteme de baze de date(b.d.):
        - MySQL 5.7 / MariaDB 10.0 sau o versiune ulterioară pentru caracteristici spațiale în MySQL
        - PostgreSQL 9.5 sau o versiune ulterioară cu PostGIS 2.2 sau o versiune ulterioară pentru caracteristici spațiale
        - SQL Server 2017 sau o versiune ulterioară (2019 are și suport pentru Linux)
        - SQLite 3.16 sau o versiune ulterioară (funcțiile spațiale NU sunt acceptate)    
  </pre><hr/><br/>
  </details>
</pre><hr/><br/>
</details>

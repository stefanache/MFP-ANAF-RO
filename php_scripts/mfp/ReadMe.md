Aici gasiti 

- incarcarea [**nomenclatoarelor geografice**](https://mfinante.gov.ro/nomenclatoare-geografice-mfp) pentru toata tara din site-ul MFP: [***importXMLs.php***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/importXMLs.php)
- incarcarea nomenclatorului ***original***(nu cel al MFP-ului)(autor **INS**) [**SIRUTA**](https://data.gov.ro/dataset/0b91d96d-1727-4037-af67-6bfc3db52139/resource/a43597c1-6af9-4ca9-adb7-0b5c7873d8fa/) de pe site-ul data.gov.ro: [***importCSVxlsx_SIRUTA.php***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/importCSVxlsx_SIRUTA.php)

  in baza de date ***MySQL*** **nomen**(controlata prin ***PhpMyAdmin*** din [***XAMPP***](https://www.apachefriends.org/download.html))

**nomen.sql** este exportul bazei de date ***nomen*** in totalitate(**DDL+DML**; adica creaza tabelelele MySQL dar le si umple cu date)

Aceste scripturi sunt in stare "bruta"/mai putin "finisate" dar pot constitui un bun inceput in a le integra si in a le utiliza intr-un **CronJob-PhP** care poate verifica ***zilnic*** site-ul nomenclatoarelor;
Atunci cand apare o noua versiune a nomenclatoarelor, CronJob-ul PhP ar putea reincarca aceste noi fisiere in tabelele bazei de date **nomen** din ***MySQL***, inlocuindu-le pe cele vechi.
Cam acesta ar putea fi scopul final al acestui Cron-Jobsi anume acela de a automatiza complet aceasta activitate/task/job;

Pentru descarcarea [**nomenclatorului csv/xlsx SIRUTA**](https://data.gov.ro/dataset/0b91d96d-1727-4037-af67-6bfc3db52139/resource/a43597c1-6af9-4ca9-adb7-0b5c7873d8fa/) de pe portalul ***data.gov.ro*** am [utilizat](https://itecnote.com/tecnote/php-read-excel-xlsx-file-using-simplexlsx-in-php/) scriptul [***importCSVxlsx_SIRUTA.php***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/importCSVxlsx_SIRUTA.php) bazat pe libraria [**SimpleXLSX**](https://hotexamples.com/examples/-/SimpleXLSX/-/php-simplexlsx-class-examples.html) pe care am [descarcat-o](https://www.php.net/manual/en/book.simplexml.php) de pe [github](https://github.com/shuchkin/simplexlsx)(***greats!***)

Instalarea librariei este simpla.  Dupa ce mergeti in sub-directorul aplicatiei(**cd \xampp\htdocs\gov**) executati comanda de instalare folosind composer:

C:\xampp\htdocs\gov> **composer require shuchkin/simplexlsx**

Se presupune ca in prealabil ati instalat sau aveti deja instalat **composer**

Pentru cei ce doresc [***informatii tehnice***](https://etransport.mfinante.gov.ro/informatii-tehnice) legate de **eTransport** le puteti gasi pe portalul **MFP**


Nomenclatorul **UAT**-urilor, cunoscut sub denumirea [**SIRUTA**](https://siruta.nxm.ro/) este intretinut si versionat la 6 luni de catre **INS** dar poate fi descarcat ca dataset(uneori gasiti versiuni mai vechi ale acestuia deoarece propagarea dureaza!!!:) si de pe site-ul [***UE***](https://data.europa.eu/data/datasets/9f38f6fe-66a0-4e93-ae24-4272b91c9849?locale=ro); 

Am gasit si pe ***github*** acest nomenclator (My)SQL [**SIRUTA**](https://github.com/bandizsolt/romanian-counties-and-locations) si chiar si o [***biblioteca***](https://github.com/strainu/SIRUTA) scrisa in python.

Iata biblioteca Python pentru analizarea unui extras [**SIRUTA**](https://github.com/strainu/SIRUTA) în format [CSV](https://github.com/mgax/workshop-odss-vis/blob/master/rawdata/siruta-judete.csv) sau [json](https://github.com/mgax/harta-cim/blob/gh-pages/siruta.json).

Desigur puteti cauta acest nomenclator **SIRUTA** si pe [data.gov.ro](https://data.gov.ro/dataset?res_format=csv)

**SIRUTA** poate fi folosit si pentru alte scopuri cum ar fi [alegeri](https://github.com/alexaac/presidentials2019Data),[ANRE](https://github.com/posfgit/standard)...

**SIRUTA** are o ***granulatie*** sau o ***rezolutie*** pana la nivel de [***localitate***](https://github.com/andreifurrnica/localitati-romania)

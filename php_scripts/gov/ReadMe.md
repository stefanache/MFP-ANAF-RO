
Aici vom discuta despre descarcarea nomenclatoarelor([**dataset**](https://data.gov.ro/pages/developers)-urilor) de pe portalul ***data.gov.ro*** necesare [***eGuvernarii***](https://www.startupcafe.ro/taxe/video-tutoriale-ro-e-factura-cum-inscrii-sistem-cum-emiti-e-facturi-instrumente-gratuite)

Aici gasiti 

- incarcarea nomenclatorului ***original***(nu cel al MFP-ului)(autor **INS**) [**SIRUTA**](https://data.gov.ro/dataset/0b91d96d-1727-4037-af67-6bfc3db52139/resource/a43597c1-6af9-4ca9-adb7-0b5c7873d8fa/) de pe site-ul data.gov.ro: [***importCSVxlsx_SIRUTA.php***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/importCSVxlsx_SIRUTA.php)

  in baza de date ***MySQL*** **nomen**(controlata prin ***PhpMyAdmin*** din [***XAMPP***](https://www.apachefriends.org/download.html))

**nomen.sql** este exportul tabelei ***nomen.nom_SIRUTA*** in totalitate(**DDL+DML**; adica creaza tabela MySQL **nom_SIRUTA** din baza de date **nomen** dar o si umple cu date)

Acest script sunt in stare "bruta"/mai putin "finisat" dar poate constitui un bun inceput in a-l integra si in a-l utiliza intr-un **CronJob-PhP** care poate verifica ***zilnic*** site-ul nomenclatorului;
Atunci cand apare o noua versiune a nomenclatorului, CronJob-ul PhP ar putea reincarca acest nou fisier in tabela **nom_SIRUTA** din baza de date ***MySQL*** **nomen** , inlocuindu-l pe cel vechi.
Cam acesta ar putea fi scopul final al acestui Cron-Job si anume acela de a automatiza complet/in totalitate aceasta activitate/task/job;

Pentru descarcarea [**nomenclatorului csv/xlsx SIRUTA**](https://data.gov.ro/dataset/0b91d96d-1727-4037-af67-6bfc3db52139/resource/a43597c1-6af9-4ca9-adb7-0b5c7873d8fa/) de pe portalul ***data.gov.ro*** am [utilizat](https://itecnote.com/tecnote/php-read-excel-xlsx-file-using-simplexlsx-in-php/) scriptul [***importCSVxlsx_SIRUTA.php***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/importCSVxlsx_SIRUTA.php) bazat pe libraria [**SimpleXLSX**](https://hotexamples.com/examples/-/SimpleXLSX/-/php-simplexlsx-class-examples.html) pe care am [descarcat-o](https://www.php.net/manual/en/book.simplexml.php) de pe [github](https://github.com/shuchkin/simplexlsx)(***greats!***)

Instalarea librariei este simpla.  Dupa ce mergeti in sub-directorul aplicatiei(**cd \xampp\htdocs\gov**) executati comanda de instalare folosind composer:

C:\xampp\htdocs\gov> **composer require shuchkin/simplexlsx**

Se presupune ca in prealabil ati instalat sau aveti deja instalat **composer**


Daca aveti nevoie de **date**(Denumire firmă, CUI, cod înmatriculare, județ, localitate, stare firmă cf. nomenclatorului de stari-firma) despre o **firma** sau alta(***radiata*** ori ***neradiata***, ***cu*** sau ***fara*** **sediu**) puteti utiliza setul de date publicat de catre [**ONRC**](https://www.onrc.ro/index.php/ro/inmatriculari/persoane-juridice) postat pe portalul [**data.gov.ro**](https://data.gov.ro/dataset/firme-inregistrate-la-registrul-comertului-pana-la-data-de-07-ianuarie-2024)

Pentru a descarca [CAEN Rev.2](https://data.gov.ro/dataset/caen-clase-rev2) puteti utiliza acelasi portal. CAEN Rev.2 este clasificarea activităţilor economice corespunzătoare cu NACE Rev.2 (standard UE) şi ISIC Rev.4 (standard ONU) la nivel naţional. Pentru a vedea **fluxul de activitate**(actiuni) ce s-au desfasurat de-a lungul timplului legat de acest **dataset** puteti sa o faceti folosind acest [***link***](https://data.gov.ro/dataset/activity/caen-clase-rev2)

Daca doriti sa descarcati formulare cu care opereaza ONRC puteti sa accesati link-ul urmator: [**https://www.onrc.ro/index.php/ro/informatii-publice/formulare-tip***](https://www.onrc.ro/index.php/ro/informatii-publice/formulare-tip)

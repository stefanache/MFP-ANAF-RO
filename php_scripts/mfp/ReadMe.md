Aici gasiti 

- incarcarea [**nomenclatoarelor geografice**](https://mfinante.gov.ro/nomenclatoare-geografice-mfp) pentru toata tara din site-ul MFP: [***importXMLs.php***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/importXMLs.php)
- incarcarea nomenclatorului ***original***(nu cel al MFP-ului)(autor **INS**) [**SIRUTA**](https://data.gov.ro/dataset/0b91d96d-1727-4037-af67-6bfc3db52139/resource/a43597c1-6af9-4ca9-adb7-0b5c7873d8fa/) de pe site-ul data.gov.ro: [***importCSVxlsx_SIRUTA.php***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/importCSVxlsx_SIRUTA.php)

  in baza de date ***MySQL*** **nomen**(controlata prin ***PhpMyAdmin*** din [***XAMPP***](https://www.apachefriends.org/download.html))

**nomen.sql** este exportul bazei de date ***nomen*** in totalitate(**DDL+DML**; adica creaza tabelelele MySQL si le si umple cu date)

Aceste scripturi sunt in stare "bruta"/mai putin "finisate" dar pot constitui un bun inceput in a le integra si a le utiliza intr-un **CronJob-PhP** care poate verifica ***zilnic*** site-ul nomenclatoarelor;
Atunci cand apare o noua versiune a nomenclatoarelor, CronJob-ul PhP ar putea reincarca aceste noi fisiere in tabelele bazei de date **nomen** din ***MySQL***, inlocuindu-le pe cele vechi.
Cam acesta ar putea fi scopul final al acestui Cron-Jobsi anume acela de a automatiza complet aceasta activitate/task/job;

Pentru descarcarea **nomenclatorului csv/xlsx SIRUTA** de pe portalul ***data.gov.ro*** am folosit [**SimpleXLSX**](https://github.com/shuchkin/simplexlsx) pe care l-am [descarcat](https://www.php.net/manual/en/book.simplexml.php) de pe [github](https://github.com/shuchkin/simplexlsx)(***greats!***)

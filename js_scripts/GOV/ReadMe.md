In atentia [programatorilor](https://data.gov.ro/pages/developers) care vor sa extraga informatii de pe/din [data.gov.ro](https://data.gov.ro/en/) ( se vedea si [publicarea](https://data.gov.ro/uploads/page_images/2020-09-14-105420.013000Metodologie-date-deschisefeb2019-2.docx) de date deschise)

[Cautare dataset-uri](https://data.gov.ro/dataset?q=2023&sort=score+desc%2C+metadata_modified+desc) in [data.gov.ro](https://data.gov.ro/) in vederea [descarcarii](https://data.gov.ro/dataset?q=2024&organization=agentia-nationala-de-administrare-fiscala) :

- daca descarcati fisiere excel(.xlsx) indiferent de sursa atunci pentru accesare puteti sa incercati un alt repo de-al meu(ce-i drept mai/cam vechi): [SheetJS](https://stefanache.github.io/SheetJS/); Important ar fi si m-as bucura daca v-ar fi de [folos](https://github.com/stefanache/SheetJS)!

- daca descarcati ceva in format XML atunci poate ar fi util sa va uitati pe acele mici exemple(html/JS/css) pe care le-am creat la sectiunea [nomenclatoare geografice MFP](https://github.com/stefanache/MFP-ANAF-RO/blob/main/js_scripts/mfp/nomenclatoare_geografice/)

- daca descarcati in format JSON/JSONP aveti deja [exemplul 1 din subdirectorul CKAN](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN) - ***a se vedea sursa fisierului [index.html](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN/index.html) din acest subdirector***

- formatul csv este destul de simplu si parser-ul JS pt astfel de date nu cred ca ridica probleme - in general,campurile unui rand sunt separate prin virgula(**,**) dar trebuie verificat ... deschizand fisierul intr-un editor de text simplu Notepad++ sau chiar Wordpad ori Notepad(cu optiunea click-dreapta "open with") pt a vedea exact structura randului(de obicei va lamuriti din primul rand cum stau lucrurile!!!)

- despre celelalte formate nu cred ca/sper ca veti avea nevoie... dar daca totusi este necesar gasiti pe github tools-uri scrise in javascript pur pt web, pe parte de client(nu neaparat pe parte de server/nodeJS)
  
Domeniile publice pentru date deschise publicate de [data.gov.ro](https://domenii.gov.ro/new/date-deschise/)

[Resurse data.gov.ro](https://data.gov.ro/pages/resources)

Pentru limba engleza: [data.gov.ro/en](https://data.gov.ro/en/datarequest?state=open)

[Seturi de date data.gov.ro](https://data.gov.ro/dataset)

Siteul [e-Guvernare](https://www.e-guvernare.ro/) al Autoritatii pentru Digitalizarea României

Date deschise furnizate de [ONRC](https://data.gov.ro/organization/onrc) ce pot fi descarcate de pe portalul data.gov.ro; [ONRC-WSDL](https://portal.onrc.ro/ONRCPortalWeb/wservices/QueryService/?wsdl); reddit discutie forum despre [ONRC SOAP](https://www.reddit.com/r/programare/comments/153oqkj/apisoap_onrcro/);  [catalog firme](https://devforum.ro/t/lista-catalog-firme-din-romania/3636/50?page=3); o cautare pe [data.gov.ro](https://data.gov.ro/organization/onrc?q=2024&sort=score+desc%2C+metadata_modified+desc)  pt anul [2024 firme inregistrate la ONRC](https://data.gov.ro/organization/16c83dbe-5a2b-466b-abda-7722354b665c?q=&organization=onrc&sort=metadata_modified+desc); despre [RECOM-ONRC](https://www.onrc.ro/documente/achizitii/2019/10.05.2019/1494209120184CP108513_Anexe%202-13-semnat.pdf) - organizarea si metodologia privind [prestarea serviciilor ](https://data.gov.ro/datarequest/comment/c32a31c1-5f01-45cf-8b01-a65c9a9bb885)

Date furnizate de [MS](https://data.gov.ro/datarequest?organization=ms)

Poratalul UE pt TVA: [Vies](https://ec.europa.eu/taxation_customs/vies/#/faq)

Daca programati in .NET/C# si doriti sa downloadati fisiere de pe data.gov.ro si apoi  sa le valorificati aveti aici proiectul [ROP](https://github.com/ignatandrei/RomaniaOpenData/blob/master/ROP/ROPCommon/DownloadData.cs)

UPG Ploiesti ofera [Surse de date](https://sites.google.com/upg-ploiesti.ro/resurse-se/alte-resurse/surse-de-date) deschise

O lista de proiecte si articole care folosesc [data.gov.ro](https://gov.palcu.ro/lista)

Acest PDF aduce in atentia dvs un [Studiu privind Exemple de bună practică în utilizarea instrumentelor de tip e-guvernare pentru furnizarea de servicii publice](https://www.adr.gov.ro/wp-content/uploads/2021/07/Studiu-privind-exemple-de-buna-practica-in-utilizarea-instrumentelor-de-tip-e-guvernare-pentru-furnizarea-de-servicii-publice-A20_12.02.2020.pdf)

Am sa incerc aici  un exemplu clasic de cum putem folosi functia PhP **fgetCSV** pentru a citi un fisier de tip CSV descarcat(downloadat din internet-am downloadat chiar de [***aici***](https://stefanache.github.io/MFP-ANAF-RO/php_scripts/fGetCSV/) fisierul [**csv**](https://stefanache.github.io/MFP-ANAF-RO/php_scripts/fGetCSV//date_de_contact_localitati.csv).

Am descarcat ***manual***(desi daca url-ul este facut public se poate descarca prin php-script - a se vedea exemplul de [descarcare](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/download.php) a xml-urilor de date geografice postate de catre ***MFP)*** un fisier de exemplu de pe github-repository-ul [***geo-spatial.org***](https://github.com/geospatialorg/date-contact-localitati/blob/main/date_de_contact_localitati.csv) si 

apoi am scris un script bazat pe functia PhP **fgetCSV** pentru a citi fisierul anterior descarcat.

Am postat aici micul script PhP **index.php** pentru a-l putea testa si voi pe un ***webserver Apache***(care desigur suporta PhP) al unui [***XAMPP***](https://www.docs.nexuserp.ro/articol/instalare-xampp/3684) instalat in ***Windows 10 Home/Pro***.

Mai multe detalii despre [**geo-spatial.org**](https://github.com/geospatialorg) si despre [proiectul](https://geo-spatial.org/#despre) colaborativ de colectare a [**datelor de contact**](https://docs.google.com/spreadsheets/d/1w-LlAOq8awziuYhuVH8d9H08FcdYNENw37rJk2Tmx3Q/edit#gid=53477816) ale ***primariilor/UAT-urilor*** din ***localitatile de resedinta*** puteti gasi in sectiunea [***js_scripts/MFP***](https://github.com/stefanache/MFP-ANAF-RO/tree/main/js_scripts/mfp);

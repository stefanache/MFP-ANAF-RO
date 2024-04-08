Am sa incerc aici  un exemplu clasic de cum putem folosi functia PhP **fgetCSV** pentru a citi un fisier de tip CSV descarcat(downloadat din internet).

Am descarcat ***manual***(desi daca url-ul este facut public se poate descarca prin php-script - a se vedea exemplul de [descarcare](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/mfp/download.php) a xml-urilor de date geografice postate de catre ***MFP)*** un fisier de exemplu de pe github-repository-ul [geospatialorg](https://github.com/geospatialorg/date-contact-localitati/blob/main/date_de_contact_localitati.csv) si 

apoi am scris un script bazat pe functia PhP **fgetCSV** pentru a citi fisierul anterior descarcat.

Am postat aici micul script PhP **index.php** pentru a-l putea testa si voi pe un ***webserver Apache***(care desigur suporta PhP) al unui ***XAMPP*** instalat in ***Windows 10 Home/Pro***.

Mai multe detalii gasiti in sectiunea [***js_scripts***](https://github.com/stefanache/MFP-ANAF-RO/tree/main/js_scripts/mfp);

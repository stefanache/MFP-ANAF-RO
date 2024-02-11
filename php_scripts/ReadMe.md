Aici gasiti scripturi legate de ***eGuvernare***

Daca aveti nevoie de **cursul BNR** pentru o ***valuta*** anume(***interogarare punctuala***) probabil ca acest [**github-repository**](https://github.com/WPPlugins/curs-valutar-bnr/blob/master/curs_valutar_bnr.php) va poate fi de ajutor;
Nu este vorba de o interogare punctuala(adica pentru o valuta anume) dar probabil ca este usor de obtinut si o interogare punctuala daca studiati acest cod in detaliu;
S-ar putea ca acest [cod](https://www.curs-valutar-bnr.ro/preluare-curs-valutar-bnr-script-php) sa fie mai simplu de utilizat...Eu am incercat acest [link-BNR](http://www.bnro.ro/nbrfxrates.xml) direct si am vazut ca functioneaza...deci probabil ca extragerea punctuala pentru o valuta este foarte probabil sa functoneze(parsarea nu este atat de complicata)...
E posibil ca acest curs sa fi folositor pentru [**eFactura**](/https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) in valuta si in special pentru contabilitate
Ca sa aveti o ***evidenta(adica sa stocati intr-o tabela dintr-o baza de date)*** a cursului valutar al unei **valute** pentru diverse date calendaristice(la acea **data calendaristica din factura**) probabil ca mult mai bine ar fi sa va stocati acest **curs** pentru acea valuta  intr-o [***tabela MySQL***](https://www.heliosdesign.ro/resurse/php/preluare-curs-valutar.htm)
Daca vreti sa-l afisati pe site acest [**cod PhP**](https://www.endd.ro/curs-valutar-pe-site-ul-tau/) s-ar putea sa va ajute
Daca aveti nevoie de **cURL** ca executabil ar fi bine sa-l [***instalati manual***](https://www.digitalocean.com/community/tutorials/workflow-downloading-files-curl);
Recomandarea mea este sa-l instalati si sa-l faceti cunoscut(pt a fi usor regasit cand il chemati intr-o comanda de terminal **cmd.exe**) in variabila de environment **%PATH%** pentru ca este util macar pentru a testa un URL (macar atunci cand trebuie sa faceti apeluri **POST**,**PUT**,......pt ca apelurile **GET** pot fi testate direct in ***browser*** tastand **URL**-ul respectiv in campul de adresa);

Pe [ICEsoft](https://icesoft.ro/forum//index.php?topic=699.0) forum s-a postat candva o intrebare legitima in legatura cu [***eFactura***:](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ghid_RO_eFactura.pdf) 

Ce este **XML** [***eFactura***](https://mfinante.gov.ro/web/efactura/informatii-tehnice)?

Intrebarea, desi pe ***jumatate*** pusa este totusi o intrebare;

**XML** este o forma de prezentare([***arborescenta***](https://copyprogramming.com/howto/how-to-show-tree-view-in-php)) a datelor deci este un standard de prezentare(pana la urma si de stocare in container/fisier) a datelor;
De ce spun ca este pe ***jumatate*** pusa intrebarea?
Pentru ca in cadrul acestul **XML** se foloseste un alt standard de sintaxa a datelor specifice unei ***eFacturi***(de fapt **eInvoice** pt ca este pt un format/standard extins la nivel international)  
si aici ma refer la **UBL** ori **CII**...
Deci standardul **UBL** sau **CII** este inclus(sau gazduit) de acest standard ***general*** **XML**.
Nu a fost o explicatie prea academica dar sper sa fie utila unora mai practicieni(***n.r.*** ca mine)...
De ce spun ca XML este un standard general/comun ? ... pt ca orice se prezinta sub forma(***paradigma/modelul***) **<tag>**...***continut***...**</tag>** este un format **XML**(daca vreti si continutul unui fisier  **HTML** este un **XML**...cu ata mai mult un ***XHTML***; adica **HTML**-ul este in particular, daca vreti/pana la urma, tot un **XML**...   pt. ca respecta [***paradigma/modelul/formatul***](https://stackoverflow.com/questions/52569580/php-extract-html-tag-value-into-array-from-string) despre care vorbeam mai sus)

Daca aveti nevoie de informatii privind [**Sedii DGRFP**](https://www.anaf.ro/anaf/internet/ANAF/contact/adrese_unitati_fiscale), adica adresele unitatilor fiscale, puteti cauta pe site-ul ***ANAF***

Pentru cei care doresc sa-si construiasca programatic(in acest caz, utilizand limbajul **PhP**) propriul generator ***UBL2.1/xml eFactura*** probabil ca ar fi util ca in prealabil sa aruncati o privire catre depozitul [***danielgp/eFactura***](https://github.com/danielgp/eFactura/tree/main)


In general platforma ANAF se bazeaza pe **java**;

Asa ca [inanite de orice](https://www.linkedin.com/learning/java-ee-javaserver-faces-jsf) poate ar fi bine sa va [**acomodati**](https://medium.com/@niranjangirheindia/java-server-pages-jsp-and-javaserver-faces-jsf-4054162c3a46) cu limbajul **java**, cu librariile de clase arhivate  [**jar**](https://en.wikipedia.org/wiki/JAR_(file_format)) si cu termeni precum [**JSF**](https://docs.oracle.com/javaee/7/tutorial/jsf-ajax010.htm)(ori de ce nu **JSP**)

Pe scurt cam trebuie sa faceti cunostinta(daca nu ati facut deja) cu **Java EE**:

    Specificația Java EE este standardul industrial pentru construirea de aplicații web la nivel de întreprindere. 
    Atentia dumneavoastra ar rebui sa se concentreze pe **JSF** și mai ales ar trebui ca  programatorii Java să 
    folosească/descopere această platformă pentru a construi aplicații web Java EE robuste și sigure. 
    Ar trebui sa descoperiți cum 
      - să configurați un proiect JSF, 
      - să construiți o pagină JSF folosind Facelets, 
      - să utilizați suportul Ajax în JSF, 
      - să vă asigurați aplicația web JSF, 
      - să combinați JSF cu alte cadre și multe altele.

Mai multe [detalii](https://www.w3schools.blog/custom-validator-jsf) despre [generarea dinamica de continut](https://www.oracle.com/technical-resources/articles/java/enterprise-html5.html) puteti [consulta](https://www.w3schools.blog/jsf-tutorial) acest [site](https://forum.primefaces.org/viewtopic.php?t=34109)

Un [exemplu](https://www.tutorialspoint.com/jsf/jsf_quick_guide.htm) elocvent de utilizare a [JSF](https://mkyong.com/jsf2/how-to-include-javascript-file-in-jsf/) este chiar [generatorul UBL2.1/XML eFactura](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml)

Mecanismul AJAX folosit de [JSF](https://docs.oracle.com/javaee/7/javaserver-faces-2-2/jsdocs/symbols/src/_Users_ejburns_Documents_JavaEE_workareas_mojarra-3MOJARRA_2_2X_ROLLING_jsf-demo_jsf-api_src_main_resources_jsf.js.html) este încapsulat într-un fișier JavaScript, numit [**jsf.js**. ](https://www.oreilly.com/library/view/mastering-javaserver-faces/9781782176466/ch07s11.html)

Si acest [**client SPV**](https://github.com/MfpAnaf/ClientSPV) scris in java poate fi o solutie interesanta pentru activitatea dumneavoastra mai ales daca ati decis sa utilizati **java** ca instrument de programare(acesta, oarecum fiind sugerat si de catre staff-ul ANAF chiar daca acest lucru nu s-a spus/mentionat explicit cu subiect si predicat!!!:)

Mai multe detalii despre **eFactura** gasiti pe portalul [ANAF](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ghid_RO_eFactura.pdf)-ului.

Din ***java CLI/shell*** puteti rula  [**DUKIntegrator**](https://www.facebook.com/groups/3239944772705473/) folosind ***comanda***:

    java -version:1.6 -jar "C:\dist\DUKIntegrator.jar" -c C:\dist\config -v FACT1 C:/factura.xml C:/erori.txt 1

Nu uitati informatii oficiale despre serviciile web **ANAF** gasiti in articolul intitulat [***Prezentare servicii web pentru Sistemul national privind factura electronica RO e-Factura***](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf);

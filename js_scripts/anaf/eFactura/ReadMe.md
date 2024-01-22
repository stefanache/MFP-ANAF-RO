[***ANAF eFactura***](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/)

[Prezentare servicii web](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) pentru Sistemul national privind factura electronica RO e-Factura 

- [verificare in R.P.Tva](https://letconex.blogspot.com/2023/10/fetch-platitortvarest-api-tva.html) [Registrul Platitorilor TVA](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/index.html)

[ANAF](https://www.anaf.ro/anaf/internet/ANAF/despre_anaf/strategii_anaf/proiecte_digitalizare/e.factura) [generator online factura XML](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml);

iata cum arata prevalidarea formularului(cu tab-uri) online de completare a facturii, in javascript: [https://www.anaf.ro/CompletareFactura/faces/factura/validare.js](https://www.anaf.ro/CompletareFactura/faces/factura/validare.js);

In principiu [v-]ati putea copia partea asta de HTML pe computerul dumneavoastra impreuna cu dependentele(resursele invocate in HTML js.css,...) si asta pentru fiecare tab in parte
si astfel ati avea partea de frontend fara backend. Apoi ati putea extrage din baza voastra de date, intr-un fisier xml, datele facturii(macar campurile obligatorii) si apoi puteti scrie cod javascript ca la incarcarea in acest formular local sa incarce  fiecare cam din fisierul de intrare XML in campul/locul sau(nu uitati sa folositi si aceste pre-validari) din formular(input,textarea,select). Asta v-ar ajuta sa vedeti factura intr-un mod mai uman si sa faceti un control vizual cat mai rapid.
Apoi trebuie sa continuati codificarea cu partea de front-end(care poate fi efectuata tot in JS) pt partea generarea propriu-zisa a facturii UBL/XML; 
Rezultatul il puteti depune automat intr-un nou tab construit de voi intr-un camp <textarea/> ca sa-l puteti valida, vizualiza si apoi prelua cu copy-paste pentru a-l salva in fisierul UBL/XML final;Puteti Putei urma aceasta cale pt generarea fisierului UBL/XML cu previzualizare macar pentru inceput pana reusiti sa creati un generator eFactura in JS stabil, dupa care puteti renunta la previzualizare sau pastra doar pentru depanare(deci previzualizarea ar trebui sa fie optionala oricum).
Apoi urmeaza sa-l validati online/DukIntegrator pe site-ul anaf si sa-l semnati digital iar in final sa-l puteti urca(upload) pe site-ul indicat de autoritatea fiscala(GOV/MFP/ANAF)
Nu uitati... validarea trebuie sa fie conforma/filtrata cu regulile standardelor aflate in vigoare  [Peppol-BIS 3.0 - CIUS](https://docs.peppol.eu/poacc/billing/3.0/bis/), reguli expuse in cele ce urmeaza

**- I.regulile de validare aplicabile la nivelul PEPPOL-AP(Access Point):**
 - I.1 IAPR(verificarea validitatii taxelor),
 - I.2 XML bine format(sintaxa de baza) - verificarea regulilor XML de redactare: XML eINV-emitere
 - I.3 XML(schema factura UBL/CII) - verificarea regulilor XML structurale/compozitionale: XML eINV-structura
 - *I.4-6 regulile de verificare a respectarii(compliantei cu) standerdelor (versiunilor aflate in vigoare) - verificarea regulilor afacerii:*
   - I.4 regulile generale CEN TC/434: EN16931 + reguli specifice sintaxei,
   - I.5 regulile Peppol-CIUS - validarea regulilor generale ale afacerii
   - I.6 regulile Peppol-CIUS de specific  national: Peppol-CIUS-RO

**- II.regulile de validare aplicabile la nivelul GSIS:**
   - II.1 validarea KE.D

**- III. regulile de validare aplicabile la nivelul PA:**
   - III.1 validarea P.A

[ANAF](https://www.anaf.ro/anaf/internet/ANAF/despre_anaf/strategii_anaf/proiecte_digitalizare/e.factura) [XML2PDF](https://www.anaf.ro/uploadxml/) online

[MFP](https://mfinante.gov.ro/web/efactura/informatii-tehnice) - informatii tehnice despre [eFactura](https://mfinante.gov.ro/web/efactura/informatii-tehnice) ( a se vedea si [I&R](https://mfinante.gov.ro/documents/4398723/5002737/E-facturaFAQ.pdf/62a8d46b-82f5-9954-22aa-29b7ad32fe14?t=1637238487343))

Pe site-ul [eFactura-XML](https://www.e-factura-xml.ro/) am gasit o prezentare succinta a sistemului eFactura

[Avocat.net](https://www.avocatnet.ro/t18715/xml-e-Factura.html) are un articol interesant privind [generarea](https://www.avocatnet.ro/articol_65897/e-Factura-Cum-se-poate-folosi-aplica%C8%9Bia-gratuit%C4%83-a-MF-pentru-a-genera-facturi-in-formatul-XML-%C8%99i-gestionarea-lor-in-SPV.html) fisierului care va contine datele [XML](https://www.avocatnet.ro/t18715/xml-e-Factura.html) ale [e-Facturii](https://www.avocatnet.ro/t18715/xml-e-Factura.html)

[Facturis](https://facturis-online.ro/e-factura/modele-de-facturi-in-xml-acceptate-in-sistemul-e-factura-pentru-agentiile-de-turism.html) prezinta cateva modele [XML](https://facturis-online.ro/e-factura/modele-de-facturi-in-xml-acceptate-in-sistemul-e-factura-pentru-agentiile-de-turism.html) de facturi particulare acceptate. 

Si [Factureaza](https://factureaza.ro/ajutor/generarea-fisierelor-xml-pentru-efactura) are aici un articol despre generarea XML/UBL a [eFacturii](https://factureaza.ro/ajutor/generarea-fisierelor-xml-pentru-efactura)

[StillCo](https://stillco.ro/efactura.html?gclid=Cj0KCQiAnrOtBhDIARIsAFsSe51QepGEG89hs2BVSAb4E1bDa-ltUUCSaW7GCuVfes35pVIQfBEMxloaAmfIEALw_wcB) va poate ajuta sa generati fisierul XML/UBL.

[UAT GL/VN](https://static.anaf.ro/static/10/Galati/Vrancea/Procedura-e-factura.pdf) prezinta succint procedura de procesare [eFactura](https://static.anaf.ro/static/10/Galati/Vrancea/Procedura-e-factura.pdf)

[EvoZon](https://www.linkedin.com/pulse/e-factura-cum-automatiz%C4%83m-procesul-de-facturare-electronic%C4%83-evozon-uvidf/?originalSubdomain=ro) are un articol pe Linkedin despre automatizarea procesului eFactura.

[Nexus](https://www.youtube.com/watch?v=IOTlFY-VDjc&ab_channel=NEXUSMEDIAS.R.L.) - pe YT gasiti - Cum puteti folosi o aplicatie web de facturare gratuita

[ro-efactura](https://ro-efactura.ro/intrebari/) - Intrebari despre e-Factura - Program RO e-Factura gratis

[2Invoice](https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiHpe_Ume6DAxV1QEECHdhCDewYABAAGgJ3cw&ase=2&gclid=Cj0KCQiAnrOtBhDIARIsAFsSe53b2wzgQaSGI_NOPcWNOIQIpYqA99pJM1ViCrSq2lW1-KM1YeEVWJYaAltUEALw_wcB&ohost=www.google.com&cid=CAESVuD2-JBBBfDDGNfe7ZuBnLEFX3X5SYACoB_UvrP8PXSjoP532R5DNAloLV3SvFH1J2C1cSnCtE-ynkcVyGKGNHl0UbeYpy_gYUaqWdfs122U-IAmSvio&sig=AOD64_33O73Io0Evt331YbrUkgaz7iXaAw&q&nis=4&adurl&ved=2ahUKEwiiierUme6DAxXKcvEDHfx2AN44ChDRDHoECAEQAQ) - Program integrat e-Factura XML - Program eFactura XML

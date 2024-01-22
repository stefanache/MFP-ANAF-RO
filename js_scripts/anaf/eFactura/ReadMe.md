[***ANAF eFactura***](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/)

[Prezentare servicii web](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) pentru Sistemul national privind factura electronica RO e-Factura 

- [verificare in R.P.Tva](https://letconex.blogspot.com/2023/10/fetch-platitortvarest-api-tva.html) [Registrul Platitorilor TVA](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/index.html)

[ANAF](https://www.anaf.ro/anaf/internet/ANAF/despre_anaf/strategii_anaf/proiecte_digitalizare/e.factura) [generator online factura XML](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml);

iata cum arata prevalidarea formularului(cu tab-uri) online de completare a facturii, in javascript: [https://www.anaf.ro/CompletareFactura/faces/factura/validare.js](https://www.anaf.ro/CompletareFactura/faces/factura/validare.js);

In principiu [v-]ati putea copia partea asta de HTML pe computerul dumneavoastra impreuna cu dependentele(resursele invocate in HTML js.css,...) si asta pentru fiecare tab in parte
si astfel ati avea partea de frontend fara backend. Apoi ati putea extrage din baza voastra de date, intr-un fisier xml, datele facturii(macar campurile obligatorii) si apoi puteti scrie cod javascript ca la incarcarea in acest formular-sablon local sa incarce  fiecare cam din fisierul de intrare XML in campul/locul sau(nu uitati sa folositi si aceste pre-validari) din formular(input,textarea,select). Asta v-ar ajuta sa vedeti factura intr-un mod mai uman si sa faceti un control vizual cat mai rapid.
Apoi trebuie sa continuati codificarea cu partea de front-end(care poate fi efectuata tot in JS) pt partea generarea propriu-zisa a facturii UBL/XML; 
Rezultatul il puteti depune automat intr-un nou tab construit de voi intr-un camp <textarea/> ca sa-l puteti valida, vizualiza si apoi prelua cu copy-paste pentru a-l salva in fisierul UBL/XML final;Puteti urma aceasta cale pt generarea fisierului UBL/XML cu previzualizare macar pentru inceput pana reusiti sa creati un generator eFactura in JS stabil, dupa care puteti renunta la [previzualizare](https://www.anaf.ro/CompletareFactura/faces/factura/produse.xhtml) sau pastra doar pentru depanare(deci previzualizarea ar trebui sa fie optionala oricum).
Apoi urmeaza sa-l validati online/DukIntegrator pe site-ul anaf si sa-l semnati digital iar in final sa-l puteti urca(upload) pe site-ul indicat de [autoritatea fiscala](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ghid_RO_eFactura.pdf)(GOV/MFP/ANAF)
Nu uitati... validarea trebuie sa fie conforma/filtrata cu regulile standardelor aflate in vigoare  [**Peppol-BIS 3.0**](https://docs.peppol.eu/poacc/billing/3.0/bis/), reguli expuse in cele ce urmeaza(eng: [BIS](https://openpeppol.github.io/documentation/PostAward/InvoiceOnly4A/20170315-PEPPOL_BIS_4A-401.pdf) - Business Interoperability Specification):

 - ***I.1-6 regulile de validare aplicabile la nivelul PEPPOL-AP(Punct de Acces):***
   - I.1 verificarea validitatii taxelor - **IAPR(Autoritatea Independentă pentru Venituri Publice)**
   - I.2 XML bine format(sintaxa de baza) - verificarea regulilor XML de redactare: **XML eINV-emitere**
   - I.3 XML(schema factura [UBL](https://www.xml.com/articles/2017/01/01/what-is-ubl/) / CII) - verificarea regulilor XML structurale/compozitionale: **XML eINV-structura**
   - *I.4-6 regulile de verificare a respectarii(compliantei cu) standerdelor (versiunilor aflate in vigoare) - verificarea regulilor afacerii:*
     - I.4 regulile generale CEN TC/434: **EN-16931** + reguli specifice sintaxei,
     - I.5 regulile **[Peppol-CIUS](https://github.com/phax/peppol-practical/blob/master/src/main/resources/viewpages/en/validation_dvs.xml)** - validarea regulilor generale ale afacerii
     - I.6 regulile [Peppol-CIUS de/cu specific  national](https://www.exactsoftware.com/docs/DocView.aspx?DocumentID=%7B1e24ca3b-90d6-489d-9ffd-297e998f3af5%7D): [Peppol](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf)-**[RO-CIUS](https://static.anaf.ro/static/10/Anaf/Informatii_R/Informatii_modificare_CIUS_RO.pdf) sau [CIUS-RO](https://mfinante.gov.ro/ro/web/efactura/informatii-tehnice)**, [NLCIUS](https://ionite.net/publications/NLCIUS-PEPPOLBIS-Differences.pdf)...

 - ***II.regulile de validare aplicabile la nivelul [GSIS](https://www.gsis.gr/sites/default/files/eInvoice/Instructions%20to%20B2G%20Suppliers%20and%20certified%20PEPPOL%20Providers%20for%20the%20Greek%20PEPPOL%20BIS-EN-%20v1.0.pdf)(Secretariatul General al Sistemelor Informaţionale):***
    - II.1 validarea **KE.D-Centrul de interoperabilitate (național)**

 - ***III. regulile de validare aplicabile la nivelul PA(Administratie Publica):***
    - III.1 validarea **P.A**

***Nota importanta:*** - referitor la [ro:CIUS-RO:v.s](https://www.google.com/search?q=ro:CIUS-RO:1.0.&lr=lang_ro&sca_esv=600376160&rlz=1C1JJTC_enRO1087RO1087&tbs=lr:lang_1ro,qdr:m&sxsrf=ACQVn0_WIPdTZG_6ei8UZ80wfxcg2qVc-A:1705919117517&source=lnt&sa=X&ved=2ahUKEwiqkY_44_CDAxVuR_EDHSYzB9UQpwV6BAgBEA8&biw=1492&bih=700&dpr=1.25)  (unde, in acest moment, versiunea curenta este v=0 si subversiunea s=1 )

 - trebuie sa luati in calcul [ultima versiune](https://static.anaf.ro/static/10/Anaf/Informatii_R/Informatii_modificare_CIUS_RO.pdf) (adica sa cautati ultimul Ordin al MFP);

   ar tebui sa-l gasiti in [specificatiile tehnice](https://mfinante.gov.ro/web/efactura/informatii-tehnice)

   (a se vedea  in acest document care este ultima actualizare a RO-CIUS  spre ex: ... Artefacte de validare Schematron   ... Ultima actualizare: Ordin MFP nr. 1.366/2021...Modificările pot fi consultate [aici](http://static.anaf.ro/static/10/Anaf/Informatii_R/Informatii_modificare_CIUS_RO.pdf)...Versiunea  1.0.8/29.12.2022 ... [ro16931-ubl-1.0.8 (07.12.2022) ](https://mfinante.gov.ro/static/10/eFactura/ro16931-ubl-1.0.8.zip)
   cf acestui exemplu de ordin se observa ca sunt acceptate  pentru factura 2 sintaxe UBL2.1 si CII 16B / EN-16931:2017 si regulile CIUS-RO:1.0.1
 
 Cand dezarhivati arhiva ro16931-ubl-1.0.8.zip gasiti directorul ro16931-1.0.8 si in el gasiti un fiser EN16931-CIUS_RO-UBL-validation.sch si 5 subdirectoare:
 - fisierul **EN16931-CIUS_RO-UBL-validation.sch** practic prezinta subdirectoarele adica la ce sunt folosite le pt validarea facturii iar,
 - cele in **5** subdirectoare avem:
   - in subdirectorul **cius-ro** gasiti fisierul **RO16931-rules.sch**; acest fisier contine regulile CIUS cu specific national:  CIUS-RO / RO-CIUS.

        [Schematron](https://www.schematron.com/) este un limbaj XML utilizat pentru a specifica aceste reguli de afaceri(business)

   - tot in acest director denumit ro16931-1.0.8 gasiti alte **2** subdirectoare denumite **UBL** respectiv **abstract** in care sunt definite **modelul** si **sintaxa** cf standardului **EN-16931**; cele 2 fisiere ale fiecarui subdirector sunt definite tot cu ajutorul limbajului Schematron.

   - in acelasi director ro16931-1.0.8 mai gasiti si subdirectorul **codelist(CL)** care contine fisierul [EN16931-UBL-codes.sch](https://github.com/OpenPEPPOL/tc434-validation/blob/master/ubl/schematron/codelist/EN16931-UBL-codes.sch) unde veti gasi regulile licentiate EUPL de forma [BR-CL-nn](https://docs.peppol.eu/poacc/billing/3.0/rules/ubl-tc434/BR-CL-04/)

   - si in sfarsit in acest director mai gasiti subdirectorul **preprocessed** care contine **3** fisiere schematron(*.sch) de validare:
   
     - **EN16931-validation-preprocesed.sch**

      (in acest fisier gasim validarea/testarea/assert-urile pt regulile gen/de forma **BR-nn**, **BR-B-nn**, **BR-CO-nn**, **BR-DEC-nn**, **BR-AE-nn**, **BR-E-nn**, **BR-G-nn**, **BR-IC-nn**, **BR_IP-nn**, **BR-O-nn**, **BR-S-nn**, **BR-Z-nn**...  referitoare la campurile **BG/BT**; mesajele sunt in lb. **engleza**)
      
     - si **2** fisiere pt 2 versiuni diferite avand denumirea de forma **ROeFactura-UBL-validation-Invoice_v1.0.s.sch** unde s=5 si respectiv s=8;

      (in aceste fisiere gasiti versiunile de schematron in care s-au scris/definit regulile de validare CIUS nationale (de forma **BR-RO-nn**...) si versiunile de/pt CIUS-RO dupa cum urmeaza:
     
       - in fisierul **ROeFactura-UBL-validation-Invoice_v1.0.5.sch**  avem:
         - Schematron Version 1.0.3
         - CIUS-RO version 1.0.0 compatible - UBL - Invoice
       - iar in fisierul **ROeFactura-UBL-validation-Invoice_v1.0.8.sch** avem:
         - Schematron Version 1.0.0
         - CIUS-RO version 1.0.1 compatible - UBL - Invoice;
     
       mesajele sunt in limba **romana fara diacritice**)
      
  - testarea tuturor regulilor(eng. **rule**) se face folosind directiva schematron **assert**(testul de conformitate) care are atributele test **id**,**flag**(care arata genul/tipul de eroare ex. **fatal**, si mesajul de eroare afisat dupa caz, in lb **romana** sau in limba **engleza**).

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

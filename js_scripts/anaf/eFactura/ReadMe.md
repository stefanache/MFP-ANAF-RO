[***ANAF eFactura***](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/)

[Prezentare servicii web](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) pentru [Sistemul National privind Factura Electronica](https://mfinante.gov.ro/web/efactura/informatii-tehnice): [RO e-Factura ](https://doc-process.com/ro-e-factura/) sau [RO eInvoice](https://ec.europa.eu/digital-building-blocks/sites/display/DIGITAL/eInvoicing+in+Romania)

- [verificare in R.P.Tva](https://letconex.blogspot.com/2023/10/fetch-platitortvarest-api-tva.html) [Registrul Platitorilor TVA](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/index.html)

[ANAF](https://www.anaf.ro/anaf/internet/ANAF/despre_anaf/strategii_anaf/proiecte_digitalizare/e.factura) [generator online e-Factura XML](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml);

Iata cum arata prevalidarea formularului(cu tab-uri) online de completare a facturii, in javascript: [validare.js](https://www.anaf.ro/CompletareFactura/faces/factura/validare.js);

In principiu [v-]ati putea copia partea asta de HTML/JS/CSS+assets pe computerul dumneavoastra impreuna cu dependentele(resursele invocate in HTML js.css,...) si asta pentru fiecare **tab** in parte
si astfel ati avea partea de frontend fara backend. 

Apoi ati putea **extrage datele brute** ale facturii din baza voastra de date, intr-un fisier **xml**(macar datele pt. campurile obligatorii) si apoi puteti scrie cod javascript ca la incarcarea in acest formular-sablon local sa se **[auto]incarce**  fiecare camp din fisierul de intrare **xml** in campul/locul sau(nu uitati sa folositi si aceste pre-validari) din **formularul-ANAF(input,textarea,select) de completare a facturii**. 

Asta v-ar ajuta sa **vedeti/previzualizati** factura intr-un mod mai **uman** si sa faceti un control vizual cat mai rapid.

Apoi trebuie sa continuati **codificarea** cu partea de **back-end**(care poate fi efectuata tot in JS pur/nu nodeJS) pt partea de **generare propriu-zisa** a eFacturii UBL/XML(UBL=OASIS Universal Business Language); 

Rezultatul il puteti depune automat intr-un **nou tab** construit de voi intr-un camp **<textarea/>** ca sa-l puteti valida, vizualiza si apoi prelua cu **copy-paste** pentru a-l salva in fisierul UBL/XML final;

Puteti urma aceasta cale pt generarea fisierului UBL/XML cu previzualizare macar pentru inceput pana reusiti sa creati un generator eFactura in JS stabil, dupa care puteti renunta la [previzualizare](https://www.anaf.ro/CompletareFactura/faces/factura/produse.xhtml) sau pastra doar pentru depanare(deci previzualizarea ar trebui sa fie optionala oricum).

Apoi urmeaza sa-l **validati** online/DukIntegrator pe site-ul anaf si sa-l **semnati digital** iar in final sa-l puteti urca(**upload**) pe site-ul indicat de [autoritatea fiscala](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ghid_RO_eFactura.pdf)(GOV/MFP/ANAF);
Puteti sa va scrieti si **propriul validator** tot in JS pur sau daca nu intr-un limbaj de back-end([PhP](https://github.com/thegreenter/ubl-validator/tree/master),nodeJS,java,...) insa trebuie sa aveti in vedere toata **succesiunea de validari necesare**( a se vedea discutia de mai jos despre Peppol-CIUS: **IAPR,XML,UBL2.1/EN-16931,RO-CIUS,KE.D,P.A**);

Toti acesti pasi pot fi automatizati astfel incat sa nu mai fie nevoie de o interventie/prezenta umana persistenta/de lunga durata(in principiu daca aveti configurari de specificitate corespunzatoare atunci un simplu buton pt **transmitere eFactura catre ANAF** ar fi suficient in conditiile in care sunt indeplinite toate conditiile de **access securizat**).

Nu uitati... validarea trebuie sa fie conforma/filtrata cu/de [**regulile**](https://docs.peppol.eu/poacc/upgrade-3/profiles/36-mlr/) standardelor aflate in vigoare  [**Peppol-BIS 3.0**](https://docs.peppol.eu/poacc/billing/3.0/bis/), reguli expuse in cele ce urmeaza(eng: [BIS](https://openpeppol.github.io/documentation/PostAward/InvoiceOnly4A/20170315-PEPPOL_BIS_4A-401.pdf) - Business Interoperability Specification):

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

***Nota importanta:*** - referitor la [**ro:CIUS-RO:{v}.{s}**](https://www.google.com/search?q=ro:CIUS-RO:1.0.&lr=lang_ro&sca_esv=600376160&rlz=1C1JJTC_enRO1087RO1087&tbs=lr:lang_1ro,qdr:m&sxsrf=ACQVn0_WIPdTZG_6ei8UZ80wfxcg2qVc-A:1705919117517&source=lnt&sa=X&ved=2ahUKEwiqkY_44_CDAxVuR_EDHSYzB9UQpwV6BAgBEA8&biw=1492&bih=700&dpr=1.25)  (unde, in acest moment, versiunea curenta este **v=0** si subversiunea **s=1** )

 - trebuie sa luati in calcul [ultima versiune](https://static.anaf.ro/static/10/Anaf/Informatii_R/Informatii_modificare_CIUS_RO.pdf) (adica sa cautati ultimul Ordin al MFP);

   ar tebui sa-l gasiti in [specificatiile tehnice ANAF pt eFactura](https://mfinante.gov.ro/web/efactura/informatii-tehnice)

   **(**a se vedea  in acest document care este ultima actualizare a RO-CIUS   spre **ex.**:

             ...
         
            Artefacte de validare Schematron
         
            ...
         
            Ultima actualizare: Ordin MFP nr. 1.366/2021
         
            ...
         
            Modificările pot fi consultate [aici](http://static.anaf.ro/static/10/Anaf/Informatii_R/Informatii_modificare_CIUS_RO.pdf)
         
            ...
         
            Versiunea  1.0.8/29.12.2022 ... [ro16931-ubl-1.0.8 (07.12.2022) ](https://mfinante.gov.ro/static/10/eFactura/ro16931-ubl-1.0.8.zip)

   cf. acestui **exemplu** de **versiune**(O.1.366/2021) de **Ordin MFP** se observa ca pt pentru e-Factura sunt acceptate 2 sintaxe [**UBL2.1**](https://github.com/ConnectingEurope/eInvoicing-EN16931/tree/master/ubl) si [**CII 16B**](https://github.com/ConnectingEurope/eInvoicing-EN16931/tree/master/cii) / [**EN-16931:2017**](https://github.com/ConnectingEurope/eInvoicing-EN16931/tree/master) si regulile **CIUS-RO:1.0.1**; si modificari la RO-CIUS pot aparea si odata cu ele apar noi reglementari legale/ordine MFP care duc la schimbari ale continutului acestei arhive astfel ca versiunile vechi devin istorie sau ***istoric***; asadar trebuie sa stiti ca eFactura se modifica continuu sau daca vreti se integreaza si se dezvolta continuu(**CI/CD**) **)**
 
   Cand [dezarhivati](https://github.com/stefanache/MFP-ANAF-RO/tree/main/js_scripts/anaf/eFactura/ro16931-ubl-1.0.8/ro16931-ubl-1.0.8)(si am procedat si eul la fel [aici](https://github.com/stefanache/MFP-ANAF-RO/tree/main/js_scripts/anaf/eFactura/ro16931-ubl-1.0.8/ro16931-ubl-1.0.8) si apoi am vizualizat rand pe rand fisierele schematron ***.sch** cu [XML Notepad](https://lovettsoftwarestorage.blob.core.windows.net/downloads/XmlNotepad/XmlNotepad.application)) arhiva **ro16931-ubl-1.0.8.zip** gasiti directorul **ro16931-1.0.8** si in el gasiti un fiser(**EN16931-CIUS_RO-UBL-validation.sch**) si **5** subdirectoare:
 
   - fisierul **EN16931-CIUS_RO-UBL-validation.sch** practic este un catalog explicativ/definitoriu care prezinta cele **5** subdirectoare si la ce sunt folosite acestea in procesul de  validare a facturii iar,
   - in cele in **5** subdirectoare propriu zise, ale directorului **ro16931-1.0.8** avem:
   
      - in subdirectorul **cius-ro** gasiti fisierul **RO16931-rules.sch**;

        acest fisier contine regulile CIUS cu specific national:  **CIUS-RO / RO-CIUS**.

        [**Schematron**](https://www.schematron.com/) este un limbaj XML utilizat pentru a specifica aceste reguli de afaceri(**business**)

      - tot in acest director denumit **ro16931-1.0.8** gasiti alte **2** subdirectoare denumite **UBL** respectiv **abstract** in care sunt definite **modelul**(**EN16931-UBL-model.sch** respectiv **EN16931-model.sch**) si **sintaxa**(**EN16931-UBL-syntax.sch** respectiv **EN16931-syntax.sch**) cf. standardului **EN-16931**; (cele 2 fisiere ale fiecarui subdirector sunt definite tot cu ajutorul limbajului **Schematron** avand aceiasi extensie **.sch**).

      - in acelasi director **ro16931-1.0.8** mai gasiti si subdirectorul **codelist(CL)** care contine fisierul [EN16931-UBL-codes.sch](https://github.com/OpenPEPPOL/tc434-validation/blob/master/ubl/schematron/codelist/EN16931-UBL-codes.sch) unde veti gasi regulile licentiate EUPL de forma [BR-CL-nn](https://docs.peppol.eu/poacc/billing/3.0/rules/ubl-tc434/BR-CL-04/)

      - si in sfarsit in acest director directorul **ro16931-1.0.8** mai gasiti subdirectorul **preprocessed** care contine **3** fisiere schematron(*.sch) de validare:
   
         - **EN16931-validation-preprocesed.sch**

          (in acest fisier gasim validarea/testarea/assert-urile pt regulile gen/de forma **BR-nn**, **BR-B-nn**, **BR-CO-nn**, **BR-DEC-nn**, **BR-AE-nn**, **BR-E-nn**, **BR-G-nn**, **BR-IC-nn**, **BR_IP-nn**, **BR-O-nn**, **BR-S-nn**, **BR-Z-nn**...  referitoare la campurile **BG/BT**; mesajele sunt in lb. **engleza**)
     
        - si **2** fisiere pt 2 versiuni diferite avand denumirea de forma generala **ROeFactura-UBL-validation-Invoice_v1.0.{s}.sch** unde **s=5** si respectiv **s=8**;

           (in aceste fisiere gasiti versiunile de limbaj(schematron) in care s-au scris/definit regulile de validare CIUS nationale (de forma **BR-RO-nn**...) si versiunile de/pt CIUS-RO dupa cum urmeaza:
     
             - in fisierul **ROeFactura-UBL-validation-Invoice_v1.0.5.sch**  avem:
                - Schematron Version 1.0.3
                - CIUS-RO version 1.0.0 compatible - UBL - Invoice
             - iar in fisierul **ROeFactura-UBL-validation-Invoice_v1.0.8.sch** avem:
                - Schematron Version 1.0.0
                - CIUS-RO version 1.0.1 compatible - UBL - Invoice;
     
        mesajele sunt in limba **romana fara diacritice**)
      
   Testarea tuturor regulilor(eng. **rule**) se face folosind directiva schematron **assert**(testul de conformitate) care are atributele test **id**,**flag**(care arata genul/tipul de eroare ex. **fatal**, si mesajul de eroare afisat dupa caz, in lb. **romana** sau in limba **engleza**).

   Daca doriti sa va dezvoltati **propriul validator** de factura(si sa **evitati** astfel folosirea DukIntegrator) pentru a creste gradul de automatizare atunci trebuie sa stiti ca puteti utiliza(analiza=parse) fisierele schematron(*.sch) ca orice alt fisier XML.
   (puteti sa va uitati pe acele mici exemple(html/JS/css) pe care le-am creat la sectiunea [nomenclatoare geografice MFP](https://github.com/stefanache/MFP-ANAF-)
   RO/blob/main/js_scripts/mfp/nomenclatoare_geografice/)

 Tot in [specificatiile tehnice ANAF]((https://mfinante.gov.ro/web/efactura/informatii-tehnice)) sunt expuse spre dezarhivare fisire-exemplu UBL2.1/XML pentru eFactura(factura si nota de credit(aceste 2 fisiere UBL2.1/XML le gasiti si aici in sub-directorul [**exemple_Invoice_CreditNote**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/js_scripts/anaf/eFactura/exemple_Invoice_CreditNote) spre a fi vizualizate in stare bruta/**raw** in **browser-ul** dvs.) .
 
 Puteti sa le descarcati apoi sa le dezarhivati si apoi sa le vizualizati folosind [XML Notepad]((https://lovettsoftwarestorage.blob.core.windows.net/downloads/XmlNotepad/XmlNotepad.application)) pentru a vedea cu tiitlu informativ cam cum arata un astfel de fisier UBL/XML nesemnat digital.
 
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

[***ANAF eFactura***](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/) ([RO e-Factura ](https://doc-process.com/ro-e-factura/) sau [RO eInvoice](https://ec.europa.eu/digital-building-blocks/sites/display/DIGITAL/eInvoicing+in+Romania) [UBL 2.1](https://docs.oasis-open.org/ubl/os-UBL-2.1/xsd/maindoc/UBL-Invoice-2.1.xsd) ([anterior](https://www.w3schools.com/xml/schema_howto.asp) a fost [UBL2.0](https://docs.oasis-open.org/ubl/os-UBL-2.0/xsd/maindoc/UBL-Invoice-2.0.xsd)) + [CIUS-RO 1.0.1](https://mfinante.gov.ro/web/efactura/informatii-tehnice)); 

( in  conformitate cu [specificatiile tehnice](https://mfinante.gov.ro/web/efactura/aplicatii-web-ro-efactura) [MFP](https://mfinante.gov.ro/web/efactura/informatii-tehnice); a se vedea [generatorul](https://www.anaf.ro/CompletareFactura/faces/factura/generare.xhtml) online ANAF precum si [validatorul](https://www.anaf.ro/uploadxmi/) online [AMAF](https://www.universuljuridic.ro/specificatiile-tehnice-si-de-utilizare-a-elementelor-de-baza-ale-facturii-electronice-ro_cius-omf-nr-1-366-2021/) / [MFP.](https://mfinante.gov.ro/web/efactura/validare-xml-factura) dar si transformatorul ANAF [xml2PDF](https://www.anaf.ro/uploadxml/));

Un [exemplu](https://www.asro.ro/wp-content/uploads/2018/08/aprobate_iulie_2018.pdf) de [Model de Date](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/Model%20e-factura.pdf) mai [complex](https://magazin.asro.ro/ro/colectie-standarde/819) pt [eFactura](https://ro.scribd.com/document/582121440/SR-EN-16931-1-A1-2020) poate fi [acesta](https://scoala195.invatamantsector3.ro/wp-content/uploads/sites/34/2021/06/DIGI-14064686.pdf); (  [ASRO](https://www.asro.ro/wp-content/uploads/2020/06/BS-05-2020-web.pdf) se ocupa de standardele utilizate in Romania. )

[Prezentare servicii web](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) pentru [Sistemul National privind Factura Electronica](https://mfinante.gov.ro/web/efactura/informatii-tehnice):

- [verificare in R.P.Tva](https://letconex.blogspot.com/2023/10/fetch-platitortvarest-api-tva.html) [Registrul Platitorilor TVA](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/index.html)

[ANAF](https://www.anaf.ro/anaf/internet/ANAF/despre_anaf/strategii_anaf/proiecte_digitalizare/e.factura) [generator online e-Factura XML](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml);

A se viziona pe Youtube urmatorul [clip-video](https://www.youtube.com/watch?v=BkD_m5oncR8&ab_channel=MinisterulFinantelor): **Cum emiți o E-factura cu instrumentele gratuite puse la dispoziție de Ministerul Finanțelor**;

( a se vedea si aceasta [***Analiza generatorului ANAF***](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/generator_eFactura.html) 

 - unde am [analizat](https://www.ditl3.ro/assets/clients/public/file/2022/contracte-facturi/Factura%20Ok%20Guard%2007.2022.pdf) [modelul](https://adlbacau.ro/adl/files/141_din_25_august_2022a.pdf) [simplu](https://salubritate3.ro/wp-content/uploads/2023/05/Factura-deseuri-municipale-nr.-147-din-31.03.2023-Eco-Sud-SA-b.pdf) [Facturis](https://facturis-online.ro/e-factura/cum-sa-emiteti-singur-facturi-electronice-in-sistemul-anaf-ro-e-factura.html): [exemplu%20cu%20O.xml](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/exemplu%20cu%20O.xml) / [exemplu_cu_O_xml2PDF_download.pdf](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/eFactura/exemplu_cu_O_xml2PDF_download.pdf));( a se studia diferenta/comparatia dintre [CUI si CIF](https://cursdeguvernare.ro/diferenta-dintre-cui-si-cif-ghid-explicativ-in-6-pasi.html), precum si modelele de facturi oferite de [Facturis](https://facturis-online.ro/e-factura/modele-de-facturi-in-xml-acceptate-in-sistemul-e-factura-pentru-agentiile-de-turism.html; a se studia si procesele BPMN definite de [ASRO](https://ro.scribd.com/document/582121440/SR-EN-16931-1-A1-2020))

Iata cum arata prevalidarea formularului(cu tab-uri) online de completare a facturii, in javascript: [validare.js](https://www.anaf.ro/CompletareFactura/faces/factura/validare.js);

In principiu [v-]ati putea copia partea asta de HTML/JS/CSS+assets pe computerul dumneavoastra impreuna cu dependentele(resursele invocate in HTML js.css,...) si asta pentru fiecare **tab** in parte
si astfel ati avea partea de frontend fara backend. 

Apoi ati putea **extrage datele brute** ale facturii din baza voastra de date, intr-un fisier **xml**(macar datele pt. campurile obligatorii) si apoi puteti scrie cod javascript ca la incarcarea in acest formular-sablon local sa se **[auto]incarce**  fiecare camp din fisierul de intrare **xml** in campul/locul sau(nu uitati sa folositi si aceste pre-validari) din **formularul-ANAF(input,textarea,select) de completare a facturii**. 

Asta v-ar ajuta sa **vedeti/previzualizati** factura intr-un mod mai **uman** si sa faceti un control vizual cat mai rapid.

Apoi trebuie sa continuati **codificarea** cu partea de **back-end**(care poate fi efectuata tot in JS pur/nu nodeJS) pt partea de **generare propriu-zisa** a eFacturii UBL/XML(UBL=OASIS Universal Business Language); 

Rezultatul il puteti depune automat intr-un **nou tab** construit de voi intr-un camp **<textarea/>** ca sa-l puteti valida, vizualiza si apoi prelua cu **copy-paste** pentru a-l salva in fisierul UBL/XML final;

Puteti urma aceasta cale pt generarea fisierului UBL/XML cu previzualizare macar pentru inceput pana reusiti sa creati un generator eFactura in JS [stabil](https://hotfox.ro/forum/viewforum.php?f=2), dupa care puteti renunta la [previzualizare](https://www.anaf.ro/CompletareFactura/faces/factura/produse.xhtml) sau pastra doar pentru depanare(deci previzualizarea ar trebui sa fie optionala oricum).

Apoi urmeaza sa-l **validati** online/DukIntegrator pe site-ul anaf si sa-l **semnati digital** iar in final sa-l puteti urca(**upload**) pe site-ul indicat de [autoritatea fiscala](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ghid_RO_eFactura.pdf)(GOV/MFP/ANAF);
Puteti sa va scrieti si **propriul validator** tot in JS pur sau daca nu intr-un limbaj de back-end([PhP](https://github.com/thegreenter/ubl-validator/tree/master),nodeJS,java,...) insa trebuie sa aveti in vedere toata **succesiunea de validari necesare**( a se vedea discutia de mai jos despre Peppol-CIUS(Core Invoice Usage Specifications): **IAPR,XML,[UBL2.1](https://github.com/Tradeshift/tradeshift-ubl-xsd/blob/master/src/test/resources/org/oasis-open/ubl/examples/UBL-Invoice-2.1-Example.xml)/EN-16931,RO-CIUS,KE.D,P.A**);

Toti acesti pasi pot fi automatizati astfel incat sa nu mai fie nevoie de o interventie/prezenta umana persistenta/de lunga durata(in principiu daca aveti configurari de specificitate corespunzatoare atunci un simplu buton pt **transmitere eFactura catre ANAF** ar fi suficient in conditiile in care sunt indeplinite toate conditiile de **access securizat**).

Pentru institutiile <b><a href="https://mfinante.gov.ro/static/10/eFactura/PrezentareE-factura.pdf" target="_blank">publice</a></b> acest document emis de ANAF este important.

Nu uitati... validarea trebuie sa fie conforma/filtrata cu/de [**regulile**](https://docs.peppol.eu/poacc/upgrade-3/profiles/36-mlr/) standardelor aflate in vigoare  [**Peppol-BIS 3.0**](https://docs.peppol.eu/poacc/billing/3.0/bis/), reguli expuse in cele ce urmeaza(eng: [BIS](https://openpeppol.github.io/documentation/PostAward/InvoiceOnly4A/20170315-PEPPOL_BIS_4A-401.pdf) - Business Interoperability Specification):

 - ***I.1-6 regulile de validare aplicabile la nivelul PEPPOL-AP(Punct de Acces):***
   - I.1 verificarea validitatii taxelor - **IAPR(Autoritatea Independentă pentru Venituri Publice)** 
   - I.2 [XML](http://anale.feaa.uaic.ro/anale/resurse/Sireteanu-XML_.pdf) bine format(sintaxa de baza) - verificarea regulilor XML de redactare: **XML eINV-emitere**
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

   **(**a se vedea  in acest [document](https://mfinante.gov.ro/web/efactura/informatii-tehnice) care este ultima actualizare a RO-CIUS/**CIUS-RO**   spre **ex.**:
 
     ...
 
    **Artefacte de validare [Schematron](https://github.com/octavianN/Schematron-step-by-step)**
 
    ...
 
    [Ultima actualizare](https://static.anaf.ro/static/10/Anaf/Informatii_R/Informatii_modificare_CIUS_RO.pdf):

    *( [este vorba despre primul act normativ Ordin MFP nr. 1.366/2021](https://static.anaf.ro/static/10/Anaf/legislatie/OMF_1366_2021.pdf)(publicat in M.O.: [O.1366/2021](https://mfinante.gov.ro/static/10/eFactura/1065%20Modif.%20L_7_1996%20cadastru,%20O%201365%20mf%20RO%20e-factura.pdf)); dar a se vedea mai jos si [O.4092/14.11.2022](https://legislatie.just.ro/Public/DetaliiDocument/261755) de modicare a acestui prim act normativ)*
 
    ...
 
    Modificările pot fi consultate [aici](http://static.anaf.ro/static/10/Anaf/Informatii_R/Informatii_modificare_CIUS_RO.pdf)

    *( se refera la modificarile [O.4092/14.11.2022](https://legislatie.just.ro/Public/DetaliiDocument/261755) aduse [Ordinului MFP nr. 1.366/2021](https://static.anaf.ro/static/10/Anaf/legislatie/OMF_1366_2021.pdf) de mai sus)*
 
    **Versiunea  1.0.8** va fi valabilă incepând cu 29.12.2022.

     *(versiunea de aici respectiv **1.0.8** se refera la tot pachetul de validare UBL din directorul **ro16931-1.0.8** expus de catre ANAF)*
     *( a se  consulta si continutul fisierului de validare **ROeFactura-UBL-validation-Invoice_v1.0.8.sch** din subdirectorul **...\ro16931-1.0.8\preprocessed**)*

     [ro16931-ubl-1.0.8 (07.12.2022) ](https://mfinante.gov.ro/static/10/eFactura/ro16931-ubl-1.0.8.zip)
   
     *(de aici se descarca practic pachetul de validare UBL)*
 
    ...

   cf. acestui **exemplu** de **versiune**(O.1.366/2021) de **Ordin MFP** se observa ca pt pentru e-Factura sunt acceptate 2 sintaxe [**UBL2.1**](https://github.com/ConnectingEurope/eInvoicing-EN16931/tree/master/ubl) si [**CII 16B**](https://github.com/ConnectingEurope/eInvoicing-EN16931/tree/master/cii) / [**EN-16931:2017**](https://github.com/ConnectingEurope/eInvoicing-EN16931/tree/master) si regulile **CIUS-RO:1.0.1**; si modificari la RO-CIUS pot aparea si odata cu ele apar noi reglementari legale/ordine MFP care duc la schimbari ale continutului acestei arhive astfel ca versiunile vechi devin istorie sau ***istoric***; asadar trebuie sa stiti ca eFactura se modifica continuu sau daca vreti se integreaza si se dezvolta continuu(**CI/CD**) **)**

 [Schematron-ul](https://en.wikipedia.org/wiki/Schematron)(un limbaj ce implementeaza o [schema de validare](https://forum.sagasoft.ro/viewtopic.php?t=51608)) permite in cazul eFactura, [verificarea](https://stackoverflow.com/questions/57355078/how-to-validate-an-xml-using-a-sch-in-java-or-javascript) 
 
  - regulilor operaționale(constrângeri de integritate și condiții) și a
  - regulilor de TVA la modelul de baza al facturii (EN16931 CEN/TC 434),
  - a listelor de coduri utilizate in factura de bază și
  - a specificațiilor nationale de utilizare CIUS-RO.
 
   Cand [dezarhivati](https://github.com/stefanache/MFP-ANAF-RO/tree/main/js_scripts/anaf/eFactura/ro16931-ubl-1.0.8/ro16931-ubl-1.0.8)(si am procedat si eu la fel [aici](https://github.com/stefanache/MFP-ANAF-RO/tree/main/js_scripts/anaf/eFactura/ro16931-ubl-1.0.8/ro16931-ubl-1.0.8) si apoi am vizualizat rand pe rand fisierele [schematron](https://dev.pageseeder.com/reference/sample_code/schematron.html) ***.sch** cu [XML Notepad](https://lovettsoftwarestorage.blob.core.windows.net/downloads/XmlNotepad/XmlNotepad.application)) arhiva **ro16931-ubl-1.0.8.zip** gasiti directorul **ro16931-1.0.8** si in el gasiti un fiser(**EN16931-CIUS_RO-UBL-validation.sch**) si **5** subdirectoare:
 
   - fisierul **EN16931-CIUS_RO-UBL-validation.sch** practic este un catalog/opis explicativ/definitoriu care prezinta cele **5** subdirectoare si la ce sunt folosite acestea in procesul de  validare a facturii iar,
   - in cele in **5** subdirectoare propriu zise, ale directorului **ro16931-1.0.8** avem:
   
      - in subdirectorul **cius-ro** gasiti fisierul **RO16931-rules.sch**;

        acest fisier contine regulile CIUS cu specific national:  **CIUS-RO / RO-CIUS**.

        [**Schematron**](https://www.schematron.com/) este un limbaj XML utilizat pentru a specifica aceste reguli de afaceri(**business**)(dar nu numai reguli de afaceri ci in general evalueaza [reguli](https://stackoverflow.com/questions/56342835/validate-xml-with-schematron)!)

      - tot in acest director denumit **ro16931-1.0.8** gasiti alte **2** subdirectoare denumite **UBL** respectiv **abstract** in care sunt definite **modelul**(**EN16931-UBL-model.sch** respectiv **EN16931-model.sch**) si **sintaxa**(**EN16931-UBL-syntax.sch** respectiv **EN16931-syntax.sch**) cf. standardului **EN-16931**; (cele 2 fisiere ale fiecarui subdirector sunt definite tot cu ajutorul limbajului **Schematron** avand aceiasi extensie **.sch**).

      - in acelasi director **ro16931-1.0.8** mai gasiti si subdirectorul **codelist(CL)** care contine fisierul [EN16931-UBL-codes.sch](https://github.com/OpenPEPPOL/tc434-validation/blob/master/ubl/schematron/codelist/EN16931-UBL-codes.sch) unde veti gasi regulile licentiate EUPL de forma [BR-CL-nn](https://docs.peppol.eu/poacc/billing/3.0/rules/ubl-tc434/BR-CL-04/) (aici se fac validarile pe [standardele/codificarile/codurile](https://docs.peppol.eu/poacc/billing/3.0/rules/ubl-tc434/BR-CL-17/) utilizate in eInvoices; aici ati putea sa (re)vedeti [ASRO](https://www.asro.ro/wp-content/uploads/2018/12/BS-11-2018.pdf)); In **codelist(CL)** sunt definite liste de coduri(codificari/clasificari/nomenclatoare/standarde...) care sunt permise (in general) in eInvoice si deci (in particular) in eFactura;

      - si in sfarsit in acest director directorul **ro16931-1.0.8** mai gasiti subdirectorul **preprocessed** care contine **3** fisiere schematron(*.sch) de validare:
   
         - **EN16931-validation-preprocesed.sch**

          (in acest fisier gasim validarea/testarea/assert-urile pt regulile gen/de forma **BR-nn**, **BR-B-nn**, **BR-CO-nn**, **BR-DEC-nn**, **BR-AE-nn**, **BR-E-nn**, **BR-G-nn**, **BR-IC-nn**, **BR_IP-nn**, **BR-O-nn**, **BR-S-nn**, **BR-Z-nn**...  referitoare la campurile **BG/BT**; mesajele sunt in lb. **engleza**)
     
        - si alte **2** fisiere pt 2 versiuni diferite avand denumirea de forma generala **ROeFactura-UBL-validation-Invoice_v1.0.{s}.sch** unde **s=5** si respectiv **s=8**;

           (in aceste fisiere gasiti versiunile de limbaj(schematron) in care s-au scris/definit regulile de validare CIUS nationale (de forma **BR-RO-nn**...) si versiunile de/pt CIUS-RO dupa cum urmeaza:
     
             - in fisierul **ROeFactura-UBL-validation-Invoice_v1.0.5.sch**  avem:
                - **Schematron** Version **1.0.3**
                - **CIUS-RO** version **1.0.0** compatible - UBL - Invoice
             - iar in fisierul **ROeFactura-UBL-validation-Invoice_v1.0.8.sch** avem:
                - **Schematron** Version **1.0.0**
                - **CIUS-RO** version **1.0.1** compatible - UBL - Invoice;
     
        mesajele sunt in limba **romana fara diacritice**)

   Testarea tuturor regulilor(eng. **rule**) se face folosind directiva schematron **assert**(testul de conformitate) care are atributele test **id**,**flag**(care arata genul/tipul de eroare ex. **fatal**, si mesajul de eroare afisat dupa caz, in lb. **romana** sau in limba **engleza**).

   Daca doriti sa va dezvoltati **propriul validator** de factura(si sa **evitati** astfel folosirea DukIntegrator) pentru a creste gradul de automatizare atunci trebuie sa stiti ca puteti utiliza(analiza=parse) fisierele schematron(*.sch) ca orice alt fisier XML.
   (puteti sa va uitati pe acele mici exemple(html/JS/css) pe care le-am creat la sectiunea [nomenclatoare geografice MFP](https://github.com/stefanache/MFP-ANAF-)
   RO/blob/main/js_scripts/mfp/nomenclatoare_geografice/)

***Nota***: 

 - cf website-ului **1616.ro** pt Versiunea **1.0.0/2021**  a CIUS avem urmatoarea [**Anexa**](https://i0.1616.ro/media/2/2621/33243/20445047/2/anexaro-cius-converted.pdf) (Specificații tehnice și de utilizare a elementelor de bază ale facturii electronice – RO_CIUS – și reguli operaționale specifice aplicabile la nivel național); puteti sa vizualizati si versiunea **[CIUS-RO UBL Invoice 1.0.1](https://lege5.ro/Gratuit/TrackChanges/geztanrsgmydq?type=1&by=geztcmrwgy3tm&d=20.12.2022)** pt a avea un criteriu de comparatie;
   
 - cf. aceluiasi site a publicat in 29.10.2021 si tot intr-o [**Anexa**](https://i0.1616.ro/media/2/2621/33243/20447930/1/anexaraproiectordinroefactura-29102021-converted.pdf) si "Procedura de utilizare și funcționare a sistemului național privind factura electronică RO e-Factura, precum și de primire și descărcare a facturii electronice de către destinatarii facturii electronice emise în relația B2G în sistemul național privind factura electronică RO e-Factura.

 - pentru dezvoltatorii **java** si nu numai puteti consulta/utiliza si site-ul **jar-download** sau **mvnrepository** [phive-rules-cius-ro/2.1.15](https://jar-download.com/artifacts/com.helger.phive.rules/phive-rules-cius-ro/2.1.15); a se vedea si [phive-rules-cius-r 3.0.3](https://mvnrepository.com/artifact/com.helger.phive.rules/phive-rules-cius-ro/3.0.3), [phive-rules-cius-ro 3.1.6](https://mvnrepository.com/artifact/com.helger.phive.rules/phive-rules-cius-ro/3.1.6  

 - [**Peppol**](https://peppol.helger.com/public) încearcă să colecteze lucrurile relevante pentru tehnologie care se întâmplă în Peppol) are o pagina care colecteaza evenimentele cu/de impact ***tehnologic*** ( adica încearcă să colecteze lucrurile relevante pentru tehnologie care se întâmplă în Peppol); spre ex in anul **2022** am cautat **CIUS-RO** si am gasit **ro.gov.mfinante.cius-ro:ubl-invoice:1.0.8**(trecerea la subversiunea minora **8**  a versiunii minore **0** de **CIUS-RO** adica versiunea **[1.0.8](https://mfinante.gov.ro/web/efactura/informatii-tehnice)** a intregii **arhive** ce contine toate regulile de validare; (a nu se confunda cu versiunea de ***Schematron*** ori de ***CIUS-RO UBL Invoice***;
 
 - o [sinteza](https://static.anaf.ro/static/3/Galati/20220413132652_e-factura_004.2022.pdf) a bazei legale referitoare la e-Factura la nivelul anilor 2021/2022 este oferita de UAT-ul Galati
    
 Tot in [specificatiile tehnice ANAF]((https://mfinante.gov.ro/web/efactura/informatii-tehnice)) sunt expuse spre dezarhivare fisire-exemplu UBL2.1/XML pentru eFactura(factura si nota de credit(aceste 2 fisiere UBL2.1/XML le gasiti si aici in sub-directorul [**exemple_Invoice_CreditNote**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/js_scripts/anaf/eFactura/exemple_Invoice_CreditNote) spre a fi vizualizate in stare bruta/**raw** in **browser-ul** dvs.) .
 
 Puteti sa le descarcati apoi sa le dezarhivati si apoi sa le vizualizati folosind [XML Notepad]((https://lovettsoftwarestorage.blob.core.windows.net/downloads/XmlNotepad/XmlNotepad.application)) pentru a vedea cu tiitlu informativ cam cum arata un astfel de fisier UBL/XML nesemnat digital.
 
[ANAF](https://www.anaf.ro/anaf/internet/ANAF/despre_anaf/strategii_anaf/proiecte_digitalizare/e.factura) ofera online tot gratuit un serviciu de transformare [XML2PDF](https://www.anaf.ro/uploadxml/);
Un serviciu similar de trecere de la un format XML la o reprezentare grafica PDF este oferit si de catre site-ul [gmaftei](https://efactura.gmaftei.ro/)

[MFP](https://mfinante.gov.ro/web/efactura/informatii-tehnice) - informatii tehnice despre [eFactura](https://mfinante.gov.ro/web/efactura/informatii-tehnice) ( a se vedea si [I&R](https://mfinante.gov.ro/documents/4398723/5002737/E-facturaFAQ.pdf/62a8d46b-82f5-9954-22aa-29b7ad32fe14?t=1637238487343))

Pe site-ul [eFactura-XML](https://www.e-factura-xml.ro/) am gasit o prezentare succinta a sistemului eFactura

[Avocat.net](https://www.avocatnet.ro/t18715/xml-e-Factura.html) are un articol interesant privind [generarea](https://www.avocatnet.ro/articol_65897/e-Factura-Cum-se-poate-folosi-aplica%C8%9Bia-gratuit%C4%83-a-MF-pentru-a-genera-facturi-in-formatul-XML-%C8%99i-gestionarea-lor-in-SPV.html) fisierului care va contine datele [XML](https://www.avocatnet.ro/t18715/xml-e-Factura.html) ale [e-Facturii](https://www.avocatnet.ro/t18715/xml-e-Factura.html)

[](https://-online.ro/e-factura/modele-de-facturi-in-xml-acceptate-in-sistemul-e-factura-pentru-agentiile-de-turism.html) prezinta cateva modele [XML](https://-online.ro/e-factura/modele-de-facturi-in-xml-acceptate-in-sistemul-e-factura-pentru-agentiile-de-turism.html) de facturi particulare acceptate. 

Si [Factureaza](https://factureaza.ro/ajutor/generarea-fisierelor-xml-pentru-efactura) are aici un articol despre generarea XML/UBL a [eFacturii](https://factureaza.ro/ajutor/generarea-fisierelor-xml-pentru-efactura)

[StillCo](https://stillco.ro/efactura.html?gclid=Cj0KCQiAnrOtBhDIARIsAFsSe51QepGEG89hs2BVSAb4E1bDa-ltUUCSaW7GCuVfes35pVIQfBEMxloaAmfIEALw_wcB) va poate ajuta sa generati fisierul XML/UBL.

[UAT GL/VN](https://static.anaf.ro/static/10/Galati/Vrancea/Procedura-e-factura.pdf) prezinta succint procedura de procesare [eFactura](https://static.anaf.ro/static/10/Galati/Vrancea/Procedura-e-factura.pdf)

[EvoZon](https://www.linkedin.com/pulse/e-factura-cum-automatiz%C4%83m-procesul-de-facturare-electronic%C4%83-evozon-uvidf/?originalSubdomain=ro) are un articol pe Linkedin despre automatizarea procesului eFactura.

[Nexus](https://www.youtube.com/watch?v=IOTlFY-VDjc&ab_channel=NEXUSMEDIAS.R.L.) - pe YT gasiti - Cum puteti folosi o aplicatie web de facturare gratuita

[ro-efactura](https://ro-efactura.ro/intrebari/) - Intrebari despre e-Factura - Program RO e-Factura gratis

[2Invoice](https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiHpe_Ume6DAxV1QEECHdhCDewYABAAGgJ3cw&ase=2&gclid=Cj0KCQiAnrOtBhDIARIsAFsSe53b2wzgQaSGI_NOPcWNOIQIpYqA99pJM1ViCrSq2lW1-KM1YeEVWJYaAltUEALw_wcB&ohost=www.google.com&cid=CAESVuD2-JBBBfDDGNfe7ZuBnLEFX3X5SYACoB_UvrP8PXSjoP532R5DNAloLV3SvFH1J2C1cSnCtE-ynkcVyGKGNHl0UbeYpy_gYUaqWdfs122U-IAmSvio&sig=AOD64_33O73Io0Evt331YbrUkgaz7iXaAw&q&nis=4&adurl&ved=2ahUKEwiiierUme6DAxXKcvEDHfx2AN44ChDRDHoECAEQAQ) - Program integrat e-Factura XML - Program eFactura XML

Cei de la [e-factura-sap](https://e-factura-sap.ro/) au in prezentarea lor generala a sistemului ZEINVRO  imaginea unei facturi XML dar si accesul folosind OuTh la webserviciile ANAF.

O [cautare](https://www.google.com/search?sca_esv=601029419&rlz=1C1JJTC_enRO1087RO1087&sxsrf=ACQVn0_HMYxzJ6y9xS1zdFNGePsQ1CBJdw:1706094994100&q=%23urn:efactura.mfinante.ro:CIUS-RO&tbm=isch&source=lnms&sa=X&ved=2ahUKEwiq7M2Q8_WDAxW4R_EDHcpBCJ0Q0pQJegQIDBAB&biw=1536&bih=762&dpr=1.25) pe google folosind o parte din antetul facturii xml si anume : ***#urn:efactura.mfinante.ro:CIUS-RO*** va poate duce la exemple brute de facturi-XML nesemnate sau semnate(asta fiind si varianta finala de depunere online la ANAF)

Pe site-ul [snitehnology](https://snitechnology.net/wp-content/uploads/2022/10/Romania-Webinar-Presentation.pdf) gasiti lucruri interesante despre eFactura dar si despre eTransport.

De asemenea pe site-ul [infokam.eu](https://infokam.eu/blog/2022/06/21/e-factura/) se prezinta instrumente ca Microfact,xFact,EcoFact,Carbon,Graphite care ar putea sa accepte eFactura(factura romaneasca).

O alta [cautare-google](https://-online.ro/e-factura/modele-de-facturi-in-xml-acceptate-in-sistemul-e-factura-pentru-agentiile-de-turism.html) ar fi dupa [antetul facturii](https://www.google.com/search?sca_esv=601069641&rlz=1C1JJTC_enRO1087RO1087&sxsrf=ACQVn0_lL6K-49Lj8uL_ejb1iQT5x8JwCg:1706101510289&q=%3C%3Fxml+version%3D%221.0%22+encoding%3D%22UTF-8%22%3F%3E+%3CInvoice+xmlns%3D%22urn:oasis:names:specification:ubl:schema:xsd:Invoice-2%22+xmlns:cac%3D%22urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2%22+xmlns:cbc%3D%22urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2%22+xmlns:ccts%3D%22urn:un:unece:uncefact:documentation:2%22+xmlns:qdt%3D%22urn:oasis:names:specification:ubl:schema:xsd:QualifiedDataTypes-2%22+xmlns:udt%3D%22urn:oasis:names:specification:ubl:schema:xsd:UnqualifiedDataTypes-2%22+xmlns:xsi%3D%22http://www.w3.org/2001/XMLSchema-instance%22+xsi:schemaLocation%3D%22urn:oasis:names:specification:ubl:schema:xsd:Invoice-2+http://docs.oasis-open.org/ubl/os-UBL-2.1/xsd/maindoc/UBL-Invoice-2.1.xsd%22%3E+%3Ccbc:CustomizationID%3Eurn:cen.eu:en16931:2017%23compliant%23urn:efactura.mfinante.ro:CIUS-RO:1.0.0%3C/cbc:CustomizationID%3E&tbm=isch&source=lnms&sa=X&ved=2ahUKEwj5peKzi_aDAxULYPEDHQf7AwwQ0pQJegQIDRAB&biw=1536&bih=762&dpr=1.25):
		
		 <?xml version="1.0" encoding="UTF-8"?>
		<Invoice 
			xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" 
			xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" 
			xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" 
			xmlns:ccts="urn:un:unece:uncefact:documentation:2" 
			xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDataTypes-2" 
			xmlns:udt="urn:oasis:names:specification:ubl:schema:xsd:UnqualifiedDataTypes-2" 
			xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
			      xsi:schemaLocation="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2 http://docs.oasis-open.org/ubl/os-UBL-2.1/xsd/maindoc/UBL-Invoice-2.1.xsd">
		   	<cbc:CustomizationID>urn:cen.eu:en16931:2017#compliant#urn:efactura.mfinante.ro:CIUS-RO:1.0.0</cbc:CustomizationID>
		   	...

***[Nota](https://www.google.com/search?q=+%3C%3Fxml+version%3D%221.0%22%3F%3E+%3CInvoice+xmlns%3Acac%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3ACommonAggregateComponents-2%22+xmlns%3Acbc%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3ACommonBasicComponents-2%22+xmlns%3Aqdt%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3AQualifiedDataTypes-2%22+xmlns%3Audt%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3AUnqualifiedDataTypes-2%22+xmlns%3Accts%3D%22urn%3Aun%3Aunece%3Auncefact%3Adocumentation%3A2%22+xmlns%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3AInvoice-2%22+xmlns%3Axsi%3D%22http%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema-instance%22+xsi%3AschemaLocation%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3AInvoice-2+http%3A%2F%2Fdocs.oasis-open.org%2Fubl%2Fos-UBL-2.1%2Fxsd%2Fmaindoc%2FUBL-Invoice-2.1.xsd%22%3E+%3Ccbc%3ACustomizationID%3Eurn%3Acen.eu%3Aen16931%3A2017%23compliant%23urn%3Aefactura.mfinante.ro%3ACIUS-RO%3A1.0.0%3C%2Fcbc%3ACustomizationID%3E&sca_esv=601079603&rlz=1C1JJTC_enRO1087RO1087&sxsrf=ACQVn08jFsVjmz5ZAJMDP0quTDM7DaUkgA%3A1706102633413&ei=aQ-xZZLhGJWUxc8Pxdmr-AY&udm=&ved=0ahUKEwjSuajLj_aDAxUVSvEDHcXsCm8Q4dUDCBA&uact=5&oq=+%3C%3Fxml+version%3D%221.0%22%3F%3E+%3CInvoice+xmlns%3Acac%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3ACommonAggregateComponents-2%22+xmlns%3Acbc%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3ACommonBasicComponents-2%22+xmlns%3Aqdt%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3AQualifiedDataTypes-2%22+xmlns%3Audt%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3AUnqualifiedDataTypes-2%22+xmlns%3Accts%3D%22urn%3Aun%3Aunece%3Auncefact%3Adocumentation%3A2%22+xmlns%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3AInvoice-2%22+xmlns%3Axsi%3D%22http%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema-instance%22+xsi%3AschemaLocation%3D%22urn%3Aoasis%3Anames%3Aspecification%3Aubl%3Aschema%3Axsd%3AInvoice-2+http%3A%2F%2Fdocs.oasis-open.org%2Fubl%2Fos-UBL-2.1%2Fxsd%2Fmaindoc%2FUBL-Invoice-2.1.xsd%22%3E+%3Ccbc%3ACustomizationID%3Eurn%3Acen.eu%3Aen16931%3A2017%23compliant%23urn%3Aefactura.mfinante.ro%3ACIUS-RO%3A1.0.0%3C%2Fcbc%3ACustomizationID%3E&gs_lp=Egxnd3Mtd2l6LXNlcnAilgYgPD94bWwgdmVyc2lvbj0iMS4wIj8-IDxJbnZvaWNlIHhtbG5zOmNhYz0idXJuOm9hc2lzOm5hbWVzOnNwZWNpZmljYXRpb246dWJsOnNjaGVtYTp4c2Q6Q29tbW9uQWdncmVnYXRlQ29tcG9uZW50cy0yIiB4bWxuczpjYmM9InVybjpvYXNpczpuYW1lczpzcGVjaWZpY2F0aW9uOnVibDpzY2hlbWE6eHNkOkNvbW1vbkJhc2ljQ29tcG9uZW50cy0yIiB4bWxuczpxZHQ9InVybjpvYXNpczpuYW1lczpzcGVjaWZpY2F0aW9uOnVibDpzY2hlbWE6eHNkOlF1YWxpZmllZERhdGFUeXBlcy0yIiB4bWxuczp1ZHQ9InVybjpvYXNpczpuYW1lczpzcGVjaWZpY2F0aW9uOnVibDpzY2hlbWE6eHNkOlVucXVhbGlmaWVkRGF0YVR5cGVzLTIiIHhtbG5zOmNjdHM9InVybjp1bjp1bmVjZTp1bmNlZmFjdDpkb2N1bWVudGF0aW9uOjIiIHhtbG5zPSJ1cm46b2FzaXM6bmFtZXM6c3BlY2lmaWNhdGlvbjp1Ymw6c2NoZW1hOnhzZDpJbnZvaWNlLTIiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhzaTpzY2hlbWFMb2NhdGlvbj0idXJuOm9hc2lzOm5hbWVzOnNwZWNpZmljYXRpb246dWJsOnNjaGVtYTp4c2Q6SW52b2ljZS0yIGh0dHA6Ly9kb2NzLm9hc2lzLW9wZW4ub3JnL3VibC9vcy1VQkwtMi4xL3hzZC9tYWluZG9jL1VCTC1JbnZvaWNlLTIuMS54c2QiPiA8Y2JjOkN1c3RvbWl6YXRpb25JRD51cm46Y2VuLmV1OmVuMTY5MzE6MjAxNyNjb21wbGlhbnQjdXJuOmVmYWN0dXJhLm1maW5hbnRlLnJvOkNJVVMtUk86MS4wLjA8L2NiYzpDdXN0b21pemF0aW9uSUQ-SABQAFgAcAB4AZABAJgBAKABAKoBALgBA8gBAPgBAeIDBBgAIEE&sclient=gws-wiz-serp):*** partea nationala(specifica Romaniei) din acest antet este **urn:cen.eu:en16931:2017#compliant#urn:efactura.mfinante.ro:CIUS-RO:1.0.0** , 
        incadrata de meta-tag-ul [UBL-2.1](https://docs.oasis-open.org/ubl/UBL-2.1.html)/XML: ***<cbc:CustomizationID>*** ... ***</cbc:CustomizationID>**.

Documentati oficiala(**OASIS**) pentru schema de validare(***.xsd***) **UBL** versiunea **2.1** o puteti gasi aici [***UBL-2.1***](https://docs.oasis-open.org/ubl/UBL-2.1.html)

Un site interesant despre [***eInvoicing - UBL2.0***](https://docs.oasis-open.org/ubl/os-UBL-2.0/xml/UBL-Invoice-2.0-Example.xml) puteti gasi pe site-ul [medius](https://www.medius.com/glossary/what-is-e-invoicing/)

Un exemplu de factura XML [**peruana**](https://ro.wikipedia.org/wiki/Peru)(***Superintendencia Nacional de Administración Tributaria - [SUNAT](https://www.sunat.gob.pe/)***) are integrat inclusiv certificatul [X509](https://llama.pe/xml-ubl-2.1-sunat/20553510661-03-B001-1)(semnatura electronica facturii)

Pe forumul [uipath](https://forum.uipath.com/t/how-to-automatically-detect-a-namespace-in-the-root-label-to-then-extract-its-value-into-a-variable-and-be-able-to-loop-through-the-elements/491751) gasit un subiect interesant:
"Cum să detectați automat un spațiu de nume în eticheta rădăcină, pentru a extrage apoi valoarea acestuia într-o variabilă și pentru a putea trece prin elemente";

Despre spatiile de nume(***xmlns***), mai precis despre **CommonAggregateComponents-2.0.xsd**, gasiti aici [elemente de detaliu](https://github.com/ept/oaccounts/blob/master/xsd/maindoc/UBL-Invoice-2.0.xsd) despre [UBL-2.0](http://xemelios.org/schemas/etat-frais/doc/doc-ef-ext/index1.html)

Pe site-ul celor de la **OASIS** puteti gasi documentatia oficiala pt ***[UBL-2.3](https://docs.oasis-open.org/ubl/UBL-2.3.html)***

Un exemplu care prezinta procesul **[manual(fara a utiliza un program/api anume)](https://www.storecove.com/blog/en/creating-your-own-ubl-invoice/?unbounce_brid=1706110615_5246863_93042dfb0d9a38cea07eabf22838775f)** de creare/generare/editare a fisierului XML pt factura UBL folosind un editor de fisiere text(Notepad++, Wordpad,...) sau editor xml([XML Notepad](https://lovettsoftwarestorage.blob.core.windows.net/downloads/XmlNotepad/XmlNotepad.application))

[Facturis](https://facturis-online.ro/blog/page/2) are o serie de articole interesante despre formatul eFacturii ;
[Rentrop & Straton](https://e-factura.fisc.ro/?cs=1541215&utm_source=infolegis.contabilitateonline.ro&utm_medium=email&utm_campaign=oferta-speciala) are un chestionar de tip [Intrebare-Raspuns](https://conferintafiscalitate.fisc.ro/?cs=13941424&utm_source=infoalerta.rentropstraton.com&utm_medium=email&utm_campaign=oferta-speciala) care poate fi consultat.
De asemenea o serie de articolele publicate pe site-ul [contabilul.manager](https://contabilul.manager.ro/) pot veni in ajutorul dumneavoastra.
Poate ar fi util de citit si aceasta documentatie [Microsoft](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RW15w3H): Solutie eFactura  - Documentatie  (Developed by Evozon Systems for Dynamics 365 BC ).
[BT](https://go.bancatransilvania.ro/storage/app/media/manual_de_utilizare_BT_Go.pdf) are un manual de utilizare destul de interesant pt [BT-Go](https://www.bancatransilvania.ro/news/comunicate-de-presa/firmele-pot-emite-si-trimite-automat-e-factura-catre-anaf-prin-bt-go) adresat clientii sai. similar gasiti ceva si pe site-ul[** Ominicredit**](https://omnicredit.ro/cum-functioneaza-si-cand-va-deveni-obligatorie-e-factura/)
Pe forumul [HotFox](https://hotfox.ro/forum/viewtopic.php?t=94&start=10) gasiti o multime de subiecte legate de eFactura.

Interesante sunt si <a href="https://www.google.com/search?q=CIF+vs+CUI+vs+NIF+RC+EUID&sca_esv=601682560&rlz=1C1JJTC_enRO1087RO1087&sxsrf=ACQVn081w6a5z8s5siPFgS1zSS5eEB8XGQ%3A1706261620706&ei=dHyzZbDYKqbgxc8Pn5yx4Aw&udm=&ved=0ahUKEwiw4q7u3_qDAxUmcPEDHR9ODMwQ4dUDCBA&uact=5&oq=CIF+vs+CUI+vs+NIF+RC+EUID&gs_lp=Egxnd3Mtd2l6LXNlcnAiGUNJRiB2cyBDVUkgdnMgTklGIFJDIEVVSUQyBxAhGAoYoAEyBxAhGAoYoAEyBxAhGAoYoAEyBxAhGAoYoAFI8hlQ0QZY1RVwAXgBkAEAmAHAAaABtwWqAQMwLjW4AQPIAQD4AQHCAgoQABhHGNYEGLAD4gMEGAAgQYgGAZAGCA&sclient=gws-wiz-serp" target="_blank">articolele</a> legate de comparatia codurilor sau numerelor atribuite de catre autoritati CIF,CUI,NIF,EUID,RC... ex. <a href="https://cursdeguvernare.ro/diferenta-dintre-cui-si-cif-ghid-explicativ-in-6-pasi.html" target="_blank">CUI vs. CIF</a>


Crearea online a scheletului unei facturi UBL o puteti gasi [aici](https://cranesoftwrights.github.io/resources/Crane-UBL-2.1-Skeleton/Crane-UBL-Invoice-2.1.html) iar campurile codate in eInvoice le puteti gasi [aici](https://docs.oasis-open.org/ubl/os-UBL-2.1/mod/summary/reports/UBL-Invoice-2.1.html#t-Invoice-4);
Articole de informatii calificate UBL2.0 si UBL2.1 gasiti [aici](Articole de informații calificate UBL 2.0 și UBL 2.1);Peppoll Billing BIS 3.0 gasiti [aici](Articole de informații calificate UBL 2.0 și UBL 2.1)
Intereresant este si [SFTI](https://sfti.se/download/18.42336a32177c8ab158d77219/1616148012158/Referencing_and_Matching_3.pdf) - Single Face To Industry.

Aici gasiti [**reclasificarea CPV**](https://anap.gov.ro/web/wp-content/uploads/2019/02/Reclasificare-coduri-CPV.pdf);

Puteti viziona 2 scheme grafice ale proceselor de incarcare si respectiv descarcare eFacturi in/din  **SPV**-ul **ANAF** pe site-ul celor de la [**Automatik**](https://softlead.ro/noutati-it-c/atomatik-sprijina-companiile-romanesti-in-tranzitia-catre-ro-e-factura.html); Ceva similar gasiti si pe site-ul [**iforce/neoManager**](https://iforce.ro/2023/09/08/neomanager-si-b-org-pregatite-pentru-efactura/)

[**CECCAR** - Satu Mare](https://ceccarsatumare.ro/ro/wp-content/uploads/2022/08/RO-E-factura-.pdf) are o expunere succinta despre procesul RO eFactura intitulata **RO eFactura - Consideratii Generale si Cadrul Legal Aplicabil**; Este interesant ca aici gasiti un ghid rapid continand ***link***-urile importante de care aveti nevoie;

Codificarea produselor si serviciilor [**CPV(Common Procurement Vocabulary)**](https://cpv.nxm.ro/) o puteti consulta pe site-ul [**licitatiiSEAP**](https://licitatiiseap.ro/coduri_cpv/);
Pentru a afla mai multe [**detalii**](https://mfinante.gov.ro/documents/4398723/5002737/E-facturaFAQ.pdf/62a8d46b-82f5-9954-22aa-29b7ad32fe14?t=1637238487343) puteti consulta si [**I&R**](https://www.nexuserp.ro/blog/intrebari-frecvente-despre-efactura) de pe site-ul ***nexuserp***; Aceiasi codificare o gasiti si pe site-ul [**IAPP**](https://developer.iapp.ro/article/82-e-Factura-Lista-codurilor-CPV); Despre codurile [**CPV** si **NC**](https://cpv.nxm.ro/cpv/33711450-6-tatuaje) si nu numai puteti consulta si site-ul [portalContabilitate](https://www.portalcontabilitate.ro/utilizare-coduri-nc-si-cpv-pentru-saf-t-si-e-factura-174849.htm);

Acest [**Comunicat ANAF/UMI**](/https://static.anaf.ro/static/10/Anaf/Informatii_R/Comunicat_e-factura_aprilie2022_v2_050422.pdf) care contine **Informații de interes referitoare la implementarea sistemului național privind factura electronică RO e-Factura**  poate aduce multe clarificari in intelegerea acestui proces.

Despre ***arhivarea facturilor*** aflati cateva lucruri si pe site-ul [**efacturaDownloader**](https://efacturadownloader.ro/?gad_source=1&gclid=CjwKCAiAq4KuBhA6EiwArMAw1NZ4DATCpGRJvSDKMRvlpIwjnEy7kgtTr3uEI0SuaBSNnPUzYPi3OhoC5fwQAvD_BwE)

Despre conturile bancare(**BT-84**) ale [**e-Factura**](https://www.slideshare.net/geomexicanu1980/prezentare-api-efactura-1pdf) puteti vizualiza acesta pagina a site-ului [**ro-efactura**](https://ro-efactura.ro/tag/xml-efactura/)

Pe forumul [**reddit**](https://www.reddit.com/r/programare/comments/18c3bg8/implementare_serviciu_efactura/) sunt postate o serie de documentatii **Swagger** pt un proiect eFactura.
(**n.r.** *Discutia se invarte in jurul **OAuth** si apeluri **REST***)

Pentru cei ce scriu cod in **PhP** puteti vedea si proiectul eFactura de pe github al lui [**danielgp**](https://github.com/danielgp/eFactura/tree/main?tab=readme-ov-file)


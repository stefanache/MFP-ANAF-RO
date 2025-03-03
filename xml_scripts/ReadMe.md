Ce este un [XML](https://support.microsoft.com/ro-ro/office/xml-pentru-%C3%AEncep%C4%83tori-a87d234d-4c2e-4409-9cbc-45e4eb857d44)? (O alternativa la JSON?)

Iata un model de [factura](https://ro-efactura.ro/wp-content/uploads/2023/11/Model-factura-XML-NrReg-001.xml) [xml](https://www.w3schools.com/xml/xml_tree.asp) care respecta standardul sau setul de reguli valide specificate de catre cei de la ANAF(<b>CIUS-RO UBL Invoice 1.0.8</b>).

Factura aceasta este un simplu exemplu de factura-xml pentru care s-a utilizat formatul de prezentare UBL versiunea 2.1(il gasiti in fisieul [eFactura_example.xml](xml_scripts/eFactura_example.xml))(celalalt format de prezentare acceptat de catre ANAF fiind CII)

O scurta prezentare a sistemului eFactura o puteti gasi pe website-ul [e-factura-xml.ro](https://www.e-factura-xml.ro/);

Un alt articol, de aceasta data ceva mai tehnic puteti gasi pe acest portal al celor de la [storecove](https://www.storecove.com/blog/en/creating-your-own-ubl-invoice/?unbounce_brid=1716810954_6341546_59badda9e9ec63bce33b0a5dd7f4cad5)

Informatii despre generarea eFactura pot fi gasite pe site-ul [facturis](https://facturis-online.ro/e-factura/cum-sa-emiteti-singur-facturi-electronice-in-sistemul-anaf-ro-e-factura.html)

Cate ceva despre specificatille de utilizare a facturilor [CIUS](https://github.com/CenPC434/cius-extension-xml/tree/master); Aici gasiti si ceva exemple de specificatii nationale(Austria,Germania...); O specificatie CIUS specifica regulile specifice unei tari sau alteia in materie de conformitate a facturii electronice;

Baza generarii facturilor conforme cu [RO-CIUS](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf) o veti gasi desigur pe site-ul [ANAF](https://mfinante.gov.ro/web/efactura/informatii-tehnice) si pe site-ul [MFP](https://mfinante.gov.ro/web/efactura); 

Cei de la ANAF au ales [schematron](https://hotfox.ro/forum/viewtopic.php?t=94&start=10)(o alternativa la [XSD](https://www.w3schools.com/xml/schema_intro.asp)) pentru prezentarea regulilor [CIUS_RO](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf)

Pe partea de validare a facturilor xml, ANAF-ul utilizeaza [schematron](http://ldodds.com/papers/schematron_xsltuk.html) impreuna cu limbajul Java; 

Un astel de [motor java de validare](https://github.com/phax/phive) este si [phive(5)](https://github.com/phax/phive-rules/tree/master) care utilizeaza seturile de reguli nationale printre care si [CIUS-RO](https://github.com/phax/phive-rules/tree/master/phive-rules-cius-ro). 

Acest motor a fost initial dezvoltat de catre cei care administraza [reteaua](https://ecosio.com/en/blog/connecting-to-peppol-via-api-what-are-the-benefits/) internationala de transmitere a <b>eDocument</b><i>elor</i> <b>[Peppol](https://ecosio.com/en/peppol-and-xml-document-validator/)</b>; 

Daca veti selecta setul de reguli <i>UBL Invoice 2.1</i> si veti incarca acest fisier [eFactura_example.xml](xml_scripts/eFactura_example.xml) pe instanta web/online a acestui [validator](https://ecosio.com/en/peppol-and-xml-document-validator/) veti vedea ca exemplul este [validat cu succes](https://ademico-software.com/peppol-tools-api/#section/Authentication);Un alt validator online pentru o factura xml prezentata in format/sintaxa UBL ar putea fi si [acesta](https://www.itb.ec.europa.eu/invoice/upload).(Multumim [<b>Facturis</b>](https://facturis-online.ro/tag/xml-e-factura) pentru exemplul postat!)

In depozitul github [<b>phive</b>](https://github.com/phax/phive-rules/tree/master) urmand calea [<b>phive-rules-cius-ro/src/main/resources/external/schematron/1.0.8</b>](https://github.com/phax/phive-rules/tree/master/phive-rules-cius-ro/src/main/resources/external/schematron/1.0.8) veti gasi validatorul schematron 
<b>ROeFactura-UBL-validation-Invoice_v1.0.8.xslt</b>; 

Acest validator se poate utiliza pentru a valida un fisier ce contine factura xml in [2 pasi](https://stackoverflow.com/questions/57355078/how-to-validate-an-xml-using-a-sch-in-java-or-javascript):

" Procesul transformă schema <b>Schematron</b>(.sch) într-un document <b>XSL</b>, apoi folosește acel document XSL pentru a transforma <b>documentul</b>(.xml) pe care încercați să îl validați.
  
  Rezultatul final este un document <b>SVRL</b>(Schematron Validation Report Language) care descrie orice probleme de validare găsite. "

<i><b>OBS:</b></i> Tot in acest depozit veti regasi si validatorul Java [CIUS_ROValidation.java](https://github.com/phax/phive-rules/blob/master/phive-rules-cius-ro/src/main/java/com/helger/phive/ciusro/CIUS_ROValidation.java) care utilizeaza resursa <b>ROeFactura-UBL-validation-Invoice_v1.0.8.xslt</b>;


Daca doriti sa vedeti cum lucreaza validatorul-Peppol in mod [practic](https://www.gsis.gr/sites/default/files/eInvoice/Instructions%20to%20B2G%20Suppliers%20and%20certified%20PEPPOL%20Providers%20for%20the%20Greek%20PEPPOL%20BIS-EN-%20v1.0.pdf) atunci o puteti face vizitand site-ul [urmator](https://ionite.net/news-articles/2023-08-17_validating_peppol_documents/).

Un validator [XSLT](https://ion-docval.ionite.net/javadoc/1.0/)(bazat pe Java dar construit si pt medii non-Java) pentru reguli furnizate in format <b>schematron</b>(<i>dar nu numai!</i>) este si acest HTTP micro-service local [<b>ion-docval</b>](https://ion-docval.ionite.net/about/introduction/)(desi nu l-am testat cred ca merita testat!!!).Software-ul functioneaza in paradigma [client-server](https://github.com/ionite/ion-docval) si inlude/admite clienti diversi: XSLT,Python,Java si CLI/shell(.bat); Exista chiar si o varianta [online](https://test.peppolautoriteit.nl/validate) pe care o puteti incerca rapid fara a fi nevoie de a instala vreo componenta;Desigur dupa instalare va fi nevoie de configurare in conformitate cu regulile comune(EN16931,UBL 2.1,...) armonizate si cu cele de specific national(RO), reglementate de catre autoritatea noastra fiscala: [MFP-ANAF](https://test.peppolautoriteit.nl/validate));

Desigur varianta oficiala MFP-ANAF pentru validarea eFacturii-xml ramane acest [validator online](https://www.anaf.ro/uploadxmi/) iar pentru restul documentelor(declaratii etc) ramane [DUKintegrator](https://static.anaf.ro/static/DUKIntegrator/DUKIntegrator.htm).

De asemenea, ati/veti putea folosi/apela la [serviciile](https://mfinante.gov.ro/web/efactura/informatii-tehnice) [web](https://www.reddit.com/r/programare/comments/18c3bg8/implementare_serviciu_efactura/) ale [MFP](https://www.youtube.com/watch?v=BkD_m5oncR8&ab_channel=MinisterulFinantelor) - [ANAF](https://mfinante.gov.ro/static/10/eFactura/prezentare%20api%20efactura.pdf) documentate cu/in stil [Swagger](https://static.anaf.ro/static/10/Anaf/Informatii_R/API/Oauth_procedura_inregistrare_aplicatii_portal_ANAF_12012024.pdf).

Pe site-ul [UE](https://www.vatupdate.com/2023/12/17/guide-on-the-use-of-the-national-electronic-invoicing-system-ro-e-invoice-english-translation/) mai gasiti cateva informatii interesante despre [eInvoicing-ul](https://ec.europa.eu/digital-building-blocks/sites/display/DIGITAL/eInvoicing+in+Romania) din Romania.

[Billit](https://www.billit.eu/en-int/peppol-access-point/anaf-e-invoicing-in-romania/) prezinta de asemena cateva link-uri utile(daca nu cumva ati aflat de existenta lor deja!)

Un articol comercial interesant despre eFactura si eTransport poate fi consultat accesand acest [link](https://www.smartcash.ro/efactura-anaf-connector/);

La fel de interesant(in special pe zona de manipulare date) este si acest ghid de configurare oferit de [MS](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RW1jQ8k);

Puteti citi despre [eTransport](https://www.portalcontabilitate.ro/structura-fisierului-xml-utilizat-in-sistemul-ro-e-transport-bunuri-cu-risc-fiscal-ridicat-153008.htm) si despre fisierele [xml](https://etransport.mfinante.gov.ro/informatii-tehnice) implicate pe site-ul de specialitate al ***ANAF***-ului; Fisierele xml furnizate ca exemplu pot fi studiate si se afla in fartea finala a ***Informatiilor tehnice eTransport***;

Iata [aici](https://github.com/alexandru-mohora-rm/eFactura), un produs ***PowerShell***, care transforma factura XML, din data curenta, in factura PDF(**xml**2**pdf**)

**ScriBD** pastreaza o *prezentare* [***eFactura v.1.0***](https://www.scribd.com/document/615668832/PrezentareE-factura)(format **UBL 2.1**/***XML***; ultima actualizare ***13 septembrie 2021***) care sper ca este [interesanta](https://www.reddit.com/r/programare/comments/18q33w6/conversie_efactura_xml_in_format_pdf/) pt. dumnevoastra.

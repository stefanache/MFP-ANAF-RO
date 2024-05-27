Iata un model de [factura](https://ro-efactura.ro/wp-content/uploads/2023/11/Model-factura-XML-NrReg-001.xml) [xml](https://www.w3schools.com/xml/xml_tree.asp) care respecta standardul sau setul de reguli valide specificate de catre cei de la ANAF(<b>CIUS-RO UBL Invoice 1.0.8</b>).

Factura aceasta este un simplu exemplu de factura-xml pentru care s-a utilizat formatul de prezentare UBL versiunea 2.1(il gasiti in fisieul [eFactura_example.xml](xml_scripts/eFactura_example.xml))(celalalt format de prezentare acceptat de catre ANAF fiind CII)

O scurta prezentare a sistemului eFactura o puteti gasi pe website-ul [e-factura-xml.ro](https://www.e-factura-xml.ro/);

Un alt articol, de aceasta data ceva mai tehnic puteti gasi pe acest portal al celor de la [storecove](https://www.storecove.com/blog/en/creating-your-own-ubl-invoice/?unbounce_brid=1716810954_6341546_59badda9e9ec63bce33b0a5dd7f4cad5)

Informatii despre generarea eFactura pot fi gasite pe site-ul [facturis](https://facturis-online.ro/e-factura/cum-sa-emiteti-singur-facturi-electronice-in-sistemul-anaf-ro-e-factura.html)

Cate ceva despre specificatille de utilizare a facturilor [CIUS](https://github.com/CenPC434/cius-extension-xml/tree/master); Aici gasiti si ceva exemple de specificatii nationale(Austria,Germania...); O specificatie CIUS specifica regulile specifice unei tari sau alteia in materie de conformitate a facturii electronice;

Baza generarii facturilor conforme cu [RO-CIUS](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf) o veti gasi desigur pe site-ul [ANAF](https://mfinante.gov.ro/web/efactura/informatii-tehnice) si pe site-ul [MFP](https://mfinante.gov.ro/web/efactura); 

Cei de la ANAF au ales [schematron](https://hotfox.ro/forum/viewtopic.php?t=94&start=10)(o alternativa la [XSD](https://www.w3schools.com/xml/schema_intro.asp)) pentru prezentarea regulilor [CIUS_RO](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf)

Pe partea de validare ANAF-ul utilizeaza schematron impreuna cu limbajul Java; 

Un astel de [motor java de validare](https://github.com/phax/phive) este si [phive(5)](https://github.com/phax/phive-rules/tree/master) care utilizeaza seturile de reguli nationale printre care si CIUS-RO. 

Acest motor a fost initial dezvoltat de catre cei care administraza [reteaua](https://ecosio.com/en/blog/connecting-to-peppol-via-api-what-are-the-benefits/) internationala de transmitere a <b>eDocument</b><i>elor</i> <b>[Peppol](https://ecosio.com/en/peppol-and-xml-document-validator/)</b>; 

Daca veti selecta setul de reguli <i>UBL Invoice 2.1</i> si veti incarca acest fisier [eFactura_example.xml](xml_scripts/eFactura_example.xml) pe instanta web/online a acestui [validator](https://ecosio.com/en/peppol-and-xml-document-validator/) veti vedea ca exemplul este [validat cu succes](https://ademico-software.com/peppol-tools-api/#section/Authentication).

Daca doriti sa vedeti cum lucreaza validatorul-Peppol in mod practic atunci o puteti face vizitand site-ul [urmator](https://ionite.net/news-articles/2023-08-17_validating_peppol_documents/).

Pe site-ul [UE](https://www.vatupdate.com/2023/12/17/guide-on-the-use-of-the-national-electronic-invoicing-system-ro-e-invoice-english-translation/) mai gasiti cateva informatii interesante despre [eInvoicing-ul](https://ec.europa.eu/digital-building-blocks/sites/display/DIGITAL/eInvoicing+in+Romania) din Romania.

[Billit](https://www.billit.eu/en-int/peppol-access-point/anaf-e-invoicing-in-romania/) prezinta de asemena cateva link-uri utile(daca nu cumva ati aflat de existenta lor deja!)



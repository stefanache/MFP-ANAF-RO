Iata un model de [factura](https://ro-efactura.ro/wp-content/uploads/2023/11/Model-factura-XML-NrReg-001.xml) [xml](https://www.w3schools.com/xml/xml_tree.asp).

Factura aceasta este un simplu exemplu de factura-xml pentru care s-a utilizat formatul de prezentare UBL versiunea 2.1(il gasiti in fisieul [eFactura_example.xml](xml_scripts/eFactura_example.xml))

O scurta prezentare a sistemului eFactura o puteti gasi pe website-ul [e-factura-xml.ro](https://www.e-factura-xml.ro/);

Un alt articol, de aceasta data ceva mai tehnic puteti gasi pe acest portal al celor de la [storecove](https://www.storecove.com/blog/en/creating-your-own-ubl-invoice/?unbounce_brid=1716810954_6341546_59badda9e9ec63bce33b0a5dd7f4cad5)

Informatii despre generarea eFactura pot fi gasite pe site-ul [facturis](https://facturis-online.ro/e-factura/cum-sa-emiteti-singur-facturi-electronice-in-sistemul-anaf-ro-e-factura.html)

Cate ceva despre specificatille de utilizare a facturilor [CIUS](https://github.com/CenPC434/cius-extension-xml/tree/master); Aici gasiti si ceva exemple de specificatii nationale(Austria,Germania...); O specificatie CIUS specifica regulile specifice unei tari sau alteia in materie de conformitate a facturii electronice;

Baza generarii facturilor conforme cu [RO-CIUS](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf) o veti gasi desigur pe site-ul [ANAF](https://mfinante.gov.ro/web/efactura/informatii-tehnice) si pe site-ul [MFP](https://mfinante.gov.ro/web/efactura); 

Cei de la ANAF au ales [schematron](https://hotfox.ro/forum/viewtopic.php?t=94&start=10)(o alternativa la [XSD](https://www.w3schools.com/xml/schema_intro.asp)) pentru prezentarea regulilor [CIUS_RO](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf)

Pe partea de validare ANAF-ul utilizeaza schematron impreuna cu limbajul Java; 
Un astel de [motor java de validare](https://github.com/phax/phive) este si [phive](https://github.com/phax/phive-rules/tree/master) care utilizeaza seturile de reguli nationale printre care si CIUS-RO. Acest motor a fost initial dezvoltat de ceei ce administraza reteaua internationala de eDocuments <b>[Peppol](https://ecosio.com/en/peppol-and-xml-document-validator/)</b>

Pe site-ul [UE](https://www.vatupdate.com/2023/12/17/guide-on-the-use-of-the-national-electronic-invoicing-system-ro-e-invoice-english-translation/) mai gasiti cate ceva despre [eInvoicing](https://ec.europa.eu/digital-building-blocks/sites/display/DIGITAL/eInvoicing+in+Romania) in Romania.



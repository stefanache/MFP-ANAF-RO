Aici gasiti scripturi [**PhP**](https://medium.com/@abidshafee/unveiling-advanced-php-techniques-from-design-patterns-to-testing-7e5be3731400) legate de [***eGuvernare***](https://github.com/TecsiAron/ANAF-API-Client-PHP)

Daca aveti nevoie de **cursul BNR** pentru o ***valuta*** anume(***interogarare punctuala***) probabil ca acest [**github-repository**](https://github.com/WPPlugins/curs-valutar-bnr/blob/master/curs_valutar_bnr.php) va poate fi de ajutor;
Nu este vorba de o interogare punctuala(adica pentru o valuta anume) dar probabil ca este usor de obtinut si o interogare punctuala daca studiati acest cod in detaliu;
S-ar putea ca acest [cod](https://www.curs-valutar-bnr.ro/preluare-curs-valutar-bnr-script-php) sa fie mai simplu de utilizat...Eu am incercat acest [link-BNR](http://www.bnro.ro/nbrfxrates.xml) direct si am vazut ca functioneaza...deci probabil ca extragerea punctuala pentru o valuta este foarte probabil sa functoneze(parsarea nu este atat de complicata)...
Este posibil ca acest [curs](https://www.truugo.com/ubl/2.2/invoice/) sa fie folositor pentru [**eFactura**](/https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) in valuta si in special pentru contabilitate;
Ca sa aveti o ***evidenta(adica sa stocati intr-o tabela dintr-o baza de date)*** a cursului valutar al unei **valute** pentru diverse date calendaristice(la acea **data calendaristica din factura**) probabil ca mult mai bine ar fi sa va stocati acest **curs** pentru acea valuta  intr-o [***tabela MySQL***](https://www.heliosdesign.ro/resurse/php/preluare-curs-valutar.htm);
Daca vreti sa-l afisati pe site acest [**cod PhP**](https://www.endd.ro/curs-valutar-pe-site-ul-tau/) s-ar putea sa va ajute;
Daca aveti nevoie de **cURL** ca executabil ar fi bine sa-l [***instalati manual***](https://www.digitalocean.com/community/tutorials/workflow-downloading-files-curl);
Recomandarea mea este sa-l instalati si sa-l faceti cunoscut(pt a fi usor regasit cand il chemati intr-o comanda de terminal **cmd.exe**) in variabila de mediu(environment) **%PATH%** pentru ca este util macar pentru a testa un URL (macar atunci cand trebuie sa faceti apeluri **POST**,**PUT**,......pt ca apelurile **GET** pot fi testate direct in ***browser*** tastand **URL**-ul respectiv in campul de adresa);

Pe [ICEsoft](https://icesoft.ro/forum//index.php?topic=699.0) forum s-a postat candva o [intrebare](https://digisign.ro/utile/intrebari-frecvente/) legitima in legatura cu [***eFactura***:](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ghid_RO_eFactura.pdf) 
Ce este [**XML**](https://www.certsign.ro/ro/intrebari-despre-semnatura-electronica-calificata/) [***eFactura***](https://mfinante.gov.ro/web/efactura/informatii-tehnice)?

([Intrebarea](https://static.anaf.ro/static/10/Brasov/Brasov/inregistrare_spv.pdf) de mai sus, desi pe ***jumatate*** pusa este totusi o [intrebare](https://www.sasory.ro/postari/postare.php?id=64)!); Chiar daca veti dori sa va creati propriul serviciu apelurile cURL pot constitui un model destul de inspirat!;

**XML** este o forma de prezentare([***arborescenta***](https://copyprogramming.com/howto/how-to-show-tree-view-in-php)) a datelor deci este un standard de prezentare(pana la urma si de stocare in container/fisier) a datelor;
De ce spun ca este pe ***jumatate*** pusa intrebarea?
Pentru ca in cadrul acestul [**XML**](https://docs.oasis-open.org/ubl/UBL-2.1.html) se foloseste un alt standard de sintaxa a datelor specifice unei [***eFacturi***](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RW1g7kQ)(de fapt **eInvoice** pt ca este pt un format/standard extins la nivel international)  
si aici ma refer la [**UBL**](https://github.com/bullyard/ubl-invoice) ori **CII**...
Deci standardul [**UBL**](https://docs.oasis-open.org/ubl/os-UBL-2.0/xml/UBL-Invoice-2.0-Example.xml) sau **CII** este inclus(sau gazduit) de acest standard ***general*** **XML**.
Nu a fost o explicatie prea academica dar sper sa fie utila unora mai practicieni(***n.r.*** ca mine)...
De ce spun ca XML este un standard general/comun ? ... pt ca orice se prezinta sub [forma(***paradigma/modelul***)](https://stackoverflow.com/questions/52569580/php-extract-html-tag-value-into-array-from-string) **\<tag\>**...***continut-XML***...**\<\/tag\>** este un format **XML**(daca vreti si continutul unui fisier  **HTML** este un **XML**...cu atat mai mult un continut [***XHTML***](https://copyprogramming.com/howto/php-you-want-to-xhtml-request); adica **HTML**-ul respectiv [***XHTML***](https://copyprogramming.com/t/generating-xhtml-documents-using-domdocument-in-php)-ul este in particular, daca vreti/pana la urma, tot un [**XML**](https://www.php.net/manual/en/class.simplexmliterator.php)...   pt. ca respecta [***paradigma/modelul/formatul***](https://stackoverflow.com/questions/52569580/php-extract-html-tag-value-into-array-from-string) despre care vorbeam mai sus); asadar un XML ne prezinta/reflecta o imbricare(includere/incluziune) sau o containerizare profunda lucru specific structurilor de tip [**arbore**](https://github.com/gymadarasz/xparser)... pe relatii de genul [***contine pe/este imbricat=inclus in***](https://stackoverflow.com/questions/6356115/traverse-the-dom-tree); Daca va asumati acest risc atunci poate ca aceasta ar fi o calea interesanta de urmat!!!

***Nota:*** Am vorbit aici despre ***XHTML*** pt ca paginile-tab ale [**generatorului ANAF**](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml) [eFactura](https://www.gandul.ro/financiar/business/fiscalitate/raportarea-facturilor-emise-in-sistemul-national-ro-e-factura-ghid-pentru-firme-si-pasii-de-urmat-20109989) sunt XHTML;

[Ce vreau sa spun?](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf)

Vrem nu vrem cei ce se ocupa de [generatorul](https://static.anaf.ro/static/10/Brasov/Brasov/serv_ANAF.pdf) sau de site-ul ["completarea online a eFacturii" ](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml) sunt cei de la ANAF, asa ca oricand pot introduce noi validari sau noi reguli, pot elimina sau introduce noi campuri deci ei au intreaga decizie asupra site-ului de generare a e-Facturii.Prin urmare si validatorul [validare.js](https://www.anaf.ro/CompletareFactura/faces/factura/validare.js) poate suferi in timp modificari notabile; asadar daca doriti sa faceti un generator xml e-Factura poate ca nu ar fi o idee rea sa folositi mediul acesta de programare si sa-l utilizati desigur in aplicatia dumneavoastra. Pentru acest lucru va trebui sa folositi resursele site-ului in forma lor originala si doar sa le utilizati in aplicatia dumneavoastra.

Asadar poate ar fi util sa analizati in php("parsati") XHTML-urile paginilor-tab, sa le expuneti utilizatorului pe site-ul dvs. si sa preluati ca atare campurile respective(daca aveti interfata utilizator expusa) si de asemenea sa folositi de la distanta validatorul dumnealor plantand in html-head referinta catre acesta(https://www.anaf.ro/CompletareFactura/faces/factura/validare.js);
Astfel sursa dumneavoasta php/html nu va suferi modificari de fiecare data cand aceast site sufera mofificari.(atentie acest generator oficial foloseste [*JSF*](https://help.eclipse.org/latest/index.jsp?topic=%2Forg.eclipse.jst.jsf.doc.user%2Fhtml%2Fconcepts%2Fjsf_component_tree.html) deci este bine sa cautati **URL**-urile ***relative*** si sa le transformati in link-uri ***absolute***; acest lucru este valabil/necesar pentru toate resursele utilizate la/de la distanta); Trebuie insa sa mentionez ca aceasta dependenta de resursele rezidente pe platforma ANAF aduce si un lucru mai putin placut si anume acela ca **uptime**-ul aplicatiei dvs **depinde** de uptime-ul site-ului **ANAF**(cel care este titularul de drept al acestor resurse); Cu alte cuvinte cand cade site-ul ANAF atunci veti obtine si dvs rezultate nedorite/[malformate](https://dexonline.ro/definitie/malforma%C8%9Bie);

Daca ***XML***-ul se ocupa de containerizarea arborescenta DOM(Document Object Model) in vederea transportului, atunci [**UBL**](https://docs.oasis-open.org/ubl/os-UBL-2.1/xsd/maindoc/UBL-Invoice-2.1.xsd)-ul se ocupa de /explica/descrie/(re-)[prezinta](https://dexonline.ro/definitie/prezinta/810865) reguli de scriere(sintactice), daca vreti se ocupa de regulile [***ontologice***](https://dexonline.ro/definitie/onto)(descrieri existentiale) ale obiectelor/entitatilor documentului/documentelor ce fac obiectul acestui **standard**

Pentru cei care doresc sa-si construiasca programatic(in acest caz, utilizand limbajul **PhP**) propriul generator ***UBL [2.1](https://www.truugo.com/ubl/2.1/)/xml eFactura***(**export date**) probabil ca ar fi util sa aveti in vedere construirea(in sens ***invers***!) si a **importului**(in aplicatia voastra PhP) de facturi ***UBL2.1/xml*** primite de la furnizorii dumneavoastra(a se vedea in acest sens si depozitul **github** [***danielgp/eFactura***](https://github.com/danielgp/eFactura/tree/main) ; versiunea **1.0.0** acoperă citirea și scrierea fișierelor **UBL [2.1](https://www.truugo.com/ubl/2.1/)/XML**; aceasta prima versiune are inclusă o **interfață grafică** pentru citirea tuturor fișierelor ZIP ca răspunsuri descărcate de la ANAF, interfata care afișează statistici relevante din toate documentele identificate.; aceleasi ***multumiri*** si lui [**Daniel-Popiniuc**](https://packagist.org/packages/danielgp/efactura)!; datele de [intrare](https://raw.githubusercontent.com/danielgp/eFactura/main/testing/UBL_examples/Romanian/Invoice.json) ale generatorului/exportatorului/writer-ului sunt preluate dintr-un fisier [**json**](https://cleartax.in/s/gst-e-invoice-json) si desigur iesirea este un fisier [eFactura UBL2.1/XML](https://github.com/danielgp/eFactura/blob/main/testing/UBL_examples/Romanian/eInvoice_ex.xml) ; insa daca intentionati sa lucrati cu sabloane/**template**-uri(gen [**twig**](https://zetcode.com/php/twig/)) s-ar putea ca acest repos sa constituie doar materie prima si nu o solutie finita in sine!!!; va trebui sa culegeti datele de intrare ale Writer-ului in prelabil si apoi sa-l utilizati; oricum adaptarea/integrarea insa cred/pare ca este destul de usoara!) 

Un alt generator eInvoice in format [**UBL**](https://docs.peppol.eu/poacc/billing/3.0/syntax/ubl-invoice/) poate fi gasit in depozitul github [***num-num/ubl-invoice***](https://github.com/num-num/ubl-invoice/tree/master)(a se consulta [**testele**](https://github.com/num-num/ubl-invoice/tree/master/tests) aferente pt a intelege cum functioneaza); Trebuie doar sa particularizati/nuantati continutul documentele generate pt uzul sau specificul nostru national([**CIUS-RO**](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RW1g7kQ)); Pentru a afla mai multe despre [**EAS**](https://www.avalara.com/blog/en/europe/2023/03/how-does-your-e-invoice-reach-your-customer-on-the-peppol-network.html?gclid=Cj0KCQiA5rGuBhCnARIsAN11vgT9rAYSPT1VELkaITKv3F2Wb-zJgsDV_VugXTt7b_tKfQzybzgJvNYaAsZuEALw_wcB&CampaignID=7015a000001y34SAAQ&utm_source=paid_search&utm_medium=gppc&ef_id=Cj0KCQiA5rGuBhCnARIsAN11vgT9rAYSPT1VELkaITKv3F2Wb-zJgsDV_VugXTt7b_tKfQzybzgJvNYaAsZuEALw_wcB:G:s&s_kwcid=AL!5131!3!675189240647!p!!g!!peppol&gclsrc=aw.ds&&lso=Paid+Digital&lsmr=Paid+Digital&gad_source=1) - ***Electronic Address Schemes*** (**România** foloseste drept  Număr unic de identificare ca si/de tara/[client-***Peppol***](https://peppol.helger.com/public/menuitem-validation-ws2), **EAS=9947**, un numar de tip **TVA**, numar folosit pentru toate companiile sale inregistrate la nivel national care formeaza [contextul de afaceri](https://www.storecove.com/blog/en/e-invoicing-romania/?unbounce_brid=1707147052_3636603_1c9d50d3b501f34d1ab2cc56ac8c241c) [**B2**{***a***}](https://edicomgroup.com/blog/romania-moves-towards-electronic-invoicing-ro-efactura-platform), unde ***a*** este aria **G**overnmental,**B**usiness si **C**liental)  puteti sa  accesati blogul-ul european [**avalara**](https://www.avalara.com/blog/en/europe/2023/03/how-does-your-e-invoice-reach-your-customer-on-the-peppol-network.html?gclid=Cj0KCQiA5rGuBhCnARIsAN11vgT9rAYSPT1VELkaITKv3F2Wb-zJgsDV_VugXTt7b_tKfQzybzgJvNYaAsZuEALw_wcB&CampaignID=7015a000001y34SAAQ&utm_source=paid_search&utm_medium=gppc&ef_id=Cj0KCQiA5rGuBhCnARIsAN11vgT9rAYSPT1VELkaITKv3F2Wb-zJgsDV_VugXTt7b_tKfQzybzgJvNYaAsZuEALw_wcB:G:s&s_kwcid=AL!5131!3!675189240647!p!!g!!peppol&gclsrc=aw.ds&&lso=Paid+Digital&lsmr=Paid+Digital&gad_source=1)(Subiectul lor ***Cum ajunge factura dvs. electronică la clientul dvs. din rețeaua Peppol?*** poate fi foarte atragator pentru cei ce vor sa scufunde mai adanc in cunoasterea [***eGuvernarii***](https://snitechnology.net/anaf-released-updated-list-of-medium-taxpayers/); Oricum si acest depozit poate fi o sursa de inspiratie pentru proiectele dumneavoastra;

Totusi generarea [eFacturii](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RW1h4uG) in **PhP** poate fi foarte mult simplificata daca stiti exact cum trebuie sa arate **modelul** de factura UBL/XML si aveti din timp pregatie **datele** care trebuiesc inglobate;
Puteti folosi pentru generarea fisierului ***XML(.xml)*** o librarie simpla cum este  [**SimpleXML**](https://www.php.net/manual/en/simplexml.examples-basic.php);
Hai sa luam exemplul testat de [**Daniel-Popiniuc**](https://github.com/danielgp/eFactura/blob/main/testing/UBL_examples/Romanian/eInvoice_ex.xml) si sa-l generam cu [SimpleXML](https://stackoverflow.com/questions/21765994/php-simplexml-reading-with-ubl-different-namespaces):

 - pentru inceput plasati [continutul](https://www.php.net/manual/en/simplexml.examples-basic.php) urmator intr-un fisier pe care sa-l denumim **eFacturaMeaContent.inlude.php**:

              <?php
                    $xmlstr = <<<XML
                    <?xml version="1.0" encoding="UTF-8"?>
                    <Invoice xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDataTypes-2" xmlns:udt="urn:oasis:names:specification:ubl:schema:xsd:UnqualifiedDataTypes-2" xmlns:xs="https://www.w3.org/2001/XMLSchema" xmlns:xsi="https://www.w3.org/2001/XMLSchema-instance">
                     <cbc:UBLVersionID>2.1</cbc:UBLVersionID>
                     <cbc:CustomizationID>urn:cen.eu:en16931:2017#compliant#urn:efactura.mfinante.ro:CIUS-RO:1.0.1</cbc:CustomizationID>
                     <cbc:ID>6422451356</cbc:ID>
                     <cbc:IssueDate>2022-05-31</cbc:IssueDate>
                     <cbc:DueDate>2022-05-31</cbc:DueDate>
                     <cbc:InvoiceTypeCode>380</cbc:InvoiceTypeCode>
                     <cbc:Note>some text for invoice note</cbc:Note>
                     <cbc:DocumentCurrencyCode>RON</cbc:DocumentCurrencyCode>
                     <cac:InvoicePeriod>
                      <cbc:EndDate>2022-05-31</cbc:EndDate>
                     </cac:InvoicePeriod>
                     <cac:AccountingSupplierParty>
                      <cac:Party>
                       <cac:PartyName>
                        <cbc:Name>Seller SRL</cbc:Name>
                       </cac:PartyName>
                       <cac:PostalAddress>
                        <cbc:StreetName>line1</cbc:StreetName>
                        <cbc:CityName>SECTOR1</cbc:CityName>
                        <cbc:PostalZone>013329</cbc:PostalZone>
                        <cbc:CountrySubentity>RO-B</cbc:CountrySubentity>
                        <cac:Country>
                         <cbc:IdentificationCode>RO</cbc:IdentificationCode>
                        </cac:Country>
                       </cac:PostalAddress>
                       <cac:PartyTaxScheme>
                        <cbc:CompanyID>RO1234567890</cbc:CompanyID>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:PartyTaxScheme>
                       <cac:PartyLegalEntity>
                        <cbc:RegistrationName>Seller SRL</cbc:RegistrationName>
                        <cbc:CompanyLegalForm>J40/12345/1998</cbc:CompanyLegalForm>
                       </cac:PartyLegalEntity>
                       <cac:Contact>
                        <cbc:ElectronicMail>mail@seller.com</cbc:ElectronicMail>
                       </cac:Contact>
                      </cac:Party>
                     </cac:AccountingSupplierParty>
                     <cac:AccountingCustomerParty>
                      <cac:Party>
                       <cac:PartyIdentification>
                        <cbc:ID>123456</cbc:ID>
                       </cac:PartyIdentification>
                       <cac:PartyName>
                        <cbc:Name>Buyer name</cbc:Name>
                       </cac:PartyName>
                       <cac:PostalAddress>
                        <cbc:StreetName>BD DECEBAL NR 1 ET1</cbc:StreetName>
                        <cbc:CityName>ARAD</cbc:CityName>
                        <cbc:PostalZone>123456</cbc:PostalZone>
                        <cbc:CountrySubentity>RO-AR</cbc:CountrySubentity>
                        <cac:Country>
                         <cbc:IdentificationCode>RO</cbc:IdentificationCode>
                        </cac:Country>
                       </cac:PostalAddress>
                       <cac:PartyTaxScheme>
                        <cbc:CompanyID>RO987456123</cbc:CompanyID>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:PartyTaxScheme>
                       <cac:PartyLegalEntity>
                        <cbc:RegistrationName>Buyer SRL</cbc:RegistrationName>
                        <cbc:CompanyID>J02/321/2010</cbc:CompanyID>
                       </cac:PartyLegalEntity>
                      </cac:Party>
                     </cac:AccountingCustomerParty>
                     <cac:PaymentMeans>
                      <cbc:PaymentMeansCode>31</cbc:PaymentMeansCode>
                      <cac:PayeeFinancialAccount>
                       <cbc:ID>RO80RNCB0067054355123456</cbc:ID>
                      </cac:PayeeFinancialAccount>
                     </cac:PaymentMeans>
                     <cac:TaxTotal>
                      <cbc:TaxAmount currencyID="RON">6598592.60</cbc:TaxAmount>
                      <cac:TaxSubtotal>
                       <cbc:TaxableAmount currencyID="RON">696.12</cbc:TaxableAmount>
                       <cbc:TaxAmount currencyID="RON">34.79</cbc:TaxAmount>
                       <cac:TaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>5.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:TaxCategory>
                      </cac:TaxSubtotal>
                      <cac:TaxSubtotal>
                       <cbc:TaxableAmount currencyID="RON">22875.45</cbc:TaxableAmount>
                       <cbc:TaxAmount currencyID="RON">2059.43</cbc:TaxAmount>
                       <cac:TaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>9.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:TaxCategory>
                      </cac:TaxSubtotal>
                      <cac:TaxSubtotal>
                       <cbc:TaxableAmount currencyID="RON">34718412.54</cbc:TaxableAmount>
                       <cbc:TaxAmount currencyID="RON">6596498.38</cbc:TaxAmount>
                       <cac:TaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:TaxCategory>
                      </cac:TaxSubtotal>
                     </cac:TaxTotal>
                     <cac:LegalMonetaryTotal>
                      <cbc:LineExtensionAmount currencyID="RON">34741984.11</cbc:LineExtensionAmount>
                      <cbc:TaxExclusiveAmount currencyID="RON">34741984.11</cbc:TaxExclusiveAmount>
                      <cbc:TaxInclusiveAmount currencyID="RON">41340576.71</cbc:TaxInclusiveAmount>
                      <cbc:PayableAmount currencyID="RON">41340576.71</cbc:PayableAmount>
                     </cac:LegalMonetaryTotal>
                     <cac:InvoiceLine>
                      <cbc:ID>1</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">46396.67</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">334641.38</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">801.98</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-19272.48</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">354715.84</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0102</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:CommodityClassification>
                        <cbc:ItemClassificationCode listID="STI">03222000-3</cbc:ItemClassificationCode>
                       </cac:CommodityClassification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">7.6453</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>2</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">622078.28</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">4289031.25</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">10454.98</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-116445.65</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">4415931.88</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0104</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:CommodityClassification>
                        <cbc:ItemClassificationCode listID="TSP">08055010</cbc:ItemClassificationCode>
                       </cac:CommodityClassification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">7.0987</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>3</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">94104.55</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">662151.44</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">3589.66</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-19458.05</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">685199.15</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0106</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">7.2813</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>4</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">3764335.51</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">25444505.23</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">63265.49</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-650523.32</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">26158294.04</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0107</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">6.9490</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>5</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">51772.34</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">379456.48</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">2980.02</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-654.54</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">383091.04</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0108</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">7.3995</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>6</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">20807.57</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">137685.72</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">757.66</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-4664.27</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">143107.65</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0201</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">6.8777</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>7</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">217932.24</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">1371322.68</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">3662.64</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-41460.64</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">1416445.96</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0203</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">6.4995</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>8</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">137142.39</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">875772.03</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">2305.01</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-26705.29</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">904782.33</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0204</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">6.5974</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>9</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">40993.25</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">282140.46</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">1568.00</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-8434.52</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">292142.98</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0205</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">7.1266</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>10</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">32676.41</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">105566.28</cbc:LineExtensionAmount>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>95</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Discount</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">548.95</cbc:Amount>
                      </cac:AllowanceCharge>
                      <cac:AllowanceCharge>
                       <cbc:ChargeIndicator>true</cbc:ChargeIndicator>
                       <cbc:AllowanceChargeReasonCode>ZZZ</cbc:AllowanceChargeReasonCode>
                       <cbc:AllowanceChargeReason>Mutually defined</cbc:AllowanceChargeReason>
                       <cbc:Amount currencyID="RON">-6057.84</cbc:Amount>
                       <cbc:BaseAmount currencyID="RON">112173.07</cbc:BaseAmount>
                      </cac:AllowanceCharge>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0330</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                      <cbc:PriceAmount currencyID="RON">3.4328</cbc:PriceAmount>
                      <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>11</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">2730.01</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">318422.49</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>Vignieta</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0452</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">116.6378</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>12</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">958.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">115615.43</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0454</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">120.6842</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>13</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">125.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">3009.43</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0501</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">24.0754</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>14</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">35.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">13.50</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>Taxa Ulei</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0520</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">0.3857</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>15</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">8875.75</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">52726.75</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0540</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">5.9405</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>16</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">538.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">64490.35</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0541</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">119.8705</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>17</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">17.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">281.13</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0550</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                    <cbc:PriceAmount currencyID="RON">16.5371</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>18</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">639.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">13339.83</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0552</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">20.8761</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>19</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">1084.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">11739.14</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0632</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                      </cac:TaxScheme>
                     </cac:ClassifiedTaxCategory>
                    </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">10.8295</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                    </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>20</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">5.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">20.96</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0640</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">4.1920</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>21</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">9.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">570.37</cbc:LineExtensionAmount>
                    <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0702</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                      </cac:TaxScheme>
                     </cac:ClassifiedTaxCategory>
                    </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">63.3744</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>22</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">198.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">2662.44</cbc:LineExtensionAmount>
                    <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0710</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                      </cac:TaxScheme>
                     </cac:ClassifiedTaxCategory>
                    </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">13.4467</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>23</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">36.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">876.06</cbc:LineExtensionAmount>
                    <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0724</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                      </cac:TaxScheme>
                     </cac:ClassifiedTaxCategory>
                    </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">24.3350</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>24</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">382.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">6304.10</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0810</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                    </cac:TaxScheme>
                    </cac:ClassifiedTaxCategory>
                      </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">16.5029</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>25</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">18.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">254.65</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0812</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>9.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">14.1472</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                     <cbc:ID>26</cbc:ID>
                     <cbc:InvoicedQuantity unitCode="C62">1.00</cbc:InvoicedQuantity>
                     <cbc:LineExtensionAmount currencyID="RON">14.61</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>Mancare</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0820</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                      </cac:TaxScheme>
                     </cac:ClassifiedTaxCategory>
                    </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">14.6100</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>27</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">2228.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">15754.58</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0824</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>9.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                    <cac:Price>
                    <cbc:PriceAmount currencyID="RON">7.0712</cbc:PriceAmount>
                    <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>28</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">40.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">606.29</cbc:LineExtensionAmount>
                    <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0830</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>19.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                     <cac:Price>
                      <cbc:PriceAmount currencyID="RON">15.1573</cbc:PriceAmount>
                      <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>29</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">1242.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">6866.22</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0832</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>9.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                     <cac:Price>
                      <cbc:PriceAmount currencyID="RON">5.5284</cbc:PriceAmount>
                      <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                     </cac:Price>
                    </cac:InvoiceLine>
                    <cac:InvoiceLine>
                    <cbc:ID>30</cbc:ID>
                    <cbc:InvoicedQuantity unitCode="C62">64.00</cbc:InvoicedQuantity>
                    <cbc:LineExtensionAmount currencyID="RON">448.73</cbc:LineExtensionAmount>
                      <cac:Item>
                    <cbc:Name>item name</cbc:Name>
                    <cac:SellersItemIdentification>
                    <cbc:ID>0851</cbc:ID>
                    </cac:SellersItemIdentification>
                    <cac:ClassifiedTaxCategory>
                    <cbc:ID>S</cbc:ID>
                    <cbc:Percent>5.00</cbc:Percent>
                    <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">7.0114</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>31</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">1359.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">25135.83</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0854</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">18.4958</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>32</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">6.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">247.39</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>0856</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>5.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">41.2317</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>33</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">2315.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">10417.50</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>9000</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">4.5000</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                     <cac:InvoiceLine>
                      <cbc:ID>34</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">1.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">1.12</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                        <cbc:ID>9008</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                        <cbc:ID>S</cbc:ID>
                        <cbc:Percent>19.00</cbc:Percent>
                        <cac:TaxScheme>
                         <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                        <cbc:PriceAmount currencyID="RON">1.1200</cbc:PriceAmount>
                        <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                       </cac:Price>
                      </cac:InvoiceLine>
                      <cac:InvoiceLine>
                      <cbc:ID>35</cbc:ID>
                      <cbc:InvoicedQuantity unitCode="C62">15629.00</cbc:InvoicedQuantity>
                      <cbc:LineExtensionAmount currencyID="RON">209892.26</cbc:LineExtensionAmount>
                      <cac:Item>
                       <cbc:Name>item name</cbc:Name>
                       <cac:SellersItemIdentification>
                         <cbc:ID>9012</cbc:ID>
                       </cac:SellersItemIdentification>
                       <cac:ClassifiedTaxCategory>
                         <cbc:ID>S</cbc:ID>
                         <cbc:Percent>19.00</cbc:Percent>
                         <cac:TaxScheme>
                          <cbc:ID>VAT</cbc:ID>
                         </cac:TaxScheme>
                       </cac:ClassifiedTaxCategory>
                      </cac:Item>
                      <cac:Price>
                       <cbc:PriceAmount currencyID="RON">13.4297</cbc:PriceAmount>
                       <cbc:BaseQuantity unitCode="C62">1</cbc:BaseQuantity>
                      </cac:Price>
                     </cac:InvoiceLine>
                    </Invoice>
                    XML;
             ?>

 - apoi includeti fisierul de mai sus ***eFacturaMeaContent.inlude.php*** in fisierul dumnevoastra principal al aplicatiei/site-ului dvs. sa zicem **index.php** care va avea urmatorul format:

               <?php
                       include 'eFacturaMeaContent.inlude.php';
                       $eFactura_xml_content = new SimpleXMLElement($xmlstr);
                       header('Content-Type: text/xml');
                       echo $eFactura_xml_content->asXML();                  
               <?

   In acelasi mod daca doriti puteti lucra si cu sabloane/template-uri

   Aici practic ***nu*** am generat factura, in sensul ca nu am combinat arborescent / impletit [datele](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/simpleInvoice/Invoice.json) (fisierul Invoice.json nefiind folosit) cu sintaxa UBL pt a se genera eFactura ci pur si simplu am importat-o dintr-un fisier realizat in prealabil, manual(eFacturaMeaContent.inlude.php) (sau de ce nu chiar automat de un alt cod PhP) ca mai apoi sa expunem rezultatul.
   Cu toate acestea [**SimpleXML**](https://www.regur.net/blog/creation-xml-file-php-/) permite generarea propriu-zisa si desigur se poate usor modifica programul PhP pentru a include si [generarea propriu-zisa](https://github.com/adempiere/adempiere/issues/2658);
   De asemenea daca doriti sa aveti propriu validator desigur folosind acelasi  puteti face si asta;

   Interesant este si faptul ca puteti ***atasa/plasa*** certificatul [**x509**](https://www.ancom.ro/uploads/forms_files/105656908_decizie_888_2008.pdf) in antetul [eFacturii/eInvoice](https://github.com/pondersource/invoice-ubl) XML cu sintaxa [UBL](https://docplayer.net/229352011-1-2-factura-vanzator-hamor-soft-srl-demonstratie-4-cumparator-international-sa-5-invoice.html) ca in acest [caz](https://stackoverflow.com/questions/8173816/decode-xml-with-simplexmlelement) dezbatut pe forumul ***stackoverflow***; Un astfel de document eFactura UBL [**semnat**](https://hamorsoft1.odoo.com/web/content/8756?unique=00c348150f44d16905a0698e40dffbcf9cedf762&download=true) il gasiti pe site-ul [***Odoo***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/220102_semnat.pdf) (chiar daca semnatura x.509 se afla / este atasat la finalul documentului); Trebuie mentionat faptul ca [certificatul digital calificat](https://www.certsign.ro/ro/suport/utilizarea-certificatului-de-semnatura-electronica-in-platforma-spatiul-privat-virtual-spv/)(spre exemplu: **X.509**) trebuie ***incarcat*** in [**SPV/ANAF**](https://iapp.ro/articol/incarca-factura-xml-in-spv-api-anaf-php-oauth2) inainte de a [***transmite***](https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2) factura; Pe site-ul [**IApp**](https://iapp.ro/articol/e-factura-intrebari-frecvente) veti gasi multe [raspunsuri](https://facturis.ro/blog/e-factura/pasii-necesari-pentru-sistemul-ro-e-factura-si-cum-autorizati-programul-facturis-pentru-a-trimite-facturile-in-sistem/) la [intrebarile](https://www.digisign.ro/uploads/Instructiuni-inregistrare-ANAF.pdf) dumneavoastra legate de [e-Factura](https://ro-efactura.ro/care-sunt-pasii-necesari-pentru-a-incarca-facturile-in-sistemul-ro-e-factura/); 

***[Nota](https://static.anaf.ro/static/10/Anaf/Declaratii_R/instructiuni/instructiuni2.6.htm)*** :

   In general, prin termenul **certificat digital calificat** puteti sa intelegeti un **certificat digital acceptat/agreat** de catre ANAF si partenerii sai publici/institutionali si privati(ONG,Firme/Companii...) cu care a incheaiat in prealabil intelegeri/protocoale/contracte de colaborare pe tema emiterii de certificate digitale ca documente electronice recunoscute oficial de catre autoritatile statului roman si nu numai.
   
   Acest **[certificat digital calificat](https://www.google.com/search?q=ANAF+certificat+digital+calificat&rlz=1C1JJTC_enRO1087RO1087&oq=ANAF+certificat+digital+calificat&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIICAEQABgWGB7SAQoxNTEyMGowajE1qAIIsAIB&sourceid=chrome&ie=UTF-8#ip=1)** arata ca detinatorul poate [***semna digital***](https://transsped.ro/certificate?gad_source=1&gclid=CjwKCAjw_LOwBhBFEiwAmSEQAS1ZTy_LDOfprluFv4d-pQ93zpNAohMf6RqK9QSI4lMFs1HMneZYyRoCPHwQAvD_BwE) [de] la ***distanta(fara a fi necesara prezenta fizica la un ghiseu)*** anumite documente oficiale.


   
   Despre [formularul](https://static.anaf.ro/static/10/Anaf/Declaratii_R/instructiuni/Instructiuni_PF.htm) [**F150**](https://static.anaf.ro/static/10/Anaf/formulare/toate_formularele.htm) - [Cerere pentru utilizarea unui certificat digital](https://www.cabinetexpert.ro/2022-03-09/formularul-150-cerere-pentru-utilizarea-unui-certificat-digital-calificat-material-informativ-oficial-2022.html)- puteti [consulta](https://www.fiscalitatea.ro/declaratia-150-1662/) site-ul [ANAF](https://www.anaf.ro/inregcalificat/) - [inregistrare](https://static.anaf.ro/static/10/Iasi/material_informativ-10-01-2022.pdf) / [depunere](https://static.anaf.ro/static/10/Anaf/Declaratii_R/instructiuni/etape_depunere.htm) [Certificat digital calificat](https://static.anaf.ro/static/10/Anaf/formulare/cerere_150_2008.pdf);
   
   Aceste fisiere utilizate in acest exemplu [**eFactura/eInvoice**](https://github.com/josemmo/einvoicing?tab=readme-ov-file) scris in **PhP**, armonizat cu [**CIUS-RO**](https://mfinante.gov.ro/web/efactura/informatii-tehnice) si bazat pe [**SimpleXML**](https://github.com/josemmo/einvoicing/blob/master/src/Presets/CiusRo.php) pot fi  gasite in / descarcate din sub-directorul [**simpleInvoice**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/simpleInvoice), gazduit de directorul curent din acest depozit.

Chiar daca riscul de a gresi atunci cand [generati](https://mfinante.gov.ro/despre-minister/-/asset_publisher/uwgr/content/ro-e-factura-restarteaz-c4-83-sistemul-fiscal) e Factura este unul mai mic totusi este recomandat ca inainte de a [trimite](https://hotfox.ro/forum/viewtopic.php?t=7&start=80) eFactura la [ANAF](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) sa va asigurati ca UBL/XML-ul eFacturii este [valid](https://www.anaf.ro/uploadxmi/).

Daca aveti nevoie de informatii privind [**Sedii DGRFP**](https://www.anaf.ro/anaf/internet/ANAF/contact/adrese_unitati_fiscale), adica adresele unitatilor fiscale, puteti cauta pe site-ul ***ANAF***

[Linia](https://www.bitsoftware.eu/sbs-efactura/) [automata](https://iforce.ro/2023/09/08/neomanager-si-b-org-pregatite-pentru-efactura/) de [procesare](https://www.ausc.ro/ro-e-factura/)(atat pt partea de predare cat si pt partea de primire) [e-Factura](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ghid_RO_eFactura.pdf), prevede in [ordine](https://ajutor.smartbill.ro/article/970-e-factura-descarcarea-si-trimiterea-manuala-in-s-p-v) urmatorii [pasi](https://mfinante.gov.ro/documents/4398723/5002737/E-facturaFAQ.pdf/62a8d46b-82f5-9954-22aa-29b7ad32fe14?t=1637238487343) [procedurali](https://static.anaf.ro/static/10/Galati/Vrancea/Procedura-e-factura.pdf):

 - [prelevare date](https://mfinante.gov.ro/web/efactura/informatii-tehnice) intrare [eFactura](https://www.portalpfa.ro/articole/legislatie-1/ghid-e-factura-tot-ce-trebuie-sa-stiti-pentru-a-emite-si-prelua-facturi-electronice-de-la-1-ianuarie-2024-2646.html) din [baza noastra/proprie de date](https://mfinante.gov.ro/static/10/Mfp/ghidE-FACTURA.pdf)
 - [generare/emitere](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml) [eFactura](https://mfinante.gov.ro/web/efactura/aplicatii-web-ro-efactura)
 - [validare](https://mfinante.gov.ro/web/efactura/validare-xml-factura) [eFactura](https://mfinante.gov.ro/despre-minister/-/asset_publisher/uwgr/content/facturarea-electronic-c4-83-obligatorie-de-la-1-ianuarie-2024-pentru-toate-tranzac-c8-9biile-c3-aentre-firme)
 - eventual [transformam](https://www.anaf.ro/uploadxml/) xml-eFactura in fisier [**PDF**](https://www.quora.com/How-can-I-generate-an-invoice-PDF-using-JavaScript) pentru a fi usor printata si vizualizata
(https://mfinante.gov.ro/static/10/eFactura/prezentare%20api%20efactura.pdf)
 - [obținerea unui certificat calificat](https://www.certsign.ro/ro/semnatura-electronica-calificata-pentru-e-factura/) [pentru](https://www.certsign.ro/ghiduri/2020_certSIGN_Ghid_Semnatura_Electronica_Versiunea_1.pdf) [semnătura electronică](https://www.digisign.ro/uploads/Instructiuni-inregistrare-ANAF.pdf), în vederea [înrolării](https://www.forfuture.ro/semnatura-electronica/?gad_source=1&gclid=CjwKCAiAibeuBhAAEiwAiXBoJJNQ9LNc1fmi0Wc7h3LH4Shpy-6p99o7EX_YFVY8O8Cm1e8xwJJUqBoC2hoQAvD_BwE) în SPV/ANAF.
 - Înrolarea/accesarea SPV cu ajutorul [certificatului calificat](https://github.com/pysDesarrollo/efactura) pentru [semnătura electronică](https://nextup.ro/articole/e-factura-pas-cu-pas-cum-se-emit-facturile-si-in-cat-timp-trebuie-raportate-la-anaf/).
   - inregistrare utilizator in SPV-ANAF / [Registrul Operatorilor](https://static.anaf.ro/static/10/Galati/Vrancea/Preciz-Registrul-RO-e-Factura-si-form-084.pdf)
   - completare declaratie "[Cerere privind înregistrarea în Registrul RO e-Factura](https://static.anaf.ro/static/10/Galati/Vrancea/Preciz-Registrul-RO-e-Factura-si-form-084.pdf)" folosind [formularul](https://www.anaf.ro/anaf/internet/ANAF/asistenta_contribuabili/declararea_obligatiilor_fiscale/toate_formularele/#084n) [declaratiei](https://www.tdec.ro/) [D084](https://infotva.manager.ro/articole/studii-de-caz/ro-e-factura-pentru-inregistrare-in-sistem-trebuie-transmis-formularul-084-pana-pe-31-decembrie-2023-23134.html)(utilizand [formularul](https://infotva.manager.ro/articole/studii-de-caz/ro-e-factura-pentru-inregistrare-in-sistem-trebuie-transmis-formularul-084-pana-pe-31-decembrie-2023-23134.html) [F084](https://infotva.manager.ro/articole/studii-de-caz/ro-e-factura-pentru-inregistrare-in-sistem-trebuie-transmis-formularul-084-pana-pe-31-decembrie-2023-23134.html))
 - [semnare/autentificare](https://static.anaf.ro/static/10/Galati/Vrancea/Procedura-e-factura.pdf) [digitala](https://www.certsign.ro/ro/semnatura-electronica-calificata-pentru-e-factura/) document [eFactura](https://www.transsped.ro/files/ghiduri/ro/token/TS_Ghid%20pentru%20utilizarea%20certificatului%20calificat%20la%20depunerea%20declaratiilor%20fiscale%20la%20ANAF.pdf) - in calitate de [autor](https://github.com/NimzyMaina/php-openssl-signature-example) / [emitent](https://iapp.ro/articol/generare-token-anaf-folosind-certificat-digital-din-php-oauth2) / [furnizor](https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2);

   [**OBS:**](https://certdigital.ro/blog-semnatura-electronica/certificatul-digital-si-inregistrarea-firmei-in-spv/) semnatura digitala [tine loc](https://www.hostx.ro/clienti/index.php?rp=/knowledgebase/308/Cand-or-cum-primesc-factura-pentru-Contabilitate-.html) de [semnatura holografa](https://www.namirial.ro/semnatura-electronica/)(!dupa cum deja stiti, utilizata pe [documentele tiparite](https://www.esemneaza.ro/?utm_source=google&utm_medium=cpc&utm_campaign=inf_search&gclid=CjwKCAiAibeuBhAAEiwAiXBoJHgitHcWyVlTgf0rB1MFXhpt_IFm-pmr6VFjDsslhJ9QoUoHhylEvxoC5OAQAvD_BwE)!);

   [***Certificatul digital*** / **semnatura digitala**](https://github.com/cossou/FirmarFacturaE)(stocata fizic intr-un ***dispozitiv fizic original*** adica ***dongle/stick/token fizic*** sau in **cloud**) este necesar[a] in general la depunerea oricarui raport fiscal, cum este cazul [tuturor](https://www.tdec.ro/ghid) [declaratiilor fiscale](https://static.anaf.ro/static/10/Anaf/Declaratii_R/instructiuni/instructiuni2.6.htm)(ex. [formularul/declaratia](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/toate_formularele_30032017.htm) [D406/SAF-T](https://www.ceccarbusinessmagazine.ro/public/store/imagini/filemanager/source/pdf/SAFT_intrebari_frecv_raspunsuri_v1_1_071021.pdf))

   [***Certificatul digital*** / **semnatura digitala**](https://static.anaf.ro/static/10/Anaf/Informatii_R/API/Oauth_procedura_inregistrare_aplicatii_portal_ANAF.pdf) este utilizat pentru [***obtinerea***](https://centerit.ro/blog/ghid-practic-implementare-tehnica-ro-e-factura) unui [**cod de autorizare**](https://www.reddit.com/r/programare/comments/18xlx2c/efactura_si_semnatura_digitala/) si in cele din urma a unui [**token digital(nu fizic) JWT OAuth2.0 temporar**](https://hamorsoft1.odoo.com/web/content/8878?unique=5650acce659cd898b113177c3c6641e9c58590d2&download=true) si/sau pentru [***reinoirea***](https://github.com/adhocore/php-jwt) acestuia; Acest [token digital JWT temporar](https://www.youtube.com/watch?v=iWGyQvZk8yM) se ataseaza(plaseaza in antetul) documentului si poate fi folosit apoi fara a mai fi nevoie de [***token-ul original***](http://hotfox.ro/forum/viewtopic.php?t=7&start=80)(stocat in [***dongle/stick/token fizic***](https://www.google.com/url?sa=i&url=https%3A%2F%2Fstatic.anaf.ro%2Fstatic%2F10%2FAnaf%2FInformatii_R%2FAPI%2FOauth_procedura_inregistrare_aplicatii_portal_ANAF.pdf&psig=AOvVaw08PO_KYgqpp5whuAewG7HG&ust=1708112447061000&source=images&cd=vfe&opi=89978449&ved=2ahUKEwiktbXujK6EAxVpgv0HHR_XA-MQr4kDegQIARBI) sau in [**cloud**](https://devforum.ro/t/e-factura-cu-semnatura-electronica-linux-fara-dongle-fizic/19392))
   
   [***Certificatul digital*** / **semnatura digitala**](https://www.youtube.com/watch?v=iWGyQvZk8yM) a fost folosita [***timpuriu***](https://github.com/andalisolutions/anaf-php) si este folosita si in [***prezent***](https://hotfox.ro/forum/viewtopic.php?t=7&start=210) ca si [**certificat calificat**](https://learn.microsoft.com/ro-ro/power-pages/security/oauth-implicit-grant-flow) si in cazul sau mai ales in cazul [**meseriilor liberale**](https://zoso.ro/digitalizare-casa-nationala-sanatate/)(contabil,avocat,notar,doctor,...)
   
 - [transmiterea](https://mfinante.gov.ro/test-galerie-video-cu-asset-publisher/-/asset_publisher/cWuA9hLHu9eW/content/speciftehefactura) [automata](https://github.com/Rebootcodesoft/efactura_anaf) / [upload](https://mfinante.gov.ro/static/10/Mfp/efactura/upload_2009.html)(din aplicatie, in acest caz PhP) autorizata [oAuth2.0](https://hotfox.ro/forum/viewtopic.php?t=7&start=120)(de catre ANAF/MFP si o autoritate de certificare in scop de semnatura calificata) a pachetului eFactura in SPV-ul ANAF-ului
    - [Transmiterea](https://www.solo.ro/e-Factura?utm_term=e%20factura%20pfa&utm_campaign=%5BIK%5D+1+COLD+%7C+Search+%7C+E+Factura+%7C+Maximize+conversions&utm_source=adwords&utm_medium=ppc&hsa_acc=9919633680&hsa_cam=21009186910&hsa_grp=159544935580&hsa_ad=690236142120&hsa_src=g&hsa_tgt=kwd-2276518916579&hsa_kw=e%20factura%20pfa&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gad_source=1&gclid=CjwKCAiA8sauBhB3EiwAruTRJu9krCvb1-Mdg3SbMfY9wawC95wjmsBVU49-bKaB0C9iahEchC7PShoCCbUQAvD_BwE) manuala(nu dintr-o aplicatie)/online [eFacturilor](https://www.digi24.ro/digieconomic/companii/cum-faci-sa-ai-e-factura-spv-si-semnatura-digitala-video-4991) în format [XML](https://www.youtube.com/watch?v=BkD_m5oncR8) se face prin [logarea](https://static.anaf.ro/static/10/Galati/Vrancea/Precizari-privind-fact-electronica.pdf) în Spaţiul Privat Virtual (SPV), în sistemul RO e-Factura urmând efectiv urmatorii [paşi](https://facturis-online.ro/e-factura/pasii-necesari-pentru-a-transmite-facturile-emise-in-sistemul-ro-e-factura.html):
    - Se intră pe site-ul [ANAF](https://anaf.ro).
    - Se apasă pe [opţiunea-meniu](https://devforum.ro/t/e-factura-cu-semnatura-electronica-linux-fara-dongle-fizic/19392)  de [Autentificare Certificat.](https://portal.winmentor.ro/forum/showthread.php?3109-Generare-Token-pe-un-calculator-aflat-la-distanta-pentru-e-factura)
    - Se selectează şi se introduce [parola](https://www.suport.nexuserp.ro/index.php?id=339&tip=cafenea) de la [semnatura electronică](https://www.onrc.ro/index.php/ro/documente-cu-semnatura-electronica-in-primul-an-de-infocert) ([certificat digital](https://www.certsign.ro/ro/semnatura-electronica-calificata-pentru-e-factura/?gad_source=1&gclid=CjwKCAiArLyuBhA7EiwA-qo80CykNRoJZH1QkTCTQsInsazYPTqCXppreGeboZdNmT1wwMbPzM-eWBoC3PsQAvD_BwE))
 - verificare [status](https://mfinante.gov.ro/static/10/Mfp/efactura/staremesaj.html) [eFactura](https://mfinante.gov.ro/despre-minister/-/asset_publisher/wald/content/proiectul-e-factura-intr-c4-83-c3-aen-linie-dreapt-c4-83) in bucla(pana cand vedem ca eFactura a fost procesata)
 - daca [eFactura](https://ro-efactura.ro/pasii-necesari-pentru-a-incarca-facturi-in-sistemul-ro-e-factura/) transmisa este [refuzata](https://hotfox.ro/forum/viewtopic.php?t=74) se inlatura deficienta / [eroarea](https://hotfox.ro/forum/viewtopic.php?t=149&start=150) si se reia procesul din punctul/pasul anterior adecvat
 - in caz contrar, daca [eFactura](https://ajutor.smartbill.ro/article/970-e-factura-descarcarea-si-trimiterea-manuala-in-s-p-v) a fost [acceptata](https://ro-efactura.ro/pasii-necesari-pentru-a-incarca-facturi-in-sistemul-ro-e-factura/),  vom primi un cod de/ca urmare a validar[e/ii]
 - in orice moment putem [verifica statusul facturilor](https://ajutor.smartbill.ro/article/970-e-factura-descarcarea-si-trimiterea-manuala-in-s-p-v) incarcate/trimise catre procesare in spatiul SPV al ANAF
 - daca am primit [confirmarea](https://ro-efactura.ro/pasii-necesari-pentru-a-incarca-facturi-in-sistemul-ro-e-factura/) ANAF ca factura a fost procesata in SPV atunci rolul emitentului/furnizorului s-a incheiat si se declanseaza/starteaza/incepe rolul primitorului/clientului;
 - inregistram eFactura in sistemul nostru ERP de urmarire al documentelor - in calitate de companie-furnizor/emitent
 - eventual comprimam si apoi arhivam(pe termen indelungat) documentul/documentele aferente atasate eFacturii - in calitate de companie-furnizor/emitent
 - ...
 - in calitate de [companie-client](https://www.smarttax.ro/efactura?gad_source=5&gclid=EAIaIQobChMI9e2o57q1hAMV5RqiAx0SbgAeEAAYBSAAEgIHHPD_BwE), cand primim o alerta/informare ca a sosit o [eFactura](https://mfinante.gov.ro/despre-minister/-/asset_publisher/wald/content/oo) valida de la un furnizor
 - [descarcam](https://mfinante.gov.ro/static/10/Mfp/efactura/descarcare.html) [eFactura](https://mfinante.gov.ro/static/10/Mfp/efactura/listamesaj.html) primita de catre compania-client
 - [transformam](https://www.anaf.ro/uploadxml/) xml-eFactura in fisier [**PDF**](https://dashboard.pspdfkit.com/api/) pentru a fi usor printata si vizualizata
 - desigur, in cele din urma, daca nu cumva s-a efectuat deja, avem ca etape/pasi procedurali, [livrarea si plata](https://melissa.com.ro/index.php/livrare-si-plata/)
 - inregistram [eFactura](https://www.solo.ro/blog/ce-este-e-factura) in sistemul nostru [ERP](https://github.com/MihaiNeagu/ProiectPHP/tree/master) de urmarire al documentelor - in calitate de companie-destinatar/client
 - eventual comprimam si apoi arhivam(pe termen indelungat) documentul/documentele aferente atasate [eFacturii](https://www.fgo.ro/ajutor/manual-utilizare-fgo?cauta=e-factura/) - in calitate de companie-primitor/client
   
Asadar, [***nu uitati***](https://www.taxasist.ro/e-factura-obligatorie-pentru-toti-agentii-economici-incepand-199-a.php), dupa ce [**verificati**](https://hotfox.ro/forum/viewtopic.php?t=7&start=80) ***validitatea*** eFacturii, obtineti [**tokenul JWT temporar**](https://iapp.ro/articol/generare-token-anaf-folosind-certificat-digital-din-php-oauth2) folosind ***certificatul digital*** si  **transmiteti** eFactura si formularul aferent si apoi verificati [**starea/statusul**](https://ajutor.smartbill.ro/article/984-statusurile-si-validarea-e-facturii) eFacturii transmise/incarcate(upload-ate) in ***SPV***-ul [**ANAF**](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf)-ului; Astfel evitati sa retransmiteti eFactura UBL/XML inca odata crezand probabil ca factura nu a fost acceptata; Puteti vedea pe site-ul **iapp.ro** cum se [***extrage lista de facturi***](https://iapp.ro/articol/extrage-lista-de-facturi-de-la-furnizori-din-spv-php-oauth2) [transmise/incarcate](https://iapp.ro/articol/extrage-lista-de-facturi-de-la-furnizori-din-spv-php-oauth2) de catre  furnizori(nu [**autoFacturile**](https://hotfox.ro/forum/viewtopic.php?t=7)!!!); Pentru [***descarcarea eFacturilor primite***](https://iapp.ro/public/blog/anaf-spv-php-descarcare.txt) **iapp.ro** propune urmatorul [***cod php***](https://www.php.net/manual/en/book.curl.php); 
Daca doriti sa ***extrageti mesajele*** din SPV-ANAF legate de ***eFactura*** in mod [***paginat***](https://iapp.ro/public/blog/anaf-spv-php-listaMesajePaginatieFactura.txt) tot iapp.ro ofera acest cod php pt. [**mesaje paginate**](https://iapp.ro/articol/paginare-mesaje-din-spv-api-anaf-php-oauth2);
[**Descarcarea arhivei zip eFactura**](https://iapp.ro/articol/descarca-arhiva-zip-e-factura-folosind-api-anaf-php-oauth2) poate fi operata de acest [***cod-php***](https://iapp.ro/public/blog/anaf-spv-php-descarcare.txt) **iapp.ro**;
Desigur [toate](https://static.anaf.ro/static/10/Anaf/Informatii_R/API/Oauth_procedura_inregistrare_aplicatii_portal_ANAF.pdf) aceste [operatiuni](https://mfinante.gov.ro/static/10/eFactura/prezentare%20api%20efactura.pdf) bazate pe [**web-serviciile ANAF eFactura**](https://iapp.ro/blog) necesita un [**token JWT**](https://iapp.ro/articol/generare-token-anaf-folosind-certificat-digital-din-php-oauth2) pt accesul [autorizat/certificat](https://iapp.ro/articol/lista-furnizorilor-pentru-semnatura-digitala) [***OAuth 2.0***](https://stackoverflow.com/questions/74245342/post-request-via-curl-ssl-from-xampp-localhost-gets-rejected-with-error140944); Pentru mai multe detalii consultati articolele [***blog***](https://iapp.ro/blog)-ului [**iapp.ro**](https://iapp.ro/);


***Nota*** 

Am extras cateva scripturi php de pe blog-ul [***iapp.ro***](https://iapp.ro/blog) in subdirectorul [**iapp**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/iapp);

Am urmarit in special articolul : [**Exemplu de integrare - API ANAF - PHP OAuth2**](https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2);



Acest [***flux procedural complet si complex***](https://static.anaf.ro/static/10/Brasov/Brasov/serv_ANAF.pdf) are si unele [avantaje imediate](https://www.nexuserp.ro/blog/implementarea-e-factura-parteneriat-cu-tehnologia) care sunt dezvaluite in acest articol [TrasFond](https://www.facturielectronice.ro/index.php?p=pentru-emitentii-de-facturi)

Interesant este ca atunci cand [**primiti** / **emiteti**](https://processwire.com/talk/topic/28766-how-to-query-api-using-curl/) o ***eFactura*** ar fi foarte util sa utilizati **id**-uri(semnaturi de campuri bazate pe valoare) ca si ***atribute*** pentru etichetele/tag-urile **UBL** astfel incat sa reusim ca pe baza atributului sa extragem mai usor valoarea acelui camp/tag din ***eFacturile*** **UBL/XML**. Iata aici o discutie interesanta pe acest [***subiect***](https://es.stackoverflow.com/questions/464526/extraer-un-valor-de-una-etiqueta-por-medio-de-un-atributo-id-en-php-de-un-archiv) ([extragerea valorilor](https://stackoverflow.com/questions/21765994/php-simplexml-reading-with-ubl-different-namespaces) folosind un atribut **id** si apoi functia **simpleXMLElement**);

Daca vreti sa aflati mai multe/cateva raspunsuri la intrebarile dvs. despre [**semnatura electronica calificata**](https://www.certsign.ro/ro/semnatura-electronica-calificata-pentru-e-factura/?gad_source=1&gclid=Cj0KCQjwq86wBhDiARIsAJhuphmXidEPhqeWtHHykTJBuqwUQQViiWnzykqg_5eXQXUPtjO6fhl-vvMaAuACEALw_wcB) pentru ***eFactura*** puteti consulta acest [***top***](https://www.juridice.ro/717770/top-intrebari-si-raspunsuri-despre-semnatura-electronica-calificata-pentru-e-factura-in-2024.html), acest [***ghid***](https://centerit.ro/blog/ghid-practic-implementare-tehnica-ro-e-factura) sau acest [***articol***](https://facturis-online.ro/e-factura/cum-sa-emiteti-singur-facturi-electronice-in-sistemul-anaf-ro-e-factura.html)(oricum pe internet o sa gasiti o ***multime*** de articole legate de acest subiect al **semnaturii electronice/certificatului calificat** !!!);

**Semnatura electronică* este necsară pentru  **ANAF**, **CNAS**, **SICAP** & **ITM**.

Daca aveti [**PFA**](https://github.com/ClimenteA/PFASimplu) sau o **profesie liberala** atunci probabil ca acest [***articol***](https://contapp.ro/blog/e-factura/) legat de **eFactura** v-ar putea fi util;

Un [***articol***](https://certdigital.ro/wp-content/uploads/2024/02/Prezentare-CertDigital-RO-eFactura.pdf) interesant legat de **eFactura** si [***erorile***](https://www.sagasoftware.ro/e-factura-erori-si-probleme/) intampinate poate fi consultat [***aici***](https://newsweek.ro/economie/softul-e-factura-are-probleme-lista-cu-erorile-sistemului-obligatoriu-de-facturare-electronica)

In conditiile in care doriti sa stiti care sunt **codurle-NC** ale ***produselor*** considerate de catre ANAF ca avand risc ridicat atunci poate ar fi util sa consultati acest [***articol***](https://static.anaf.ro/static/10/Galati/Vrancea/E-Factura-prod-cu-risc-ridicat.pdf)

Un articol interesant despre ***autoFacturare*** precum si ***alte imbunatatiri aduse sistemului eFactura*** poate fi gasit pe portalul [**profit.ro**](https://www.profit.ro/taxe-si-consultanta/e-factura-finantele-au-introdus-autofacturarea-apare-butonul-catre-efactura-in-perioade-de-mentenanta-modificari-si-la-interogarea-listei-de-facturi-21475287)

Pe grup-ul [**ProFox**](https://www.facebook.com/groups/3239944772705473/) gazduit de ***Facebook*** puteti consulta multe discutii interesante.

**Google** are si el un producator/creator de facturi([Invoicer](https://chromewebstore.google.com/detail/produc%C4%83tor-de-facturi-pen/nhppolcapbkijdpakbapijalcgnfjbgb?hl=ro)); Am descoperit asta folosind motorul de cautare [ChromeWeb](https://chromewebstore.google.com/search/e-Factura?hl=ro) al [Google](https://chromewebstore.google.com/search/e-Factura?hl=ro);

O alta cautare interesanta de aceasta data in cautare de **cod/snippets** puteti folosi [**Grepper**](https://www.grepper.com/)

Un Client **PHP 8+** pentru ***API ANAF*** pentru ***interogare CIF*** si ***upload RO-eFactura***, puteti gasi in acest [**depozit-Github**](https://github.com/TecsiAron/ANAF-API-Client-PHP)

Un alt model de factura mai bogat in informatii, poate fi si cel expus de cei de la [**NexUS Media**](https://www.nexuserp.ro/imagini/factura-online/nexus-factura-online-model4.webp); In acest exemplar [***e-Factura***](https://www.nexuserp.ro/ro-e-factura-convertor-din-xml-in-pdf) puteti observa afisarea articolelor/bunurilor(produselor/servicii) insotite de principalele codificari(**NC8**,**CVP**) dar si cred/probabil, de o codificare **interna**;

Despre [***e-Transport***](https://www.msg-plaut.com/ro/e-transport?gad_source=1&gclid=Cj0KCQjwwYSwBhDcARIsAOyL0fgN655gDhLJgWapwk0bSyF8WhNJLzCWnvNqGsCj0c9qbdV0untOA3EaAocxEALw_wcB) puteti gasi cateva [informatii](https://mfinante.gov.ro/ro/web/etransport/informatii-tehnice?fbclid=IwAR0L-wL9TWmEFyxC7F9IG3Osy5iQHvbGaxKc-f4MOeOfnh9fF8vrP-ZUBrc) foarte [utile](https://mfinante.gov.ro/ro/web/etransport/informatii-tehnice?fbclid=IwAR0L-wL9TWmEFyxC7F9IG3Osy5iQHvbGaxKc-f4MOeOfnh9fF8vrP-ZUBrc) pe pagina celor de la [**msgPlaut**](https://www.msg-plaut.com/ro/e-transport?gad_source=1&gclid=Cj0KCQjwwYSwBhDcARIsAOyL0fgN655gDhLJgWapwk0bSyF8WhNJLzCWnvNqGsCj0c9qbdV0untOA3EaAocxEALw_wcB) sau pe site-ul celor de la [**xpertsoft**](https://www.xpertsoft.ro/produse/ro-e-transport/?gad_source=1&gclid=Cj0KCQjwwYSwBhDcARIsAOyL0fj8Pu8nUDNFZh0flSl_KHvbvphXdZ4NoM0qbH3Agc_pQSptPeWFk3oaAuo5EALw_wcB). 

Cei de la [**smarttax**](https://www.smarttax.ro/saft-declaratia-406?gad_source=1&gclid=Cj0KCQjwwYSwBhDcARIsAOyL0fhjfPfqMoR7HhE09q7Z8YBhudmAllUEg-2JFxOfYD2ULXBP1Y9Rv8waArbREALw_wcB) au informatii utile referitoare la [***SAF-T / D406***](https://www.smarttax.ro/saft-declaratia-406?gad_source=1&gclid=Cj0KCQjwwYSwBhDcARIsAOyL0fhjfPfqMoR7HhE09q7Z8YBhudmAllUEg-2JFxOfYD2ULXBP1Y9Rv8waArbREALw_wcB)


De asemenea, cateva informatii utile referitoare la **D-395** pot fi gasite tot pe site-ul  celor de la [***smarttax***](https://www.smarttax.ro/declaratia-395?gad_source=1&gclid=Cj0KCQjwwYSwBhDcARIsAOyL0fiV_bdo6LaZrEROcF-Nu-UldmpI558P5OelauqBqGaB_imhNd7xcfcaAu4CEALw_wcB) 

Nu uitati informatii oficiale despre serviciile web **ANAF** gasiti in articolul intitulat [***Prezentare servicii web pentru Sistemul national privind factura electronica RO e-Factura***](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf);

Daca nu aveti mai mult de 5 facturi pe luna si doriti sa accesati un serviciu gratuit direct din api-ul dvs. PhP atunci puteti incerca [factureaza.ro](https://factureaza.ro/documentatie-api-v1);
Chiar daca nu veti folosi acest serviciu, apelurile **REST cURL** si desigur raspunsurile acestora pot constitui un model util de abordare a subiectului ***eFactura***;

Pe site-ul celor de la [lorand](https://lorand.work/category/php/) am gasit o colectie de [functii](https://lorand.work/descarcare-factura-de-la-furnizor-din-spv-anaf-folosind-autentificarea-oauth-in-php/) legate de **[autorizare jwt**](https://lorand.work/autentificare-oauth-si-obtinere-token-jwt-de-la-anaf-folosind-php/) si eFactura(dar nu [numai](https://lorand.work/category/pontaj-electronic/)!).

In cazul in care doriti sa va creati propriul serviciu online este util sa vedeti si [**API**](https://www.oblio.eu/efactura)-ul celor de la [oblio](https://www.oblio.eu/api).

Pentru transformarea **xml2pdf** am gasit acest [***cod-PhP***](https://happyweb.ro/articol/eroare-la-transformare-e-factura-din-xml-in-pdf)

Pentru partea de **semnatura digitala** a unui **xml** puteti consulta si acest [repo-github](https://github.com/marcelxyz/php-XmlDigitalSignature/tree/master).

<hr/>

Daca doriti sa integrati **Ollama**(server local de LLM-uri) in proiectele dvs. bazate pe **PhP** atunci poate ar  fi util sa aruncati o privire si pe acest [post](https://github.com/ArdaGnsrn/ollama-php) [reddit](https://www.reddit.com/r/ollama/comments/1ethc69/introducing_the_php_package_for_ollama/?%24deep_link=true&correlation_id=0898d300-3b36-41e0-88b6-540ad2f53c67&post_fullname=t3_1ethc69&post_index=0&ref=email_digest&ref_campaign=email_digest&ref_source=email&utm_content=post_title&%243p=e_as&_branch_match_id=1331879163080256214&utm_medium=Email%20Amazon%20SES&_branch_referrer=H4sIAAAAAAAAA22QXWrDQAyET%2BO%2BOXG8jusEQimUXkMou7Itsn%2BsZdLjV27aPBUkGL5hJKFZJC%2Fn%2Fb6Qcyw7zHnnOd72Jr9VbWfyhQCXF5Wp8MQRPazFX%2BYtVZn3qv3Uut%2Fvu9%2B8TUFB0U7eY0AVigJFWVQeSGbbn1RxlJLcajlOIDNBnjNktDecCMZU4JmujG44tp0jyrBdVpkPKStVbW9TKeRROEVgp7wZToMzTVObq%2Bnr7kBNPQzXvj52Dbp2PBrbv2oup0VgXL2PGGgbZ%2BB52MPk6OhrG6ig0KiKArIHxxMt8oBgMWTkKf7vLmktlv48hasEsCmKvkLpzxph8fQN%2BJHUVoEBAAA%3D) intitulat "Introducing the PHP Package for Ollama!"

Posibil sa doriti sa implementati un **Php-RAG** si atunci acest [post](https://github.com/rzarno/php-rag) github ar putea fi un bun punct de plecare.

<hr/>

Pt cei care au nevoie sau sunt interesati de [**XBRL**](https://www.xbrl.org/) poate fi necesar sa vedeti [relatia](https://wp.itl.ee/wp-content/uploads/2021/02/ANNEX-II-The-mapping-between-EN-UBL-2.1-e-invoice-and-XBRL-GL-accounting-entry-data-standard.pdf) acestui [limbaj](https://conferinta.academiacomerciala.ro/CD2014/articole/1/UTILITATEA%20FOLOSIRII%20LIMBAJULUI%20XBRL.pdf) de codificare folosit in activitatea contabila/[accounting & financial-reporting](https://www.iasplus.com/en/projects/research/short-term/xbrl)(a se revedea standardul [IASC](https://www.iasplus.com/en/resources/ifrsf/history/resource50)/[IASB](https://www.xbrl.org/tag/iasb/),[IFRS](https://www.xbrl.org/tag/ifrs/)...) cu/versus limbajul de codificare a continutului unei e-Facturi([**UBL**](https://schemas.liquid-technologies.com/oasis/ubl/2.0/)). Ambele limbaje beneficiaza de suportul [**XML**](http://faculty.bus.olemiss.edu/breithel/b620s02/humphrey/xml.htm)-ului.

In acest articol puteti vedea un [exemplu de utilizare XBRL](chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/http://revista.cafr.ro/temp/Articol_9724.pdf) iar daca vreti sa aflati lucruri despre [ESMA/ESEF si EFRAG](https://www.xbrl.ro/solutia-xbrl-center/) puteti apela cazul de bune practici privind de utilizarea/solutionarea propusa de [***XBRL center***](https://www.xbrl.ro/solutia-xbrl-center/); Foarte interesant ar putea fi sa baleiati putin serviciile oferite de [***XBRL center***](https://www.xbrl.ro/servicii/)

O serie intreaga de [termeni](https://asfromania.ro/uploads/articole/attachments/6694c7418ae35354132248.pdf) pot fi clarificati(cel putin la nivel de definitie) citind acest [articol](https://www.prophix.com/blog/xbrl/)

Un exemplu de raportare conform standardului IFRS il putem consulta pe exemplul de caz [**Electrica**](https://bvb.ro/infocont/infocont24/EL_20240325190038_ELSA-RO-Sumar-rezultate-YE2023-IFRS-25Mar2024-BVB-cu-anexe-S.pdf)(companie listata pe [BVB](https://m.bvb.ro/info/Rapoarte/Anuale/BVB_Raport-anual-2022.pdf)); Datorită limitarilor tehnice ale software-ului utilizat pentru prezentarea situatiilor financiare consolidate in format electronic unic european („[ESEF](https://www.forvismazars.com/ro/ro/servicii/sustenabilitate-corporativa/standardele-europene-de-raportare-sustenabila)”), tabelele incluse in notele la situatiile financniare consolidate sunt afisate intr-o maniera liniara, logica si usor de inteles. Un alt exemplu ar putea fi raportarea IFRS-EU a altei companii listatata la [BVB](https://bvb.ro/FinancialInstruments/SelectedData/NewsItem/BNET-Situatii-financiare-2021-format-european-electronic-unic-ESEF-/89641) si anume [NuclearElectrica](https://www.nuclearelectrica.ro/ir/wp-content/uploads/sites/9/2023/04/Raport-anual-2022-RO-merged.pdf); Incepand cu exercitiul financiar incheiat la 31 decembrie 2020, SNN intocmeste si prezinta
rapoartele anuale intr-un format de raportare electronic unic (ESEF – European Single
Electronic Format) conform Regulamentului delegate (UE) nr. 815/2018. Astfel raportarile
anuale sunt diponibile si in format XHTML, iar situatiile financiare consolidate incluse in
Raportul Anual sunt marcate utilizand limbajul de marcare [XBRL](https://specifications.xbrl.org/presentation.html). Incepand cu exercitiul
financiar incheiat la 31 decembrie 2022, SNN eticheteaza si notele explicative la situatiile
financiare consolidate. Astfel, ESEF crește transparența și capacitatea de utilizare a informațiilor
financiare în luarea deciziilor de către investitori și analiști si de asemenea, implementarea ESEF
îmbunătăți transparența piețelor de capital;

Un depozit github va poate oferi un exemplu concret de utilizare/codificare [iXBRL](https://gitlab.xbrl.org/xii/ixbrl-samples)

Un [exemplu](http://xbrl.squarespace.com/journal/2008/12/18/hello-world-xbrl-example.html;jsessionid=41EE2DC71BF4839F592BD2BDCCC7E8C9.v5-web016) interesant este acest document contabil - Registru General(General Ledger=[GL](https://www.xbrl.org/glkeyfeatures/gl_webseminar_lutescohen_051215.pdf)) scris in [XBRL](https://www.xbrl.org/technical/guidance/hamscher-xbrl-adjacent-specs-2002-05.pdf);Un alt exemplu se refera la Balanta de Verificare(Trial Balance = [TB](https://xbrlsite.azurewebsites.net/2019/Core/core-trialbalance/))

<br/><br/>Ce trebuie sa [retineti](https://www.quora.com/How-does-XBRL-work)?

 - [XBRL](https://www.fujitsu.com/global/products/software/middleware/application-infrastructure/interstage/xbrltools/otherindex.html) este un format standardizat utilizat pentru comunicarea informațiilor financiare și de afaceri.
 - [XBRL](https://en.wikipedia.org/wiki/XBRL_GL) înseamnă **eXtensible Business Reporting Language**.
 - [XBRL](https://en.wikipedia.org/wiki/XBRL) funcționează ca un [limbaj](https://www.xbrl.org/guidance/xbrl-json-tutorial/) care poate fi citit de computere pentru a partaja și analiza cu ușurință datele financiare.
 - Acest lucru ajută la [reducerea erorilor](https://www.xbrl.org/xbrl-json-making-xbrl-easier/) și la [economisirea de timp](https://toppanmerrill.my.site.com/BridgeCommunity/s/article/Overview-of-XBRL-XBRL-Rendering) prin [automatizarea](https://revistaie.ase.ro/content/30/andone.pdf) procesului de colectare și analiză a datelor.
 - Acest instrument de [raportare financiar-contabila](https://www.researchgate.net/publication/228435768_XBRL-a_new_language_for_accounting_and_finance_professionals) folosit de multe organizații, inclusiv autorități de reglementare, instituții financiare([IFN](https://www.cafr.ro/wp-content/uploads/2024/09/Bmsedc-04092024.pdf)-uri) și companii publice.

   eXtended Bussiness Reporting Language([XBRL](https://www.researchgate.net/profile/Doina-Fotache/publication/289980375_Platforme_integrate_pentru_afaceri_ERP/links/5fd0d2f1299bf188d4049941/Platforme-integrate-pentru-afaceri-ERP.pdf)) este un standard internaţional pentru publicarea,
schimbul şi analiza financiară a datelor raportate. XBRL simplifică pregătirea şi publicarea
documentelor financiare. Ideea este de a colecta date o singură dată şi de a le converti în
mai multe formate, prin prelucrare automată. Standardul XBRL reprezintă pentru mediul
de afaceri mondial ceea ce a reprezentat protocolul TCP/IP pentru internet. XBRL este un
standard internaţional creat de XBRL International, un consorţiu cu mai mult de 400 de
membri din toată lumea, reprezentând companii publice şi private, agenţii guvernamentale
şi agenţii de reglementare. Adoptarea XBRL în România ar reduce semnificativ costurile cu
colectarea şi validarea informaţiilor din raportări, conversia, diseminarea, precum şik
schimbul acestora.

[XBRL](https://www.cdep.ro/bperm/2014/F1916605271-ASF_2013.pdf) [nu](https://www.yumpu.com/ro/document/read/15950759/raport-stiintific-etapa-1-biblioteca-centrala) este limitat la informatie/[continut financiar](https://revistaie.ase.ro/content/31/stoica-ie-31.pdf){a} dar este cunoscut mai ales ca fiind un standard internațional pentru publicarea, schimbul și analiza financiară a datelor raportate.

O [cautare google](https://www.google.com/search?q=github+php+xbrl&sca_esv=492959cb0fa9f70d&rlz=1C1CHBF_enRO1132RO1132&sxsrf=ADLYWILFSG4H0xhdD9I4m_PFT_gCPT0BdQ%3A1730200310404&ei=9sIgZ5CeGIuN9u8P67O6iQg&ved=0ahUKEwiQ8ZC3urOJAxWLhv0HHeuZLoEQ4dUDCA8&uact=5&oq=github+php+xbrl&gs_lp=Egxnd3Mtd2l6LXNlcnAiD2dpdGh1YiBwaHAgeGJybDIIECEYoAEYwwRI3BlQ7gpYzBdwAXgAkAEAmAGOAaABtweqAQMwLje4AQPIAQD4AQGYAgigAsIHwgIHEAAYsAMYHsICCxAAGIAEGLADGKIEwgIKECEYoAEYwwQYCsICCRAAGIAEGBMYDcICChAAGBMYCBgNGB7CAggQABiABBiiBJgDAIgGAZAGB5IHAzEuN6AH3A8&sclient=gws-wiz-serp) pe subiectul "github php xbrl" va poate conduce la depozite interesante pentru oricare dezvoltator-PhP care doreste sa se scufunde mai adinc in acest subiect al XBRL-ului.

Pentru cei ce vor sa creeze fisiere xbrl folosind python pot consulta acest [link](https://blog.aspose.com/finance/create-xbrl-file-using-python/#Add-Fact-Item-in-XBRL-using-Python)

<hr/>

Daca doriti sa [incarcati eFactura](https://github.com/TecsiAron/ANAF-API-Client-PHP) din PhP, [postul-GH](https://github.com/Rebootcodesoft/efactura_anaf) va poate veni in [ajutor](https://mfinante.gov.ro/ro/web/efactura).

<hr/>

Am cerut **ChatGPT**-ului sa-mi dea un cod ***PhP*** care sa tranforme o factura **.txt** in **xml**, cf ***eFactura*** si ***UBL2.1***(iata [*rezultatul* **txt**2***xml***](https://chatgpt.com/share/6797a205-7978-800b-a4de-76cf7bf5e2a7)!)

***Problema*** este ca el a generat bine mersi codul in PHP desi nu exista asa ceva in realitate!... cel putin in acest moment

Asa ca i-am solicitat sa traduca intregul exemplu in Python

Desi nu am testat schita codului-draft, acest simplu [**exemplu**](https://chatgpt.com/share/6797a205-7978-800b-a4de-76cf7bf5e2a7), chiar daca nu este decat unul de inceput de drum, sper eu ca va poate ajuta, pentru a obtine, in final, ceea ce va trebui sa depuneti la ANAF.

Pentru orice eventualitate, redau aici 

 - datele textuale de intrare ale facturii-exemplu(format *.txt*):

<pre>
   InvoiceID: 2025-00001
   IssueDate: 2025-01-27
   SupplierName: Vanzator SRL
   SupplierTaxID: RO12345678
   CustomerName: Cumparator SRL
   CustomerTaxID: RO87654321
   ItemName: Struguri albi
   Quantity: 100
   Price: 3
   TaxPercent: 9
</pre>

 - si aici ...

<details>
 <summary>...codul <b>AI-Python</b>:</summary>
<code>
 <pre>
   import os
   import json
   from langchain.agents import initialize_agent, Tool
   from langchain.agents.agent_toolkits import FileManagementToolkit
   from langchain.llms import Ollama
   from langchain.tools import Tool
   from langchain.memory import ConversationBufferMemory
   from langchain.experimental.autonomous_agents import AutoGPT
   from langchain.experimental.plan_and_execute import BabyAGI
   from xml.etree.ElementTree import Element, SubElement, tostring, ElementTree
   
   def create_xml(invoice_data):
       """Generate XML conforming to UBL 2.1 standards."""
       root = Element('Invoice', attrib={
           'xsi:schemaLocation': 'urn:oasis:names:specification:ubl:schema:xsd:Invoice-2 http://docs.oasis-open.org/ubl/os-UBL-2.1/xsd/maindoc/UBL-Invoice-2.1.xsd',
           'xmlns:cac': 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2',
           'xmlns:cbc': 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2',
           'xmlns': 'urn:oasis:names:specification:ubl:schema:xsd:Invoice-2'
       })
   
       SubElement(root, 'cbc:CustomizationID').text = 'urn:cen.eu:en16931:2017#compliant#urn:efactura.mfinante.ro:CIUS-RO:1.0.1'
       SubElement(root, 'cbc:ID').text = invoice_data.get('InvoiceID', 'Unknown')
       SubElement(root, 'cbc:IssueDate').text = invoice_data.get('IssueDate', 'Unknown')
   
       supplier = SubElement(root, 'cac:AccountingSupplierParty')
       SubElement(supplier, 'cbc:Name').text = invoice_data.get('SupplierName', 'Unknown')
   
       buyer = SubElement(root, 'cac:AccountingCustomerParty')
       SubElement(buyer, 'cbc:Name').text = invoice_data.get('CustomerName', 'Unknown')
   
       items = SubElement(root, 'cac:InvoiceLine')
       SubElement(items, 'cbc:ItemName').text = invoice_data.get('ItemName', 'Unknown')
       SubElement(items, 'cbc:Quantity').text = str(invoice_data.get('Quantity', '0'))
   
       return tostring(root, encoding='unicode')
   
   def process_invoice_file(file_path):
       """Read and process the TXT invoice file into a dictionary."""
       with open(file_path, 'r') as file:
           lines = file.readlines()
   
       invoice_data = {}
       for line in lines:
           if ':' in line:
               key, value = line.split(':', 1)
               invoice_data[key.strip()] = value.strip()
   
       return invoice_data
   
   def create_agents():
       """Create AutoGPT and BabyAGI agents using Ollama."""
       llm = Ollama(model="o1-mini", base_url="http://localhost:11434")
   
       tools = [
           Tool(
               name="Read File",
               func=process_invoice_file,
               description="Reads a TXT file and extracts invoice data."
           ),
           Tool(
               name="Generate XML",
               func=create_xml,
               description="Generates UBL 2.1 compliant XML from invoice data."
           )
       ]
   
       memory = ConversationBufferMemory(memory_key="conversation")
   
       auto_gpt = AutoGPT(
           name="InvoiceProcessorAutoGPT",
           description="Processes TXT invoices and generates UBL 2.1 XML.",
           tools=tools,
           llm=llm,
           memory=memory,
           goals=[
               "1. Read a TXT invoice file.",
               "2. Extract data from the invoice file.",
               "3. Generate a UBL 2.1 XML file.",
               "4. Save the XML file to disk."
           ]
       )
   
       baby_agi = BabyAGI(
           llm=llm,
           tools=tools,
           memory=memory,
           verbose=True
       )
   
       return auto_gpt, baby_agi
   
   if __name__ == "__main__":
       # Define the input file path
       invoice_txt_path = "factura.txt"
   
       if not os.path.exists(invoice_txt_path):
           print(f"File {invoice_txt_path} does not exist.")
           exit(1)
   
       # Create agents
       auto_gpt_agent, baby_agi_agent = create_agents()
   
       # Use AutoGPT to process the invoice
       print("Processing invoice with AutoGPT...")
       invoice_data = auto_gpt_agent.tools[0].func(invoice_txt_path)
       xml_output = auto_gpt_agent.tools[1].func(invoice_data)
   
       auto_gpt_output_path = "factura_autoGPT.xml"
       with open(auto_gpt_output_path, "w") as xml_file:
           xml_file.write(xml_output)
   
       print(f"AutoGPT processed the invoice and saved the XML to {auto_gpt_output_path}.")
   
       # Use BabyAGI to process the invoice
       print("Processing invoice with BabyAGI...")
       baby_agi_agent.add_task("Process TXT invoice and generate XML.")
       baby_agi_agent.run()
   
       baby_agi_output_path = "factura_babyAGI.xml"
       with open(baby_agi_output_path, "w") as xml_file:
           xml_file.write(xml_output)
   
       print(f"BabyAGI processed the invoice and saved the XML to {baby_agi_output_path}.")

</pre>
</code>
</details>

...pentru mai multe detalii(despre agenti) cititi si observatia(***OBS:***) de la finalul postului <a href="https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/Stripe_SmartBill_integrare_cu_eFactura/ReadMe.md"><b>Stripe_SmartBill_integrare_cu_eFactura</b></a>

 - precum si ...
   
<details>
 <summary>...codul <b>PhP</b>, echivalent:</summary>
 <pre>
  <code>
   
              <?php
                  // Funcție pentru a genera XML conform UBL 2.1
                  function generateUBLInvoice($txtFilePath, $xmlOutputPath) {
                      if (!file_exists($txtFilePath)) {
                          die("Fișierul TXT nu a fost găsit!");
                      }
                  
                      // Citirea fișierului TXT
                      $lines = file($txtFilePath, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
                      if (!$lines) {
                          die("Fișierul TXT este gol sau nu poate fi citit!");
                      }
                  
                      // Extrage datele facturii din fișierul TXT
                      $invoiceData = [];
                      foreach ($lines as $line) {
                          list($key, $value) = explode(":", $line, 2);
                          $invoiceData[trim($key)] = trim($value);
                      }
                  
                      // Validarea datelor necesare
                      $requiredFields = ['InvoiceID', 'IssueDate', 'SupplierName', 'SupplierTaxID', 'CustomerName', 'CustomerTaxID', 'ItemName', 'Quantity', 'Price', 'TaxPercent'];
                      foreach ($requiredFields as $field) {
                          if (empty($invoiceData[$field])) {
                              die("Câmpul '$field' lipsește din fișierul TXT!");
                          }
                      }
                  
                      // Calcularea valorilor
                      $quantity = (float) $invoiceData['Quantity'];
                      $price = (float) $invoiceData['Price'];
                      $taxPercent = (float) $invoiceData['TaxPercent'];
                      $lineExtensionAmount = $quantity * $price;
                      $taxAmount = $lineExtensionAmount * ($taxPercent / 100);
                      $totalAmount = $lineExtensionAmount + $taxAmount;
                  
                      // Crearea structurii XML
                      $xml = new SimpleXMLElement('<Invoice xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"></Invoice>');
                      $xml->addChild('cbc:CustomizationID', 'urn:cen.eu:en16931:2017#compliant#urn:efactura.mfinante.ro:CIUS-RO:1.0.1');
                      $xml->addChild('cbc:ProfileID', 'urn:efactura.mfinante.ro:CIUS-RO:1.0.1');
                      $xml->addChild('cbc:ID', $invoiceData['InvoiceID']);
                      $xml->addChild('cbc:IssueDate', $invoiceData['IssueDate']);
                      $xml->addChild('cbc:InvoiceTypeCode', '380');
                      $xml->addChild('cbc:DocumentCurrencyCode', 'RON');
                  
                      // Date despre furnizor
                      $supplierParty = $xml->addChild('cac:AccountingSupplierParty');
                      $supplier = $supplierParty->addChild('cac:Party');
                      $supplier->addChild('cac:PartyName')->addChild('cbc:Name', $invoiceData['SupplierName']);
                      $supplier->addChild('cac:PartyTaxScheme')->addChild('cbc:CompanyID', $invoiceData['SupplierTaxID']);
                  
                      // Date despre cumpărător
                      $customerParty = $xml->addChild('cac:AccountingCustomerParty');
                      $customer = $customerParty->addChild('cac:Party');
                      $customer->addChild('cac:PartyName')->addChild('cbc:Name', $invoiceData['CustomerName']);
                      $customer->addChild('cac:PartyTaxScheme')->addChild('cbc:CompanyID', $invoiceData['CustomerTaxID']);
                  
                      // Linie factură
                      $invoiceLine = $xml->addChild('cac:InvoiceLine');
                      $invoiceLine->addChild('cbc:ID', '1');
                      $invoiceLine->addChild('cbc:InvoicedQuantity', $quantity)->addAttribute('unitCode', 'KGM');
                      $invoiceLine->addChild('cbc:LineExtensionAmount', number_format($lineExtensionAmount, 2, '.', ''))->addAttribute('currencyID', 'RON');
                      $item = $invoiceLine->addChild('cac:Item');
                      $item->addChild('cbc:Name', $invoiceData['ItemName']);
                      $item->addChild('cac:ClassifiedTaxCategory')->addChild('cbc:Percent', $taxPercent);
                      $invoiceLine->addChild('cac:Price')->addChild('cbc:PriceAmount', number_format($price, 2, '.', ''))->addAttribute('currencyID', 'RON');
                  
                      // Total TVA
                      $taxTotal = $xml->addChild('cac:TaxTotal');
                      $taxTotal->addChild('cbc:TaxAmount', number_format($taxAmount, 2, '.', ''))->addAttribute('currencyID', 'RON');
                  
                      // Total factură
                      $legalMonetaryTotal = $xml->addChild('cac:LegalMonetaryTotal');
                      $legalMonetaryTotal->addChild('cbc:LineExtensionAmount', number_format($lineExtensionAmount, 2, '.', ''))->addAttribute('currencyID', 'RON');
                      $legalMonetaryTotal->addChild('cbc:TaxExclusiveAmount', number_format($lineExtensionAmount, 2, '.', ''))->addAttribute('currencyID', 'RON');
                      $legalMonetaryTotal->addChild('cbc:TaxInclusiveAmount', number_format($totalAmount, 2, '.', ''))->addAttribute('currencyID', 'RON');
                      $legalMonetaryTotal->addChild('cbc:PayableAmount', number_format($totalAmount, 2, '.', ''))->addAttribute('currencyID', 'RON');
                  
                      // Salvarea XML-ului într-un fișier
                      $xml->asXML($xmlOutputPath);
                      echo "Factura XML a fost generată cu succes la: $xmlOutputPath\n";
                  }
                  
                  // Exemplu de utilizare
                  $txtFilePath = 'factura.txt'; // Locația fișierului TXT
                  $xmlOutputPath = 'factura.xml'; // Locația fișierului XML generat
                  generateUBLInvoice($txtFilePath, $xmlOutputPath);

              ?>

</code>
 </pre>
</details>

<hr/>


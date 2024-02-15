Aici gasiti scripturi legate de ***eGuvernare***

Daca aveti nevoie de **cursul BNR** pentru o ***valuta*** anume(***interogarare punctuala***) probabil ca acest [**github-repository**](https://github.com/WPPlugins/curs-valutar-bnr/blob/master/curs_valutar_bnr.php) va poate fi de ajutor;
Nu este vorba de o interogare punctuala(adica pentru o valuta anume) dar probabil ca este usor de obtinut si o interogare punctuala daca studiati acest cod in detaliu;
S-ar putea ca acest [cod](https://www.curs-valutar-bnr.ro/preluare-curs-valutar-bnr-script-php) sa fie mai simplu de utilizat...Eu am incercat acest [link-BNR](http://www.bnro.ro/nbrfxrates.xml) direct si am vazut ca functioneaza...deci probabil ca extragerea punctuala pentru o valuta este foarte probabil sa functoneze(parsarea nu este atat de complicata)...
E posibil ca acest curs sa fi folositor pentru [**eFactura**](/https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) in valuta si in special pentru contabilitate
Ca sa aveti o ***evidenta(adica sa stocati intr-o tabela dintr-o baza de date)*** a cursului valutar al unei **valute** pentru diverse date calendaristice(la acea **data calendaristica din factura**) probabil ca mult mai bine ar fi sa va stocati acest **curs** pentru acea valuta  intr-o [***tabela MySQL***](https://www.heliosdesign.ro/resurse/php/preluare-curs-valutar.htm)
Daca vreti sa-l afisati pe site acest [**cod PhP**](https://www.endd.ro/curs-valutar-pe-site-ul-tau/) s-ar putea sa va ajute
Daca aveti nevoie de **cURL** ca executabil ar fi bine sa-l [***instalati manual***](https://www.digitalocean.com/community/tutorials/workflow-downloading-files-curl);
Recomandarea mea este sa-l instalati si sa-l faceti cunoscut(pt a fi usor regasit cand il chemati intr-o comanda de terminal **cmd.exe**) in variabila de mediu(environment) **%PATH%** pentru ca este util macar pentru a testa un URL (macar atunci cand trebuie sa faceti apeluri **POST**,**PUT**,......pt ca apelurile **GET** pot fi testate direct in ***browser*** tastand **URL**-ul respectiv in campul de adresa);

Pe [ICEsoft](https://icesoft.ro/forum//index.php?topic=699.0) forum s-a postat candva o intrebare legitima in legatura cu [***eFactura***:](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ghid_RO_eFactura.pdf) 

Ce este **XML** [***eFactura***](https://mfinante.gov.ro/web/efactura/informatii-tehnice)?

(Intrebarea de mai sus, desi pe ***jumatate*** pusa este totusi o intrebare!)

**XML** este o forma de prezentare([***arborescenta***](https://copyprogramming.com/howto/how-to-show-tree-view-in-php)) a datelor deci este un standard de prezentare(pana la urma si de stocare in container/fisier) a datelor;
De ce spun ca este pe ***jumatate*** pusa intrebarea?
Pentru ca in cadrul acestul **XML** se foloseste un alt standard de sintaxa a datelor specifice unei [***eFacturi***](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RW1g7kQ)(de fapt **eInvoice** pt ca este pt un format/standard extins la nivel international)  
si aici ma refer la **UBL** ori **CII**...
Deci standardul **UBL** sau **CII** este inclus(sau gazduit) de acest standard ***general*** **XML**.
Nu a fost o explicatie prea academica dar sper sa fie utila unora mai practicieni(***n.r.*** ca mine)...
De ce spun ca XML este un standard general/comun ? ... pt ca orice se prezinta sub [forma(***paradigma/modelul***)](https://stackoverflow.com/questions/52569580/php-extract-html-tag-value-into-array-from-string) **\<tag\>**...***continut-XML***...**\<\/tag\>** este un format **XML**(daca vreti si continutul unui fisier  **HTML** este un **XML**...cu atat mai mult un continut [***XHTML***](https://copyprogramming.com/howto/php-you-want-to-xhtml-request); adica **HTML**-ul respectiv [***XHTML***](https://copyprogramming.com/t/generating-xhtml-documents-using-domdocument-in-php)-ul este in particular, daca vreti/pana la urma, tot un [**XML**](https://www.php.net/manual/en/class.simplexmliterator.php)...   pt. ca respecta [***paradigma/modelul/formatul***](https://stackoverflow.com/questions/52569580/php-extract-html-tag-value-into-array-from-string) despre care vorbeam mai sus); asadar un XML ne prezinta/reflecta o imbricare(includere/incluziune) sau o containerizare profunda lucru specific structurilor de tip [**arbore**](https://github.com/gymadarasz/xparser)... pe relatii de genul [***contine pe/este imbricat=inclus in***](https://stackoverflow.com/questions/6356115/traverse-the-dom-tree); Daca va asumati acest risc atunci poate ca aceasta ar fi o calea interesanta de urmat!!!

***Nota:*** Am vorbit aici despre ***XHTML*** pt ca paginile-tab ale [**generatorului ANAF**](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml) [eFactura](https://www.gandul.ro/financiar/business/fiscalitate/raportarea-facturilor-emise-in-sistemul-national-ro-e-factura-ghid-pentru-firme-si-pasii-de-urmat-20109989) sunt XHTML;

Ce vreau sa spun?

Vrem nu vrem cei ce se ocupa se generatorul sau de site-ul ["completarea online a eFacturii" ](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml) sunt cei de la ANAF, asa ca oricand pot introduce noi validari sau noi reguli, pot elimina sau introduce noi campuri deci ei au intreaga decizie asupra site-ului de generare a e-Facturii.Prin urmare si validatorul [validare.js](https://www.anaf.ro/CompletareFactura/faces/factura/validare.js) poate suferi in timp modificari notabile; asadar daca doriti sa faceti un generator xml e-Factura poate ca nu ar fi o idee rea sa folositi mediul acesta de programare si sa-l utilizati desigur in aplicatia dumneavoastra. Pentru acest lucru va trebui sa folositi resursele site-ului in forma lor originala si doar sa le utilizati in aplicatia dumneavoastra.

Asadar poate ar fi util sa analizati in php("parsati") XHTML-urile paginilor-tab, sa le expuneti utilizatorului pe site-ul dvs. si sa preluati ca atare campurile respective(daca aveti interfata utilizator expusa) si de asemenea sa folositi de la distanta validatorul dumnealor plantand in html-head referinta catre acesta(https://www.anaf.ro/CompletareFactura/faces/factura/validare.js);
Astfel sursa dumneavoasta php/html nu va suferi modificari de fiecare data cand aceast site sufera mofificari.(atentie acest generator oficial foloseste [*JSF*](https://help.eclipse.org/latest/index.jsp?topic=%2Forg.eclipse.jst.jsf.doc.user%2Fhtml%2Fconcepts%2Fjsf_component_tree.html) deci este bine sa cautati **URL**-urile ***relative*** si sa le transformati in link-uri ***absolute***; acest lucru este valabil/necesar pentru toate resursele utilizate la/de la distanta); Trebuie insa sa mentionez ca aceasta dependenta de resursele rezidente pe platforma ANAF aduce si un lucru mai putin placut si anume acela ca **uptime**-ul aplicatiei dvs **depinde** de uptime-ul site-ului **ANAF**(cel care este titularul de drept al acestor resurse); Cu alte cuvinte cand cade site-ul ANAF atunci veti obtine si dvs rezultate nedorite/[malformate](https://dexonline.ro/definitie/malforma%C8%9Bie);

Daca ***XML***-ul se ocupa de containerizarea arborescenta DOM(Document Object Model) in vederea transportului, atunci **UBL**-ul se ocupa de /explica/descrie/(re-)[prezinta](https://dexonline.ro/definitie/prezinta/810865) reguli de scriere(sintactice), daca vreti se ocupa de regulile [***ontologice***](https://dexonline.ro/definitie/onto)(descrieri existentiale) ale obiectelor/entitatilor documentului/documentelor ce fac obiectul acestui **standard**

Pentru cei care doresc sa-si construiasca programatic(in acest caz, utilizand limbajul **PhP**) propriul generator ***UBL2.1/xml eFactura***(**export date**) probabil ca ar fi util sa aveti in vedere construirea(in sens ***invers***!) si a **importului**(in aplicatia voastra PhP) de facturi ***UBL2.1/xml*** primite de la furnizorii dumneavoastra(a se vedea in acest sens si depozitul **github** [***danielgp/eFactura***](https://github.com/danielgp/eFactura/tree/main) ; versiunea **1.0.0** acoperă citirea și scrierea fișierelor **UBL 2.1./XML**; aceasta prima versiune are inclusă o **interfață grafică** pentru citirea tuturor fișierelor ZIP ca răspunsuri descărcate de la ANAF, interfata care afișează statistici relevante din toate documentele identificate.; aceleasi ***multumiri*** si lui [**Daniel-Popiniuc**](https://packagist.org/packages/danielgp/efactura)!; datele de [intrare](https://raw.githubusercontent.com/danielgp/eFactura/main/testing/UBL_examples/Romanian/Invoice.json) ale generatorului/exportatorului/writer-ului sunt preluate dintr-un fisier [**json**](https://cleartax.in/s/gst-e-invoice-json) si desigur iesirea este un fisier [eFactura UBL2.1/XML](https://github.com/danielgp/eFactura/blob/main/testing/UBL_examples/Romanian/eInvoice_ex.xml) ; insa daca intentionati sa lucrati cu sabloane/**template**-uri(gen [**twig**](https://zetcode.com/php/twig/)) s-ar putea ca acest repos sa constituie doar materie prima si nu o solutie finita in sine!!!; va trebui sa culegeti datele de intrare ale Writer-ului in prelabil si apoi sa-l utilizati; oricum adaptarea/integrarea insa cred/pare ca este destul de usoara!) 

Un alt generator eInvoice in format [**UBL**](https://docs.peppol.eu/poacc/billing/3.0/syntax/ubl-invoice/) poate fi gasit in depozitul github [***num-num/ubl-invoice***](https://github.com/num-num/ubl-invoice/tree/master)(a se consulta [**testele**](https://github.com/num-num/ubl-invoice/tree/master/tests) aferente pt a intelege cum functioneaza); Trebuie doar sa particularizati/nuantati continutul documentele generate pt uzul sau specificul nostru national([**CIUS-RO**](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RW1g7kQ)); Pentru a afla mai multe despre [**EAS**](https://www.avalara.com/blog/en/europe/2023/03/how-does-your-e-invoice-reach-your-customer-on-the-peppol-network.html?gclid=Cj0KCQiA5rGuBhCnARIsAN11vgT9rAYSPT1VELkaITKv3F2Wb-zJgsDV_VugXTt7b_tKfQzybzgJvNYaAsZuEALw_wcB&CampaignID=7015a000001y34SAAQ&utm_source=paid_search&utm_medium=gppc&ef_id=Cj0KCQiA5rGuBhCnARIsAN11vgT9rAYSPT1VELkaITKv3F2Wb-zJgsDV_VugXTt7b_tKfQzybzgJvNYaAsZuEALw_wcB:G:s&s_kwcid=AL!5131!3!675189240647!p!!g!!peppol&gclsrc=aw.ds&&lso=Paid+Digital&lsmr=Paid+Digital&gad_source=1) - ***Electronic Address Schemes*** (**România** foloseste drept  Număr unic de identificare ca si/de tara/[client-***Peppol***](https://peppol.helger.com/public/menuitem-validation-ws2), **EAS=9947**, un numar de tip **TVA**, numar folosit pentru toate companiile sale inregistrate la nivel national care formeaza [contextul de afaceri](https://www.storecove.com/blog/en/e-invoicing-romania/?unbounce_brid=1707147052_3636603_1c9d50d3b501f34d1ab2cc56ac8c241c) [**B2**{***a***}](https://edicomgroup.com/blog/romania-moves-towards-electronic-invoicing-ro-efactura-platform), unde ***a*** este aria **G**overnmental,**B**usiness si **C**liental)  puteti sa  accesati blogul-ul european [**avalara**](https://www.avalara.com/blog/en/europe/2023/03/how-does-your-e-invoice-reach-your-customer-on-the-peppol-network.html?gclid=Cj0KCQiA5rGuBhCnARIsAN11vgT9rAYSPT1VELkaITKv3F2Wb-zJgsDV_VugXTt7b_tKfQzybzgJvNYaAsZuEALw_wcB&CampaignID=7015a000001y34SAAQ&utm_source=paid_search&utm_medium=gppc&ef_id=Cj0KCQiA5rGuBhCnARIsAN11vgT9rAYSPT1VELkaITKv3F2Wb-zJgsDV_VugXTt7b_tKfQzybzgJvNYaAsZuEALw_wcB:G:s&s_kwcid=AL!5131!3!675189240647!p!!g!!peppol&gclsrc=aw.ds&&lso=Paid+Digital&lsmr=Paid+Digital&gad_source=1)(Subiectul lor ***Cum ajunge factura dvs. electronică la clientul dvs. din rețeaua Peppol?*** poate fi foarte atragator pentru cei ce vor sa scufunde mai adanc in cunoasterea [***eGuvernarii***](https://snitechnology.net/anaf-released-updated-list-of-medium-taxpayers/); Oricum si acest depozit poate fi o sursa de inspiratie pentru proiectele dumneavoastra;

Totusi generarea eFacturii in **PhP** poate fi foarte mult simplificata daca stiti exact cum trebuie sa arate **modelul** de factura UBL/XML si aveti din timp pregatie **datele** care trebuiesc inglobate;
Puteti folosi pentru generarea fisierului ***XML(.xml)*** o librarie simpla cum este  [**SimpleXML**](https://www.php.net/manual/en/simplexml.examples-basic.php);
Hai sa luam exemplul testat de [**Daniel-Popiniuc**](https://github.com/danielgp/eFactura/blob/main/testing/UBL_examples/Romanian/eInvoice_ex.xml) si sa-l generam cu SimpleXML:

 - pentru inceput plasati continutul urmator intr-un fisier pe care sa-l denumim **eFacturaMeaContent.inlude.php**:

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

   Aceste fisiere utilizate in acest exemplu [**eFactura/eInvoice**](https://github.com/josemmo/einvoicing?tab=readme-ov-file) scris in **PhP**, armonizat cu [**CIUS-RO**](https://mfinante.gov.ro/web/efactura/informatii-tehnice) si bazat pe [**SimpleXML**](https://github.com/josemmo/einvoicing/blob/master/src/Presets/CiusRo.php) pot fi  gasite in /descarcate din sub-directorul [**simpleInvoice**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/php_scripts/simpleInvoice), gazduit de directorul curent.

Chiar daca riscul de a gresi atunci cand generati e Faxctura este unul mai mic totusi este recomandat ca inainte de a [trimite](https://hotfox.ro/forum/viewtopic.php?t=7&start=80) eFactura la [ANAF](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf) sa va asigurati ca UBL/XML-ul eFacturii este [valid](https://www.anaf.ro/uploadxmi/).

Linia autmata de procesare(atat pt predare cat si pt primire) e-Factura prevede in ordine:

 - prelevare date intrare eFactura
 - generare eFactura
 - validare eFactura
 - generare declaratie
 - impachetare eFactura+declaratie(sau preparare in vederea transiterii efacturii catre ANAF)
 - transmiterea pachetului eFactura in SPV-ul ANAF-ului
 - verificare status eFactura in bucla(pana cand vedem ca eFactura a fost procesata)
 - cand primim o alerta/informare ca a sosit o eFactura de la un furnizam
 - descarcam eFactura primita
 - arhivam documentul/documentele aferente atasate eFacturii
   
Apoi dupa ce [verificati](https://hotfox.ro/forum/viewtopic.php?t=7&start=80) validitatea eFacturii, transmiteti eFatura si formularul aferent si apoi verificati [starea/statusul](https://ajutor.smartbill.ro/article/984-statusurile-si-validarea-e-facturii) eFacturii transmise/incarcate(upload-ate) in SPV-ul [ANAF](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf)-ului

Daca aveti nevoie de informatii privind [**Sedii DGRFP**](https://www.anaf.ro/anaf/internet/ANAF/contact/adrese_unitati_fiscale), adica adresele unitatilor fiscale, puteti cauta pe site-ul ***ANAF***



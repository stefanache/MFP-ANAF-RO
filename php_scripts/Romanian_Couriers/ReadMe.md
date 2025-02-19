Salut tuturor!

As vrea sa facem o introspectie a API-urilor existente pe piata din Romania cu privire la curierat.

Desigur ati auzit de companiile de curierierat ce activeaza si in Romania, cum ar fi:
 
 - DPD, 
 - Sameday, 
 - Fan Courier, ori
 - Curiera

Sa-mi fie iertat ca nu le-am enumerat dar in realitate sunt cu siguranta mult mai multe...

Ce as vrea sa stiu in principal, despre acestea?

   - sa stiu "Shipping Cost"(pretul transportului bazat pe liste de pret/tarife de transport))
     si eventual sa pot crea, din API ...
   - "Shipment"(sa creez transportul)
   - "Pickup Date"(sa creez data de preluare a coletului/coletelor)
   - "AWB" (salvat eventual intr-un document PDF pt a fi usor vehiculat peste internet...)

  AWB-ul este esential mai ales in privinta urmaririi starii de procesare a transportului respectiv.

  

Cam astea ar fi pe scurt, principalele probleme legate de acest subiect.

Sa le luam pe rand:

1.DPD:
 - [cautare google ... api dpd ro](https://www.google.com/search?q=api+dpd+ro&sca_esv=42c55ce90fafe599&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zo8237VJeKXrUlwtpAEdFBH9xhIYA:1739970866562&ei=Mtm1Z4T3IcW3xc8PvpCqmAY&start=10&sa=N&sstk=Af40H4WJ7D4e3cJr6Sr2ZgAwhhrLCQI_AarThLs386O8xrF8mW4XQ_wqPtr8ee1Vahcc2vq8-4d5WqMKv8tHA5cdTauhGTnm5pEdwQ&ved=2ahUKEwiE2K7L6M-LAxXFW_EDHT6ICmMQ8tMDegQIBRAE&biw=1920&bih=911&dpr=1)
 - [DPD REST API examples](]https://services.dpd.ro/api/api_examples.html)
 - [DPD Web API Documentation](https://api.dpd.ro/web-api.html)
   <br/>cautati in aceasta [pagina](https://api.dpd.ro/web-api.html) ... si alte link-uri sau dupa textul(desigur, fara ghilimele)..."PDF Examples:"
 - [DPD-RO eCommerce](https://www.dpd.com/ro/ro/e-commerce/)
 - [DPD-RO Support IT](https://www.dpd.com/ro/ro/suport-dpd/suport-it/)
 - [DPD Romania API Docs](https://www.aftership.com/carriers/dpd-ro/api)
 - [DPD-RO API address-form](https://services.dpd.ro/address_form/_README.txt)
 - [Github-coffeedesk: DPD API Client](https://github.com/coffeedesk/dpd-api-client-php)
 - [Github-DPDromania](https://github.com/DPDromania)
 - [Github-dataLinx: DPD-PHP-SDK(Slovenia si Croatia)](https://github.com/DataLinx/DPD-PHP-SDK)... cu titlu de exemplu
 - [Github-blobswop: DPD PhP API(Germany)](https://github.com/blobswop/dpd-php-api) ... cu titlu de exemplu
 - [Github-msztorc: PhP DPD-API...API-wrapper(Polska)](https://github.com/msztorc/php-dpd-api)...cu titlu de exemplu
 - [EasySales: Configurare-Curier-DPD](https://support.easy-sales.com/hc/ro/articles/360018572537-Configurare-Curier-DPD)
 - [DPDGroup: Shipping API V1.1 docs](https://nst-preprod.dpsin.dpdgroup.com/api/docs/#nst-shipment-api)
 - [17track: DPD(RO) - Urmărirea](https://www.17track.net/ro/carriers/dpd-ro)
 - [17track: DPD RO - Tracking-Track package](https://www.17track.net/id/carriers/dpd-ro)
 - [51tracking: DPD-RO Tracking](https://www.51tracking.com/dpd-ro-tracking-en)
 - [DPD-RO: API examples A4_RO PDF](https://api.dpd.ro/examples/A4_RO.pdf)...
   <br/>cautati in aceasta [pagina](https://api.dpd.ro/web-api.html) ... dupa textul(desigur, fara ghilimele)..."PDF Examples:"
 - [curie.ro-doc: DPD-Romania Verificare-si-activare-acces-serviciu](https://curie.ro/documentatie/dpd-romania-verificare-si-activare-acces-serviciu/)
 - [GoMag: DPD](https://help.gomag.ro/hc/ro/articles/360018703954-DPD)
 - [EnFocus-forum: DPD SOAP API](https://forum.enfocus.com/viewtopic.php?t=3796) ... a se vedea si link-urile referite in aceasta discutie...!
 - [Github-weblinko: DPD - PHP - SOAP WSL ](https://github.com/weblinko/php-dpd)
 - [cautare google ... github DPD Ro SOAP API php](https://www.google.com/search?q=github+DPD+Ro+SOAP+API+php&rlz=1C1CHBF_enRO1132RO1132&oq=github+DPD+Ro+SOAP+API+php&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIKCAEQABiABBiiBDIKCAIQABiABBiiBDIHCAMQABjvBTIKCAQQABiABBiiBDIHCAUQABjvBTIGCAYQRRhA0gEKMTcwMjJqMGoxNagCCLACAfEFSM0IcvDVlKvxBUjNCHLw1ZSr&sourceid=chrome&ie=UTF-8)
 - [base-RO: integrari DPD](https://base.com/ro-RO/integrari/dpd/)
 - [Curie.RO - WooCommerce DPD plugin v.2025](https://curie.ro/woocommerce-dpd/)
 - [onlineDPD.ro-PrestaShop - DPD-Test Contact-us](https://prestashop.onlinedpd.ro/en/contact-us)
 - [myDPD.ro - SkyLogistics - Autentificare/Inregistrare utilizator](https://mydpd.dpd.ro/)
 - [FB-DPD Romania](https://www.facebook.com/DPDRomania/posts/-angaj%C4%83m-curieri-%C3%AEn-echipa-dpd-devabeneficii-salariu-atractiv-bonusuri-de-perfor/970089625145653/)
 - [Director-Firme: DPD RO SRL, S1-Bucuresti](https://www.listafirme.ro/dpd-ro-srl-17117740/)

     
   

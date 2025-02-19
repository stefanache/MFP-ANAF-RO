Salut tuturor!

As vrea sa facem o introspectie a API-urilor existente pe piata din Romania cu privire la **companiile de curierat**.

Desigur ati auzit de companiile de curierierat ce activeaza si in Romania, cum ar fi:
 
 - 1. **DPD**, 
 - 2. **Sameday**, 
 - 3. **FAN-Courier**, ori
 - 3. **Curiera**,
   4. **Urgent-CARGUS**
 - [...](https://www.scribd.com/document/349001559/sem-4)
 
Sa-mi fie iertat ca nu le-am enumerat dar in realitate sunt cu siguranta mult mai multe...

Ce as vrea sa stiu in principal, despre acestea?

   - "***Shipping Cost***"(in primul rand as vrea sa stiu ***pretul/costul transportului*** bazat pe liste de pret/tarife de transport))
     si eventual sa pot crea, din API ...
   - "***Shipment***"(sa creez ***transportul***)
   - "***Pickup Date***"(sa creez ***data de preluare*** a coletului/coletelor)
   - "***AWB***" (sa preiau ***numarul de urmarire(generat-automat),  al coletului***, salvat eventual intr-un document *PDF* pt a fi usor vehiculat peste internet...)
   - [...](https://github.com/vnemes/POILocator/blob/master/locations.txt) probabil ca mai sunt si alte ***task***-uri/***sarcini*** interesante dar va las sa le *descoperiti singuri*... urmarind *link*-urile de mai jos...

  ***AWB***-ul este esential mai ales in privinta urmaririi starii de procesare a transportului respectiv.

  

Cam astea ar fi pe scurt, principalele probleme legate de acest subiect.

Sa le luam pe rand, si sa vedem cateva link-uri(mai mult sau mai putin oficiale:) utile...:

1. **DPD** :
 - [cautare google ... api dpd ro](https://www.google.com/search?q=api+dpd+ro&sca_esv=42c55ce90fafe599&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zrq3lmx9Pab3kgM_ZmbRXMNp13zWA:1739972261989&source=lnt&tbs=lr:lang_1ro&lr=lang_ro&sa=X&ved=2ahUKEwj27ODk7c-LAxWNQfEDHX9WD5A4FBCnBXoECAQQBw&biw=1920&bih=911&dpr=1)
 - [DPD-RO website](https://www.dpd.com/ro/ro/)
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
 - [trackingmore: DPD-RO Tracking](https://www.trackingmore.com/dpd-ro-tracking.html)
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
 - [getDPD-DPD API Reference Documentation, Release 2.0](https://getdpd.com/docs/api/DPDAPIReference.pdf)
 - [colete-online.ro: Conditii generale privind furnizarea serviciilor postale ale societatii DYNAMIC PARCEL DISTRIBUTION S.A. ( in continuare denumita „DPD”)](https://www.colete-online.ro/info/general-conditions-dpd)
 - [ship24.ro-Curieri: DPD-RO - urmărirea DPD Romania](https://www.ship24.com/ro/curieri/dpd-tracking/dpd-ro)
 - [ship24-RO: DPD Tracking API și integrare](https://www.ship24.com/ro/tracking-api/dpd)
 - [DPD-RO: PDF - Return-Voucher](https://api.dpd.ro/examples/ReturnVoucher_RO.pdf)
 - [scribd-PDF tutorial: Ghid de instalare pt modulul DPD-Prestashop](https://www.scribd.com/document/508750241/DPD-Prestashop-Documentatie-instalare-modul)
 - [webShopAssist: Integrare DPD cu Shopify](https://www.webshopassist.com/ro/dpd-app)
 - [base-RO integrari: Integrati Mall cu DPD](https://base.com/ro-RO/integrari/mall_dpd/)
 - [scribd-PDF tutorial: Ghid de instalare DPD-WooCommerce](https://www.scribd.com/document/499035622/Tutorial-DPD-WooCommerce)
 - [aftership: DPD Romania Urmărire](https://www.aftership.com/ro/carriers/dpd-ro)
 - [easy-sales: Articole...cauta DPD](https://support.easy-sales.com/hc/ro/profiles/380238451597-Razvan-Toader?after=ZN5vo2YAAAAAZPY1tmQAAAAAaRJuNiZsCwAA&filter_by=articles&sort_by=recent_user_activity)
 - [DPD-RO api PDF: Label Report cu COD 2505 DPD STANDARD](https://api.dpd.ro/examples/LabelWithCOD_RO.pdf) ... [COD=Cash-On-Delivery](https://forum.opencart.com/viewtopic.php?t=228473)

2. **SameDay**:

 - [cautare google ... api sameday ro](https://www.google.com/search?q=api+sameday+ro&sca_esv=99157084a6b2f2a0&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zolWwEqrj7jdzN7_v5GSFrAQJ8paQ:1739975946308&source=lnt&tbs=lr:lang_1ro&lr=lang_ro&sa=X&ved=2ahUKEwjU5cnB-8-LAxWRS_EDHXXzHmwQpwV6BAgBEAc&biw=1920&bih=911&dpr=1)
 - [sameday.ro website](https://sameday.ro/)
 - [sameday.ro - livrare prin EasyBox](https://sameday.ro/intrebari-frecvente/livrare-in-easybox/)
 - [sameday.ro - Solicitare Documente](https://sameday.ro/intrebari-frecvente/solicitare-documente/)
 - [sameday.ro APP](https://sameday.ro/intrebari-frecvente/sameday-app/)
 - [sameday.ro - Afiliere Parteneri](https://sameday.ro/parteneri-sameday/)
 - [base-RO: Integrare SameDay](https://base.com/ro-RO/integrari/sameday/)
 - [curie.ro: Verificare is Activare Access Serviciu](https://curie.ro/documentatie/sameday-verificare-si-activare-acces-serviciu/)
 - [webecom.ro-blog: Integrare curier Sameday API SYNC – Acum poti emite mai rapid documente AWB si chiar sa livrezi la EasyBox ](https://www.webecom.ro/blog/integrare-curier-sameday-api-sync-acum-poti-emite-mai-rapid-documente-awb-si-chiar-sa-livrezi-la-easybox/)
 - [scribd-PDF: doc-API - Sameday Courier Client API](https://www.scribd.com/document/468330897/descarca-documentatia-api-pdf) ... a se urmari si link-urile aferente...
 - [WP-plugins: SamedayCourier Shipping](https://ro.wordpress.org/plugins/samedaycourier-shipping/)
 - [reddit-forum: Mail de confirmare cu ID Comanda, Sameday AWB, Factura](https://www.reddit.com/r/programare/comments/1cnea28/mail_de_confirmare_cu_id_comanda_sameday_awb/)
 - [17track-RO: SameDay (RO) Urmărirea](https://www.17track.net/ro/carriers/sameday-%28ro%29)
 - [colete-online.ro-Info: Sameday-Dispoziţii/Conditii Generale](https://www.colete-online.ro/info/general-conditions-sameday)
 - [scribd-PDF: Documentati integrare API SameDay v2.3-2024](https://www.scribd.com/document/735502958/Documentatie-API-Sameday-v2-3-2024)
 - [BOCP.eu-Implementare SameDay Curier](https://www.bocp.eu/actualizari-actualizari-20/implementare_sameday_curier.htm)
   <br>BOCP=Bussiness Online Control Panel
 - [e-cap.ro: SynCap - Configurare Curier SameDay](https://support.e-cap.ro/ro/configurare-curier-sameday)
 - [curie.ro-Doc: Sameday AWB: Ghid de completare a setărilor de generare a AWB-urilor](https://curie.ro/documentatie/sameday-awb-ghid-de-completare-a-setarilor-de-generare-a-awb-urilor/)
 - [amenofis.r: Modul OpenCart integrare SameDay](https://amenofis.ro/modul-opencart-integrare-sameday)
 - [Instagram - SameDay Romania](https://www.instagram.com/sameday.romania/)
 - [Shopfy-App-Store: SameDay App](https://apps.shopify.com/samedayapp)
 - [GH-SameDay-Courier](https://github.com/sameday-courier)
 - [Gist-rwkyyy/: afișare număr awb și buton în mail-urile de WooCommerce(WC) - Sameday România](https://gist.github.com/rwkyyy/2c60bd8d7b4e0a4400b3c5f8971c76a1?permalink_comment_id=4256027)
 - [FB WP+WC: discutii pe forum](https://www.facebook.com/groups/967830243722613/posts/2019185788587048/)
 - [OpenCart - Sameday Courier](https://www.opencart.com/index.php?route=marketplace/extension/info&extension_id=36126&filter_search=shipping&filter_category_id=4&filter_license=0&filter_download_id=53&sort=date_modified)
 - [WP-plugin-SamedayCourier Shipping: Eroare la generarea AWB](https://wordpress.org/support/topic/eroare-la-generarea-awb/)
 - [...](https://www.google.com/search?q=github+sameday+php+romania&sca_esv=ec1d9ca90aff3fe1&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zqWHN0V1Dbbrxdtut1AR1Q7Ij9VoA%3A1739981451365&ei=iwK2Z7mEFre6wPAPvrSz6A0&ved=0ahUKEwj59cuCkNCLAxU3HRAIHT7aDN0Q4dUDCBA&uact=5&oq=github+sameday+php+romania&gs_lp=Egxnd3Mtd2l6LXNlcnAiGmdpdGh1YiBzYW1lZGF5IHBocCByb21hbmlhMgUQIRigATIFECEYoAEyBRAhGKABSIUVUPYGWI4TcAF4AZABAJgBpgGgAZ4IqgEDMC44uAEDyAEA-AEBmAIJoAKzCMICChAAGLADGNYEGEeYAwCIBgGQBgeSBwMxLjigB8AY&sclient=gws-wiz-serp)

 3. **FAN-Courier**:

 - [GH-Laurent1u: Fan-Courier API Client](https://github.com/Laurent1u/fan-courier)
 - [GH-infifni: Fan Courier API Client Library(MIT License)](https://github.com/infifni/fan-courier-api-client)
 - [GH-infifni: Fan Courier API Client - Generate AWB](https://github.com/infifni/fan-courier-api-client/blob/master/src/Request/GenerateAwb.php)
 - [GH-infifni: Fan Courier API Client - dependente=composer.json](https://github.com/infifni/fan-courier-api-client/blob/master/composer.json)
 - [WP: Functionare anormala site dupa update plugin Samday](https://wordpress.org/support/topic/functionare-anormala-site-dupa-update-plugin-samday/)
 - [GH-FAN-Courier: API Docs](https://github.com/FAN-Courier/API-Docs?fbclid=IwY2xjawIi19RleHRuA2FlbQIxMAABHbXaXMkUHplMAVwxFZE6Uknmtb3lrwmQhXbXEauTbqXo5WhpEoyCuPJvlA_aem_nyT3tGbfuZYDS8oD0QI6pA)
 - [FB-Home Assistant*HA) Romania: integrare SameDay(SD) si FAN-Courier(FC) cu HomeAssistant(HA)](https://www.facebook.com/groups/HomeAssistantRomania/posts/7850718131697247/)
 - [PrestaShop-forum: Modul FAN-Courier](https://www.prestashop.com/forums/topic/215417-modul-fan-courier/)
 - [OpenCart-Fan Courier Romania - AWB generator](https://www.opencart.com/index.php?route=marketplace/extension/info&extension_id=29736&filter_category_id=5&filter_download_id=39&sort=price&page=9)
 - [scribd-PDF: Installing and configuring the FAN Courier Shipping plugin for Woocommerce(WC)](https://www.scribd.com/document/312860471/Installing-and-Configuring-the-FAN-Courier-Shipping-Plugin-for-Woocommerce)
 - [GH-besciualex: Judete si Orase - FAN-Courier Romania](https://github.com/besciualex/judete-si-orase-romania-fan-curier)
 - [GH-besciualex-PhP-cURL - cucubauSelfAWB: Judete si Orase - FAN-Courier Romania](https://github.com/besciualex/judete-si-orase-romania-fan-curier/blob/master/cucubau.php)...[selfAWB.ro](http://www.selfawb.ro)
 - [GH-besciualex: Judete si Orase - FAN-Courier Romania - actions: Automate your workflow(WF) from Idea to Production(I2P)](https://github.com/besciualex/judete-si-orase-romania-fan-curier/actions)
 - [GH-cheadrian/fancourier-woocommerce(WC): FAN-Courier](https://github.com/cheadrian/fancourier-woocommerce/blob/master/fan_courier.php)
 - [reddit-forum: Librarie PHP pentru API Fan Courier v2.0](https://www.reddit.com/r/programare/comments/18s413e/librarie_php_pentru_api_fan_courier_v20/)
 - [GH-shusaura85: FAN-Courier API(neoficiala, 2024)](https://github.com/shusaura85/fancourier-api)
 - [PrestaShop: Modul Fan Courier in Prestashop 1.7](https://www.prestashop.com/forums/topic/663807-modul-fan-courier-in-prestashop-17/)
 - [PrestaShop: Probleme cu modulul de la fancourier si nu imi apar judetele in contul clientului](https://www.prestashop.com/forums/topic/854970-probleme-cu-modulul-de-la-fancourier-si-nu-imi-apar-judetele-in-contul-clientului/)
 - [GH-FAN-Courier: API-Docs](https://github.com/FAN-Courier/API-Docs)...[SelfAWB Login](https://www.selfawb.ro/new/login)
 - [...](https://www.google.com/search?q=github+fan+courier&sca_esv=ec1d9ca90aff3fe1&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zp1qcQGXlka4OyX5Yp9RJJ5d6sM2A%3A1739981375980&ei=PwK2Z_a1O8GGwPAP9a3VoA0&ved=0ahUKEwi20dLej9CLAxVBAxAIHfVWFdQQ4dUDCBA&uact=5&oq=github+fan+courier&gs_lp=Egxnd3Mtd2l6LXNlcnAiEmdpdGh1YiBmYW4gY291cmllcjIEECMYJzIIEAAYgAQYogQyCBAAGIAEGKIEMggQABiABBiiBDIIEAAYgAQYogQyCBAAGIAEGKIESIEZUP4HWMQWcAF4AZABAJgBhAGgAeMHqgEDMC44uAEDyAEA-AEBmAIJoAL9B8ICChAAGLADGNYEGEfCAgUQABjvBZgDAIgGAZAGCJIHAzEuOKAHliQ&sclient=gws-wiz-serp)

   4. **Curiera**:

 - [curiera - website](https://curiera.ro/)
 - [...](https://vladilie.ro/ro/blog/euplatesc-nodejs)

   5. **Urgent-CARGUS**:

 - [GH-EaDesgin - M1 Urgent Cargus courier estimate](https://github.com/EaDesgin/m1-urgent-cargus-courier-estimate)
 - [...](https://github.com/itrack/CursBNR)
   

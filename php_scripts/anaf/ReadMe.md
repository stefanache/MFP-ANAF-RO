Aici gasiti 
- verificarea unui agent economic [***platitor de TVA***](https://www.anaf.ro/anaf/internet/ANAF/servicii_online/servicii_web_anaf) folosind web-serviciul 2. **ANAF**([**versiunea 8,sincron**](https://www.anaf.ro/anaf/internet/ANAF/servicii_online/servicii_web_anaf)): [***index.php***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/anaf/index.php)


  a se citi si [***instructiunile***](https://static.anaf.ro/static/10/Anaf/Informatii_R/Servicii_web/doc_WS_V8.txt) aferente serviciului web ANAF;
  
Am testat si eu acest [***cod PhP***](https://www.grepper.com/answers/465839/api+anaf) care face [verificarea unui agent economic daca este platitor de TVA](https://www.verificaretva.ro/download/DocumentatieVerificareTVAAPIv5.pdf);
Codul meu de testare a fost plasat intr-un fisier **index.php** pe care l-am stocat intr-un subdirector denumit  ***api_anaf***  al directorului ***htdocs*** specific webserver-ului **Apache**(care la randul sau este controlat de [**XAMPP**](https://www.apachefriends.org/) ); Fisierul meu ***index.php*** are urmatorul continut:

			<?php
				// Official documentation: 
				// 1) https://static.anaf.ro/static/10/Anaf/Informatii_R/doc_WS_Async_V8.txt
				// 2) https://static.anaf.ro/static/10/Anaf/Informatii_R/doc_WS_V8.txt
				
				$url_verif_platitor_TVA="'https://webservicesp.anaf.ro/PlatitorTvaRest/api/v8/ws/tva'";
				//$url_reg_agricultori="https://webservicesp.anaf.ro/RegAgric/api/v2/ws/agric ";
    
				// PHP curl example
				// set payload for single request
				$payload = [
				    "cui"=> "14399840",  
				    "data"=> "2022-05-02" 
				];
				// Anaf server can handle up to 500 different cuis per request
				// Never do more than 1 request per seccond
				// initialize curl object
				$curl = curl_init();
				// set curl object
				curl_setopt_array( $curl, array(
				    CURLOPT_URL => $url_verif_platitor_TVA,
				    //CURLOPT_URL => $url_reg_agricultori,	
				    CURLOPT_RETURNTRANSFER => true,
				    CURLOPT_ENCODING => '',
				    CURLOPT_MAXREDIRS => 10,
				    CURLOPT_TIMEOUT => 0,
				    CURLOPT_FOLLOWLOCATION => true,
				    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
				    CURLOPT_CUSTOMREQUEST => 'POST',
				    CURLOPT_POSTFIELDS => json_encode( [ $payload ] ),
				    CURLOPT_HTTPHEADER => array( 'Content-type: application/json' ),
				) );
				// set result
				$result = curl_exec( $curl );
				// set http code
				$statusCode = ( int ) curl_getinfo( $curl, CURLINFO_HTTP_CODE );
				// close connection
				curl_close( $curl );
				// convert the response from json to object
				$response = ( array ) json_decode( $result, true );
				echo "<pre>";
				var_dump($response);
			?>

Dupa ce am startat webserverul Apache din consola XAMPP am lansat in browser-ul **Chrome** pagina pt a o vizualiza folosind link=ul ****http://localhost/api_anaf/***.

Rezultatul a fost urmatorul:

			array(4) {
			  ["cod"]=>
			  int(200)
			  ["message"]=>
			  string(7) "SUCCESS"
			  ["found"]=>
			  array(1) {
			    [0]=>
			    array(7) {
			      ["date_generale"]=>
			      array(18) {
			        ["cui"]=>
			        int(14399840)
			        ["data"]=>
			        string(10) "2022-05-02"
			        ["denumire"]=>
			        string(22) "DANTE INTERNATIONAL SA"
			        ["adresa"]=>
			        string(111) "JUD. ILFOV, ORŞ. VOLUNTARI, ŞOS. BUCUREŞTI NORD, NR.15-23, BL.PARC DE BIROURI SWAN, CLADIREA A, ET.4,5 SUBS,"
			        ["nrRegCom"]=>
			        string(12) "J40/372/2002"
			        ["telefon"]=>
			        string(0) ""
			        ["fax"]=>
			        string(0) ""
			        ["codPostal"]=>
			        string(5) "77190"
			        ["act"]=>
			        string(0) ""
			        ["stare_inregistrare"]=>
			        string(31) "INREGISTRAT din data 29.08.2006"
			        ["data_inregistrare"]=>
			        string(10) "2002-01-23"
			        ["cod_CAEN"]=>
			        string(4) "4754"
			        ["iban"]=>
			        string(0) ""
			        ["statusRO_e_Factura"]=>
			        bool(false)
			        ["organFiscalCompetent"]=>
			        string(59) "Direcţia Generală de Administrare a Marilor Contribuabili"
			        ["forma_de_proprietate"]=>
			        string(47) "PROPR.PRIVATA-CAPITAL PRIVAT AUTOHTON SI STRAIN"
			        ["forma_organizare"]=>
			        string(17) "PERSOANA JURIDICA"
			        ["forma_juridica"]=>
			        string(33) "SOCIETATE COMERCIALĂ PE ACŢIUNI"
			      }
			      ["inregistrare_scop_Tva"]=>
			      array(2) {
			        ["scpTVA"]=>
			        bool(true)
			        ["perioade_TVA"]=>
			        array(1) {
			          [0]=>
			          array(4) {
			            ["data_inceput_ScpTVA"]=>
			            string(10) "2002-02-01"
			            ["data_sfarsit_ScpTVA"]=>
			            string(0) ""
			            ["data_anul_imp_ScpTVA"]=>
			            string(0) ""
			            ["mesaj_ScpTVA"]=>
			            string(0) ""
			          }
			        }
			      }
			      ["inregistrare_RTVAI"]=>
			      array(6) {
			        ["dataInceputTvaInc"]=>
			        string(0) ""
			        ["dataSfarsitTvaInc"]=>
			        string(0) ""
			        ["dataActualizareTvaInc"]=>
			        string(0) ""
			        ["dataPublicareTvaInc"]=>
			        string(0) ""
			        ["tipActTvaInc"]=>
			        string(0) ""
			        ["statusTvaIncasare"]=>
			        bool(false)
			      }
			      ["stare_inactiv"]=>
			      array(5) {
			        ["dataInactivare"]=>
			        string(0) ""
			        ["dataReactivare"]=>
			        string(0) ""
			        ["dataPublicare"]=>
			        string(0) ""
			        ["dataRadiere"]=>
			        string(0) ""
			        ["statusInactivi"]=>
			        bool(false)
			      }
			      ["inregistrare_SplitTVA"]=>
			      array(3) {
			        ["dataInceputSplitTVA"]=>
			        string(0) ""
			        ["dataAnulareSplitTVA"]=>
			        string(0) ""
			        ["statusSplitTVA"]=>
			        bool(false)
			      }
			      ["adresa_sediu_social"]=>
			      array(10) {
			        ["sdenumire_Strada"]=>
			        string(15) "Şos. Virtuţii"
			        ["snumar_Strada"]=>
			        string(3) "148"
			        ["sdenumire_Localitate"]=>
			        string(24) "Sector 6 Mun. Bucureşti"
			        ["scod_Localitate"]=>
			        string(1) "6"
			        ["sdenumire_Judet"]=>
			        string(21) "MUNICIPIUL BUCUREŞTI"
			        ["scod_Judet"]=>
			        string(2) "40"
			        ["scod_JudetAuto"]=>
			        string(1) "B"
			        ["stara"]=>
			        string(0) ""
			        ["sdetalii_Adresa"]=>
			        string(11) "spatiul E47"
			        ["scod_Postal"]=>
			        string(5) "60787"
			      }
			      ["adresa_domiciliu_fiscal"]=>
			      array(10) {
			        ["ddenumire_Strada"]=>
			        string(21) "Şos. Bucureşti Nord"
			        ["dnumar_Strada"]=>
			        string(5) "15-23"
			        ["ddenumire_Localitate"]=>
			        string(15) "Orş. Voluntari"
			        ["dcod_Localitate"]=>
			        string(3) "132"
			        ["ddenumire_Judet"]=>
			        string(5) "ILFOV"
			        ["dcod_Judet"]=>
			        string(2) "23"
			        ["dcod_JudetAuto"]=>
			        string(2) "IF"
			        ["dtara"]=>
			        string(0) ""
			        ["ddetalii_Adresa"]=>
			        string(0) ""
			        ["dcod_Postal"]=>
			        string(5) "77190"
			      }
			    }
			  }
			  ["notFound"]=>
			  array(0) {
			  }
			}

Pentru [verificarea existentei unui agent economic](https://www.anaf.ro/anaf/internet/ANAF/servicii_online/servicii_web_anaf) de tip **agricultor** sau de tip **unitate de cult(ex.ONG)** folositi cele 2 registre(cu ***URL***-urile aferente) specializate in acest scop;
Bineinteles ca si data de intrare, se plaseaza alte  **CUI**-uri(***identificatori de agent economici***) care inlocuiesc pe rand in cod pe cel de platitor de TVA;
Identificatorul fiscal( **CUI/CIF** -ul ) trebuie sa fie unul al unui **entitati agricule** respectiv al unei **unitati de cult/[ONG](https://doc.pmb.ro/institutii/primaria/directii/directia_relatia_cu_ong_sindicate_si_patronate/BD_ONG_20210714.pdf)**(de ex. o Biserica).
Mai multe detalii despre ***serviciile web*** puteti afla pe site-ul [ANAF](https://www.anaf.ro/anaf/internet/ANAF/servicii_online/servicii_web_anaf);
Aceste date/informatii ar putea fi foarte utile pentru [**generarea automata ***eFactura*** cu sintaxa ***UBL/CII***, ***containerizata*** in format ***xml*****](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf).

Pentru cei care vor sa verifice [starea/statusul eFacturii](https://static.anaf.ro/static/3/Galati/20231214122402_ajfpbrailaghid.pdf) din PhP privind procesarea ANAF, pot consulta aceasta recomandare [***IAPP***](https://iapp.ro/articol/verifica-status-incarcare-factura-api-anaf-php-oauth2); 
Daca doriti sa descarcati arhiva ZIP eFactura folosind API-ul ANAF cu autorizare OAuth2.0 din PhP puteti de asemena consulta aceasta pagina [**IAPP**](https://iapp.ro/articol/descarca-arhiva-zip-e-factura-folosind-api-anaf-php-oauth2); Daca doriti sa obtineti/generati un Token de la ANAF folosind un certificat digital abtinut anterior tot pr=entru programtorii PhP atunci puteti consulta aceasta pagin a Oauth2 de pe site-ul [**IAPP**](https://iapp.ro/articol/generare-token-anaf-folosind-certificat-digital-din-php-oauth2);

Pe github gasiti aceasta librarie **PhP** ce va ajuta sa generati o factura("[**Invoice**](https://github.com/pondersource/invoice-ubl)") in format UBL;

Pentru a putea folosi [transformatorul oficial al ANAF](https://www.slideshare.net/geomexicanu1980/prezentare-api-efactura-1pdf)  **xml to pdf** al [eFactura](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml) puteti citi acest [cod](https://happyweb.ro/articol/eroare-la-transformare-e-factura-din-xml-in-pdf) PhP

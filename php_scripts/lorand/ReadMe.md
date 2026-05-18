*Sursa*: [https://lorand.work/incarcare-factura-xml-in-platforma-spv-anaf-folosind-autentificarea-oauth-in-php/](https://lorand.work/incarcare-factura-xml-in-platforma-spv-anaf-folosind-autentificarea-oauth-in-php/)

***Mii de multumiri!!!!***

Incarcare factura XML in platforma SPV ANAF folosind autentificarea OAuth in PHP
 by Lorand Szekely  Mar 22, 2024  0 Comment
Intr-un articol separat (Autentificare OAuth si obtinere token JWT de la ANAF folosind PHP) am descris modul de autentificare prin OAuth in platforma ANAF si obtinerea tokenului JWT care autorizeaza o aplicatie terta sa comunice cu platforma ANAF in numele unui client. Scopul acestei comunicari este transmiterea sau descarcarea facturilor electronice in SPV (Spatiul Privat Virtual) in format XML in contextul implementarii proiectului e-Factura de catre Ministerul de Finante.

Resurse importante pentru crearea fisierului XML si pentru transmiterea facturilor catre SPV pot fi gasite aici:

https://mfinante.gov.ro/web/efactura/informatii-tehnice
https://www.anaf.ro/anaf/internet/ANAF/servicii_online/servicii_web_anaf/
In contextul incarcarii facturii xml in SPV, ANAF pune la dispozitie servicii web pentru:

validarea fisierului xml
upload-ul fisierului xml
verificarea starii unei facturi incarcate anterior
descarcarea unui raspuns
Mai jos vom crea metode pentru fiecare din aceste servicii web. Metodele fac parte din aceeasi clasa ANAF pe care am creat-o in primul articol (Autentificare OAuth si obtinere token JWT de la ANAF folosind PHP).

1. Validarea fisierului XML
Pentru validarea fisierului xml (serviciu care nu necesita autentificare) vom crea metoda validare_factura_xml().

public function validare_factura_xml($xml_filename){
	//VALIDARE
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, "https://webservicesp.anaf.ro/prod/FCTEL/rest/validare/FACT1");
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
	curl_setopt($ch, CURLOPT_POSTFIELDS, file_get_contents($xml_filename));
	curl_setopt($ch, CURLOPT_HTTPHEADER,
		array(
			'Content-Type: text/plain'
		)
	);		
	$resp = curl_exec($ch);
	$resp = json_decode($resp, true);
	
	if ($resp['stare'] == 'ok'){
		return ['result' => 0];
	}
	else{
		return ['result' => 1, 'errors' => $resp['Messages']];
	}
}

Asa cum aminteste si documentatia, daca raspunsul returnat este de forma:

The requested URL was rejected. Please consult with your administrator.
Your support ID is: 15320385530209486105
[Go Back]

atunci, recomandarea ANAF este sa se elimine din continutul fisierului xml urmatoarea secventa:

xsi:schemaLocation="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2 ../../UBL-2.1(1)/xsd/maindoc/UBL
Invoice-2.1.xsd"

2. Upload fisier XML
In continuare, daca fisierul xml a fost validat, urmeaza upload-ul acestuia in platforma SPV. Pentru aceasta vom crea metoda upload_factura_xml(). Accesarea acestui serviciu web necesita autentificare. Parametrul cif va contine partea numerica a codului fiscal al entitatii in numele careia se incarca fisierul xml.

public function upload_factura_xml($xml_filename){
	global $db;
	
	//verificare existenta token valid pentru ANAF
	if (!$this->get_last_valid_token()){
		return ['result' => 1, 'error' => 'Nu exista token valabil.'];
	}
	
	//POSTARE (upload)
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, 'https://api.anaf.ro/prod/FCTEL/rest/upload?standard=UBL&cif=COD_FISCAL');
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
	curl_setopt($ch, CURLOPT_POSTFIELDS, file_get_contents($xml_filename));
	curl_setopt($ch, CURLOPT_HTTPHEADER,
		array(
			"Authorization: Bearer {$this->token_info['access_token']}",
			"Content-Type: text/plain",
			"Accept-Encoding: gzip, deflate, br",
			"Connection: keep-alive"
		)
	);		
	
	$resp = curl_exec($ch);
	
	$dateResponse = $ExecutionStatus = $index_incarcare = null;
	if (preg_match("/dateResponse=\"(\d*)\"/", $resp, $matches)) $dateResponse = $matches[1];
	if (preg_match("/ExecutionStatus=\"(\d*)\"/", $resp, $matches)) $ExecutionStatus = $matches[1];
	if (preg_match("/index_incarcare=\"(\d*)\"/", $resp, $matches)) $index_incarcare = $matches[1];
	
	if (!is_null($dateResponse) && !is_null($ExecutionStatus) && !is_null($index_incarcare)){
		return ['result' => 0, 'dateResponse' => $dateResponse, 'ExecutionStatus' => $ExecutionStatus, 'index_incarcare' => $index_incarcare];
	}
	else{
		return ['result' => 1, 'errors' => $resp];
	}
}

Din raspunsul returnat de serviciul web ANAF am extras 3 parametri de care am avut nevoie si am considerat ca daca niciunul din acestia nu este null, atunci inseamna ca apelul a fost cu succes.

Informatiile extrase din raspunsul ANAF le salvam intr-o tabela in care pastram relatia dintre numarul facturii si indexul de incarcare de care vom avea nevoie in continuare (pentru ca in ANAF nu se pot face cautari dupa numarul de factura):

$r = $db->query("INSERT INTO anaf_spv
				SET nr_factura = '$row[nr_factura]',
					dateResponse = '$dateResponse',
					ExecutionStatus = '$res[ExecutionStatus]',
					index_incarcare = '$res[index_incarcare]';");

3. Verificare stare mesaj
La scurt timp dupa incarcarea facturii, aceasta este procesata, iar ANAF furnizeaza ca raspuns un mesaj. Urmatorul pas este verificarea starii mesajului corespunzator facturii incarcate in SPV. Functia propusa pentru aceasta interogare este verificare_stare_mesaj(). Apelul acestui serviciu necesita autentificare si se face pe baza indexului de incarcare obtinut in pasul anterior.

public function verificare_stare_mesaj($nr_factura){
	global $db;
	
	//verificare existenta token valid pentru ANAF
	if (!$this->get_last_valid_token()){
		return ['result' => 1, 'error' => 'Nu exista token valabil.'];
	}
	
	//citire detalii factura incarcata anterior
	$r = $db->query("SELECT * FROM anaf_spv WHERE nr_factura = '$nr_factura';");
	$f = $r[0];
	
	//interogare
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, 'https://api.anaf.ro/prod/FCTEL/rest/stareMesaj?id_incarcare=' . $f['index_incarcare']);
	curl_setopt($ch, CURLOPT_POST, 0);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
	curl_setopt($ch, CURLOPT_HTTPHEADER,
		array(
			"Authorization: Bearer {$anaf->token_info['access_token']}",
			"Content-Type: text/plain",
			"Accept-Encoding: gzip, deflate, br",
			"Connection: keep-alive"
		)
	);		
	
	//verbose output
	curl_setopt($ch, CURLOPT_VERBOSE, true);
	$streamVerboseHandle = fopen('php://temp', 'w+');
	curl_setopt($ch, CURLOPT_STDERR, $streamVerboseHandle);

	$resp = curl_exec($ch);
	
	rewind($streamVerboseHandle);
	$verboseLog = stream_get_contents($streamVerboseHandle);

	//mesaje: ok (prelucrare cu succes), nok (prelucrare esuata), in prelucrare, XML cu erori nepreluat in sistem
	$stare = $id_descarcare = null;
	
	//extragere a erorilor din formatul XML
	$errors = [];
	$xml = simplexml_load_string($resp);
	if (isset($xml->Errors) && count($xml->Errors->attributes())){
		foreach($xml->Errors->attributes() AS $msg){
			$errors[] = $msg;
		}
	}
	
	if (trim($resp) == ''){
		error_log("Interogare raspuns ANAF: $nr_factura");
		error_log($verboseLog);
		return ['result' => 1, 'error' => 'Raspuns vid la interogarea ANAF (verifica error_log)'];
	}

	//stare
	if (preg_match("/header xmlns=\".*stareMesajFactura.*\" stare=\"([a-z\s\d]*)\"/", $resp, $matches)){
		$stare = $matches[1];
	}
	elseif (preg_match("/Errors errorMessage=\".*stareMesajFactura.*\" stare=\"([a-z\s\d]*)\"/", $resp, $matches)){
		$stare = $matches[1];
	}

	//id_descarcare
	if (preg_match("/id_descarcare=\"(\d*)\"/", $resp, $matches)) $id_descarcare = $matches[1];
	
	if (!is_null($stare)){
		//succes
		return ['result' => 0, 'stare' => $stare, 'id_descarcare' => $id_descarcare, 'resp' => $resp];
	}
	else{
		//eroare
		if (count($errors))	return ['result' => 1, 'error' => implode(', ', $errors)];
		else				return ['result' => 1, 'error' => $resp];
	}
}

Daca raspunsul returnat este cu succes, atunci actualizam informatia legata de starea mesajului in aceeasi tabela in care am salvat indexul de incarcare:

$db->query("UPDATE anaf_spv
			SET stare = '$res[stare]',
				id_descarcare = '$res[id_descarcare]'
				stare_verificata_la = NOW()
			WHERE nr_factura = '$row[nr_factura]';");

4. Descarcare raspuns
Descarcarea unui raspuns se face pe baza parametrului id_descarcare obtinut mai sus si care este asociat facturii. Apelul acestui serviciu necesita autentificare.

Functia de mai jos efectueaza apelul serviciului web, apoi verifica daca informatia returnata este de tip fisier zip, iar apoi salveaza fisierul local, pe server.

Raspunsul returnat de servicul web, in caz de succes, trebuie sa fie un fisier zip care contine:

factura in format xml (cea care a fost uploadata initial)
factura in format xml semnata de ANAF (practic este acelasi fisier xml ca si cel uploadat initial, in care a fost adaugata semnatura cu certificatul ANAF)
Acest fisier zip este considerat ca fiind factura originala.

public function descarcare_raspuns($nr_factura){
	global $db;
	
	//verificare existenta token valid pentru ANAF
	if (!$this->get_last_valid_token()){
		return ['result' => 1, 'error' => 'Nu exista token valabil.'];
	}
	
	//citire detalii factura incarcata anterior
	$r = $db->query("SELECT * FROM anaf_spv WHERE nr_factura = '$nr_factura';");
	$f = $r[0];
	$id_descarcare = $f['id_descarcare'];
	
	//interogare
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, 'https://api.anaf.ro/prod/FCTEL/rest/descarcare?id=' . $id_descarcare);
	curl_setopt($ch, CURLOPT_POST, 0);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
	curl_setopt($ch, CURLOPT_HTTPHEADER,
		array(
			"Authorization: Bearer {$anaf->token_info['access_token']}",
			"Content-Type: text/plain",
			"Accept-Encoding: gzip, deflate, br",
			"Connection: keep-alive"
		)
	);		
	
	//verbose output
	curl_setopt($ch, CURLOPT_VERBOSE, true);
	$streamVerboseHandle = fopen('php://temp', 'w+');
	curl_setopt($ch, CURLOPT_STDERR, $streamVerboseHandle);
	
	$resp = curl_exec($ch);
	
	rewind($streamVerboseHandle);
	$verboseLog = stream_get_contents($streamVerboseHandle);
	
	//verific daca raspunsul returnat este fisier zip
	if (substr($resp, 0, 4) == "\x50\x4b\x03\x04"){
		//salvez fisierul zip
		$filepath = LOCAL_PATH . "/documente-facturi/$nr_factura";
		$filename = "{$id_descarcare}.zip";
		
		//daca nu exista folderul destinatie il creez
		if (!is_dir($filepath)) mkdir($filepath);
		
		//scriere continut fisier zip
		$f = fopen($filepath . '/' . $filename, 'w');
		fwrite($f, $resp);
		fclose($f);
		chmod($filepath . '/' . $filename, 0755);
		
		//returnare rezultat
		return ['result' => 0, 'filename' => $filepath . '/' . $filename];
	}
	else{
		//NU este continut fisier zip
		return ['result' => 1, 'error' => $resp . "\n" . $verboseLog];
	}
}

ANAFe-FacturaOAuthSPV

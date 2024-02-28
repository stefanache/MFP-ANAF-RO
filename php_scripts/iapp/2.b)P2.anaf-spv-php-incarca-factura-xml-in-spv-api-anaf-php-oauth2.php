<?PHP 
	//	https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2
	//	2.Trimite factura XML în SPV
	//		https://iapp.ro/articol/incarca-factura-xml-in-spv-api-anaf-php-oauth2
	//		Pasul 2 : Trimite factura in SPV
	//		b) cu CIF

    $cif = "";
    $token = "";
    $factura_xml = "";

    $url = "https://api.anaf.ro/test/FCTEL/rest/upload?standard=UBL&cif=".$cif;
    $xmlContent = file_get_contents($factura_xml);
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_POST => true,
        CURLOPT_POSTFIELDS => $xmlContent,
        CURLOPT_HTTPHEADER => array(
            'Content-Type: application/xml',
            'Authorization: Bearer '.$token
        ),
    ));
    
    $response = curl_exec($curl);
    
    if (curl_errno($curl)) {
        echo 'Curl error: ' . curl_error($curl);
    }
    curl_close($curl);
    print_r($response);

    $xml = new SimpleXMLElement($response);
    $array = (array)$xml;

    print_r($array);
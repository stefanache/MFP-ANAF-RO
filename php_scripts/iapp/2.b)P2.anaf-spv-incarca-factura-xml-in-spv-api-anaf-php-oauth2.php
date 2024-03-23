<?PHP 
	//	https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2
	//	2.Trimite factura XML în SPV
	//		https://iapp.ro/articol/verifica-status-incarcare-factura-api-anaf-php-oauth2
	//  	Pasul 2: Trimite factură în SPV 
	//		-a)fara CIF

    $token = "";
    $id_incarcare = "";

    $url = "https://api.anaf.ro/test/FCTEL/rest/stareMesaj?id_incarcare=".$id_incarcare;

    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'GET',
        CURLOPT_HTTPHEADER => array(
            'Authorization: Bearer '.$token
        ),
    ));
    
    $response = curl_exec($curl);
    
    curl_close($curl);
    echo $response;

    $xml = new SimpleXMLElement($response);
    $array = (array)$xml;

    print_r($array);

    echo "<hr>";
    echo $array["@attributes"]["stare"];
    echo "<hr>";
    echo $array["@attributes"]["id_descarcare"];

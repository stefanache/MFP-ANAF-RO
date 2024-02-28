<?PHP
	//	https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2
	//	https://iapp.ro/articol/paginare-mesaje-din-spv-api-anaf-php-oauth2
	//	Pasul2: Trimite factură în SPV
	//	vezi si link: https://iapp.ro/public/blog/anaf-spv-php-listaMesajePaginatieFactura.txt
	
    $cif = "";
    $token = "";
    $startTime = strtotime(date("y-m-20"))*1000;
    $endTime = strtotime(date("y-m-23"))*1000;
    $pagina = "1";

    $url = "https://api.anaf.ro/prod/FCTEL/rest/listaMesajePaginatieFactura?startTime=$startTime&endTime=$endTime&cif=$cif&pagina=$pagina";
    
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

    print_r($response);
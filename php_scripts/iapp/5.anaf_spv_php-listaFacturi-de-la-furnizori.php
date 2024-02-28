<?PHP
	//	https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2
	//	https://iapp.ro/articol/extrage-lista-de-facturi-de-la-furnizori-din-spv-php-oauth2
	//	Pasul 2: Vizualizare mesaje / facturi disponibile în SPV

    $cif = "";
    $token = "";

    $url = "https://api.anaf.ro/test/FCTEL/rest/listaMesajeFactura?zile=60&cif=".$cif;
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
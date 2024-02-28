<?PHP
	//	https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2
	//	https://iapp.ro/articol/descarca-arhiva-zip-e-factura-folosind-api-anaf-php-oauth2
	//	Pasul 2 : Descarcă răspunsul / factura ZIP
	//	vezi si https://iapp.ro/public/blog/anaf-spv-php-descarcare.txt
	
    $id_descarcare = "00000000000000";
    $token = "";

    $url = "https://api.anaf.ro/test/FCTEL/rest/descarcare?id=".$id_descarcare;
    $filepath = $id_descarcare".zip";

    /** Descarca fisierul si salveaza-l in locatia $filepath */
    $fp = fopen($filepath, 'w+');
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_BINARYTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'GET',
        CURLOPT_FILE => $fp,
        CURLOPT_HTTPHEADER => array(
        'Authorization: Bearer '.$token
        ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    fclose($fp);
    echo (filesize($filepath) > 0)? "true" : "false";

    /** 
        Ce urmeaza? 
        Dezarhiveaza fisierul ZIP primit
        Prelucreaza continutul XML
    */
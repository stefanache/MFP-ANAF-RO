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

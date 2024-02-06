<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
<?php
	//	http://localhost/MFP/importXML_LocRel.php

	$data_publicare="02.02.2024";
	
	$debug=false;
	$truncate=true;

	$table_name="nom_localitati_relatii";

	//  connect to database
	$servername = "localhost";
	$username	= "root";
	$password 	= "";
	$dbname 	= "nomen";
		
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);

	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	if($truncate){
		//delete all records
		$query_emptying = "TRUNCATE table ".$table_name;


		if (mysqli_multi_query($conn, $query_emptying)) {
			echo "Truncated Successfull: ".$table_name;
		} else {
			echo "Error:" . mysqli_error($conn);
		}
	}
	
	$row_crt=1;
			
	for ($cod_judLoc = 1; $cod_judLoc < 41; $cod_judLoc++ ){
		
		//$cod_judLoc=1;				 //ALBA
		// get xml from url
		//$url = 'https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomLocalitatiRelatii_28_02.02.2024.xml';		
		
		$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomLocalitatiRelatii_".$cod_judLoc."_".$data_publicare.".xml";

		$content = file_get_contents($url);

		$xml = simplexml_load_string($content) or die("Error: Cannot create object");
	
		foreach ($xml->rand as $randElement) {
		 
			// get elements
			$cod_politie_v 				= $randElement->COD_POLITIE_V;
			if(empty($cod_politie_v)) $cod_politie_v=0;
			$cod_politie_n				= $randElement->COD_POLITIE_N;
			if(empty($cod_politie_n)) $cod_politie_n=0;			
			$loc_jud_cod 				= $randElement->LOC_JUD_COD;
			$loc_cod 					= $randElement->LOC_COD;
			$loc_jud_cod_n 				= $randElement->LOC_JUD_COD_N;
			$loc_cod_n 					= $randElement->LOC_COD_N;
			
			
			if($debug){
				// echo elements
				echo '<strong>LOC_COD</strong>: '. $loc_cod . '<br>';
				echo '<strong>LOC_COD_N</strong>: '. $loc_cod_n . '<br>';
				echo '<br>---<br>'; // separator
			}

			// start sql statement
			$sql_insert = "INSERT INTO ".$table_name."(pk_lcrel, COD_POLITIE_V, COD_POLITIE_N, LOC_JUD_COD, LOC_COD, LOC_JUD_COD_N, LOC_COD_N )
			VALUES ($row_crt, $cod_politie_v, $cod_politie_n, $loc_jud_cod, $loc_cod, $loc_jud_cod_n, $loc_cod_n  )";

			if ($conn->query($sql_insert) === TRUE) {
				echo "<br/>".$row_crt.".".$loc_cod.",".$loc_cod_n;
			} else {
				echo "Error: " . $sql_insert . "<br>" . $conn->error;
			}
			
			$row_crt++;;
		}
		echo('<br/>*** judetul cu codul '.$loc_jud_cod.' a fost descarcat! ***');
		echo '<br/><hr/><br/>'; // separator
	}
	
	$conn->close();
?>
  </body>
</html>
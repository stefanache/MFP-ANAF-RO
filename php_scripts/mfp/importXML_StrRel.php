<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
  
<?php
	set_time_limit(-1);
	//	http://localhost/MFP/importXML_StrRel.php

	$data_publicare="02.02.2024";
	
	$debug=false;
	$truncate=true;

	$table_name="nom_arterelatii";

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
		//$url = 'https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomArtereRel_1_02.02.2024.xml';		
		
		$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomArtereRel_".$cod_judLoc."_".$data_publicare.".xml";

		$content = file_get_contents($url);

		$xml = simplexml_load_string($content) or die("Error: Cannot create object");
	
		foreach ($xml->rand as $randElement) {
		 
			// get elements
			$arf_loc_jud_cod 		= $randElement->ARF_LOC_JUD_COD;
			$arf_loc_cod_vechi 		= $randElement->ARF_LOC_COD_VECHI;
			$arf_cod_vechi 	 		= $randElement->ARF_COD_VECHI;
			$arf_loc_jud_cod_nou 	= $randElement->ARF_LOC_JUD_COD_NOU;				
			$arf_loc_cod_nou 		= $randElement->ARF_LOC_COD_NOU;
			$arf_cod_nou 			= $randElement->ARF_COD_NOU;			
			$data			 		= $randElement->data;
			$cod_politie_loc_v		= $randElement->COD_POLITIE_LOC_V;
			if(empty($cod_politie_loc_v)) $cod_politie_loc_v=0;
			$cod_politie_str_v		= $randElement->COD_POLITIE_STR_V;
			if(empty($cod_politie_str_v)) $cod_politie_str_v=0;
			$cod_politie_loc_n		= $randElement->COD_POLITIE_LOC_N;
			if(empty($cod_politie_loc_n)) $cod_politie_loc_n=0;			
			$cod_politie_str_n		= $randElement->COD_POLITIE_STR_N;
			if(empty($cod_politie_str_n)) $cod_politie_str_n=0;
			
			if($debug){
				// echo elements
				echo '<strong>ARF_COD_VECHI/strong>: '. $arf_cod_vechi . '<br>';
				echo '<strong>ARF_COD_NOU</strong>: '. $arf_cod_nou . '<br>';
				echo '<br>---<br>'; // separator
			}

			// start sql statement
			$sql_insert = "INSERT INTO ".$table_name."(pk_artrel, ARF_LOC_JUD_COD, ARF_LOC_COD_VECHI, ARF_COD_VECHI, ARF_LOC_JUD_COD_NOU, ARF_LOC_COD_NOU, ARF_COD_NOU, DATA, COD_POLITIE_LOC_V, COD_POLITIE_STR_V, COD_POLITIE_LOC_N, COD_POLITIE_STR_N)
			VALUES ($row_crt, $arf_loc_jud_cod, $arf_loc_cod_vechi, $arf_cod_vechi, $arf_loc_jud_cod_nou, $arf_loc_cod_nou, $arf_cod_nou, '$data', $cod_politie_loc_v, $cod_politie_str_v, $cod_politie_loc_n, $cod_politie_str_n )";

			if ($conn->query($sql_insert) === TRUE) {
				echo "<br/>".$row_crt.".".$arf_cod_vechi.",".$arf_cod_nou;
			} else {
				echo "Error: " . $sql_insert . "<br>" . $conn->error;
			}
			
			$row_crt++;;
		}
		echo('<br/>*** judetul cu codul '.$arf_loc_jud_cod.' a fost descarcat! ***');
		echo '<br/><hr/><br/>'; // separator
	}
	
	$conn->close();
?>

 </body>
</html>
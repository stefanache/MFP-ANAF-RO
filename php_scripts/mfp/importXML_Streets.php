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
	//	http://localhost/MFP/importXML_Streets.php

	$data_publicare="02.02.2024";
	
	$debug=false;
	$truncate=true;

	$table_name="nom_artere_mf";

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
		//$url = 'https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomArtereMF_1_02.02.2024.xml';		
		
		$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomArtereMF_".$cod_judLoc."_".$data_publicare.".xml";

		$content = file_get_contents($url);

		$xml = simplexml_load_string($content) or die("Error: Cannot create object");
	
		foreach ($xml->rand as $randElement) {
		 
			// get elements
			$loc_jud_cod 			= $randElement->LOC_JUD_COD;
			$loc_cod 				= $randElement->LOC_COD;
			$cod 	 				= $randElement->COD;
			$cod_politie			= $randElement->COD_POLITIE;
			if(empty($cod_politie)) $cod_politie=0;			
			$denumire 				= $randElement->DENUMIRE;
			$sar_cod				= $randElement->SAR_COD;			
			$tat_cod 				= $randElement->TAT_COD;
			$stare_politie			= $randElement->STARE_POLITIE;
			$cod_err 				= $randElement->COD_ERR;
			$data_inf				= $randElement->DATA_INF;				
			$data_desf				= $randElement->DATA_DESF;
			$info 	 				= $randElement->INFO;
			$nr_sector 				= $randElement->NR_SECTOR;			
			$cod_politie_loc		= $randElement->COD_POLITIE_LOC;		
			$cod_postal				= $randElement->COD_POSTAL;
			
			if($debug){
				// echo elements
				echo '<strong>COD</strong>: '. $cod . '<br>';
				echo '<strong>DENUMIRE</strong>: '. $denumire . '<br>';
				echo '<br>---<br>'; // separator
			}

			// start sql statement
			$sql_insert = "INSERT INTO ".$table_name."(pk_art, LOC_JUD_COD, LOC_COD, COD, COD_POLITIE, DENUMIRE, SAR_COD, TAT_COD, STARE_POLITIE, COD_ERR, DATA_INF, DATA_DESF, INFO, NR_SECTOR, COD_POLITIE_LOC, COD_POSTAL )
			VALUES ($row_crt, $loc_jud_cod, $loc_cod, $cod, $cod_politie, '$denumire', '$sar_cod', '$tat_cod', '$stare_politie', '$cod_err', '$data_inf', '$data_desf', '$info', $nr_sector, $cod_politie_loc, '$cod_postal' )";

			if ($conn->query($sql_insert) === TRUE) {
				echo "<br/>".$row_crt.".".$cod.",".$denumire;
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
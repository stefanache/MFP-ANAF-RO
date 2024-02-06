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
	//	http://localhost/MFP/importXML_StrHistory.php

	$data_publicare="02.02.2024";
	
	$debug=false;
	$truncate=true;

	$table_name="nom_artereist";

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
		//$url = 'https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomArtereIst_1_02.02.2024.xml';		
		
		$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomArtereIst_".$cod_judLoc."_".$data_publicare.".xml";

		$content = file_get_contents($url);

		$xml = simplexml_load_string($content) or die("Error: Cannot create object");
	
		foreach ($xml->rand as $randElement) {
		 
			// get elements
			$arf_loc_jud_cod 		= $randElement->ARF_LOC_JUD_COD;
			$arf_loc_cod 			= $randElement->ARF_LOC_COD;
			$arf_cod 	 			= $randElement->ARF_COD;
			$tip_modif				= $randElement->TIP_MODIF;				
			$nr_secv_modif			= $randElement->NR_SECV_MODIF;			
			$cod_politie			= $randElement->COD_POLITIE;
			if(empty($cod_politie)) $cod_politie=0;			
			$denumire 				= $randElement->DENUMIRE;			
			$tat_cod 				= $randElement->TAT_COD;
			$nr_sector 				= $randElement->NR_SECTOR;
			$sar_cod				= $randElement->SAR_COD;					
			$cod_politie_loc		= $randElement->COD_POLITIE_LOC;		
			
			if($debug){
				// echo elements
				echo '<strong>COD</strong>: '. $arf_cod . '<br>';
				echo '<strong>DENUMIRE</strong>: '. $denumire . '<br>';
				echo '<br>---<br>'; // separator
			}

			// start sql statement
			$sql_insert = "INSERT INTO ".$table_name."(pk_artist, ARF_LOC_JUD_COD, ARF_LOC_COD, ARF_COD, TIP_MODIF, NR_SECV_MODIF, COD_POLITIE, DENUMIRE, TAT_COD, NR_SECTOR, SAR_COD, COD_POLITIE_LOC )
			VALUES ($row_crt, $arf_loc_jud_cod, $arf_loc_cod, $arf_cod, '$tip_modif', $nr_secv_modif, $cod_politie, '$denumire', '$tat_cod', $nr_sector, '$sar_cod', $cod_politie_loc )";

			if ($conn->query($sql_insert) === TRUE) {
				echo "<br/>".$row_crt.".".$arf_cod.",".$denumire;
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
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
<?php
	//	http://localhost/MFP/importXML_Localities.php

	$data_publicare="02.02.2024";
	
	$debug=false;
	$truncate=true;

	$table_name="nom_localitati";

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
		//$url = 'https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomLocalitati_1_02.02.2024.xml';		
		
		$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomLocalitati_".$cod_judLoc."_".$data_publicare.".xml";

		$content = file_get_contents($url);

		$xml = simplexml_load_string($content) or die("Error: Cannot create object");
	
		foreach ($xml->rand as $randElement) {
		 
			// get elements
			$jud_cod 				= $randElement->JUD_COD;
			$cod 					= $randElement->COD;
			$cod_politie 			= $randElement->COD_POLITIE;
			if(empty($cod_politie)) $cod_politie=0;
			$denumire 				= $randElement->DENUMIRE;
			$tpl_cod 				= $randElement->TPL_COD;
			$den_scurta				= $randElement->DEN_SCURTA;
			$cod_postal				= $randElement->COD_POSTAL;
			$sar_cod 				= $randElement->SAR_COD;
			$loc_jud_cod			= $randElement->LOC_JUD_COD;
			$loc_cod 				= $randElement->LOC_COD;
			$nr_mediu_loc 			= $randElement->NR_MEDIU_LOC;
			if(empty($nr_mediu_loc)) $nr_mediu_loc=0;
			$are_primarie			= $randElement->ARE_PRIMARIE;
			$cod_fiscal_primarie	= $randElement->COD_FISCAL_PRIMARIE;
			$cod_politie_tata		= $randElement->COD_POLITIE_TATA;
			$sar_cod_mf 			= $randElement->SAR_COD_MF;
			
			if($debug){
				// echo elements
				echo '<strong>COD</strong>: '. $cod . '<br>';
				echo '<strong>DENUMIRE</strong>: '. $denumire . '<br>';
				echo '<br>---<br>'; // separator
			}

			// start sql statement
			$sql_insert = "INSERT INTO ".$table_name."(pk_loc, JUD_COD, COD, COD_POLITIE, DENUMIRE, TPL_COD, DEN_SCURTA, COD_POSTAL, SAR_COD, LOC_JUD_COD, LOC_COD, NR_MEDIU_LOC, ARE_PRIMARIE, COD_FISCAL_PRIMARIE, COD_POLITIE_TATA, SAR_COD_MF )
			VALUES ($row_crt, $jud_cod, $cod, $cod_politie, '$denumire', '$tpl_cod', '$den_scurta', $cod_postal, '$sar_cod', $loc_jud_cod, $loc_cod, $nr_mediu_loc, '$are_primarie', $cod_fiscal_primarie, $cod_politie_tata, '$sar_cod_mf' )";

			if ($conn->query($sql_insert) === TRUE) {
				echo "<br/>".$row_crt.".".$cod.",".$denumire;
			} else {
				echo "Error: " . $sql_insert . "<br>" . $conn->error;
			}
			
			$row_crt++;;
		}
		echo('<br/>*** judetul cu codul '.$jud_cod.' a fost descarcat! ***');
		echo '<br/><hr/><br/>'; // separator
	}
	
	$conn->close();
?>
  </body>
</html>
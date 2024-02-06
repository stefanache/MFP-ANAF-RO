<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
  
<?php
	//	http://localhost/MFP/importXML_LocHistory.php

	$data_publicare="02.02.2024";
	
	$debug=false;
	$truncate=true;

	$table_name="nom_locist";

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
		//$url = 'https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomLocist_1_02.02.2024.xml';		
		
		$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomLocist_".$cod_judLoc."_".$data_publicare.".xml";

		$content = file_get_contents($url);

		$xml = simplexml_load_string($content) or die("Error: Cannot create object");
	
		foreach ($xml->rand as $randElement) {
		 
			// get elements
			$loc_jud_cod 			= $randElement->LOC_JUD_COD;
			$loc_cod 				= $randElement->LOC_COD;
			$nr_mod 	 			= $randElement->NR_MOD;
			$denumire 				= $randElement->DENUMIRE;
			$data 					= $randElement->DATA;			
			$tpl_cod 				= $randElement->TPL_COD;
			$cod_politie			= $randElement->COD_POLITIE;
			if(empty($cod_politie)) $cod_politie=0;
			$cod_politie_tata		= $randElement->COD_POLITIE_TATA;
			$jud_cod_tata			= $randElement->JUD_COD_TATA;			
			$cod_tata				= $randElement->COD_TATA;
			
			if($debug){
				// echo elements
				echo '<strong>COD</strong>: '. $loc_jud_cod . '<br>';
				echo '<strong>DENUMIRE</strong>: '. $denumire . '<br>';
				echo '<br>---<br>'; // separator
			}

			// start sql statement
			$sql_insert = "INSERT INTO ".$table_name."(pk_lcist, LOC_JUD_COD, LOC_COD, NR_MOD, DENUMIRE, DATA, TPL_COD, COD_POLITIE, COD_POLITIE_TATA, JUD_COD_TATA, COD_TATA )
			VALUES ($row_crt, $loc_jud_cod, $loc_cod, $nr_mod, '$denumire', '$data', '$tpl_cod', $cod_politie, $cod_politie_tata, $jud_cod_tata, $cod_tata )";

			if ($conn->query($sql_insert) === TRUE) {
				echo "<br/>".$row_crt.".".$loc_cod.",".$denumire;
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
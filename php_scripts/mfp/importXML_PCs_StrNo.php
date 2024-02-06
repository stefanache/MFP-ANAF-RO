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
	//	http://localhost/MFP/importXML_PCs_StrNo.php

	$data_publicare="02.02.2024";
	
	$debug=false;
	$truncate=true;

	$table_name="nom_cod_postale_numar_strazi";

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
		//$url = 'https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomCodNrStrazi_1_02.02.2024.xml';		
		
		$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomCodNrStrazi_".$cod_judLoc."_".$data_publicare.".xml";

		$content = file_get_contents($url);

				$have_data=false;
		try{
			$xml = simplexml_load_string($content);
			$have_data=true;
		}catch (Exception $e) {
			 echo 'and the error is: ',  $e->getMessage(), "\n<br/>";
			 echo ("Error: Cannot create object for county code ".$cod_judLoc);
		}
		if($have_data){
			foreach ($xml->rand as $randElement) {
			 
				// get elements
				$loc_jud_cod 			= $randElement->LOC_JUD_COD;
				$loc_cod 				= $randElement->LOC_COD;
				$cod 	 				= $randElement->COD;
				$numar_start			= $randElement->NUMAR_START;			
				$numar_sfarsit			= $randElement->NUMAR_SFARSIT;
				$paritate 				= $randElement->PARITATE;		
				$cod_postal				= $randElement->COD_POSTAL;
				
				if($debug){
					// echo elements
					echo '<strong>COD</strong>: '. $cod . '<br>';
					echo '<strong>COD_POSTAL</strong>: '. $cod_postal . '<br>';
					echo '<br>---<br>'; // separator
				}

				// start sql statement
				$sql_insert = "INSERT INTO ".$table_name."(pk_cpnrstr, LOC_JUD_COD, LOC_COD, COD, NUMAR_START, NUMAR_SFARSIT, PARITATE, COD_POSTAL )
				VALUES ($row_crt, $loc_jud_cod, $loc_cod, $cod, '$numar_start', '$numar_sfarsit', '$paritate', '$cod_postal' )";

				if ($conn->query($sql_insert) === TRUE) {
					echo "<br/>".$row_crt.".".$cod.",".$cod_postal;
				} else {
					echo "Error: " . $sql_insert . "<br>" . $conn->error;
				}
				
				$row_crt++;;
			}
		}
		echo('<br/>*** judetul cu codul '.$cod_judLoc.' a fost rezolvat! ***');
		echo '<br/><hr/><br/>'; // separator
	}
	
	$conn->close();
?>

 </body>
</html>
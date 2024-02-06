<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
<?php
	//	http://localhost/MFP/importXML_tariValute.php

	$debug=false;

	// get xml from url
	//$url = 'https://localhost/MFP/downloads/nomTariValute.xml';
	$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomTariValute.xml";

	$content = file_get_contents($url);

	$xml = simplexml_load_string($content) or die("Error: Cannot create object");

	
	$table_name="nom_tari_valute";
	$row_crt=1;
	
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
	
	//delete all records
	$query_emptying = "TRUNCATE table ".$table_name;


	if (mysqli_multi_query($conn, $query_emptying)) {
		echo "Truncated Successfull: ".$table_name;
	} else {
		echo "Error:" . mysqli_error($conn);
	}
	
	
	foreach ($xml->rand as $randElement) {
	 
		// get elements
		$cod 				= $randElement->COD;
		$stare 				= $randElement->STARE;
		$capitala 			= $randElement->CAPITALA;
		$denumire 			= $randElement->DENUMIRE;
		$forma_guvern 		= $randElement->FORMA_GUVERN;
		$cod_tara_fiscal 	= $randElement->COD_TARA_FISCAL;
		$cod_bnr 			= $randElement->COD_BNR;
		$valuta 			= $randElement->VALUTA;
		$cedi 				= $randElement->CEDI;
		$cod_sm 			= $randElement->COD_SM;
		$ue 				= $randElement->UE;
		
		if($debug){
			// echo elements
			echo '<strong>COD</strong>: '. $cod . '<br>';
			echo '<strong>STARE</strong>: '. $stare . '<br>';
			echo '<strong>CAPITALA</strong>: '. $capitala . '<br>';
			echo '<strong>DENUMIRE</strong>: '. $denumire . '<br>';
			echo '<strong>FORMA_GUVERN</strong>: '. $forma_guvern . '<br>';
			echo '<strong>COD_TARA_FISCAL</strong>: '. $cod_tara_fiscal . '<br>';
			echo '<strong>COD_BNR</strong>: '. $cod_bnr . '<br>';
			echo '<strong>VALUTA</strong>: '. $valuta . '<br>';
			echo '<strong>CEDI</strong>: '. $cedi . '<br>';
			echo '<strong>COD_SM</strong>: '. $cod_sm . '<br>';
			echo '<strong>UE</strong>: '. $ue . '<br>';
			echo '<br>---<br>'; // separator
		}

		// start sql statement
		$sql_insert = "INSERT INTO ".$table_name."(pk_tv, COD, STARE, CAPITALA, DENUMIRE, FORMA_GUVERN, COD_TARA_FISCAL, COD_BNR, VALUTA, CEDI, COD_SM, UE )
		VALUES ($row_crt, $cod, '$stare', '$capitala','$denumire', '$forma_guvern', $cod_tara_fiscal, '$cod_bnr', '$valuta', '$cedi', '$cod_sm', $ue)";

		if ($conn->query($sql_insert) === TRUE) {
			echo "<br/>".$row_crt.".".$cod.",".$denumire.",".$valuta;
		} else {
			echo "Error: " . $sql_insert . "<br>" . $conn->error;
		}
		
		$row_crt++;;
	}
	$conn->close();

?>
  </body>
</html>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
<?php
	//	http://localhost/MFP/importXML_typesStreet.php

	$debug=false;

	// get xml from url
	//$url = 'https://localhost/MFP/downloads/nomTipArtere.xml';
	$url="https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/nomTipArtere.xml";

	$content = file_get_contents($url);

	$xml = simplexml_load_string($content) or die("Error: Cannot create object");

	
	$table_name="nom_tip_artere";
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
		$cod 		= $randElement->COD;
		$denumire 	= $randElement->DENUMIRE;
		
		if($debug){
			// echo elements
			echo '<strong>COD</strong>: '. $cod . '<br>';
			echo '<strong>DENUMIRE</strong>: '. $denumire . '<br>';
			echo '<br>---<br>'; // separator
		}

		// start sql statement
		$sql_insert = "INSERT INTO ".$table_name."(pk_tipart, COD, DENUMIRE )
		VALUES ($row_crt, '$cod', '$denumire')";

		if ($conn->query($sql_insert) === TRUE) {
			echo "<br/>".$row_crt.".".$cod.",".$denumire;
		} else {
			echo "Error: " . $sql_insert . "<br>" . $conn->error;
		}
		
		$row_crt++;;
	}
	$conn->close();

?>
  </body>
</html>
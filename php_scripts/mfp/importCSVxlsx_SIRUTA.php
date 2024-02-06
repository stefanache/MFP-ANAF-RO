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
	$need_download=false;
	//	http://localhost/MFP/importCSVxlsx_SIRUTA.php

	//$url_xlsx_file_csv="https://data.gov.ro/dataset/0b91d96d-1727-4037-af67-6bfc3db52139/resource/a43597c1-6af9-4ca9-adb7-0b5c7873d8fa/download/siruta_an_2023.csv";
	
	$base_url 					= "https://data.gov.ro/";
	$id_dataset					= "0b91d96d-1727-4037-af67-6bfc3db52139";
	$id_resource				= "a43597c1-6af9-4ca9-adb7-0b5c7873d8fa";
	$base_url_nom_static 		= $base_url . "dataset/" . $id_dataset."/resource/".$id_resource."/download/";
	$prefix_fn_nom 				= "siruta_an_";
	
	$prefix_fn_nom_ext 			= ".csv";


	$base_dir_downloads 		= "downloads/";
	$msg_postfix 				= " downloaded...";
	$sepLine 					= "<br/>";

	$numberNom    = 1;
	$msg_prefix   = $sepLine . $numberNom . ".";
	$nomSIRUTA    = "2023";
	$fullFnJud    =  $prefix_fn_nom . $nomSIRUTA . $prefix_fn_nom_ext;
	$msgSIRUTA    = $msg_prefix . $prefix_fn_nom.$nomSIRUTA . $msg_postfix;
	$dwnlSIRUTA   = $base_dir_downloads  . $fullFnJud;
	$url_siruta   = $base_url_nom_static . $fullFnJud;
	
	if($need_download){
		$file_content = file_get_contents($url_siruta);
		//echo($file_content);
		file_put_contents($dwnlSIRUTA, $file_content);
		echo($msgSIRUTA);
		echo("<br/><hr/><br/>");
	}
	
	//import xlsx.csv file into db-table(nom_localitati_mf_siruta) the next fields-list:
	/*
    [0] => Array
        (
             [0] => SIRUTA
             [1] => DENLOC
             [2] => CODP
             [3] => JUD
             [4] => SIRSUP
             [5] => TIP
             [6] => NIV
             [7] => MED
             [8] => REGIUNE
             [9] => FSJ
            [10] => FSL
        )
	*/
	include $_composer_autoload_path ?? __DIR__ . '/SimpleXLSX/vendor/autoload.php';
	use Shuchkin\SimpleXLSX;
	//echo("<pre>");
	$debug=false;
	$truncate=true;

	$table_name="nom_siruta";

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
	//read the rows from file
	if ( $xlsx = SimpleXLSX::parse($dwnlSIRUTA) ) {
		
		//print_r( $xlsx->rows() );
		$arr_of_arrays=$xlsx->rows();
		
		//initialize current fields:
		$siruta		= -1;
		$denloc		= "-";
		$codp		=- 1;
		$jud		= -1;
		$sirsup		= -1;
		$tip		= -1;
		$niv		= -1;
		$med		= -1;
		$regiune	= -1;
		$fsj		= -1;
		$fsl		= -1;
		for($r=1;$r<count($arr_of_arrays);$r++){
			$row_r=$arr_of_arrays[$r];
			
			//read the row's fields:
			$siruta		= $row_r[0];
			$denloc		= $row_r[1];
			$codp		= $row_r[2];
			$jud		= $row_r[3];
			$sirsup		= $row_r[4];
			$tip		= $row_r[5];
			$niv		= $row_r[6];
			$med		= $row_r[7];
			$regiune	= $row_r[8];
			$fsj		= $row_r[9];
			$fsl		= $row_r[10];
			
			if($debug){
				// echo elements
				echo '<strong>SIRUTA</strong>: '. $siruta . '<br>';
				echo '<strong>DENLOC</strong>: '. $denloc . '<br>';
				echo '<br>---<br>'; // separator
			}

			// start sql statement
			$sql_insert = "INSERT INTO ".$table_name."(pk_srt, SIRUTA, DENLOC, CODP, JUD, SIRSUP, TIP, NIV, MED, REGIUNE, FSJ, FSL )
			VALUES ($row_crt, $siruta, '$denloc', $codp, $jud, $sirsup, $tip, $niv, $med, $regiune, $fsj, $fsl )";

			if ($conn->query($sql_insert) === TRUE) {
				echo "<br/>".$row_crt.".".$siruta.",".$denloc;
			} else {
				echo "Error: " . $sql_insert . "<br>" . $conn->error;
			}
			
			$row_crt++;	
			
			//echo('<br/>*** randul  cu codul SIRUTA='.$siruta.' a fost inserat! ***');			
		}
		echo '<br/><hr/><br/>'; // separator
	} else {
		echo SimpleXLSX::parseError();
	}
	//echo("</pre>");
	
	$conn->close();
	
	echo '<br/>Tabela <b>'.$table_name.'</b> a fost <b>re-incarcata</b><br/>'; // separator
?>
 </body>
</html>
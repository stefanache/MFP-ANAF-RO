<?php
	//	http://localhost/fGetCSV
$row = 1;
$csv_path = dirname(__FILE__)."\\";
//echo "<br/>".$csv_path;
$csv_fn   = "date_de_contact_localitati.csv";
$csv_file = $csv_path.$csv_fn;
if (file_exists($csv_file)) {
	//$status_del = unlink($csv_file) ? 'The file '.$csv_file.' has been deleted' : '*** Error deleting '.$csv_file.'!!';
	//echo $status_del;
}else{
	echo("*** The csv-file ".$csv_file." not exist!");
}
	
//$url_csv_file="https://geospatialorg.github.io/date-contact-localitati/".$csv_fn.".git";
//$url_csv_file="https://github.com/geospatialorg/date-contact-localitati/blob/main/".$csv_fn;
//$url_csv_file="https://github.com/geospatialorg/date-contact-localitati/blob/527ca213334beba1c3e87ccbd3848fa405109c41/".$csv_fn;
//echo "<br/>".$url_csv_file;
//1.download file from url:
/*
if (!file_exists($csv_file)) {
	$handle = fopen($url_csv_file, "r");
	//echo("<br/>".$handle);
	file_put_contents($csv_file, $handle )? 'The file '.$csv_file.' has been downloaded' : '*** Error downloading '.$csv_file.'!!';
	fclose($handle);
}else{
	echo("*** The csv-file ".$csv_file." already exist!!!");
}
*/
//2.read the csv-file downloaded and show me:
$handle = fopen($csv_file, "r");
if ($handle !== FALSE) {
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        $num = count ($data);
        echo "<p> $num fields in line $row: <br /></p>\n";
        $row++;
        for ($c=0; $c < $num; $c++) {
            echo $data[$c] . "<br />\n";
        }
    }
    fclose($handle);
}
?>
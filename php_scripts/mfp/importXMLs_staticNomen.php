<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
<?php
//	http://localhost:/MFP/importXMLs_staticNomen.php

$response1  = file_get_contents('http://localhost/MFP/importXML_counties.php');
echo $response1;
echo "<br/><hr/><br/>";

$response2  = file_get_contents('http://localhost/MFP/importXML_typesLocality.php');
echo $response2;
echo "<br/><hr/><br/>";

$response3  = file_get_contents('http://localhost/MFP/importXML_typesStreet.php');
echo $response3;
echo "<br/><hr/><br/>";

$response4  = file_get_contents('http://localhost/MFP/importXML_statusesStreet.php');
echo $response4;
echo "<br/><hr/><br/>";

$response4  = file_get_contents('http://localhost/MFP/importXML_tariValute.php');
echo $response4;
echo "<br/><hr/><br/>";

?>
  </body>
</html>
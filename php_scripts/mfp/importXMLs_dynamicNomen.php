<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
<?php
//	http://localhost:/MFP/importXMLs_dynamicNomen.php

$response1  = file_get_contents('http://localhost/MFP/importXML_Localities.php');
echo $response1;
echo "<br/><hr/><br/>";

$response1  = file_get_contents('http://localhost/MFP/importXML_LocHistory.php');
echo $response1;
echo "<br/><hr/><br/>";

$response1  = file_get_contents('http://localhost/MFP/importXML_LocRel.php');
echo $response1;
echo "<br/><hr/><br/>";


$response1  = file_get_contents('http://localhost/MFP/importXML_Streets.php');
echo $response1;
echo "<br/><hr/><br/>";

$response1  = file_get_contents('http://localhost/MFP/importXML_StrHistory.php');
echo $response1;
echo "<br/><hr/><br/>";

$response1  = file_get_contents('http://localhost/MFP/importXML_StrRel.php');
echo $response1;
echo "<br/><hr/><br/>";


$response1  = file_get_contents('http://localhost/MFP/importXML_PCs_StrNo.php');
echo $response1;
echo "<br/><hr/><br/>";

$response1  = file_get_contents('http://localhost/MFP/importXML_PCs_StrOthers.php');
echo $response1;
echo "<br/><hr/><br/>";

?>
  </body>
</html>
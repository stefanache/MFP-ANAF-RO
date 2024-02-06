<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
  
<?php
//	http://localhost:/MFP/importXMLs.php

$response1  = file_get_contents('http://localhost/MFP/importXMLs_staticNomen.php');
echo $response1;
echo "<br/><hr/><br/>";

$response1  = file_get_contents('http://localhost/MFP/importXMLs_dynamicNomen.php');
echo $response1;
echo "<br/><hr/><br/>";

?>
  </body>
</html>
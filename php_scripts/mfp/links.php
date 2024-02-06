<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
<?php
$url="https://mfinante.gov.ro/nomenclatoare-geografice-mfp/";
$html = file_get_contents($url);
//Create a new DOM document
$dom = new DOMDocument;

//Parse the HTML. The @ is used to suppress any parsing errors
//that will be thrown if the $html string isn't valid XHTML.
@$dom->loadHTML($html);

//Get all links. You could also use any other tag name here,
//like 'img' or 'table', to extract other tags.
$links = $dom->getElementsByTagName('a');

//Iterate over the extracted links and display their URLs

foreach ($links as $link){
    //Extract links.
	//echo($link);
    //echo $link->nodeValue;
    echo $link->getAttribute('href'), '<br>';
};
/*
$domXPath = new DOMXPath($dom);
$results = $domXPath->query("//div/div/table/tr/td/a|//table//tr/td//a"); //querying domdocument
foreach($results as $result)
{
    $links[]=$result->getAttribute("href");
	echo($links);
}
*/
?>
  </body>
</html>
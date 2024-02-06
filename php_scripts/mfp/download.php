<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World! Site Title</title>
  </head>
  <body>
<?php
//	http://localhost/MFP/download.php
$base_url 					= "https://mfinante.gov.ro/";
$base_url_nom_static 		= $base_url . "static/40/Mfp/nomenclatoare/";
$prefix_fn_nom 				= "nom";
$prefix_fn_nom_ext 			= ".xml";

$base_dir_downloads 		= "downloads/";
$msg_postfix 				= " downloaded...";
$sepLine 					= "<br/>";

$numberNom    = 1;
$msg_prefix   = $sepLine . $numberNom . ".";
$nomJudete    = "Judete";
$fullFnJud    =  $prefix_fn_nom . $nomJudete . $prefix_fn_nom_ext;
$msgJudete    = $msg_prefix . $nomJudete . $msg_postfix;
$dwnlJud      = $base_dir_downloads  . $fullFnJud;
$url_judete   = $base_url_nom_static . $fullFnJud;
$file_content = file_get_contents($url_judete);
//echo($file_content);
file_put_contents($dwnlJud, $file_content);
echo($msgJudete);

$numberNom			= 2;
$msg_prefix   		= $sepLine . $numberNom . "." ;
$nomTipLocalitati	= "TipLocalitati";
$fullFnTipLoc   	= $prefix_fn_nom . $nomTipLocalitati . $prefix_fn_nom_ext;
$msgTipLoc   		= $msg_prefix . $nomTipLocalitati . $msg_postfix;
$dwnlTipLoc      	= $base_dir_downloads  . $fullFnTipLoc;
$url_tipLoc			= $base_url_nom_static . $fullFnTipLoc;
$file_content 		= file_get_contents($url_tipLoc);
//echo($file_content);
file_put_contents($dwnlTipLoc , $file_content);
echo($msgTipLoc);

$numberNom			= 3;
$msg_prefix			= $sepLine . $numberNom . ".";
$nomTipArtere		= "TipArtere";
$fullFnTipArt   	=  $prefix_fn_nom . $nomTipArtere . $prefix_fn_nom_ext;
$msgTipArt   		= $msg_prefix . $nomTipArtere . $msg_postfix;
$dwnlTipArt      	= $base_dir_downloads  . $fullFnTipArt;
$url_tipArt 		= $base_url_nom_static .  $fullFnTipArt;
$file_content 		= file_get_contents($url_tipArt);
//echo($file_content);
file_put_contents($dwnlTipArt, $file_content);
echo($msgTipArt);

$numberNom			= 4;
$msg_prefix   		= $sepLine . $numberNom . ".";
$nomStariArtereMf	= "StariArtereMf";
$fullFnStArt   		= $prefix_fn_nom . $nomStariArtereMf . $prefix_fn_nom_ext;
$msgStArt   		= $msg_prefix . $nomStariArtereMf . $msg_postfix;
$dwnlStArt      	= $base_dir_downloads  . $fullFnStArt;
$url_stArt 			= $base_url_nom_static . $fullFnStArt;
$file_content 		= file_get_contents($url_stArt);
//echo($file_content);
file_put_contents($dwnlStArt, $file_content);
echo($msgStArt);

$numberNom			= 5;
$msg_prefix   		= $sepLine . $numberNom . ".";
$nomTariValute		= "TariValute";
$fullFnTariVal 		= $prefix_fn_nom . $nomTariValute . $prefix_fn_nom_ext;
$msgTariVal   		= $msg_prefix . $nomTariValute . $msg_postfix;
$dwnlTariVal      	= $base_dir_downloads  . $fullFnTariVal;
$url_tariVal	 	= $base_url_nom_static . $fullFnTariVal;
$file_content = file_get_contents($url_tariVal);
//echo($file_content);
file_put_contents($dwnlTariVal, $file_content);
echo($msgTariVal);

?>
  </body>
</html>
<?php
  include 'eFacturaMeaContent.inlude.php';
  $eFactura_xml_content = new SimpleXMLElement($xmlstr);
  header('Content-Type: text/xml');
  echo $eFactura_xml_content->asXML();			  
?>        
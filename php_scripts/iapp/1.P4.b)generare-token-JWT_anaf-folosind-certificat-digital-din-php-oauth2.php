<?PHP
	//	https://iapp.ro/articol/exemplu-de-integrare-api-anaf-spv-php-oauth2
	//	1.Ai nevoie de un Token ANAF activ.
	//		https://iapp.ro/articol/generare-token-anaf-folosind-certificat-digital-din-php-oauth2
	//  	Pasul 4: Siteul tau :
	//		b)varianta(recomandata- a se vedea Nota *) care generează token JWT. (* Nota: aceasta va fi singura activă începând cu data de 15.04.2024)

  define('SPV_CLIENT_ID', "");
  define('SPV_CLIENT_SECRET', "");
  define('SPV_REDIRECT', "");

  $link = "https://logincert.anaf.ro/anaf-oauth2/v1/authorize?response_type=code&client_id=".SPV_CLIENT_ID."&redirect_uri=".SPV_REDIRECT."&token_content_type=jwt";
  echo "<a href='$link'>Login Anaf</a>";

  /** Debug data for you */
  echo "<hr>";
  print_r($_POST);
  print_r($_GET);
  print_r($_SERVER);
  echo "<hr>";

  /** Read and print authorization code */
  $query = isset($_SERVER['REDIRECT_QUERY_STRING'])?$_SERVER['REDIRECT_QUERY_STRING']:"";
  parse_str($query, $output);
  $code = isset($output['code'])?$output['code']:"";

  /** Debug for authorization data */
  echo "<hr>";
  print_r($output);
  echo "<hr>";

  /** ----------------------------------------------------------------------- */
  $curl = curl_init();

  $test = "grant_type=authorization_code&code=".$code."&client_id=".SPV_CLIENT_ID."&client_secret=".SPV_CLIENT_SECRET."&redirect_uri=".SPV_REDIRECT."&token_content_type=jwt";

  /** Debug Again */
  echo "$test";
  echo "<hr>";

  $ch = curl_init();

  curl_setopt($ch, CURLOPT_URL, "https://logincert.anaf.ro/anaf-oauth2/v1/token");
  curl_setopt($ch, CURLOPT_POST, 1);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $test);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  $server_output = curl_exec($ch);
  curl_close($ch);
  $outputJson = json_decode($server_output, true);
  print_r($outputJson);

  $access_token = $outputJson["access_token"];

  /** Do your magic here */

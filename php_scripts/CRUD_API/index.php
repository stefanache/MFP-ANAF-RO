<?php

echo("<pre>");
phpinfo();
echo("<hr/>");
print_r(PDO::getAvailableDrivers());
echo("<hr/>");
try {
    $pdo = new PDO('mysql:host=localhost;dbname=php_crud_api_db', 'root', '');
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}
echo("</pre>");
?>
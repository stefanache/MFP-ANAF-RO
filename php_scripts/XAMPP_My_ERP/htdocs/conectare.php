<?php
	    $host = 'localhost';
            $db = 'my_ERP_db';
            $user = 'root';
            $pass = '';//ParolaTaNouaSecura123

            $conn = new mysqli($host, $user, $pass, $db);

            if ($conn->connect_error) {
                die("Conexiune eșuată: " . $conn->connect_error);
            }
?>

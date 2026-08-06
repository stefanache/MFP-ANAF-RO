<?php
// 1. Pornim sesiunea pentru a avea acces la datele salvate
session_start();

// 2. Ștergem toate variabilele din sesiune
$_SESSION = array();

// 3. Distrugem cookie-ul de sesiune din browserul utilizatorului (opțional, dar recomandat pentru securitate)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// 4. Distrugem sesiunea de pe server
session_destroy();

// 5. Redirecționăm utilizatorul către pagina de login
header("Location: index.php");

exit();

?>



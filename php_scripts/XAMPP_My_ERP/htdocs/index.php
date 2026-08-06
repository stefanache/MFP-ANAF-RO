<!DOCTYPE html>
<html lang="ro">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login cu Popup</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>

    <!-- Butonul care deschide popup-ul -->
    <button id="deschide-login">Authentication</button>

    <!-- Fereastra Popup (Modal) -->
    <div id="login-modal" class="modal">
        <div class="modal-continut">
            <span class="inchide">&times;</span>
            <h2>Authentication</h2>
            
            <!-- Formularul de Login -->
            <form action="" method="POST">
                <label>Username</label>
                <input type="text" name="username" value="admin" required>
                
                <label>Password</label>
                <input type="password" name="password" value="admin" required>
                
                <button type="submit" name="login_btn">Login</button>
            </form>

            <?php
            // OBLIGATORIU: Sesiunea trebuie pornită în prima linie din fișier, înainte de orice cod HTML sau spațiu
	    session_start();
	    $_SESSION['CRUD_oper'] = "-";
	    
            // Conexiunea la baza de date MySQL
            include("conectare.php");

            // Verificăm dacă formularul a fost trimis
            if (isset($_POST['login_btn'])) {
               
                $username = $conn->real_escape_string($_POST['username']);
                $password = $_POST['password'];

                // Căutăm utilizatorul în tabela users
                $sql = "SELECT id, username, password FROM users WHERE username = '$username'";
                $rezultat = $conn->query($sql);

                if ($rezultat->num_rows == 1) {
                    $row = $rezultat->fetch_assoc();
                    
                    // Verificăm parola criptată
                    if (password_verify($password,$row['password'])) {
                    
                        echo "<p style='color:green; text-align:center;'>Autentificare reușită!</p>";
                         // 1. Salvăm utilizatorul în variabila de sesiune
       			 $_SESSION['username'] = $username;

        		// 2. Redirecționăm către meniu.php
        		header("Location: meniu.php");
        
        		// 3. Oprim execuția scriptului curent pentru a asigura redirecționarea nativă
        		exit();
        		
                    } else {
                        echo "<p style='color:red; text-align:center;'>Parolă greșită!</p>";
                    }
                } else {
                    echo "<p style='color:red; text-align:center;'>Utilizatorul nu există!</p>";
                }
            }
            $conn->close();
            ?>

        </div>
    </div>

    <script>
        // Preluăm elementele
        var modal = document.getElementById("login-modal");
        var btn = document.getElementById("deschide-login");
        var span = document.getElementsByClassName("inchide")[0];

        // Când utilizatorul apasă butonul, deschide popup-ul
        btn.onclick = function() {
            modal.style.display = "block";
        }

        // Când utilizatorul apasă pe X, închide popup-ul
        span.onclick = function() {
            modal.style.display = "none";
        }

        // Când utilizatorul apasă în afara popup-ului, îl închide
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

</body>
</html>


<?php
	session_start();
?>
<link rel="stylesheet" href="crud_styles.css">
<!-- <h5>User View<h5><br/> -->
<?php
	$oper=$_SESSION['CRUD_oper'];
	//echo("<br/>User-VIEW: oper=".$oper);
	$crud_id=$_SESSION['CRUD_id'];
	//echo("<br/>User-VIEW: user-id=".$crud_id);

	// 2. ID-ul utilizatorului (convertit la întreg pentru siguranță/securitate)
	$user_id = isset($_GET['id']) ? (int)$_GET['id'] : -1; 
	//echo("<br/>User-VIEW: user-id=".$user_id);
	$action = isset($_GET['actiune']) ? (string)$_GET['actiune'] : "-"; 
	//echo("<br/>User-VIEW: oper=".$action);
	if($action == "view"){
		include("conectare.php");
		// 3. Interogare SQL directă folosind $conn->query()
		$sql = "SELECT id, username, password, comments FROM users WHERE id = $user_id";
		//echo(sql);
		$result = $conn->query($sql);

		// 4. Afișare tabel HTML dacă înregistrarea există
		if ($result && $result->num_rows > 0) {
		    $row = $result->fetch_assoc();
		    
		    echo '<table class="crud-table" border="1" cellpadding="10" cellspacing="0" style="border-collapse: collapse; font-family: Arial, sans-serif;">';
		    echo '<thead>';
		    echo '  <tr style="background-color: #f2f2f2;">';
		    echo '    <th>Field Name</th>';
		    echo '    <th>Value</th>';
		    echo '  </tr>';
		    echo '</thead>';
		    echo '<tbody>';
		    
		    echo '  <tr><td><strong>User-ID</strong></td><td>' . htmlspecialchars($row['id']) . '</td></tr>';
		    echo '  <tr><td><strong>Username</strong></td><td>' . htmlspecialchars($row['username']) . '</td></tr>';
		    echo '  <tr><td><strong>Password</strong></td><td>' . htmlspecialchars($row['password']) . '</td></tr>';
		    echo '  <tr><td><strong>User-Comments</strong></td><td>' . htmlspecialchars($row['comments']) . '</td></tr>';
		    
		    echo '</tbody>';
		    echo '</table>';
		} else {
		    echo "*** USER-VIEW: Error-1 *** No user found with ID: " . htmlspecialchars($user_id);
		}
		// Închidere conexiune
		$conn->close();
		exit();
	} else{
		echo("*** USER-VIEW: Error-2 *** Unknown action/operation."); 
	}
	
?>
	

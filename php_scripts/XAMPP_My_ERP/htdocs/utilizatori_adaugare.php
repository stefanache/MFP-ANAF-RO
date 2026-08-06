<?php
	session_start();
?>	
<h5>User Add New</h5><br/>
<?php
	$oper=$_SESSION['CRUD_oper'];
	//echo("<br/>User-ADD: oper=".$oper);
	$crud_id=$_SESSION['CRUD_id'];
	//echo("<br/>User-ADD: user-id=".$crud_id);
	
	//echo("<pre>");var_dump($_POST);echo("</pre>");

	// 2. Retrieve data sent via $_POST array
	$action        = isset($_POST['actiune']) ? (string)$_POST['actiune'] : '';
	$user_id       = isset($_POST['user_id']) ? $_POST['user_id'] : ''; // Expected to be empty for auto-increment
	$user_name     = isset($_POST['user_name']) ? (string)$_POST['user_name'] : '';
	$user_passw     = isset($_POST['user_passw']) ? (string)$_POST['user_passw'] : '';
	$user_comments = isset($_POST['user_comments']) ? (string)$_POST['user_comments'] : '';

	// 3. Validation: process ONLY if action is "add" and the required name field is not empty
	if ($action === 'add' && !empty(trim($user_name))) {
	    include("conectare.php");
	    // 4. Secure strings to prevent SQL Injection in direct queries
	    $user_name_safe     = $conn->real_escape_string($user_name);
	    $user_passw_safe     = $conn->real_escape_string($user_passw);
	    $user_comments_safe = $conn->real_escape_string($user_comments);

	    // 5. Construct the SQL INSERT statement
	    // Note: 'user_id' is omitted from the columns list because it is an AUTO_INCREMENT field
	    $sql = "INSERT INTO users(username, password, comments) 
		    VALUES ('$user_name_safe', password_hash('$user_passw_safe'),'$user_comments_safe')";
	    //echo($sql);
	    // 6. Execute the query using the requested syntax
	    $rezultat = $conn->query($sql);

	    // 7. Verify the operation result
	    if ($rezultat) {
		// Retrieve the auto-generated ID for the newly inserted row
		$new_user_id = $conn->insert_id;
		
		// Save a success message with the new ID to the session
		$_SESSION['success_message'] = "User has been successfully added with ID: " . $new_user_id;
		
		$my_URL="http://localhost/my_ERP/utilizatori_vizualizare.php?actiune=view&id=".$new_user_id;
		//echo("<br/>".$my_URL);
		//show the record as table-row view:
		echo(file_get_contents($my_URL));
		
		echo ("<br/>".$_SESSION['success_message']);
		
		$_SESSION['CRUD_id']=$new_user_id;
		$_SESSION['CRUD_oper']=$action;
		
		// Redirect back to the main list
		//header("Location: users.php");
		
		echo "<script>
		    // 1. Dă refresh paginii principale (părinte)
		    //window.parent.location.reload();
		    
		    // 2. Opțional: Închide popup-ul din pagina părinte direct
		    if (window.parent.document.getElementById('popup')) {
		        //window.parent.document.getElementById('popup').close();
		    }
		</script>";
		
	    } else {
		echo "*** USER-ADD: Error-1 ***: Database insert error: " . $conn->error;
	    }
	    // Close the connection at the end
	    $conn->close();
	    exit();
	} else {
	    // Error message if the input parameters are incorrect or missing for an INSERT operation
	    echo "*** USER-ADD: Error-2 ***: Invalid data provided for adding a new user.";
	    if (empty(trim($user_name))) {
		echo "<br/>** USER-ADD: Note-1 **: The 'username' field is required and cannot be empty.";
	    }
	    if ($action !== 'add') {
		echo "<br/>** USER-ADD: Note-2 **: Invalid action. Expected 'add', received: '" . htmlspecialchars($action) . "'.";
	    }
	}
?>

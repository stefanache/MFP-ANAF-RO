<?php
	session_start();
?>	
<h5>User DELETE</h5><br/>
<?php
	$oper=$_SESSION['CRUD_oper'];
	//echo("<br/>User-DEL: oper=".$oper);
	$crud_id=$_SESSION['CRUD_id'];
	//echo("<br/>User-DEL: user-id=".$crud_id);
	
	//echo("<pre>");var_dump($_POST);echo("</pre>");

	// 2. ID-ul utilizatorului (convertit la întreg pentru siguranță/securitate)
	$user_id = isset($_GET['id']) ? (int)$_GET['id'] : -1; 
	//echo("<br/>User-DEL: user-id=".$user_id);
	$action = isset($_GET['actiune']) ? (string)$_GET['actiune'] : "-"; 
	//echo("<br/>User-DEL: oper=".$action);
	if($action == "delete" && $user_id > 0){
		include("conectare.php");
		// 4. Construct the SQL DELETE statement
	        $sql = "DELETE FROM users WHERE id = $user_id";

	        // 5. Execute the query using the requested syntax
	        $rezultat = $conn->query($sql);

	        // 6. Verify the operation result
	        if ($rezultat) {
		   // Check if any row was actually deleted (if the ID existed in the database)
		  if ($conn->affected_rows > 0) {
		      	$_SESSION['success_message'] = "User with ID $user_id has been successfully deleted.";
			echo ("<br/>".$_SESSION['success_message']);
			
			echo "<script>
			    // 1. Dă refresh paginii principale (părinte)
			    //window.parent.location.reload();
			    
			    // 2. Opțional: Închide popup-ul din pagina părinte direct
			    if (window.parent.document.getElementById('popup')) {
				//window.parent.document.getElementById('popup').close();
			    }
			</script>";			
		  } else {
		      	$_SESSION['error_message'] = "No user found with ID $user_id. Nothing was deleted.";
		      	echo ("<br/>*** USER-DELETE: Error-0 ***".$_SESSION['error_message']);
		  }
		
		  // Redirect back to the main list
		  //header("Location: utilizatori.php");
		  		  
	        }else {
        		echo "*** USER-DELETE: Error-1 ***: Database delete error: " . $conn->error;
    		      }
				
		// Close the connection at the end
		$conn->close();
		
		exit();
	}else{
		// Error message if parameters are missing or incorrect
		echo "*** USER-DELETE: Error-2 ***: Invalid data provided for modification. (Action: $action, ID: $user_id).";		

		if ($user_id <= 0) {
		    echo "<br/>** USER-DELETE: Note-1 **: A valid, positive User ID is required for deletion.";
		}
		if ($action !== 'delete') {
		    echo "<br/>** USER-DELETE: Note-2 **: Invalid action. Expected 'delete', received: '" . htmlspecialchars($action) . "'.";
		}		
	     }
	
?>

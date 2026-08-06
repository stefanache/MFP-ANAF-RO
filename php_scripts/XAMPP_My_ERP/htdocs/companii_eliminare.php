<?php
	session_start();
?>	
<h5>Company DELETE</h5><br/>
<?php
	$oper=$_SESSION['CRUD_oper'];
	//echo("<br/>Company-DEL: oper=".$oper);
	$crud_id=$_SESSION['CRUD_id'];
	//echo("<br/>Company-DEL: company-id=".$crud_id);
	
	//echo("<pre>");var_dump($_POST);echo("</pre>");

	// 2. ID-ul companiei (convertit la întreg pentru siguranță/securitate)
	$company_id = isset($_GET['id']) ? (int)$_GET['id'] : -1; 
	//echo("<br/>Company-DEL: company-id=".$company_id);
	$action = isset($_GET['actiune']) ? (string)$_GET['actiune'] : "-"; 
	//echo("<br/>Company-DEL: oper=".$action);
	if($action == "delete" && $company_id > 0){
		include("conectare.php");
		// 4. Construct the SQL DELETE statement
	        $sql = "DELETE FROM companies WHERE company_id = $company_id";

	        // 5. Execute the query using the requested syntax
	        $rezultat = $conn->query($sql);

	        // 6. Verify the operation result
	        if ($rezultat) {
		   // Check if any row was actually deleted (if the ID existed in the database)
		  if ($conn->affected_rows > 0) {
		      	$_SESSION['success_message'] = "Company with ID $company_id has been successfully deleted.";
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
		      	$_SESSION['error_message'] = "No company found with ID $company_id. Nothing was deleted.";
		      	echo ("<br/>*** COMPANY-DELETE: Error-0 ***".$_SESSION['error_message']);
		  }
		
		  // Redirect back to the main list
		  //header("Location: companii.php");
		  		  
	        }else {
        		echo "*** COMPANY-DELETE: Error-1 ***: Database delete error: " . $conn->error;
    		      }
				
		// Close the connection at the end
		$conn->close();
		
		exit();
	}else{
		// Error message if parameters are missing or incorrect
		echo "*** COMPANY-DELETE: Error-2 ***: Invalid data provided for modification. (Action: $action, ID: $company_id).";		

		if ($company_id <= 0) {
		    echo "<br/>** COMPANY-DELETE: Note-1 **: A valid, positive Company ID is required for deletion.";
		}
		if ($action !== 'delete') {
		    echo "<br/>** COMPANY-DELETE: Note-2 **: Invalid action. Expected 'delete', received: '" . htmlspecialchars($action) . "'.";
		}		
	     }
	
?>

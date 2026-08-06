<?php
	session_start();
?>	
<h5>Company Edit</h5><br/>
<?php
	$oper=$_SESSION['CRUD_oper'];
	//echo("<br/>Company-EDIT: oper=".$oper);
	$crud_id=$_SESSION['CRUD_id'];
	//echo("<br/>Company-EDIT: company-id=".$crud_id);
	
	//echo("<pre>");var_dump($_POST);echo("</pre>");
	
	// 2. Retrieve data sent via $_POST array
	$action           = isset($_POST['actiune']) ? (string)$_POST['actiune'] : '';
	$company_id       = isset($_POST['company_id']) ? (int)$_POST['company_id'] : -1;
	$company_name     = isset($_POST['company_name']) ? (string)$_POST['company_name'] : '';
	$company_comments = isset($_POST['company_comments']) ? (string)$_POST['company_comments'] : '';

	// 3. Validation: process ONLY if action is "edit" and ID is a valid existing record (greater than 0)
	// Note: If ID is "-1", a database UPDATE cannot find a matching row. Real IDs start from 1.
	if ($action === 'edit' && $company_id > 0) {
	    include("conectare.php");
	    // 4. Secure strings to prevent SQL Injection in direct queries
	    $company_name_safe     = $conn->real_escape_string($company_name);
	    $company_comments_safe = $conn->real_escape_string($company_comments);

	    // 5. Construct the SQL UPDATE statement
	    $sql = "UPDATE companies SET 
		        company_name = '$company_name_safe', 
		        company_comments = '$company_comments_safe' 
		    WHERE company_id = $company_id";

	    // 6. Execute the query using the requested syntax
	    $rezultat = $conn->query($sql);

	    // 7. Verify the operation result
	    if ($rezultat) {
		// Optional: Save a success message to the session
		$_SESSION['success_message'] = "Company(ID = ".$company_id.") has been successfully updated!";
		 
		$my_URL="http://localhost/my_ERP/companii_vizualizare.php?actiune=view&id=".$company_id;
		//echo("<br/>".$my_URL);
		//show the record as table-row view:
		echo(file_get_contents($my_URL));
		
		echo ("<br/>".$_SESSION['success_message']);
		
		$_SESSION['CRUD_id']=$company_id;
		$_SESSION['CRUD_oper']=$action;
		
		// Redirect back to the main list or form
		//header("Location: companii.php");
		
		echo "<script>
		    // 1. Dă refresh paginii principale (părinte)
		    //window.parent.location.reload();
		    
		    // 2. Opțional: Închide popup-ul din pagina părinte direct
		    if (window.parent.document.getElementById('popup')) {
		        //window.parent.document.getElementById('popup').close();
		    }
		</script>";		
		
	    } else {
		echo "*** COMPANY-EDIT: Error-1 ***: Database update error: " . $conn->error;
	    }
	    // Close the connection at the end
	    $conn->close();
	    exit();
	} else {
	    // Error message if the input parameters are incorrect for an UPDATE operation
	    echo "*** COMPANY-EDIT: Error-2 ***: Invalid data provided for modification. (Action: $action, ID: $company_id).";
	    if ($company_id <= 0) {
		echo "<br/>** COMPANY-EDIT: Note **: You cannot perform an UPDATE on a negative or -1 ID. <br/>For new records, use INSERT.";
	    }
	}


	
?>

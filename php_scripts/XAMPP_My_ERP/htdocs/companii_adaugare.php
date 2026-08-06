<?php
	session_start();
?>
<h5>Company Add New</h5><br/>
<?php
	$oper=$_SESSION['CRUD_oper'];
	//echo("<br/>Company-ADD: oper=".$oper);
	$crud_id=$_SESSION['CRUD_id'];
	//echo("<br/>Company-ADD: company-id=".$crud_id);
	
	//echo("<pre>");var_dump($_POST);echo("</pre>");

	// 2. Retrieve data sent via $_POST array
	$action           = isset($_POST['actiune']) ? (string)$_POST['actiune'] : '';
	$company_id       = isset($_POST['company_id']) ? $_POST['company_id'] : ''; // Expected to be empty for auto-increment
	$company_name     = isset($_POST['company_name']) ? (string)$_POST['company_name'] : '';
	$company_comments = isset($_POST['company_comments']) ? (string)$_POST['company_comments'] : '';

	// 3. Validation: process ONLY if action is "add" and the required name field is not empty
	if ($action === 'add' && !empty(trim($company_name))) {
	    include("conectare.php");
	    // 4. Secure strings to prevent SQL Injection in direct queries
	    $company_name_safe     = $conn->real_escape_string($company_name);
	    $company_comments_safe = $conn->real_escape_string($company_comments);

	    // 5. Construct the SQL INSERT statement
	    // Note: 'company_id' is omitted from the columns list because it is an AUTO_INCREMENT field
	    $sql = "INSERT INTO companies(company_name, company_comments) 
		    VALUES ('$company_name_safe', '$company_comments_safe')";

	    // 6. Execute the query using the requested syntax
	    $rezultat = $conn->query($sql);

	    // 7. Verify the operation result
	    if ($rezultat) {
		// Retrieve the auto-generated ID for the newly inserted row
		$new_company_id = $conn->insert_id;
		
		// Save a success message with the new ID to the session
		$_SESSION['success_message'] = "Company has been successfully added with ID: " . $new_company_id;
		
		$my_URL="http://localhost/my_ERP/companii_vizualizare.php?actiune=view&id=".$new_company_id;
		//echo("<br/>".$my_URL);
		//show the record as table-row view:
		echo(file_get_contents($my_URL));
		
		echo ("<br/>".$_SESSION['success_message']);
		
		$_SESSION['CRUD_id']=$new_company_id;
		$_SESSION['CRUD_oper']=$action;
		
		// Redirect back to the main list
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
		echo "*** COMPANY-ADD: Error-1 ***: Database insert error: " . $conn->error;
	    }
	    // Close the connection at the end
	    $conn->close();
	    exit();
	} else {
	    // Error message if the input parameters are incorrect or missing for an INSERT operation
	    echo "*** COMPANY-ADD: Error-2 ***: Invalid data provided for adding a new company.";
	    if (empty(trim($company_name))) {
		echo "<br/>** COMPANY-ADD: Note-1 **: The 'company_name' field is required and cannot be empty.";
	    }
	    if ($action !== 'add') {
		echo "<br/>** COMPANY-ADD: Note-2 **: Invalid action. Expected 'add', received: '" . htmlspecialchars($action) . "'.";
	    }
	}
?>

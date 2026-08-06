<?php
	session_start();
?>	
<link rel="stylesheet" href="crud_styles.css">
<!-- <h5>Company View<h5><br/> -->
<?php
	$oper=$_SESSION['CRUD_oper'];
	//echo("<br/>Company-VIEW: oper=".$oper);
	$crud_id=$_SESSION['CRUD_id'];
	//echo("<br/>Company-VIEW: company-id=".$crud_id);

	// 2. ID-ul companiei (convertit la întreg pentru siguranță/securitate)
	$company_id = isset($_GET['id']) ? (int)$_GET['id'] : -1; 
	//echo("<br/>Company-VIEW: company-id=".$company_id);
	$action = isset($_GET['actiune']) ? (string)$_GET['actiune'] : "-"; 
	//echo("<br/>Company-VIEW: oper=".$action);
	if($action=="view"){
		include("conectare.php");
		// 3. Interogare SQL directă folosind $conn->query()
		$sql = "SELECT company_id, company_name, company_comments FROM companies WHERE company_id = $company_id";
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
		    
		    echo '  <tr><td><strong>Company ID</strong></td><td>' . htmlspecialchars($row['company_id']) . '</td></tr>';
		    echo '  <tr><td><strong>Company Name</strong></td><td>' . htmlspecialchars($row['company_name']) . '</td></tr>';
		    echo '  <tr><td><strong>Company Comments</strong></td><td>' . htmlspecialchars($row['company_comments']) . '</td></tr>';
		    
		    echo '</tbody>';
		    echo '</table>';
		} else {
		    echo "*** COMPANY-VIEW: Error-1 *** No company found with ID: " . htmlspecialchars($company_id);
		}
		// Închidere conexiune
		$conn->close();
		exit();
	} else{
		echo("*** COMPANY-VIEW: Error-2 *** Unknown action/operation."); 
	}
	
?>
	

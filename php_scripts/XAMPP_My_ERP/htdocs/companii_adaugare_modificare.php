<?php
	session_start();
	if (ob_get_level() == 0) ob_start();
	//echo("start-obj");ob_flush(); flush();
	?>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="crud_styles.css">

<h5>Company ADD/MODIFY</h5><br/>

<div style="display: flex; justify-content: flex-end;">
	<?php
		$oper = $_REQUEST['actiune'];
		//echo("<br/>ADD/MOD: oper=".$oper);ob_flush(); flush();
		
		$_SESSION['CRUD_oper'] = $oper;
		
		if($oper == "add"){
			$_SESSION['CRUD_id'] = -999999999;
			//echo("<br/>ADD/MOD: company-id=-999999999");
	?>
		    <!-- Formularul trimite datele randului nou de adaugat prin metoda POST -->
		    <form action="companii_adaugare.php" method="POST" style="font-family: Arial, sans-serif;">
			
			<!-- ID-ul -1 trimis ascuns către server -->
			<input type="hidden" id="actiune" name="actiune" value="add">
			<input type="hidden" id="company_id" name="company_id" value="">

			<table class="crud_table" border="1" cellpadding="10" cellspacing="0" style="border-collapse: collapse; width: 100%; max-width: 800px;">
			    <thead>
				<tr style="background-color: #f2f2f2; text-align: left;">
				    <th style="width: 40%;"><small><i>Field-Name</i></small></th>
				    <th style="width: 60%;"><small><i>Field-Value</i></small></th>
				</tr>
			    </thead>
			    <tbody>

				<!-- Rândul pentru Company ID -->
				<tr>
				    <td><label for="company_id"><strong>Company-ID</strong></label></td>
				    <td style="color: #666; background-color: #fafafa;"><small title="Company-ID(** this field will be auto-generated; this field should not be entered! **)">(** <i>will be auto-generated</i> **)</small></td>
				</tr>
				
				<!-- Rândul pentru Company Name -->
				<tr>
				    <td><label for="company_name"><strong>Name</strong></label><br/><small>(* <i>required</i>)</small></td>
				    <td>
					<input type="text" 
					       id="company_name" 
					       name="company_name" 
					       value=""
					       title="Company-Name(** this field is required to be entered! **)"
					       style="width: 95%; padding: 5px;" 
					       required>
				    </td>
				</tr>
				
				<!-- Rândul pentru Company Comments -->
				<tr>
				    <td><label for="company_comments"><strong>Comments</strong></label><br/><small>(<i>optionally</i>)</small></td>
				    <td>
					<textarea id="company_comments" 
					          name="company_comments" 
					          rows="4"
					          title="Company-Comments(** this field is NOT-required/optionally to be entered; it could be empty! **)"
					          style="width: 95%; padding: 5px; resize: vertical;"></textarea>
				    </td>
				</tr>
				
				<!-- Rândul pentru Butonul de Trimite -->
				<tr>
				    <td></td>
				    <td>
					<button type="submit" style="padding: 8px 15px; background-color: #4CAF50; color: white; border: none; cursor: pointer; border-radius: 3px;">
					    Save/Add Company
					</button>
				    </td>
				</tr>
			    </tbody>
			</table>
		    </form>
    
			<!-- 1.Butonul Adaugă (+) în partea de sus -->
			<!-- <a href="companii_adaugare.php?actiune=add" target="zona-popup" class="btn-icon btn-add" title="Add A New Company" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">add</i>
			</a> -->
	<?php
		};
		
		if($oper == "edit"){
			$crud_id = $_REQUEST['id'];
			//echo("<br/>ADD/MOD: company-id=".$crud_id);
			$_SESSION['CRUD_id'] = $crud_id;
			
			include("conectare.php");
			
			// 2. ID-ul companiei (convertit la întreg pentru siguranță/securitate)
			$company_id = isset($_GET['id']) ? (int)$_GET['id'] : -1; 
			//echo("<br/>Company-VIEW: company-id=".$company_id);
			$action = isset($_GET['actiune']) ? (string)$_GET['actiune'] : "-"; 
			//echo("<br/>Company-VIEW: oper=".$action);
			if($action == "edit"){
				$sql = "SELECT company_id, company_name,company_comments FROM companies WHERE company_id= ".$company_id;
				//echo($sql); ob_flush(); flush();
				$company_rezultat = $conn->query($sql);
				if ($company_rezultat && $company_rezultat->num_rows > 0) {
		    			$row_cpny = $company_rezultat->fetch_assoc();
		    			
		    			$row_company_id       = (int)htmlspecialchars($row_cpny['company_id']);
		    			$row_company_name     = (string)htmlspecialchars($row_cpny['company_name']);
		    			$row_company_comments = (string)htmlspecialchars($row_cpny['company_comments']);
	?>
		    <!-- Formularul trimite datele randului de modificat/prin suprapunere prin metoda POST -->
		    <form action="companii_modificare.php" method="POST" style="font-family: Arial, sans-serif;">
			
			<!-- ID-ul -1 trimis ascuns către server -->
			<input type="hidden" id="actiune" name="actiune" value="edit">
			<input type="hidden" id="company_id" name="company_id" value="<?php echo($row_company_id); ?>">

			<table class="crud_table" border="1" cellpadding="10" cellspacing="0" style="border-collapse: collapse; width: 100%; max-width: 800px;">
			    <thead>
				<tr style="background-color: #f2f2f2; text-align: left;">
				    <th style="width: 40%;"><small><i>Field-Name</i></small></th>
				    <th style="width: 60%;"><small><i>Field-Value</i></small></th>
				</tr>
			    </thead>
			    <tbody>

				<!-- Rândul pentru Company ID -->
				<tr>
				    <td><label for="company_id"><strong>Company-ID</strong></label></td>
				    <td style="color: #666; background-color: #fafafa;"><small title="Company-ID(** this field is auto-generated; this field should not be entered! **)"><i><?php echo($row_company_id); ?></i></small></td>
				</tr>
				
				<!-- Rândul pentru Company Name -->
				<tr>
				    <td><label for="company_name"><strong>Name</strong></label><br/><small>(* <i>required</i>)</small></td>
				    <td>
					<input type="text" 
					       id="company_name" 
					       name="company_name" 
					       value="<?php echo($row_company_name); ?>"
					       title="Company-Name(** this field is required to be entered/changed! **)"
					       style="width: 95%; padding: 5px;" 
					       required>
				    </td>
				</tr>
				
				<!-- Rândul pentru Company Comments -->
				<tr>
				    <td><label for="company_comments"><strong>Comments</strong></label><br/><small>(<i>optionally</i>)</small></td>
				    <td>
					<textarea id="company_comments" 
					          name="company_comments" 
					          rows="4"
					          title="Company-Comments(** this field is NOT-required/optionally to be entered; it could be empty! **)"
					          style="width: 95%; padding: 5px; resize: vertical;"><?php echo($row_company_comments); ?></textarea>
				    </td>
				</tr>
				
				<!-- Rândul pentru Butonul de Trimite -->
				<tr>
				    <td></td>
				    <td>
					<button type="submit" style="padding: 8px 15px; background-color: #4CAF50; color: white; border: none; cursor: pointer; border-radius: 3px;">
					    Save/Modify Company
					</button>
				    </td>
				</tr>
			    </tbody>
			</table>
		    </form>
<?php
		    			} else {
		    					echo "*** Company-EDIT: No company found with ID: " . $row_company_id." ***"; 
					       }
			} else{
				echo("*** Company-EDIT: Unknown action/operation. ***"); 
			      };
			// Închidere conexiune
			$conn->close();
?>	
		    <!--
			<a href="companii_modificare.php?actiune=edit&id=<?php echo $crud_id; ?>" target="zona-popup" class="btn-icon btn-edit" title="Edit This Company" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">edit</i>
			</a> -->
<?php
		}
		ob_end_flush();
?>
</div>


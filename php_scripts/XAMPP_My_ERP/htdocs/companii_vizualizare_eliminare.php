<?php
	session_start();
?>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="crud_styles.css">

<h5>Company View / Delete<h5><br/>

<div style="display: flex; justify-content: flex-end;">
	<?php
		$oper = $_REQUEST['actiune'];
		//echo("<br/>VIEW/DEL: oper=".$oper);
		
		$_SESSION['CRUD_oper'] = $oper;
		
		$crud_id = $_REQUEST['id'];
		//echo("<br/>VIEW/DEL: company-id=".$crud_id);
		$_SESSION['CRUD_id'] = $crud_id;
		
		// 2. ID-ul companiei (convertit la întreg pentru siguranță/securitate)
		$company_id = isset($_GET['id']) ? (int)$_GET['id'] : -1; 
		//echo("<br/>Company-VIEW: company-id=".$company_id);
			
		$action = isset($_GET['actiune']) ? (string)$_GET['actiune'] : "-"; 
		//echo("<br/>Company-VIEW: oper=".$action);
		
		if ($action =="delete"){
			$my_URL="http://localhost/my_ERP/companii_vizualizare.php?actiune=view&id=".$company_id;
			//echo("<br/>".$my_URL);
			
			//show the record as table-row view:
			echo(file_get_contents($my_URL));
		
	?>
		        <!-- Vizualizare -->
			<!-- <a href="companii_vizualizare.php?actiune=view&id=<?php echo $crud_id; ?>" target="zona-popup" class="btn-icon btn-view" title="View  This Company" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">visibility</i>
			</a> -->                        
	<?php
		}
		
		if ($oper =="delete"){	
	?>
		        <!-- Ștergere / Minus -->
			<a href="companii_eliminare.php?actiune=delete&id=<?php echo $crud_id; ?>" target="zona-popup" class="btn-icon btn-delete" title="Delete This Company" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">delete</i>
			</a> 
	<?php
		}
	?>
</div>

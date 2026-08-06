<?php
	session_start();
?>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="crud_styles.css">

<h5>User View / Delete<h5><br/>

<div style="display: flex; justify-content: flex-end;">
	<?php
		$oper = $_REQUEST['actiune'];
		//echo("<br/>VIEW/DEL: oper=".$oper);
		
		$_SESSION['CRUD_oper'] = $oper;
		
		$crud_id = $_REQUEST['id'];
		//echo("<br/>VIEW/DEL: user-id=".$crud_id);
		$_SESSION['CRUD_id'] = $crud_id;
		
		// 2. ID-ul utilizatorului (convertit la întreg pentru siguranță/securitate)
		$user_id = isset($_GET['id']) ? (int)$_GET['id'] : -1; 
		//echo("<br/>User-VIEW: user-id=".$user_id);
			
		$action = isset($_GET['actiune']) ? (string)$_GET['actiune'] : "-"; 
		//echo("<br/>User-VIEW: oper=".$action);
		
		if ($action =="delete"){
			$my_URL="http://localhost/my_ERP/utilizatori_vizualizare.php?actiune=view&id=".$user_id;
			//echo("<br/>".$my_URL);
			
			//show the record as table-row view:
			echo(file_get_contents($my_URL));
		
	?>
		        <!-- Vizualizare -->
			<!-- <a href="utilizatori_vizualizare.php?actiune=view&id=<?php echo $crud_id; ?>" target="zona-popup" class="btn-icon btn-view" title="View  This User" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">visibility</i>
			</a> -->                        
	<?php
		}
		
		if ($oper =="delete"){	
	?>
		        <!-- Ștergere / Minus -->
			<a href="utilizatori_eliminare.php?actiune=delete&id=<?php echo $crud_id; ?>" target="zona-popup" class="btn-icon btn-delete" title="Delete This User" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">delete</i>
			</a> 
	<?php
		}
	?>
</div>

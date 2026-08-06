<?php
	session_start();
	if (ob_get_level() == 0) ob_start();
	//echo("start-obj");ob_flush(); flush();	
?>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="crud_styles.css">

<h5>User ADD/MODIFY</h5><br/>

<div style="display: flex; justify-content: flex-end;">
	<?php
		$oper = $_REQUEST['actiune'];
		//echo("<br/>ADD/MOD: oper=".$oper);ob_flush(); flush();
		
		$_SESSION['CRUD_oper'] = $oper;
		
		if($oper == "add"){
			$_SESSION['CRUD_id'] = -999999999;
			//echo("<br/>ADD/MOD: user-id=-999999999");
	?>
		    <!-- Formularul trimite datele randului nou de adaugat prin metoda POST -->
		    <form action="utilizatori_adaugare.php" method="POST" style="font-family: Arial, sans-serif;">
			
			<!-- ID-ul -1 trimis ascuns către server -->
			<input type="hidden" id="actiune" name="actiune" value="add">
			<input type="hidden" id="user_id" name="user_id" value="">

			<table class="crud_table" border="1" cellpadding="10" cellspacing="0" style="border-collapse: collapse; width: 100%; max-width: 800px;">
			    <thead>
				<tr style="background-color: #f2f2f2; text-align: left;">
				    <th style="width: 40%;"><small><i>Field-Name</i></small></th>
				    <th style="width: 60%;"><small><i>Field-Value</i></small></th>
				</tr>
			    </thead>
			    <tbody>

				<!-- Rândul pentru User ID -->
				<tr>
				    <td><label for="user_id"><strong>User-ID</strong></label></td>
				    <td style="color: #666; background-color: #fafafa;"><small title="User-ID(** this field will be auto-generated; this field should not be entered! **)">(** <i>will be auto-generated</i> **)</small></td>
				</tr>
				
				<!-- Rândul pentru User Name -->
				<tr>
				    <td><label for="user_name"><strong>Username</strong></label><br/><small>(* <i>required</i>)</small></td>
				    <td>
					<input type="text" 
					       id="user_name" 
					       name="user_name" 
					       value=""
					       title="User-Name(** this field is required to be entered! **)"
					       style="width: 95%; padding: 5px;" 
					       required>
				    </td>
				</tr>
				<!-- Rândul pentru Passw -->
				<tr>
				    <td><label for="user_passw"><strong>Password</strong></label><br/><small>(* <i>required</i>)</small></td>
				    <td>
					<input type="text" 
					       id="user_passw" 
					       name="user_passw" 
					       value=""
					       title="User-Password(** this field is required to be entered! **)"
					       style="width: 95%; padding: 5px;" 
					       required>
				    </td>
				</tr>				
				<!-- Rândul pentru User Comments -->
				<tr>
				    <td><label for="user_comments"><strong>Comments</strong></label><br/><small>(<i>optionally</i>)</small></td>
				    <td>
					<textarea id="user_comments" 
					          name="user_comments" 
					          rows="4"
					          title="User-Comments(** this field is NOT-required/optionally to be entered; it could be empty! **)"
					          style="width: 95%; padding: 5px; resize: vertical;"></textarea>
				    </td>
				</tr>
				
				<!-- Rândul pentru Butonul de Trimite -->
				<tr>
				    <td></td>
				    <td>
					<button type="submit" style="padding: 8px 15px; background-color: #4CAF50; color: white; border: none; cursor: pointer; border-radius: 3px;">
					    Save/Add User
					</button>
				    </td>
				</tr>
			    </tbody>
			</table>
		    </form>
    
			<!-- 1.Butonul Adaugă (+) în partea de sus -->
			<!-- <a href="utilizatori_adaugare.php?actiune=add" target="zona-popup" class="btn-icon btn-add" title="Add A New User" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">add</i>
			</a> -->
	<?php
		};
		
		if($oper == "edit"){
			$crud_id = $_REQUEST['id'];
			//echo("<br/>ADD/MOD: user-id=".$crud_id);
			$_SESSION['CRUD_id'] = $crud_id;
			
			include("conectare.php");
			
			// 2. ID-ul utilizatorului (convertit la întreg pentru siguranță/securitate)
			$user_id = isset($_GET['id']) ? (int)$_GET['id'] : -1; 
			//echo("<br/>User-VIEW: user-id=".$user_id);
			$action = isset($_GET['actiune']) ? (string)$_GET['actiune'] : "-"; 
			//echo("<br/>User-VIEW: oper=".$action);
			if($action == "edit"){
				$sql = "SELECT id, username,comments FROM users WHERE id= ".$user_id;
				//echo($sql); ob_flush(); flush();
				$user_rezultat = $conn->query($sql);
				if ($user_rezultat && $user_rezultat->num_rows > 0) {
		    			$row_usr = $user_rezultat->fetch_assoc();
		    			
		    			$row_user_id       = (int)htmlspecialchars($row_usr['id']);
		    			$row_user_name     = (string)htmlspecialchars($row_usr['username']);
		    			$row_user_comments = (string)htmlspecialchars($row_usr['comments']);
	?>
		    <!-- Formularul trimite datele randului de modificat/prin suprapunere prin metoda POST -->
		    <form action="utilizatori_modificare.php" method="POST" style="font-family: Arial, sans-serif;">
			
			<!-- ID-ul -1 trimis ascuns către server -->
			<input type="hidden" id="actiune" name="actiune" value="edit">
			<input type="hidden" id="user_id" name="user_id" value="<?php echo($row_user_id); ?>">

			<table class="crud_table" border="1" cellpadding="10" cellspacing="0" style="border-collapse: collapse; width: 100%; max-width: 800px;">
			    <thead>
				<tr style="background-color: #f2f2f2; text-align: left;">
				    <th style="width: 40%;"><small><i>Field-Name</i></small></th>
				    <th style="width: 60%;"><small><i>Field-Value</i></small></th>
				</tr>
			    </thead>
			    <tbody>

				<!-- Rândul pentru User ID -->
				<tr>
				    <td><label for="user_id"><strong>User-ID</strong></label></td>
				    <td style="color: #666; background-color: #fafafa;"><small title="User-ID(** this field is auto-generated; this field should not be entered! **)"><i><?php echo($row_user_id); ?></i></small></td>
				</tr>
				
				<!-- Rândul pentru USER Name -->
				<tr>
				    <td><label for="user_name"><strong>Username</strong></label><br/><small>(* <i>required</i>)</small></td>
				    <td>
					<input type="text" 
					       id="user_name" 
					       name="user_name" 
					       value="<?php echo($row_user_name); ?>"
					       title="Username(** this field is required to be entered/changed! **)"
					       style="width: 95%; padding: 5px;" 
					       required>
				    </td>
				</tr>

				<!-- Rândul pentru USER Password -->
				<tr>
				    <td><label for="user_passw"><strong>New-Password</strong></label><br/><small>(* <i>required</i>)</small></td>
				    <td>
					<input type="text" 
					       id="user_passw" 
					       name="user_passw" 
					       value=""
					       title="Password(** this field is required to be entered/changed/replaced! the password will be replaced after saving! **)"
					       style="width: 95%; padding: 5px;" 
					       required>
				    </td>
				</tr>
				
				<!-- Rândul pentru User Comments -->
				<tr>
				    <td><label for="user_comments"><strong>Comments</strong></label><br/><small>(<i>optionally</i>)</small></td>
				    <td>
					<textarea id="user_comments" 
					          name="user_comments" 
					          rows="4"
					          title="User-Comments(** this field is NOT-required/optionally to be entered; it could be empty! **)"
					          style="width: 95%; padding: 5px; resize: vertical;"><?php echo($row_user_comments); ?></textarea>
				    </td>
				</tr>
				
				<!-- Rândul pentru Butonul de Trimite -->
				<tr>
				    <td></td>
				    <td>
					<button type="submit" style="padding: 8px 15px; background-color: #4CAF50; color: white; border: none; cursor: pointer; border-radius: 3px;">
					    Save/Modify User
					</button>
				    </td>
				</tr>
			    </tbody>
			</table>
		    </form>
<?php
		    			} else {
		    					echo "*** User-EDIT: No user found with ID: " . $row_user_id." ***"; 
					       }
			} else{
				echo("*** User-EDIT: Unknown action/operation. ***"); 
			      };
			// Închidere conexiune
			$conn->close();
?>	
		    <!--
			<a href="utilizatori_modificare.php?actiune=edit&id=<?php echo $crud_id; ?>" target="zona-popup" class="btn-icon btn-edit" title="Edit This User" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">edit</i>
			</a> -->
<?php
		}
		ob_end_flush();
?>
</div>


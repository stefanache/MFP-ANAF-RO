<?php
	// Pornim sesiunea pentru a accesa variabilele de stare
	session_start(); 
	
	$_SESSION['pagina_activa'] ="users.php";
	
	include("conectare.php");

	// 1. Executarea interogării folosind linia ta exactă
	$sql = "SELECT id, username, comments FROM users WHERE id>=0 ORDER BY username ASC";
	//$sql = "SELECT id, username, comments FROM users           ORDER BY username ASC";
	$rezultat = $conn->query($sql);
?>

<!-- Includem Font Awesome pentru iconițe -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cloudflare.com">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="crud_styles.css">

<!-- 2. POPUP-UL CARE RĂMÂNE ASCUNS LA ÎNCEPUT -->
<dialog id="popup" style="border:none; border-radius:8px; box-shadow:0 4px 20px rgba(0,0,0,0.4); padding:20px; position:fixed; top:50%; left:50%; transform:translate(-50%, -50%); margin:0; width:60vw; max-width:800px; height:70vh; max-height:600px; flex-direction:column;">

   <div style="display: flex; justify-content: flex-end;">
     <!-- Butonul de închidere -->
     <button onclick="document.getElementById('popup').close();window.parent.location.reload();" class="btn-icon  btn-close" title="Close this popup-window!" >   
	<i class="material-icons" style="font-size:12px;color:white">close</i>
     </button>
    </div>
    
   <!-- iFrame-ul pentru autofit -->
   <iframe name="zona-popup" style="width:100%; flex-grow:1; border:none;"></iframe>
      

</dialog>

<!-- Adaugă această mică regulă CSS în pagină pentru a activa flex-ul doar când se deschide popup-ul -->
<style>
    dialog[open] { display: flex !important; }
</style>

<h4>Users</h4><br/>

<table class="crud-table">
    <thead>
        <tr>
            <th>#ID.</th>
            <th>USER</th>
            <th>Comments about this user</th>
            <th style="text-align: right;">
            	<div class="header-flex">		    
		    <!-- 1.Butonul Adaugă (+) în partea de sus -->
		    <a href="utilizatori_adaugare_modificare.php?actiune=add" target="zona-popup" class="btn-icon btn-add" title="Add A New User" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">add</i> 
		    </a>
		</div>
		Actions
            </th>
        </tr>
    </thead>
    <tbody>
        <?php 
        // 2. Parcurgerea rezultatelor primite prin MySQLi
        if ($rezultat && $rezultat->num_rows > 0): 
            while($utilizator = $rezultat->fetch_assoc()): 
        ?>
                <tr>
                    <td><?php echo htmlspecialchars($utilizator['id']); ?></td>
                    <td><?php echo htmlspecialchars($utilizator['username']); ?></td>
                    <td><?php echo htmlspecialchars($utilizator['comments']); ?></td>
                    <td class="actions-cell">
                        <!-- Vizualizare -->
		        <a href="utilizatori_vizualizare.php?actiune=view&id=<?php echo $utilizator['id']; ?>" target="zona-popup" class="btn-icon btn-view" title="View  This User" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">visibility</i>
		        </a>                         
                        <!-- Editare -->
		        <a href="utilizatori_adaugare_modificare.php?actiune=edit&id=<?php echo $utilizator['id']; ?>" target="zona-popup" class="btn-icon btn-edit" title="Edit This User" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">edit</i>
		        </a>                        
                        <!-- Ștergere / Minus -->
		        <a href="utilizatori_vizualizare_eliminare.php?actiune=delete&id=<?php echo $utilizator['id']; ?>" target="zona-popup" class="btn-icon btn-delete" title="Delete This User" onclick = "document.getElementById('popup').showModal();">
			    <i class="material-icons" style="font-size:12px;color:white">delete</i>
		        </a>                         
                    </td>
                </tr>
            <?php 
            endwhile; 
        else: 
        ?>
            <tr>
                <td colspan="3" style="text-align: center;">There are no registered users.</td>
            </tr>
        <?php endif; ?>
    </tbody>
</table>

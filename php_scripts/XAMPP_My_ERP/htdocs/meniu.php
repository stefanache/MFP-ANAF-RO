<?php 
// <!--https://www.scribd.com/doc/43925087/Clasificarea-Activelor-Si-a-Pasivelor-->
// Pornim sesiunea pentru a accesa variabilele de stare
session_start(); 

// Simulăm datele de sesiune dacă nu sunt deja setate (înlocuiește cu logica ta de login)
if (!isset($_SESSION['username'])) { 
    $_SESSION['username'] = "admin"; 
} 
if (!isset($_SESSION['pagina_activa'])) { 
    $_SESSION['pagina_activa'] ="companii.php";
}
?> 
<!DOCTYPE html> 
<html lang="ro"> 
<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Administrator Panel</title> 
    <link rel="stylesheet" href="menu.css"> 
</head> 
<body> 

    <!-- Header Sus Dreapta --> 
    <header> 
        <div class="user-info"> 
            <span class="username">Hello, <?php echo htmlspecialchars($_SESSION['username']); ?>!</span> 
            <a href="deconectare.php" class="btn-logout">Logout</a> 
        </div> 
    </header> 

    <!-- Corpul Principal --> 
    <div class="main-container"> 
        <!-- Meniu Vertical Stânga --> 
        <aside> 
            <!-- Grupul-1: Master-Data --> 
            <div class="menu-category">Environment - Common Data <span class="category-icon"></span></div> 
            <ul class="menu-list">
                <!-- Noul sub-meniu Nomenclatures (colapsabil și neactiv ca pagină) -->
                <li>
                    <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
                        Nomenclatures/Standards <span class="category-icon"></span>
                    </div>
                    <ul class="menu-list">
                        <li><a href="#" class="menu-link" data-pagina="units.php">Units-Measurement & Packages</a></li>
                        <li><a href="#" class="menu-link" data-pagina="currencies.php">Currencies</a></li>
		        <li>
		            <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
		                Geographycal-Data(GIS) <span class="category-icon"></span>
		            </div>
		            <ul class="menu-list">
		            	<li><a href="#" class="menu-link" data-pagina="countries.php">Countries</a></li>
		            	<li><a href="#" class="menu-link" data-pagina="zones.php" title="ierarhical zones: ">Zones</a></li>
				<li><a href="#" class="menu-link" data-pagina="counties.php">Counties</a></li>
				<li><a href="#" class="menu-link" data-pagina="locality_types.php" title="type of localities">Localitiy-types</a></li>				
				<li><a href="#" class="menu-link" data-pagina="localities.php" titles="towns/cities,municipalities,comunes(UAT),villages,...">Localities</a></li>
				<li><a href="#" class="menu-link" data-pagina="artery_types.php" title="type of streets">Artery-types</a></li>					
				<li><a href="#" class="menu-link" data-pagina="arteries.php" title="Streets">Arteries</a></li>
				<li><a href="#" class="menu-link" data-pagina="parcels.php" title="Parcels with some gates(GW)">Locations</a></li>
		            </ul>
		        </li>
 			<li>
		            <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
		                Postal-Address Data <span class="category-icon"></span>
		            </div>
		            <ul class="menu-list">		        
				<li><a href="#" class="menu-link" data-pagina="post_offices.php">Post-Officies(POs)</a></li>
				<li><a href="#" class="menu-link" data-pagina="postal_codes.php" title="Parcel's Addressable/Access Gates/Gateways(GWs) assigned to Locations/Parcels and POs(agent/staff)">Postal-Addreses</a></li>
			    </ul>
			</li>
			<li>
		            <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
		                Standards-Architecture <span class="category-icon"></span>
		            </div>
		            <ul class="menu-list">		        
				<li><a href="#" class="menu-link" data-pagina="standards.php">Standards-List/Nomenclature</a></li>
				<li><a href="#" class="menu-link" data-pagina="standards_usage.php" title="Standards-Network Usage-In(Many:Many)">Standard-Usage</a></li>
			    </ul>
			</li>			
                    </ul>
                </li>
                <li>
                    <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
                        Active - Resources <span class="category-icon"></span>
                    </div>
                    <ul class="menu-list">
			<li>
			    <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
			        Bank-Data <span class="category-icon"></span>
			    </div>
			    <ul class="menu-list">
				<li><a href="#" class="menu-link" data-pagina="banci.php" title="Legal-Entities(LE): Banks">Banks(LE)</a></li>
				<li><a href="#" class="menu-link" data-pagina="bank_accounts.php" tile="Goods: Bank-Accounts(BA)">Bank-Accounts(BA)</a></li>   
			    </ul>
			</li>                     
		         <li>
		            <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
		                Goods <span class="category-icon"></span>
		            </div>
		            <ul class="menu-list">
				<li><a href="#" class="menu-link" data-pagina="assets.php" title="Goods: Assets">Assets(A)</a></li>
		        	<li><a href="#" class="menu-link" data-pagina="inventories.php" title="Goods: Inventory">Inventories(I)</a></li>
		        	<li><a href="#" class="menu-link" data-pagina="products.php" title="Goods: Products">Products(P)</a></li>
		        	<li><a href="#" class="menu-link" data-pagina="services.php" title="Goods: Services">Services(S)</a></li>
		            </ul>
		            <li><a href="#" class="menu-link" data-pagina="agent_goods.php" title="Define(without assignment to Agent) Capital-Active/Goods/Resources(Goods,BA,Agents,Docs/Standards/Nomenclatures,...) where  Goods=Assets&Inventory and Products&Services;">Resources</a></li>
		        </li>                    
                    </ul>
                </li>
                <li>
                    <div class="menu-category" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
                        Agent-Data(PP+LE) <span class="category-icon"></span>
                    </div>
                    <ul class="menu-list">             		        
		          <li>
		            <div class="menu-category" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
		                Legal-Entities(LE)<span class="category-icon"></span>
		            </div>
		            <ul class="menu-list">               
				 <li>
				    <div class="menu-category" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
				        Companies-Data <span class="category-icon"></span>
				    </div>
				    <ul class="menu-list">
					<li><a href="#" class="menu-link active" data-pagina="companii.php" title="Legal-Entities(LE): Companies">Companies</a></li>
					<li><a href="#" class="menu-link active" data-pagina="staff_roles.php" title="Legal-Entities(LE): Companies">Staff-Roles</a></li>
				    </ul>
				</li>
				<li><a href="#" class="menu-link" data-pagina="institutii.php" title="Legal-Entities(LE): State-Institutions">State-Institutions</a></li>
				<li><a href="#" class="menu-link" data-pagina="IFN.php" title="Legal-Entities(LE): Non-Bank Financial-Institutions">Non-Bank Financial-Institutions</a></li>				   
		            </ul>
		        </li> 
		        
		        <li>
		            <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan" title="Physical Persons(Staff-Company,Independent-Person,...Other Individuals/Persons)">
		                Physical-Persons(PP) <span class="category-icon"></span>
		            </div>
		            <ul class="menu-list">
		            	<li><a href="#" class="menu-link" data-pagina="persons.php" title="Physical-Persons(PP): Individuals/Persons">Individuals</a></li>
				<li><a href="#" class="menu-link" data-pagina="persons.php" title="Physical-Persons(PP): Company-Staff">Company-Staff</a></li>
		            </ul>
		        </li> 
		        <li>
			    <div class="menu-category" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
			        Agents-Resources <span class="category-icon"></span>
			    </div>
			    <ul class="menu-list">
			        <li><a href="#" class="menu-link" data-pagina="departs.php" title="Departaments-Nomenclature/List/Types: e.g Accounting,...">Departaments</a></li>
			    	<li><a href="#" class="menu-link" data-pagina="agent_departs.php" title="Agent's Departaments">Agent's Departaments</a></li>
		        	<li><a href="#" class="menu-link" data-pagina="agent_roles.php" title="Roles of Agents in Contracts">Agent's Roles</a></li>		      
		        	<li><a href="#" class="menu-link" data-pagina="agent_goods.php" title="Offers: Agent's Goods/resources/articles to be offered/Assignment or Allocation of Resources to Agent.">Resources-Assignment</a></li>
		        	<li><a href="#" class="menu-link" data-pagina="agent_URLs.php" title="Agent's URLs:presentation,blog,...">Agent's URLs</a></li>
		        	
		            </ul>
			</li>		        	
		        <li><a href="#" class="menu-link" data-pagina="currency_rates.php" title="Currency agent's(for e.g. central-bank as role)-rates">Currency-Rates</a></li>
		        <li>
			    <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
			        Seller's Price-Lists<span class="category-icon" title="list price offered for the seller(viewed as agent-role)-agent's products/goods/resources"></span>
			    </div>
			    <ul class="menu-list">
			    	<li><a href="#" class="menu-link" data-pagina="pl_oferte.php" title="Prices/Offers-Lists for seller's articles/articles/resources to be offerd">Price-Lists</a></li>
			    	<li><a href="#" class="menu-link" data-pagina="pl_prices.php" title="Price/Offer for seller's articles/resources">Prices</a></li>		            
			    </ul>
			 </li>		        
                    </ul>
                </li>		        
            </ul> 

            <!-- Grupul-2: Documents --> 
            <div class="menu-category collapsed">Documents-Data<span class="category-icon"></span></div> 
            <ul class="menu-list">
                <li><a href="#" class="menu-link" data-pagina="extrase_bancare.php" title="Documents-Circuit">Documents-Circuit(BPMN)</a></li>
		<li>
		    <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">
			Documents<span class="category-icon" title="Documents: Regular-Doc, Bank-Stattements,..."></span>
		    </div>
		    <ul class="menu-list">
			<li>
			    <div class="menu-category collapsed" style="padding-left: 10px; font-size: 0.75em; margin: 5px 0;font-color:cyan">Regular-Documents<span class="category-icon" title="Documents: Contracts/Agreements,Request-for-Offer,Offers,Orders,..."></span>
			    </div>
			    <ul class="menu-list">
				<li><a href="#" class="menu-link" data-pagina="contracte.php" title="Contracts/Agreements,Request-for-Offer,Offers,Orders,...">Documents</a></li>
				<li><a href="#" class="menu-link" data-pagina="contract_agents.php" title="Document's Parts/Agents and Contractual-Roles/Standardized-Rules for Parts">Parts(with Roles)</a></li>
				<li><a href="#" class="menu-link" data-pagina="contract_goods.php" title="Contractual goods to be ordered/Agent's-Resources/Articles of Document">Articles</a></li> 		    
			    </ul>
			</li>
			<li><a href="#" class="menu-link" data-pagina="extrase_bancare.php" title="Bank-Statements/Reports:contractual receipts and payments, and more">Bank-Statements</a></li> 		    </ul>
		</li>                

            </ul> 

            <!-- Grupul-3: System --> 
            <div class="menu-category collapsed">System <span class="category-icon"></span></div> 
            <ul class="menu-list">
            	<li><a href="#" class="menu-link" data-pagina="users.php">Users</a></li> 
                <li><a href="deconectare.php" class="menu-logout">Logout</a></li> 
            </ul> 
        </aside> 

        <!-- Conținut Dinamic Dreapta --> 
        <main id="continut-dreapta"> 
            <?php  
		    // Verificăm dacă avem deja o pagină salvată în sesiune, altfel punem 'companii.php'
		    $pagina_activa = isset($_SESSION['pagina_activa']) ? $_SESSION['pagina_activa'] : 'companii.php';

		    if (file_exists($pagina_activa)) { 
			include($pagina_activa); 
		    } else { 
			echo "<p>Error: Section '$pagina_activa' was not found.</p>"; 
		    }             
            ?> 
        </main> 
    </div> 
    <script src="meniu.js"></script>
</body> 
</html>


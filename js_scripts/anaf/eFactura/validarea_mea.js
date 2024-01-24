/**
 * 
 */
var v = 1;

function validare(zona) {
	//alert(v);
	flag = true;

	//stergere mesaje de eroare
	spans = document.getElementsByTagName("span");
	for (var i = 0; i < spans.length; i++) {
		var span = spans[i];
		if (span.id.endsWith("Error")) {
			span.innerHTML = "";
		}
	}

	if (zona === 'inf') {
		//validare numar Factura
		flag = validareElement("input", "numarFactura", flag);
		if (validareElementFaraMesaj("input", "numarFactura")) {
			flag = validareMacarOCifra("numarFactura", flag);
		}
		//validare tip Factura
		flag = validareElement("select", "tipFactura", flag);
		//validare data factura
		flag = validareElement("input", "dataFactura_Input", flag);
		//validare moneda
		flag = validareElement("select", "moneda", flag);
		// validare data exigibilitate- cod data exigibilitate
		el1 = document.querySelector("select[id$='dataExiValAdaugataInner']");
		el2 = document.querySelector("input[id$='dataTVA_Input']");
		listtva = [el1, el2];
		flag = validListElementeExclusivRec(listtva, flag, "BT7, BT8");
	} else if (zona === 'vnz') {
		//validare denumire vanzator
		flag = validareElement("input", "numeVanz", flag);
		//validare prezenta BT30 sau BT31
		el1 = document.querySelector("input[id$='identificatorVanz']");
		el2 = document.querySelector("input[id$='identificatorTVAVanz']");
		list1 = [el1, el2];
		flag = validListElemente(list1, flag, "BT30,BT31");
		//validare cod tara vanzator
		flag = validareElement("select", "codTaraVanz", flag);
		//validare judet vanzator- bucuresti
		if (valoareElement("select", "codTaraVanz") == 'RO') {
			flag = validareElement("select", "subdivVanz", flag)
		}

		//validare localitate vanzator-( RO si ! bucuresti) sau alta tara
		if (document.querySelector("input[id$='localitateVanzh']") != null) {
			flag = validareElementHiddenInput2("localitateVanzh", flag);
		}
		// validare localitate vanzator RO, Bucuresti
		if (document.querySelector("select[id$='subdivVanzInner']") != null) {
			if (valoareElement("select", "subdivVanz") == 'RO-B') {
				flag = validareElement("select", "localitateVanz", flag)
			}
		}
		//validare strada vanzator
		flag = validareElement("input", "stradaVanz", flag);

		//validare tip instrument vanzator
		//flag = validareElement("select", "tipInstrumentVanz", flag);
		// validare virament
		if (valoareElement("select", "tipInstrumentVanz") == "30" || valoareElement("select", "tipInstrumentVanz") == "58") {
			flag = validareElement("input", "ibanVanz", flag);
		}

		//validare card Iban
		elc = document.querySelector("input[id$='cardContVanz']");
		if (elc != null) {
			if (validareElementFaraMesaj("input", "cardContVanz")) {
				flag = validareLungimeElementInput2("cardContVanz", 0, 10, flag);
			}
		}
		//validare card Iban tip
		if (elc != null) {
			if (validareElementFaraMesaj("input", "cardContVanz")) {
				flag = validareElement("input", "tipCardVanz", flag);
			}
		}
		//validare virament BG17
		elcv = document.querySelector("input[id$='ibanVanz']");

		if (elcv != null) {
			elerr = document.querySelector("span[id$='ibanVanzError']");
			//if (elerr.innerHTML.trim()!="Campul este obligatoriu") elerr.innerHTML="";
			if (validareElementFaraMesaj("input", "explicIbanVanz") ||
				validareElementFaraMesaj("input", "identFurnServPlVanz")) {
				flag = validareElement("input", "ibanVanz", flag);
				if (!validareElementFaraMesaj("input", "ibanVanz")) {
					elerr.innerHTML = 'Daca aveti valori in campul BT-85, BT-86 acest camp este obligatoriu';
				}
				else { elerr.innerHTML = ""; }
			} else {
				if (elerr.innerHTML.trim() != "Campul este obligatoriu") elerr.innerHTML = "";
			}

		}

		//validare plata cu card BG18
		elcc = document.querySelector("input[id$='cardContVanz']");

		if (elcc != null) {
			elerr = document.querySelector("span[id$='cardContVanzError']"); 
			if (validareElementFaraMesaj("input", "tipCardVanz") ||
				validareElementFaraMesaj("input", "detinatorCardVanz")) {
				flag = validareElement("input", "cardContVanz", flag) && validareLungimeElementInput2("cardContVanz", 0, 10, flag) ;
				if (elerr.innerHTML.trim() != 'Lungimea trebuie sa fie intre 0 si 10'
				&& elerr.innerHTML.trim() != "") {
					elerr.innerHTML = 'Daca aveti valori in campul BT-87-, BT-88 acest camp este obligatoriu!'; 
				}
				else {
					if (elerr.innerHTML.trim() != 'Lungimea trebuie sa fie intre 0 si 10') {  elerr.innerHTML = ""; }
				}
			} else {
				if (elerr.innerHTML.trim() != 'Lungimea trebuie sa fie intre 0 si 10') {  elerr.innerHTML = ""; }
			}

		}
		
		//validare beneficiar BG-10
		elerb = document.querySelector("span[id$='numeBenefVanzError']");
		elerb.innerHTML="";
		flag=validareEgalitateElemente("numeBenefVanz", "numeVanz","BT-27","BT-59", flag);
		if (validareElementFaraMesaj("input", "idenBenefVanz")||
		validareElementFaraMesaj("input", "idenLegalBenefVanz")) {
			flag = validareElement("input", "numeBenefVanz", flag);
			
			if (elerb.innerHTML.trim() !="" && elerb.innerHTML.trim() !="Valorile din BT-27 si BT-59 nu por fi identice"){
			elerb.innerHTML='Daca aveti valori in campul BT-60, BT-61 acest camp este obligatoriu!';
			} 
		} else {
			if (elerb.innerHTML.trim() != 'Valorile din BT-27 si BT-59 nu por fi identice')
			{elerb.innerHTML="";}
			
			}
		
		
		
		//validare cuiTVA reprezentant fiscal
		if (validareElementFaraMesaj("input", "numeReprezVanz")) {
			flag = validareElement("input", "idenTvaReprezfVanz", flag);
		} 
		//validare nume reprezentant fiscal
		if (validareElementFaraMesaj("input", "idenTvaReprezfVanz")) {
			flag = validareElement("input", "numeReprezVanz", flag);
		}
		//validare adresa reprezentant fiscal
		if (validareElementFaraMesaj("input", "numeReprezVanz") || validareElementFaraMesaj("input", "idenTvaReprezfVanz")) {
			flag = validareElement("select", "codTaraReprezVanz", flag);
			if (valoareElement("select", "codTaraReprezVanz") == 'RO') {
				flag = validareElement("select", "subdivReprezVanz", flag)
			}

			//validare localitate repr vanzator-( RO si ! bucuresti) sau alta tara
			if (document.querySelector("input[id$='localitateReprezVanzh']") != null) {
				flag = validareElementHiddenInput2("localitateReprezVanzh", flag);
			}
			// validare localitate reprez vanzator RO, Bucuresti
			if (document.querySelector("select[id$='subdivReprezVanzInner']") != null) {
				if (valoareElement("select", "subdivReprezVanz") == 'RO-B') {
					flag = validareElement("select", "localitateReprezVanz", flag)
				}
			}
			flag = validareElement("input", "stradaReprezVanz", flag);

		}
		//validare prezenta  BT31 sau BT32 sau BT63
		el1 = document.querySelector("input[id$='identificatorFiscalVanz']");
		el2 = document.querySelector("input[id$='identificatorTVAVanz']");
		el3 = document.querySelector("input[id$='idenTvaReprezfVanz']");
		list2 = [el1, el2, el3];
		flag = validListElemente(list2, flag, "BT31,BT32,BT63");
	} else if (zona === 'cmp') {
		//validare denumire cumparator
		flag = validareElement("input", "numeCump", flag);
		//validare prezenta BT47 sau BT48
		el1 = document.querySelector("input[id$='identificatorCump']");
		el2 = document.querySelector("input[id$='identificatorTVACump']");
		list1 = [el1, el2];
		flag = validListElemente(list1, flag, "BT47,BT48");

		//validare strada cumparator
		flag = validareElement("input", "stradaCump", flag);
		//validare localitate cumparator
		flag = validareElement("input", "localitateCump", flag);
		//validare cod tara cumparator
		flag = validareElement("select", "codTaraCump", flag);
		//validare cod tara livrare
		//flag = validareElement("select", "codTaraLivrare", flag);
	} else if (zona === 'prd') {
		//console.log('sunt in validare produse add');
		//validare denumire produs
		//flag = validareElement2("input", "numeArt", flag, false);
		flag = validareElement("input", "numeArt", flag);
		//validare cantitate produs
		//flag = validareElement2("input", "cantitateFacturata", flag, false);
		flag = validareElement("input", "cantitateFacturata", flag);
		//validare unitate masura produs
		//flag = validareElement("select", "unitateMasura", flag, false);
		flag = validareElement("select", "unitateMasura", flag);
		//validare pret bucata produs
		//flag = validareElement2("input", "pretNet", flag, false);
		flag = validareElement("input", "pretNet", flag);
		//validare total fara TVA produs
		//flag = validareElement2("input", "valoareNeta", flag, false);
		flag = validareElement("input", "valoareNeta", flag);
		//validare categorie TVA produs
		//flag = validareElement("select", "categorieTVA", flag, false);
		flag = validareElement("select", "categorieTVA", flag);
	} else if (zona === 'prdEd') {
		//console.log('sunt in validare produse edit');
		//validare denumire produs
		//flag = validareElement2("input", "numeArt", flag, false);
		flag = validareElement("input", "numeEdArt", flag);
		//validare cantitate produs
		//flag = validareElement2("input", "cantitateFacturata", flag, false);
		flag = validareElement("input", "cantitateEdFacturata", flag);
		//validare unitate masura produs
		//flag = validareElement("select", "unitateMasura", flag, false);
		flag = validareElement("select", "unitateEdMasura", flag);
		//validare pret bucata produs
		//flag = validareElement2("input", "pretNet", flag, false);
		flag = validareElement("input", "pretEdNet", flag);
		//validare total fara TVA produs
		//flag = validareElement2("input", "valoareNeta", flag, false);
		flag = validareElement("input", "valoareEdNeta", flag);
		//validare categorie TVA produs
		//flag = validareElement("select", "categorieTVA", flag, false);
		flag = validareElement("select", "categorieEdTVA", flag);
	}

	//console.log("flag: ", flag);
	return flag;
	//!!!Trebuie adaugate validarile de numar, lungime, etc!!!!
}
function validareElement(element, nume, flag) {
	return validareElement2(element, nume, flag, true);
}
function validareElement2(element, nume, flag, tip) {
	if (element == "input") {
		inputs = document.getElementsByTagName("input");
		for (var i = 0; i < inputs.length; i++) {
			var input = inputs[i];
			if (input.id.endsWith(nume)) {
				if (input.value == null || input.value.length == 0) {
					if (nume == "localitateVanzh") { }
					spans = document.getElementsByTagName("span");
					for (var j = 0; j < spans.length; j++) {
						var span = spans[j];
						if (span.id.endsWith(nume + "Error")) {
							span.innerHTML = "Campul este obligatoriu";
							if (flag) {
								input.focus();
							}
							flag = false;
							break;
						}
					}
				}
				if (tip) {
					break;
				}
			}
		}
	}
	else if (element == "select") {
		selects = document.getElementsByTagName("select");
		for (var i = 0; i < selects.length; i++) {
			var select = selects[i];
			if (select.id.includes(nume)) {
				if (select.value == null || select.value.length == 0) {
					spans = document.getElementsByTagName("span");
					for (var j = 0; j < spans.length; j++) {
						var span = spans[j];
						if (span.id.endsWith(nume + "Error")) {
							span.innerHTML = "Campul este obligatoriu";
							if (flag) {
								select.focus();
							}
							flag = false;
							break;
						}
					}
				}
				if (tip) {
					break;
				}
			}
		}
	}
	return flag;
}


function validareElementFaraMesaj(element, nume) {
	valid = true;
	switch (element) {
		case "select":
			elementDom = document.querySelector(element + "[id$='" + nume + "Inner']");
			break;
		case "input":
			elementDom = document.querySelector(element + "[id$='" + nume + "']");
			break;
		case "datepicker":
			elementDom = document.querySelector("input[id$='" + nume + "_Input']");
			break;
		default:
			elementDom = document.querySelector(element + "[id$='" + nume + "']");
	}
	if (elementDom.value == null || elementDom.value.trim().length == 0) {
		valid = false;
	}

	return valid;
}
function validareMacarOCifra(nume, flag) {
	message = "";
	el = document.querySelector("input[id$='" + nume + "']");
	elErrorId = el.parentElement.id + "Error";
	if (el != null) {
		//elErrorId=el.parentElement.id+"Error";	
		flag1 = /\d/.test(el.value);
		if (!flag1) {

			message = "Atentie! " + nume + " trebuie sa contina macar o cifra!";
			if (flag) {
				el.focus()
			}
			flag = false;

		}
		span = document.getElementById(elErrorId);
		span.innerHTML = message;
	}
	return flag;
}
function valoareElement(element, nume) {
	switch (element) {
		case "select":
			elementDom = document.querySelector(element + "[id$='" + nume + "Inner']");
			break;
		case "input":
			elementDom = document.querySelector(element + "[id$='" + nume + "']");
			break;
		case "datepicker":
			elementDom = document.querySelector("input[id$='" + nume + "_Input']");
			break;
		default:
			elementDom = document.querySelector(element + "[id$='" + nume + "']");
	}
	valoareEl = elementDom.value.trim();
	return valoareEl;
}
//numai atentionare cu onblur
function checkLungimeElementInput(el, min, max) {
	flag = true;
	message = "";

	flag = (el.value.trim().length >= min && el.value.trim().length <= max);
	elErrorId = el.parentElement.id + "Error";
	if (!flag) {
		message = "Atentie! Lungimea trebuie sa fie intre " + min + " si " + max;
	}
	span = document.querySelector("span[id='" + elErrorId + "']");
	//span = document.getElementById(elErrorId);
	span.innerHTML = message;
	return flag;

}
//validare lgime input
function validareLungimeElementInput2(nume, min, max, flag) {
	message = "";
	el = document.querySelector("input[id$='" + nume + "']");
	flag1 = (el.value.trim().length >= min && el.value.trim().length <= max);
	elErrorId = el.parentElement.id + "Error";
	if (!flag1) {

		message = "Lungimea trebuie sa fie intre " + min + " si " + max;
		if (flag) {
			el.focus();
		}
		flag = false;
	}

	span = document.getElementById(elErrorId);
	span.innerHTML = message;

	return flag;

}
function validareElementHiddenInput2(nume, flag) {
	message = "";
	el = document.querySelector("input[id$='" + nume + "']");
	flag1 = (el.value.trim().length == 0 || el.value == null);
	elErrorId = el.parentElement.id.slice(0, -1) + "Error";  //elimin ultima litera- h/hidden
	if (flag1) {
		message = "Campul este obligatoriu ";
		if (flag) {
			el.focus();
		}
		flag = false;
	}

	span = document.getElementById(elErrorId);
	span.innerHTML = message;

	return flag;

}

//macar 1 din elementele listei sa aiba valoare- sa fie completat
function validListElemente(listaElementeDom, flag, numeGrup) {
	message = "";
	lgme = listaElementeDom.length;
	flag1 = true;
	for (i = 0; i < lgme; i++) {
		if (listaElementeDom[i].value != null && listaElementeDom[i].value.trim().length != 0) { flag1 = false; break; }
	}
	if (flag1) {
		message = "Completati macar unul dintre campurile " + numeGrup + " ";
		if (flag) {
			listaElementeDom[0].focus();
		}
		flag = false;
	}

	listaElementeDom.forEach((el) => {
		document.getElementById(el.parentElement.id + 'Error').innerHTML += message;
	});
	return flag;
}

// elementele listei treb sa fie exclusiv reciproce
function validListElementeExclusivRec(listaElementeDom, flag, numeGrup) {
	message = "";
	lgme = listaElementeDom.length;
	flag1 = true; nr = 0;
	for (i = 0; i < lgme; i++) {
		if (listaElementeDom[i].value != null && listaElementeDom[i].value.trim().length != 0) {
			nr++;
		}
	}
	flag1 = (nr > 1);
	if (flag1) {
		message = "Utilizarea " + numeGrup + " este exclusiv reciproca! Nu se completeaza ambele!";
		if (flag) {
			listaElementeDom[0].focus();
		}
		flag = false;
	}

	listaElementeDom.forEach((el) => {
		document.querySelector("span[id$='" + el.id.replace("Inner", "") + "Error']").innerHTML = message;
	});
	return flag;
}
//
function validareEgalitateElemente(nume1, nume2,camp1,camp2 , flag) {
	message = "";
	el1 = document.querySelector("input[id$='" + nume1 + "']");
	el2 = document.querySelector("input[id$='" + nume2 + "']");
	if (el1==null || el2==null) {return flag;}
	flag1 = (el1.value.trim()!= el2.value.trim());
	elErrorId = el1.parentElement.id + "Error";
	if (!flag1 && el1.value.trim()!="") {
		message = "Valorile din "+camp1+" si "+camp2+" nu por fi identice";
		if (flag) {
			el1.focus();
		}
		flag = false;
	}

	span = document.getElementById(elErrorId);
	span.innerHTML = message;
	return flag;

}
//elimina localitate, judet introduse in caz ca se schimba tara/ judet
function eliminAdr(el, tip) {
	if (el.value != 'RO' && tip == "adVanz") {
		if (document.querySelector("input[id$='subdivVanzh'") != null) {
			document.querySelector("input[id$='subdivVanzh'").value = "";
		}
		if (document.querySelector("input[id$='localitateVanzh'") != null) {
			document.querySelector("input[id$='localitateVanzh'").value = "";
		}
	}
	if (el.value != 'RO' && tip == "adReprVanz") {
		if (document.querySelector("input[id$='subdivReprezVanzh'") != null) {
			document.querySelector("input[id$='subdivReprezVanzh'").value = "";
		}
		if (document.querySelector("input[id$='localitateReprezVanzh'") != null) {
			document.querySelector("input[id$='localitateReprezVanzh'").value = "";
		}
	}

}

function schMoneda() {
	elMonTva = document.querySelector("select[id$='codMonedaContTVAInner']");
	options = Array.from(elMonTva.options);
	el = document.querySelector("select[id$='monedaInner']");
	if (el.value.trim() != "RON") {
		elMonTva.disabled = false;
		//alert(options[0].value);
		options.forEach((el) => {
			if (el.value != "RON") { el.disabled = true }
		});
		elMonTva.value = 'RON';
		//elMonTva.disabled=true;
	} else {
		elMonTva.disabled = false;
		options.forEach((el) => {
			el.disabled = false;
		});
		elMonTva.value = '';


	}

}
function checkCategorieTva() {
	flag = true;
	message = "";
	select = document.querySelector("select[id$='categorieTVAInner']");
	select1 = document.querySelector("select[id$='motivScutireTVAInner']");
	input = document.querySelector("input[id$='cotaTVA']");
	input1 = document.querySelector("input[id$='motivTxtScutireTVA']");
	if ((select.options[select.selectedIndex].value === 'S' || select.options[select.selectedIndex].value === 'L' || select.options[select.selectedIndex].value === 'M') && !input.value.trim().length) {
		message = "Campul este obligatoriu";
		span = document.querySelector("span[id$='cotaTVAError']");
		span.innerHTML = message;
		input.focus();
		flag = false;
	}
	if ((select.options[select.selectedIndex].value === 'E' || select.options[select.selectedIndex].value === 'AE' || select.options[select.selectedIndex].value === 'K' || select.options[select.selectedIndex].value === 'GE' || select.options[select.selectedIndex].value === 'O') && !input1.value.trim().length && select1.options[select1.selectedIndex].value === '') {
		message = "Campul este obligatoriu";
		span = document.querySelector("span[id$='motivTxtScutireTVAError']");
		span.innerHTML = message;
		input1.focus();
		flag = false;
	}
	return flag
}

function checkNumber(id, el) {
	pattern = /[0-9]/;
	message = "";
	if (id === "pretNet") {
/*		pattern = /^-?[0-9]{1,25}(\.[0-9]{1,8})?$/;
*/		pattern = /^[0-9]{1,25}((\.[0-9]{1,8})?)$/;
		message = "Numar pozitiv maxim 8 zecimale cu punct"
	} else if (id === "pretBrut") {
		pattern = /^[0-9]{1,25}((\.[0-9]{1,8})?)$/;
		message = "Numar maxim 8 zecimale cu punct"
	} else if (id === "redPretBrut") {
		pattern = /^-?[0-9]{1,15}(\.[0-9]{2})?$/;
		message = "Numar maxim 8 zecimale cu punct"
	} else if (id === "valoareNeta") {
		pattern = /^-?[0-9]{1,15}(\.[0-9]{2})?$/;
		message = "Numar maxim 2 zecimale cu punct"
	} else {
		pattern = /^([0-9]{1,3}(\.[0-9]{1,2})?)?$/;
		message = "Numar maxim 2 zecimale cu punct"
	}
	val = el.value;
	span = document.querySelector("span[id$='" + id + "Error']");
	if (pattern.test(val)) {
		span.innerHTML = "";
	} else {
		span.innerHTML = message;
		el.value = "";
	}

}

function checkNumeArt(id, el) {
	pattern = /[0-9]/;
	message = "";
	if (id === "numeArt") {
		pattern = /^[a-zA-Z0-9\s]*[a-zA-Z0-9][a-zA-Z0-9\s]*$/;
		message = "Numele trebuie sa contina caractere alfanumerice"
	}
	val = el.value;
	span = document.querySelector("span[id$='" + id + "Error']");
	if (pattern.test(val)) {
		span.innerHTML = "";
	} else {
		span.innerHTML = message;
		el.value = "";
	}
}

function checkCategorieEdTva() {
	flag = true;
	message = "";
	select = document.querySelector("select[id$='categorieEdTVAInner']");
	input = document.querySelector("input[id$='cotaEdTVA']");
	if (select.options[select.selectedIndex].value === 'S' && !input.value.trim().length) {
		message = "Campul este obligatoriu";
		//input.focus();
		flag = false;
	}
	span = document.querySelector("span[id$='cotaEdTVAError']");
	span.innerHTML = message;
	return flag;
}

function checkNumberEd(id, el) {
	pattern = /[0-9]/;
	message = "";
	if (id === "pretEdNet") {
		pattern = /^-?[0-9]{1,25}(\.[0-9]{1,8})?$/;
		message = "Numar maxim 8 zecimale cu punct"
	} else if (id === "valoareEdNeta") {
		pattern = /^-?[0-9]{1,15}(\.[0-9]{2})?$/;
		message = "Numar maxim 2 zecimale cu punct"
	} else {
		pattern = /^([0-9]{1,3}(\.[0-9]{1,2})?)?$/;
		message = "Numar maxim 2 zecimale cu punct"
	}
	val = el.value;
	span = document.querySelector("span[id$='" + id + "Error']");
	if (pattern.test(val)) {
		span.innerHTML = "";
	} else {
		span.innerHTML = message;
		el.value = "";
	}

}

function isNumeric(str) {
	if (typeof str != "string")
		return false; // we only process strings!
	return !isNaN(str) && // use type coercion to parse the _entirety_ of the
		// string (`parseFloat` alone does not do this)...
		!isNaN(parseFloat(str)); // ...and ensure strings of whitespace fail
}

function isBetween(str, min, max) {
	if (isNumeric(str)) {
		if (str >= min && str <= max) {
			return true;
		}
	}
	return false;
}
function isRequired(str) {

	return !(!str || str.length === 0);
}
function isLength(str, min, max) {
	if (isRequired(str)) {
		if (str.length >= min && str.length <= max) {
			return true;
		}
	}

	return false;
}

function completeazaInformatii() {
	document.querySelector("input[id$='numarFactura']").value = "factXXX1";
	document.querySelector("input[id$='dataFactura_Input']").value = "01.01.1000";

	document.querySelector("select[id*='tipFactura']").value = "380";
	document.querySelector("select[id*='moneda']").value = "RON";
}

function completeazaVanzator() {
	document.querySelector("input[id$='numeVanz']").value = "numeXXX";
	document.querySelector("input[id$='identificatorTVAVanz']").value = "cuiXXX";
	document.querySelector("input[id$='stradaVanz']").value = "strXXX";
	if (document.querySelector("input[id$='localitateVanzh']") != null) {
		document.querySelector("input[id$='localitateVanzh']").value = "locXXX";
	}
	if (document.querySelector("select[id$='localtateVanzInner']") != null) {
		document.querySelector("select[id$='localitateVanzInner']").value = "SECTOR1";
	} //
	if (document.querySelector("select[id$='subdivVanzInner']") != null) {
		document.querySelector("select[id$='subdivVanzInner']").value = "RO-AB";
	}//
	if (document.querySelector("select[id$='cardContVanz']") != null) {
		document.querySelector("input[id$='cardContVanz']").value = "123XXX";
	}//
	if (document.querySelector("select[id$='tipCardVanz']") != null) {
		document.querySelector("input[id$='tipCardVanz']").value = "VIXXX";
	}

	document.querySelector("select[id*='codTaraVanz']").value = "RO";
	document.querySelector("select[id*='tipInstrumentVanz']").value = "1";
	document.querySelector("input[id$='idenTvaReprezfVanz']").value = "cuiXXX";
	document.querySelector("input[id$='numeReprezVanz']").value = "numeReprXXX";
	document.querySelector("input[id$='stradaReprezVanz']").value = "strXXX";
	if (document.querySelector("input[id$='localitateReprezVanzh']") != null) {
		document.querySelector("input[id$='localitateReprezVanzh']").value = "locXXX";
	}
	if (document.querySelector("select[id$='localtateReprezVanzInner']") != null) {
		document.querySelector("select[id$='localitateReprezVanzInner']").value = "SECTOR1";
	} //
	if (document.querySelector("select[id$='subdivReprezVanzInner']") != null) {
		document.querySelector("select[id$='subdivReprezVanzInner']").value = "RO-AB";
	}//
}

function completeazaCumparator() {
	document.querySelector("input[id$='numeCump']").value = "numeXXX";
	document.querySelector("input[id$='stradaCump']").value = "strXXX";
	document.querySelector("input[id$='localitateCump']").value = "locXXX";

	document.querySelector("select[id*='codTaraCump']").value = "RO";
	//document.querySelector("select[id*='codTaraLivrare']").value = "RO";
	document.querySelector("input[id$='identificatorTVACump']").value = "cuiXXX";
}

function completeazaProdus() {
	document.querySelector("input[id$='numeArt']").value = "prodXXX";
	document.querySelector("input[id$='cantitateFacturata']").value = "0.00";
	document.querySelector("input[id$='pretNet']").value = "0.00";
	document.querySelector("input[id$='valoareNeta']").value = "0.00";

	document.querySelector("select[id*='unitateMasura']").value = "10";
	document.querySelector("select[id*='categorieTVA']").value = "S";
}

function completeazaProdusEd() {
	document.querySelector("input[id$='numeEdArt']").value = "prodXXX";
	document.querySelector("input[id$='cantitateEdFacturata']").value = "XX";
	document.querySelector("input[id$='pretEdNet']").value = "0.00";
	document.querySelector("input[id$='valoareEdNeta']").value = "0.00";

	document.querySelector("select[id*='unitateEdMasura']").value = "10";
	document.querySelector("select[id*='categorieEdTVA']").value = "S";
}

function testErrorSpan() {
	/*
	inputs = document.getElementsByTagName("input");
	for (var i = 0; i < inputs.length; i++) {
		var input = inputs[i];
		if(input.id.includes("Ed")) {
			console.log(input.id);
			input.value = "Campul este " + input.id;
		}
	}*/

	spans = document.getElementsByTagName("span");

	for (var j = 0; j < spans.length; j++) {
		var span = spans[j];
		if (span.id.endsWith("Error")) {
			console.log(span.id)
			span.innerHTML = "Campul este " + span.id;
		}
	}

}

function handleCheckboxChange(checkbox) {
	if (!checkbox.checked) {
		alert('ATENČIE : PRIN DEBIFARE ,VALORILE EXISTENTE AU FOST ANULATE !!!');
	}
}

function verificaDataLivrare(elem) {
	//elementDom = document.querySelector("input[id$='"+nume+"_Input']");
	var dataInceputStr = document.querySelector("input[id$='dataLivrareInceput_Input']").value;
	var dataSfarsitStr = document.querySelector("input[id$='dataLivrareSfarsit_Input']").value;
	var dataInceput = convertStringToDate(dataInceputStr);
	var dataSfarsit = convertStringToDate(dataSfarsitStr);
	if (dataInceput && dataSfarsit && dataSfarsit < dataInceput) {
		elem.value = '';
		elem.focus();
		alert('ATENČIE : DATA DE SFĂRČIT TREBUIE SÄ FIE MAI MARE SAU EGALÄ CU DATA DE ĂNCEPUT !');
	}
}

function convertStringToDate(dateStr) {
	var dateComponents = dateStr.split('.');
	var formattedDate = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
	return formattedDate;
}


[Declaratia Unica D112](https://static.anaf.ro/static/10/Anaf/Declaratii_R/declaratie_unica.html) are suport informatic pe site-ul [ANAF](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/toate_formularele_30032017.htm)

Sunt multe [formulare](https://static.anaf.ro/static/10/Anaf/formulare/toate_formularele.htm)(cum este cazul si acestui tip de formular) care au suport XSD(schema de validare XML).
Acest fisier .xsd contine schema de validare a datelor XML ce se vor incarca cu formularul asociat declaratiei(care trebuie incarcat cu date inainte de a fi depus online sau transmis catre unul din serverele ANAF).

Acest meta-fisier(.xsd) contine informatii deosebit de utile care insa nu sunt uman-redabile(sunt necitibile direct de catre factorul uman).
Desigur puteti deschide acest fisier intr-un editor obisnuit (optiunea click dreapta pe fisier si apoi selectati "open with" impreuna cu un editor cum ar fi Notepad,Wordpad,Notepad++... sau chiar folosind un Browser cu optiunea "view page source") dar veti descope un document greu de citit si destul de stufos asa incat ati pierde fie prea mult timp fie pur si simplu v-ar fi foarte greu sa-l intelegeti. 

Sunt insa [articole](https://stackoverflow.com/questions/237938/how-to-convert-xsd-to-human-readable-documentation) pe internet care va ajuta sa faceti acest fisier citibil sau documentabil.

Unele articole va recomanda chiar produse software care va permit sa obtineti din acest fisier xsd un fisier html(xml2html),...

Eu m-am oprit asupra acestui produs [xs3p](https://xml.fiforms.org/xs3p/) pe care l-am folosit pentru a documenta spre exemplul formularul D212.

Iata cum am procedat:

-mai intai am descarcat fisierul [d212_20240110.xsd](https://static.anaf.ro/static/10/Anaf/Declaratii_R/AplicatiiDec/d212_20240110.xsd) de pe site-ul [ANAF](https://static.anaf.ro/static/10/Anaf/Declaratii_R/declaratie_unica.html))

-am deschis fisierul cu un editor obisnuit(click dreapta pe fisier si apoi open with cu editorul dorit) si apoi

-dupa primal linie/rand:

      <?xml version="1.0" encoding="UTF-8"?>

  am adaugat/inserat linia urmatoare:
                      
      <?xml-stylesheet type="text/xsl" href="https://stefanache.github.io/MFP-ANAF-RO/xs3p.xsl"?>

 astfel ca avem primele 2 linii astfel:

       <?xml version="1.0" encoding="UTF-8"?>
       <?xml-stylesheet type="text/xsl" href="https://stefanache.github.io/MFP-ANAF-RO/xs3p.xsl"?>

       ...
       

 (restul linii/randurilor ramanand neschimbate)

 -apoi acest fisier poate fi deschis in orice browser obisnuit pentru a-i vedea continutul sau intr-un mod cat de cat mai prietenos:

  in cazul meu: [https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/declaratii/DU_D212/d212_20240110.xsd](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/declaratii/DU_D212/d212_20240110.xsd)
 

 

 

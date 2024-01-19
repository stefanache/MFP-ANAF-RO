<h1><p align="center" width="100%">Declaraţie unică (2DU/D.212 )- privind I/V şi CS datorate de PF</p></h1>

[**DU=D.212)** - privind impozitul pe venit(I/V) şi contribuţiile sociale(CS) datorate de persoanele fizice(PF), conform **OpANAF nr. 6/2024.**]( https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/declaratii/DU_D212/d212_20240110.xsd)

[DU/D212](https://static.anaf.ro/static/10/Anaf/Declaratii_R/declaratie_unica.html) - Se utilizează pentru declararea impozitului pe veniturile realizate şi a contribuţiilor sociale datorate  pe anul 2023, precum şi a impozitului estimat şi a contribuţiilor sociale datorate, pe  anul 2024. - publicat în data de 10.01.2024

[Declaratia Unica D212](https://static.anaf.ro/static/10/Anaf/Declaratii_R/declaratie_unica.html) are suport informatic pe site-ul [ANAF](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/toate_formularele_30032017.htm)

Sunt multe [formulare](https://static.anaf.ro/static/10/Anaf/formulare/toate_formularele.htm)(cum este cazul si acestui tip de formular) care au suport XSD(schema de validare XML).
Acest fisier .xsd contine schema de validare a datelor XML ce se vor incarca cu formularul asociat declaratiei(care trebuie incarcat cu date inainte de a fi depus online sau transmis catre unul din serverele ANAF).

Acest meta-fisier(.xsd) contine informatii deosebit de utile care insa nu sunt uman-redabile(sunt necitibile direct de catre factorul uman).
Desigur puteti deschide acest fisier intr-un editor obisnuit (optiunea click dreapta pe fisier si apoi selectati "open with" impreuna cu un editor cum ar fi Notepad,Wordpad,Notepad++... sau chiar folosind un Browser cu optiunea "view page source") dar veti descope un document greu de citit si destul de stufos asa incat ati pierde fie prea mult timp fie pur si simplu v-ar fi foarte greu sa-l intelegeti. 

Sunt insa [articole](https://stackoverflow.com/questions/237938/how-to-convert-xsd-to-human-readable-documentation) pe internet care va ajuta sa faceti acest fisier citibil sau documentabil.

Unele articole va recomanda chiar produse software care va permit sa obtineti din acest fisier sursa .xsd un alt fisier destinatie cum ar fi html(xml2html),...

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
 
Desigur acest document .xsd inca este destul de complex dar daca descarcati si [formularul PDF aferent DU](https://static.anaf.ro/static/10/Anaf/Declaratii_R/AplicatiiDec/dclUnica_2024-v1.0.0_10012024.pdf) si [le comparati sau le priviti in oglinda](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/declaratii/DU_D212/dclUnica_2024-v1.0.0_10012024.pdf) veti avea o imagine mult mai clara aupra datelor xml ce urmeaza sa le asociati/map-ati formularului(ce trebuiesc introduse in formular)

Dar in acest caz pentru ca aveti structura formularului(structura_declaratieUnica_2024_v1.0.0_10012024.pdf)  atunci cred ca mult mai util este sa-l consultati in oglinda(in paralel cu fisierul .xsd) si pe acesta. Structura DU/D212 o puteti descarca pentru acest caz particular de la [ANAF](https://static.anaf.ro/static/10/Anaf/Declaratii_R/AplicatiiDec/structura_declaratieUnica_2024_v1.0.0_10012024.pdf).

Am facut si eu acest lucru si l-am [descarcat](https://static.anaf.ro/static/10/Anaf/Declaratii_R/AplicatiiDec/structura_declaratieUnica_2024_v1.0.0_10012024.pdf) astfel ca-l puteti [consulta](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/anaf/declaratii/DU_D212/structura_declaratieUnica_2024_v1.0.0_10012024.pdf) in browser-ul dumnevoastra.
Mentionez ca acest fisier PDF este "read-only"(poate fi doar citit) si nu necesita setati sau permisiuni speciale.
Acest fisier "read-only" PDF este scris/emis/editat in format traditional/clasic si nu este un "document inteligent" adica nu are nevoie de un fisier XML asociat in care sa fie validate(utilizand schema d212_20240110.xsd) si apoi preluate/stocate datele introduse de catre utilizatorul care completeaza datele in formularul acesta PDF(cum este cazul fisierului dclUnica_2024-v1.0.0_10012024.pdf)

Laprima vedere/consultare/analiza se poate observa ca sunt folosite nomenclatoarele de judete si tari. Apoi vedem ca inr-un camp codurile CAEN sunt validate o o lista scurta/o selectie de coduri CAEN(nu tot/intreg nomenclatorul CAEN)

*Nota*

Pentru vizualizarea fisierului formularului PDF am folosit Microsoft Edge pe un ecran si pe celelat ecran am folosit Chrome pentru a vedea fisierul xsd(modificat ca mai sus pentru a putea fi "human-readable").
Oricum folosind  [Acrobat Reader](http://www.adobe.com/go/acrreader) cu siguranta veti reusi sa accesati fisierul PDF si desigur ar trebui sa-l si puteti edita.

De asemenea puteti instala extensii de/pt browser(-ul) pentru a vizualiza direct in browser aceste fisiere(.PDF) dar in acest caz vedeti ce permisiuni trebuiesc setate.

Pentru  fisierul asociat .XSD(modificat pt a avea "style-sheet"-ul oferit/conferit de xs3p.xsl) fiind vizualizabil direct in Browser nu trebuie sa intreprindeti nimic in plus deoarece broaserele in mod nativ pot deschide orice fisier xml(inclusiv acesta .xsd)

Tot ce am discutat despre XSD aici se poate aplica si in cazul oricarui XSD astfel ca  putem sa-l folosim pentru toate formularele care au fier [.xsd](https://www.w3schools.com/xml/schema_facets.asp) asociat.


 

 

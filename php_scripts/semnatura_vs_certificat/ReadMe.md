
[**Semnătură digitală** vs.(comparatie) **Certificat digita**l – *Cum diferă?*](https://www.ssldragon.com/ro/blog/semnatura-digitala-vs-certificat-digital/#get-digital-signature)

Ultima actualizare pe 28 februarie, 2024 de ***Dionisie Gitlan***(*Multumiri!!!*)...<br/> 
Suplimentar, as recomanda citirea si acestui [MSF](https://support.microsoft.com/ro-ro/office/ob%C8%9Binerea-unui-certificat-digital-%C8%99i-crearea-unei-semn%C4%83turi-digitale-e3d9d813-3305-4164-a820-2e063d86e512)-[articol](https://support.microsoft.com/ro-ro/office/certificate-%C8%99i-semn%C4%83turi-digitale-8186cd15-e7ac-4a16-8597-22bd163e8e96))

**Digital Signature** ***vs.*** **Digital Certificate**<br/>
(cheia privata/secreta care se afla in posesia autorului/ pt.=de scriere/Write/Incriptare) ***vs.*** (document-atestat ce contine cheia publica incredintata/transmisa catre cititor/pt.=de citire/Read/Decriptare) - procesul de [*criptare-decriptare cu cheie asimetrica*](https://www.encryptionconsulting.com/education-center/what-is-pki/).

Atunci când vă gândiți la ***securitatea tranzacțiilor online***, veți da peste **semnături** și **certificate digitale**. <br/>Aceste elemente reprezintă coloana vertebrală a ***protecției datelor sensibile***.

Poate vă întrebați cum acționează împreună pentru a îmbunătăți siguranța sau ce le diferențiază. <br/>Rămâneți alături de noi pentru a explora diferențele dintre **semnătura digitală** și **certificatul digital**, de la modul în care funcționează la utilizarea, beneficiile și limitările acestora. <br/>

<details>
  <summary>Inainte de toate, iata o scurta/simpla recomandare...(aici puteti citi si despre repudiere, eToken, PIN, Registrul furnizorilor de servicii de certificare, <a href="https://crucial.ro/solutii-business/semnatura-electronica/">Certificatele digitale <i>calificate</i></a>-definitie si <a href="https://facturis-online.ro/e-factura/inregistrarea-in-spv-folosind-un-certificat-digital-calificat-pentru-semnatura-electronica.html">cazuri de utilizare</a>, ...)</summary>

<hr/>
  
Un [articol](https://codfiscal.net/7702/ce-este-semnatura-digitala-electronica) deosebit de interesant, oferit de catre cei de la **codfiscal.net**, pune la dispozitie o imagine a acestui proces, care vine sa ne creeze o idee despre acest masiv subiect(in aceasta postare puteti citi si despre repudiere, eToken, PIN, Registrul furnizorilor de servicii de certificare...).

[<img src="https://codfiscal.net/media/800px-Digital_Signature_diagram.svg_-768x576.png.webp">Digital-Signature diagram</img>](Digital_Signature_diagram)

Iata aici, cateva lucruri interesante care ... pot fi consultate in aceasta postare:

...

O **semnatura electronica extinsa** trebuie sa indeplineasca cumulativ, urmatoarele conditii:
1. Este legata in mod unic de semnatar.
2. Asigura identificarea semnatarului.
3. Este creata prin mijloace controlate exclusiv de semnatar.
4. Este legata de documentul in forma electronica la care se raporteaza in asa fel incat orice modificare a documentului, ulterioara semnarii, sa duca automat la invalidarea semnaturii.

...

**Semnatura digitala** se bazeaza pe trei algoritmi:
– Algoritmul de selectare aleatoare a unei chei private care se va asocia unei chei publice
– Algoritmul de semnare care, aplicat unei chei private si unui document digital, genereaza semnatura digitala
– Algoritmul de verificare a semnaturii digitale, care aplicat cheii publice si semnaturii digitale, accepta sau respinge mesajul de conformitate.

**Certificatul digital calificat** emis asigura „identitatea virtuala” a posesorului si permite crearea de semnatura electronica cu valoare legala (extinsa), permitand identificarea fara echivoc, in baza garantarii integritatii, autenticitatii si nerepudierii mesajelor si documentelor electronice.

**Certificatele digitale calificate** pot fi utilizate in relatia cu:<br/>
– [Agentia Nationala de Administrare Fiscala](https://iapp.ro/articol/generare-token-anaf-folosind-certificat-digital-din-php-oauth2) ([**ANAF**](https://static.anaf.ro/static/10/Anaf/Informatii_R/API/Oauth_procedura_inregistrare_aplicatii_portal_ANAF.pdf)), pt depunere de [declaratii](https://static.anaf.ro/static/10/Anaf/Declaratii_R/instructiuni/Instructiuni_D200.htm) si alte documente justificative,...<br/>
– Casa Nationala de Asigurari de Sanatate (**CNAS**),<br/>
– Inspectoratul Teritorial de Munca (**ITM**),<br/>
– Oficiul National al Registrului Comertului (**ONRC**),<br/>
– Monitorul Oficial(**MO**),<br/>
– Depozitarul Central(**DC/[RoClear](https://www.roclear.ro/)**),<br/>
– Comisia Nationala a Valorilor Mobiliare (**CNVM**), etc<br/>
– Autoritatile contractante din cadrul Sistemului Electronic de Achizitii Publice (***SEAP***)– pentru semnarea si transmiterea electronica a documentelor solicitate de acestia, etc<br/>
– Comisia de Supraveghere a Sistemului de Pensii Private (**CSSP**) – pentru transmiterea raportarilor<br/>
– Partenerii de afaceri – pentru transmiterea electronica a corespondentei cu implicatii legale(contracte,documente cu valoare legala, etc)<br/>
– Departamentele companiei – pentru transmiterea corespondentei cu valoare legala si implementarea fluxurilor de documente.<br/>

...

Tot in acest articol veti regasi si o comparatie intre **semnatura electronica**(avand drept suport un dispozitiv digital de memorare/persistenta) si semnatura holografa(avand drept suport hartia).

...

***Nota:*** <br/>Asadar in acest moment, trebuie retinut, dintr-o perspectiva generala/abstracta/sintetica, doar [<img href="http://codfiscal.net/media/800px-Digital_Signature_diagram.svg_-510x382.png">modul de semnare si verificare a documentului digital semnat electronic</img>](https://codfiscal.net/media/800px-Digital_Signature_diagram.svg_-510x382.png)!

<hr/>
  
</details>


***Cuprins***<br/>
(Ce puncte sunt atinse/discutate?)

*Să începem cu elementele de bază ale **semnaturii digitale**.*


<details>
  <summary>01.Ce este o <b>semnătură digitală</b>?</summary>
    
<hr/>

O **semnătură digitală** este un tip de [semnătură electronică](https://www.adr.gov.ro/semnatura-electronica-trusted-list/)(un termen cu sens/semantica mai larg[a]) care utilizează o tehnică criptografică pentru a autentifica originea și integritatea documentelor, mesajelor sau programelor informatice digitale. <br/>Acesta utilizează un [algoritm matematic](https://www.ssldragon.com/ro/blog/encryption-types-algorithms/) pentru a genera o amprentă digitală unică, sau “semnătură”, pentru o anumită bucată de date. <br/>Această semnătură este individuală pentru expeditor și pentru conținutul semnat, asigurând identitatea expeditorului și garantând că datele rămân intacte în timpul transmiterii.

**Semnăturile digitale** sunt clasificate după cum urmează:

 - Semnături de ***clasa 1*** (semnături de *e-mail*):<br/>
   Aceste semnături verifică legătura dintre o adresă de e-mail și proprietarul său legitim, asigurând autenticitatea e-mailurilor.
 - Semnăturile din ***clasa 2*** (semnături bazate pe *identitate*):<br/>
   Acest tip de semnătură validează identificarea unei persoane prin compararea acesteia cu o bază de date verificată în prealabil.
 - Semnăturile din ***clasa 3*** (semnături validate în *persoană*):<br/>
   Aceste semnături sunt acordate după validarea persoanei care depune cererea în persoană, asigurând un nivel mai ridicat de [încredere](https://www.mn.uio.no/ifi/english/people/aca/josang/publications/jos2013-crypsis.pdf) și validare pentru tranzacțiile financiare esențiale, cum ar fi platformele de cumpărături online și licitațiile electronice.



<hr/>

</details>

<details>
<summary>02.Cum funcționează o <b>semnătură digitală</b>?</summary>

<hr/>

Acum, să vedem cum funcționează pas cu pas.

 - ***Creație***:<br/>
 Pentru a semna un document digital, semnatarul creează mai întâi o **semnătură digitală** unică folosind un [algoritm criptografic](https://www.ssldragon.com/ro/blog/encryption-types-algorithms/), așa cum este specificat în standardul de **semnătură digitală**. <br/>Acest algoritm asigură securitatea și unicitatea semnăturii.
 - ***Criptare***: <br/>
 **Semnătura digitală** este apoi [criptată](https://www.ssldragon.com/ro/blog/what-is-encryption/) cu ajutorul [cheii private](https://www.ssldragon.com/ro/blog/cheie-privata-ssl/) a semnatarului, care face parte dintr-o pereche de chei(cheia privata/de scriere si cheia publica/de citire) asociată cu un ***certificat*** de **semnătură digitală**. <br/>Acest ***certificat***, emis de o [autoritate de certificare](https://www.ssldragon.com/ro/blog/certificate-authority/) de încredere, conține informații despre identitatea și [cheia publică](https://www.ssldragon.com/ro/blog/public-key-cryptography/) a semnatarului.
 - ***Anexare***:<br/>
**Semnătura digitală** criptată este atașată(anexată) la documentul digital, fie ca fișier separat, fie integrată în documentul în sine. <br/>Acest proces garantează că semnătura este inseparabilă de documentul pe care îl autentifică.
 - ***Verificare***:<br/>
 La primirea documentului semnat digital, destinatarul utilizează cheia publică a semnatarului, obținută din ***certificatul*** de **semnătură digitală**, pentru a decripta semnătura. <br/>Această etapă verifică autenticitatea semnăturii și asocierea acesteia cu documentul.
 - ***Verificarea integrității***:<br/>
 Destinatarul efectuează o verificare a integrității documentului cu ajutorul unei funcții hash. <br/>Acesta confirmă faptul că documentul nu a fost modificat de când a fost semnat, menținând astfel integritatea acestuia.
 - ***Autentificare***: <br/>
 Dacă semnătura decriptată corespunde documentului și dacă verificarea integrității trece, destinatarul poate avea încredere că documentul este autentic și că nu a fost modificat.

<hr/>

</details>

<details>
<summary>03.Unde sunt folosite <b>semnăturile digitale</b> și cine le folosește?</summary>

<hr/>

**Semnăturile digitale** sunt adoptate pe scară largă în diverse industrii, de la agenții guvernamentale la corporații private. <br/>Acestea reprezintă o alternativă mai sigură la semnăturile electronice tradiționale prin utilizarea unor algoritmi complecși.

Această tehnologie este esențială în sectoarele în care [securitatea datelor](https://www.ssldragon.com/ro/blog/protect-sensitive-data/) și dovada identității digitale sunt esențiale. <br/>În industria bancară și financiară, **semnăturile digitale** securizează tranzacțiile și acordurile, în timp ce, în mediul juridic, ele confirmă autenticitatea documentelor legale.

Furnizorii de servicii medicale utilizează **semnăturile digitale** pentru a proteja dosarele pacienților, iar entitățile guvernamentale le folosesc pentru a securiza documentele oficiale și pentru a simplifica procesele administrative. <br/>În plus, o **semnătură digitală** protejează activele digitale ale tuturor tipurilor de întreprinderi. <br/>Adoptarea acestora evidențiază accentul pus pe integritatea, eficiența și conformitatea datelor în tranzacțiile electronice.

<hr/>

</details>

<details>
  <summary>04.Avantajele <b>semnăturilor digitale</b>(veti citi aici si despre GDPR, HIPAA...)</summary>

<hr/>

Prin utilizarea criptografiei, **semnăturile digitale** vă securizează datele, făcând practic imposibilă modificarea conținutului unui document de către părți neautorizate fără a fi detectate. <br/>Această caracteristică fundamentală a integrității datelor înseamnă că puteți avea încredere că informațiile prezentate într-un [document semnat digital](https://www.ssldragon.com/ro/blog/send-documents-securely-via-email/) sunt exact așa cum a intenționat semnatarul.

Atunci când utilizați **semnături digitale**, nu protejați doar documentele. <br/>De asemenea, simplificați procedurile și îmbunătățiți securitatea generală. Iată câteva beneficii cheie:

 - ***Eficiență***:<br/>
 Tranzacțiile sunt mai rapide, deoarece documentele pot fi semnate și trimise în format digital, eliminând necesitatea prezenței fizice sau a trimiterii prin poștă.
 - ***Reducerea costurilor***: <br/>
 Reduce nevoia de hârtie, tipărire și francatură, ceea ce se traduce în economii semnificative în timp.
 - ***Legitimitate juridică***: <br/>
 În multe jurisdicții, **semnăturile digitale** au același statut juridic ca și semnăturile tradiționale scrise de mână.
 - ***Securitate sporită***: <br/>
 Caracteristici precum marcarea timpului și identificarea unică a semnatarului adaugă niveluri de securitate care depășesc ceea ce este posibil cu documentele fizice.
 - ***Acceptare globală***: <br/>
 **Semnăturile digitale** sunt recunoscute și acceptate pe scară largă dincolo de frontiere, facilitând tranzacțiile comerciale internaționale.
 - ***Respectarea reglementărilor***: <br/>
 **Semnăturile digitale** ajută organizațiile să respecte diverse cerințe de reglementare legate de autentificarea și integritatea documentelor, cum ar fi [GDPR](https://en.wikipedia.org/wiki/General_Data_Protection_Regulation) în Uniunea Europeană sau [HIPAA](https://en.wikipedia.org/wiki/Health_Insurance_Portability_and_Accountability_Act) în sectorul sănătății.

<hr/>

</details>

<details>
  <summary>05.Dezavantaje ale <b>semnăturilor digitale</b>(veti citi aici si despre <a href="https://www.ssldragon.com/ro/blog/pem-file/">PKI</a>, <a href="https://www.ssldragon.com/ro/blog/public-key-infrastructure/">CA</a>...)</summary>

<hr/> 

 - ***Complexitatea în gestionarea cheilo*r**: <br/>
 Gestionarea cheilor criptografice și a ***certificatelor*** reprezintă o provocare, necesitând resurse și expertiză suplimentare pentru a asigura o implementare corectă.
 - ***Încrederea în infrastructura tehnologică***: <br/>
 **Semnăturile digitale** depind de [infrastructura de chei publice (Public Key Infrastructure – PKI)](https://www.ssldragon.com/ro/blog/public-key-infrastructure/), inclusiv de platforme sigure și [autorități de certificare](https://en.wikipedia.org/wiki/Public_key_infrastructure)([CA](https://legislatie.just.ro/Public/DetaliiDocument/122333)) de încredere, care pot fi dificil de stabilit și de menținut în medii diferite(a se citi si despre [*PKI centralizate* vs. *PKI distribuite/p2p*](https://www.sciencedirect.com/science/article/pii/S2096720924000526) ori despre [*Zero-Trust*](https://blogs.nvidia.com/blog/what-is-zero-trust/)).
 - ***Probleme de compatibilitate***: <br/>
 Compatibilitatea software-ului este crucială, deoarece acesta trebuie să susțină tehnologia specifică de **semnătură digitală**, adăugând un alt nivel de complexitate la proces.
 - ***Provocări legate de standardizare***: <br/>
 Stabilirea unei interacțiuni armonioase între diverse sisteme necesită standardizare, având în vedere metodele și tehnologiile variate implicate în implementarea **semnăturii digitale**.
 - ***Considerații financiare***: <br/>
   Utilizarea eficientă a **semnăturilor digitale** implică în mod frecvent achiziționarea de **certificate digitale** și de software de verificare, ceea ce poate genera [costuri](https://www.sciencedirect.com/topics/computer-science/public-key-infrastructure) substanțiale atât pentru expeditori, cât și pentru destinatari.

<hr/>

</details>

<details>
<summary>06.Cum să obțineți o <b>semnătură digitală</b>?(veti citi aici si despre CA, Open<a href="https://en.wikipedia.org/wiki/SSL">SSL</a>, chei ...)</summary>
  
<hr/>

Obținerea unei **semnături digitale** necesită o serie de etape tehnice. <br/>Totul începe cu alegerea unei autorități de certificare terță parte. <br/>Această selecție inițială este foarte importantă, deoarece fiabilitatea și securitatea **semnăturii digitale** depind de integritatea [AC](https://ca.stsisp.ro/)([Autoritatii de Certificare](https://ca.stsisp.ro/download/Ghid_instalare_certificate.pdf)).

 - ***Selectați o autoritate de certificare de încredere***: <br/>
 Începeți prin a alege o autoritate de certificare de încredere, cunoscută pentru măsurile sale de securitate solide.
 - ***Verificați identitatea dumneavoastră***: <br/>
Trimiteți documentele necesare pentru a confirma identitatea dumneavoastră sau a organizației dumneavoastră în vederea validării.
 - ***Generarea perechii de chei***: <br/>
Utilizați un [software](http://php.adamharvey.name/manual/ro/book.openssl.php) [criptografic](https://www.php.net/manual/en/function.openssl-sign.php), cum ar fi [OpenSSL](https://www.ssldragon.com/ro/blog/what-is-openssl/), pentru a genera o cheie privată(de incriptare) și una publică(de decriptare) – esențiale pentru crearea și verificarea **semnăturii digitale**(as recomanda sa studiati si certificatele [auto-semnate](https://www.ssldragon.com/ro/how-to/openssl/create-self-signed-certificate-openssl/) / [self-signed](https://stackoverflow.com/questions/14464441/how-to-create-a-self-signed-x509-certificate-with-both-private-and-public-keys)).
 - ***Obțineți semnătura digitală***: <br/>
Autoritatea de certificare(AC) emite un ***certificat*** de **semnătură digitală**, care face legătura între identitatea dumneavoastră și cheia dumneavoastră publică. <br/>Asigură autenticitatea **semnăturilor digitale**.
 - ***Instalare și utilizare***: <br/>
Instalați ***certificatul*** de **semnătură digitală** pe serverul sau aplicația dumneavoastră pentru a semna digital documentele în siguranță.

După cum vedeți, am menționat deja ***certificatul digital*** în contextul **semnăturilor digitale**, deoarece acestea fac parte dintr-un sistem mai mare care protejează datele digitale. <br/>

<hr/>

</details>

*În secțiunile următoare, vom discuta despre **certificatele digitale**.*

<details>
<summary>07.Ce este un <b>certificat digital</b>?(aici veti citi si despre CA...)</summary>

<hr/>

Un **certificat digital** este un document electronic utilizat pentru a verifica identitatea unei entități, cum ar fi o persoană, un computer, un site web sau o organizație, prin intermediul rețelelor digitale precum internetul. <br/>Acesta conține informații despre identitatea entității, cheia publică și ***semnătura digitală*** a unei terțe părți de încredere, cunoscută sub numele de autoritate de certificare([*AC*](https://sts.ro/ro/servicii-sts/) sau [*CA*](https://sts.ro/ro/servicii-sts/)), care confirmă autenticitatea informațiilor.

<hr/>

</details>

<details>
<summary>08.Cum funcționează un <b>certificat digital</b>?(aici veti citi si despre CA, chei de in/de-criptare ...)</summary>

<hr/>  

Iată o explicație pas cu pas a modului în care funcționează **certificatele digitale**:

 - ***Criptografia cu cheie publică***: <br/>**Certificatele digitale** se bazează pe [criptografia cu cheie publică](https://www.ssldragon.com/ro/blog/public-key-cryptography/). <br/>Acest sistem utilizează perechi de chei: o cheie publică și o cheie privată.
 - ***Cheia privată a expeditorului***: <br/>Atunci când un expeditor dorește să transmită informații în siguranță, acesta își folosește cheia privată pentru a crea o **semnătură digitală** pentru date. <br/>Această semnătură este unică pentru expeditor și pentru datele transmise.
 - ***Cheia publică a expeditorului***: <br/>Cheia publică a expeditorului este disponibilă pentru oricine are nevoie să verifice identitatea expeditorului sau să decripteze datele criptate cu cheia privată a expeditorului.
 - ***Chei publice*** și ***Chei private***: <br/>Expeditorul își păstrează secretă cheia privată și nu o împărtășește niciodată cu nimeni. <br/>Cu toate acestea, aceștia își distribuie gratuit cheia publică altora.
 - ***CA emite certificate digitale***: <br/>Aceste **certificate** conțin cheia publică a expeditorului și alte informații de identificare, cum ar fi numele și organizația acestuia.
 - ***Semnătură digitală***: <br/>AC semnează digital **certificatele** cu ajutorul cheii sale private, asigurând autenticitatea informațiilor.
 - ***Verificare***: <br/>Atunci când un destinatar primește date de la expeditor, acesta utilizează cheia publică a expeditorului (obținută din **certificatul digital**) pentru a verifica ***semnătura digitală*** a datelor. <br/>În cazul în care semnătura corespunde cheii publice a expeditorului, destinatarul poate fi sigur că datele nu au fost falsificate și că provin într-adevăr de la expeditorul declarat.

<hr/>

</details>

<details>
<summary>09.Unde sunt folosite <b>certificatele digitale</b> și cine le folosește?(aici veti citi si despre SSL, S/MIME, IoT, VPN, <a href="https://phpseclib.sourceforge.net/x509/tutorial.html">X.509</a>, <a href="https://www.php.net/manual/en/function.openssl-pkcs7-sign.php">PKCS</a>, GDPR...)</summary>  

<hr/>

Exemplele de mai jos ilustrează diversele industrii și entități care se bazează pe **certificatele digitale** pentru a stabili tranzacții și comunicații online sigure.

 - ***Browsere de site-uri web***: <br/>Browsere precum Google Chrome, Mozilla Firefox, Microsoft Edge și Apple Safari utilizează **certificate digitale**, cunoscute și sub numele de [certificate SSL](https://www.ssldragon.com/ro/blog/what-is-ssl-certificate/), pentru a verifica identitatea site-urilor web, pentru a stabili conexiuni sigure, pentru a afișa indicatori de securitate pentru utilizatori și pentru a-i avertiza cu privire la riscurile potențiale.
 - ***Securitatea e-mailurilor***: <br/>**Certificatele digitale**, în special [certificatele S/MIME](https://www.ssldragon.com/ro/blog/ce-este-certificat-s-mime/), sunt utilizate pentru a cripta e-mailurile trimise între utilizatori, asigurând că numai destinatarii pot accesa conținutul mesajelor.
 - ***Site-uri de comerț electronic***: <br/>Site-uri precum Amazon, eBay și Shopify utilizează **certificate digitale** pentru a securiza tranzacțiile online, asigurându-se că informațiile dumneavoastră personale și financiare rămân confidențiale în timpul achizițiilor.
 - ***Dispozitive IoT***: <br/>Dispozitivele [Internet of Things (IoT)](https://www.ssldragon.com/ro/blog/iot-device-certificate/), cum ar fi termostatele inteligente, camerele de securitate și dispozitivele purtabile, utilizează **certificate digitale** pentru a stabili conexiuni sigure cu alte dispozitive sau servere, protejând datele transmise prin rețea.
 - ***Furnizori de VPN***: <br/>[Rețeaua privată virtuală (VPN )](https://www.ssldragon.com/ro/blog/https-vs-vpn/) utilizează **certificate digitale** pentru a autentifica și cripta conexiunile dintre dispozitivele utilizatorilor și serverele VPN, asigurând confidențialitatea și securitatea în timpul navigării pe internet.
 - ***Companii de software***: <br/>Dezvoltatorii folosesc [certificate de semnare a codurilor](https://www.ssldragon.com/ro/blog/what-is-code-signing-certificate/) pentru a-și semna aplicațiile software, asigurând astfel utilizatorii că produsele descărcate sunt autentice.

Caracteristicile **certificatelor digitale**

Iată o listă a celor mai importante caracteristici ale unui **certificat digital**:

 - ***Autentificare***: <br/>Verifică identitatea persoanelor, a dispozitivelor sau a entităților în cadrul tranzacțiilor online.
Integritatea datelor**: <br/>Asigură că datele rămân neschimbate și nealterate în timpul transmiterii.
 - ***Criptare***: <br/>Protejează datele prin transformarea lor într-un format ilizibil care poate fi decriptat numai cu ajutorul cheii private corespunzătoare.
 - ***Gestionarea cheilor***: <br/>Facilitează generarea, stocarea și distribuirea în siguranță a cheilor criptografice.
 - ***Revocare***: <br/>Permite invalidarea **certificatelor** în cazul în care acestea sunt compromise sau nu mai sunt demne de încredere.
 - ***Conformitate***: <br/>Respectă [standardele](https://www.wolfssl.com/x-509-alternative-public-key-and-signature/) și [reglementările](https://grimoire.carcano.ch/blog/x509-certificates-howto-a-public-key-infrastructure-tutorial/) din industrie, cum ar fi [X.509](https://www.ssldragon.com/ro/blog/ce-este-un-certificat-x-509/), [PKCS](https://en.wikipedia.org/wiki/PKCS) și [GDPR](https://en.wikipedia.org/wiki/General_Data_Protection_Regulation).
 - ***Perioada de valabilitate***: <br/>Specifică durata pentru care **certificatul** este considerat valabil [înainte de a fi reînnoit sau reemis](https://www.ssldragon.com/ro/blog/renew-ssl-certificates/).

<hr/>

</details>

<details>
  <summary>10.Cum să obțineți un <b>certificat digital</b>?(veti citi aici si despre <a href="https://www.ssldragon.com/ro/blog/conversie-crt-pem/">CSR</a>, CA...)</summary>

<hr/>

Spre exemplu, iata care este procedura/oferta intr-un caz particular de utilitate:<br/> 

[SSL Dragon](https://www.ssldragon.com/ro/) oferă **certificate** la prețuri accesibile pentru orice nevoie, de la autentificarea site-urilor web la securitatea e-mailurilor și protecția software-ului. <br/>Puteți utiliza [Expertul SSL](https://www.ssldragon.com/ro/ssl-certificates/ssl-wizard/) pentru a găsi cel mai bun **certificat digital** pentru proiectul dumneavoastră. Iată o scurtă trecere în revistă:

 - 1.Alegeți o autoritate de certificare în funcție de nevoile de securitate și de buget.
 - 2.Generați o [cerere de semnare a certificatului (CSR)](https://www.ssldragon.com/ro/blog/certificate-signing-request-csr/) cu [cheile](https://www.ssldragon.com/ro/how-to/install-ssl-certificate/xampp/) [serverului](https://gist.github.com/IsmailShurrab/09e8577feae44531e71d65e02d1c683c) și [informațiile](http://ares.utcluj.ro/tsi/index_files/Laborator%20SSL.pdf) despre [organizație/companie](https://www.simplilearn.com/tutorials/php-tutorial/php-using-xampp).
 - 3.Trimiteți [CSR](https://en.wikipedia.org/wiki/Certificate_signing_request) la CA pentru a începe procesul de depunere a cererii.
 - 4.Așteptați până când CA validează detaliile, inclusiv organizația și proprietatea domeniului.
 - 5.Descărcați și [instalați certificatul emis](https://www.ssldragon.com/ro/how-to/install-ssl-certificate/) pe server.

<hr/>

</details>

<details>
  <summary>11.Avantajele <b>certificatului digital</b>(aici veti citi si despre <a href="https://medium.com/@london.lingo.01/unlocking-the-power-of-php-encryption-secure-data-transmission-and-encryption-algorithms-c5ed7a2cb481">AES</a>...)</summary>

<hr/>

Fără **certificate digitale**, trimiterea de date în siguranță pe internet nu ar fi posibilă. Iată care sunt principalele lor beneficii:

 - ***Criptare puternică***: <br/>**Certificatele digitale** utilizează [criptarea AES](https://www.ssldragon.com/ro/blog/rsa-aes-encryption/), un standard de criptare acceptat pe scară largă și foarte sigur care protejează datele partajate.
 - ***Autentificare***: <br/>Oferă un mijloc fiabil de verificare a identității utilizatorilor, dispozitivelor sau entităților implicate în tranzacții online, reducând riscul de uzurpare a identității sau de fraudă.
 - ***Scalabilitate***: <br/>**Certificatele digitale** oferă scalabilitate, permițând gestionarea și implementarea eficientă în rețele de mari dimensiuni și în diverse aplicații, fără a compromite securitatea sau performanța.
 - ***Încredere***: <br/>**Certificatele digitale** stabilesc încrederea în interacțiunile online prin validarea autenticității părților implicate, permițând un mediu sigur pentru comerțul electronic, comunicare și alte tranzacții digitale.
<hr/>
</details>

<details>
<summary>12.Dezavantaje ale <b>certificatului digital</b></summary>

<hr/>
  
 - **Cost**: <br/>
 Majoritatea certificatelor digitale costă în jur de 100 de dolari sau mai puțin, dar unele tipuri sunt mai scumpe. <br/>Implementarea și întreținerea acestora poate afecta bugetul dumneavoastră, inclusiv taxele de emitere a certificatelor, configurarea infrastructurii și cheltuielile de gestionare continuă, în special în cazul implementărilor pe scară largă.
 - **Sofisticare**: <br/>
 Gestionarea certificatelor digitale implică complexități, cum ar fi generarea cheilor, reînnoirea certificatelor și [gestionarea revocării](https://www.ssldragon.com/ro/blog/lista-de-revocare-a-certificatelor/), care necesită expertiză specializată.
 - **Punct unic de eșec**: <br/>
 Dependența de o autoritate de certificare centralizată pentru emiterea și validarea certificatelor poate crea un singur punct de eșec, putând perturba sisteme întregi în cazul în care autoritatea de certificare este compromisă.
 - **Managementul ciclului de viață al certificatelor**: <br/>
 Certificatele digitale au o durată de viață limitată și necesită o reînnoire sau înlocuire în timp util pentru a menține continuitatea operațională. <br/>Negestionarea eficientă a ciclurilor de viață ale certificatelor poate duce la întreruperi ale serviciilor sau la vulnerabilități de securitate.

<hr/>

</details>

*Spre final, sa incercam o comparatie/paralela, intre acesti doi termeni:*

<details>
  <summary>13.Care este diferența dintre <b>semnăturile digitale</b> și <b>certificatele digitale</b>?</summary>

<hr/>

**Semnăturile digitale** și **certificatele** funcționează în tandem pentru a asigura *autenticitatea* și *integritatea* documentelor sau a comunicațiilor electronice, dar au *scopuri diferite*.

O **semnătură digitală** este ca o amprentă digitală virtuală care identifică în mod unic ***expeditorul*** mesajului sau ***autorul*** documentului. <br/>Acesta este creat cu ajutorul unui algoritm criptografic atașat(ex. AES,RSA,...) la document sau mesaj. <br/>Atunci când cineva semnează(digital) un document digital, el formează o reprezentare matematică a documentului, care îi este unică.

Această **semnătură** poate fi *verificată* de catre oricine(destinatar, cititor...) care utilizează *cheia publică* a semnatarului, asigurându-se că documentul nu a fost modificat(este original) și că provine de la expeditorul declarat.

Pe de altă parte, un **certificat digital** este ca o carte de identitate digitală emisă de o ***AC(autoritate de certificare)***. <br/>Acesta conține informații despre deținătorul certificatului(cum ar fi *denumirea comercială* și *cheia publică*), și este utilizat pentru a verifica *proprietatea* și *identitatea*.

Atunci când cineva(destinatar, cititor,...) primește un document semnat digital, poate folosi **certificatul digital** al semnatarului(expeditor, autor...) pentru a verifica autenticitatea semnăturii. <br/>Acest lucru este posibil deoarece **certificatul digital** este emis de o ***autoritate de certificare(AC)*** de încredere([*trusted*](https://www.thesslstore.com/blog/pki-architecture-fundamentals-of-designing-a-private-pki-system/)), ceea ce înseamnă că informațiile pe care le conține au fost verificate și că se poate avea încredere([*trust*](https://medium.com/@meghdadshamsaei/trust-model-implementation-by-pki-7cddcdb72513)) în ele.

<hr/>

</details>

***Concluzie***

Acum că ați înțeles diferența dintre **semnătura digitală** și **certificatul digital**, sunteți echipat pentru a distinge rolurile lor specifice în securitatea cibernetică. <br/>**Semnăturile digitale** verifică originea și integritatea datelor, în timp ce **certificatele** digitale validează identitatea părților în cadrul comunicațiilor online. <br/>Aceste cunoștințe vă permit să implementați măsuri de securitate eficiente și să reduceți cu încredere riscurile cibernetice.

La final as avea o recomandare de a  citi si aceasta procedura [***Oauth 2.0***](https://static.anaf.ro/static/10/Anaf/Informatii_R/API/Oauth_procedura_inregistrare_aplicatii_portal_ANAF.pdf)(mai ales, de a citi despre autorizarea accesului la serviciile Web-ANAF, ale API-urilor dezvoltate, de catre diversi dezvoltatori ai Persoanelor-Juridice/PJ, pe baza unui token/jeton-ul [**JWT**](https://www.nexuserp.ro/noutate/implementare-obtinere-tokenuri-de-tip-jwt-pentru-autentificare-cu-protocolul-oauth-in-spv-e-factura-si-e-transport/101230?srsltid=AfmBOooxnkiYdE4uHIT17_dpOtvDQOTBlydx6tAUw8Mx0g0oWrzusrzN)) elaborata de catre [**ANAF**](https://www.anaf.ro/anaf/internet/ANAF/servicii_online/inreg_api)(procedura este valabila pt serviciile web ale ANAF: [**e-Factura**](https://www.licomp.ro/efactura_tutor.aspx), eTransport..).
Pentru **API**-uri scrise in PhP sunt mai multe [***exemple-de-cod***](https://lorand.work/autentificare-oauth-si-obtinere-token-jwt-de-la-anaf-folosind-php/) pe piata in ceea ce priveste procedura ***OAuth*** bazata pe **JWT**. Desigur accentul discutiei noastre se pune pe *generarea* sau mai bine spus *administrarea*/*gestionarea* token-ului [**JWT**](https://iapp.ro/articol/generare-token-anaf-folosind-certificat-digital-din-php-oauth2), pt ca API-ul in sine care se refera la acceseaza serviciile web expuse de catre ANAF este  mult mai elaborata si a fost discutat pe larg in alte posturi conexe. In cazul in care doriti sa lucrari cu WordPress(WP) acest [post](https://ro.wordpress.org/plugins/jwt-authentication-for-wp-rest-api/) va poate fi de ajutor.

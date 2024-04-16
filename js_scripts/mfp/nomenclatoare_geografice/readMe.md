MFP pune la dispozitie urmatoarele [nomenclatoare geografice](https://mfinante.gov.ro/nomenclatoare-geografice-mfp)(localitati si strazi actuale,istoric si [relatii](https://mfinante.gov.ro/static/40/Mfp/nomenclatoare/SMD_NOMEN_INTEROPERABILITATE_v2.pdf) precum si codurile postale ale numerelor stradale):

[nomenclator Judete](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomJudete.html)

[nomenclator Tip-Localitati](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomTipLocalitati.html)

[nomenclator Tip-Artere(de circulatie)](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomTipArtere.html)

[nomenclator Stari-Artere(de circulatie)](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomStariArtere.html)

[nomenclator Tari-Valute](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomTariValute.html)

**Nota**:

    Am descarcat si eu actualizarea din data de 12.01.2024 pentru a extrage date din fisierele xml ale MFP.
    Puteti descarca aceste nomenclatoare intr-un site static cum este [acesta](https://github.com/stefanache/MFP-ANAF-RO/) 
    gazduit de cei de la Github si apoi puteti scrie cod HTML+CSS+JS care sa incarce nomenclatoarele in elementele DOM 
    ale documentului dumneavoastra(table, select, div, pre, texarea, ...):

Periodic aceste nomenclatoare se pot actualiza si in acest caz, pot fi descarcate de pe site-ul [MFP](https://mfinante.gov.ro/nomenclatoare-geografice-mfp).

Daca aveti nevoie de [limite administrative](https://geoportal.ancpi.ro/portal/apps/webappviewer/index.html?id=faeba2d173374445b1f13512bd477bb2) puteti aacesa portalul [ANCPI](https://geoportal.ancpi.ro/portal/apps/webappviewer/index.html?id=faeba2d173374445b1f13512bd477bb2)

Sunt o serie de nomenlatoare care sunt cvasi-statice(nemodificabile sau foarte putin modificabile in timp), cum este cazul celor de mai sus( 
[judete](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomJudete.html),
[tipLoc](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomTipLocalitati.html),
[tipArt](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomTipArtere.html),
[stariArt](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomStariArtere.html),
[tari-valute](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/nomTariValute.html) ) dar sunt si altele care sunt dinamice(adica au modificari destul de dese si prin urmare au probabil si inregistrari in istoric).

Pentru cazul acestor date dinamice trebuie amintit si faptul ca la nivelul Romaniei, acestea poseda foarte multe inregistrari. In plus, probabil ca nu toate inregistrarile sunt relevante/interesante/importante si atunci acest tip de nomenclatoare sunt separate(diferentiate sau daca vreti "sparte in mai multe bucati") pe judete.
Am ales ca exemplu descarcarea nomenclatoarelor de localitati,coduri-postale si artere pentru judetul ALBA si anume doar cele emise pe data de 12.ian.2024 
([Nomenclatoare dinamice jud. ALBA publicate in date de 12.01.2024](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/mfp/nomenclatoare_geografice/ALBA/12.01.2024/index.html))

Pentru cei care sunt la [inceput de drum](https://www.didactic.ro/resurse-educationale/invatamant-liceal/informatica/toate-clasele/stiri?page=113) si vor sa lucreze cu [nomenclatoare](https://happyweb.ro/articol/nomenclatoare-e-factura) intr-o gazduire cu suport pentru PhP si MySQL ar putea sa consulte [Culegerea de aplicatii web](https://evomind.org/wp-content/uploads/Culegere-aplicatii-web-2.pdf), o carte editata prin 2019 de catre Cătălina Enescu(profesor la CNI "Tudor Vianu"). 

***Directia pentru Politici Fiscale si Bugetare Locale*** din **Ministerul Dezvoltării Regionale și Administrației Publice** [***DPFBL***/**MDRAP**](http://www.dpfbl.mdrap.ro/) a pus la dispozitie un fisier excel cu codurile [***SIRUTA***](http://www.dpfbl.mdrap.ro/documents/machete_cu_cod_siruta_si_uat_pe_judete.xls) defalcate pe judete(utile in cazul in care doriti sa incarcati un judet sau mai multe judete dar nu toata tara) si integral intregul [nomenclator](https://static.anaf.ro/static/10/Anaf/Informatii_R/RO_SAFT_SchemaDefCod_20230306.xlsx) **SIRUTA** pentru toata tara.

[Semnificatia campurilor](https://www.siruta.nxm.ro/) care apar in [nomenclatorul](https://ioisrl.ro/coduri-siruta-2024/) [**SIRUTA**](https://insse.ro/cms/files/siruta/Metodologie.doc) o puteti gasi bineinteles la [***INS***](https://insse.ro/cms/files/siruta/5.Descriere_SIRUTA.DOC) deoarece acest [institut](https://bucuresti.insse.ro/produse-si-servicii/nomenclatoare-statistice/) se ocupa de intretinerea acestui [nomenclator](https://data.gov.ro/dataset/ce2dbfdc-b2bc-4fc2-8597-1a9144f2fc1d/resource/6772b5e3-2444-4bf2-8dcb-162fce602d28/download/machetecodsirutasiuatpejudete.xls).

Referitor la campul [SIRSUP](https://github.com/geospatialorg/scripturi-actualizare-vectori/tree/master)(cod [SIRUTA](https://ro.wikipedia.org/wiki/SIRUTA) [superior/parinte](https://cadastru-gorj.blogspot.com/2010/04/lista-codurilor-sirsup-din-jud-gorj.html)) am gasit aceasta [discutie](https://devforum.ro/t/sql-pentru-siruta/4012/3) pe forumul [topograf-online](https://www.topograf-online.ro/index.php?topic=405.0)

Potrivit acestui articol de lege publicat de [***ANCPI***](https://legislatie.ancpi.xyz/odg/700-2014/articolul-51-2/) ceva mai vechi, reiese ca si [***numarul cadastral al imobilului***](https://devforum.ro/t/sql-pentru-siruta/4012/3) este strans legat de codificarea **SIRUTA**.

Tot de aici aflam ca **SIRUTA** functioneaza de fapt ca [**Registrul permanent al unităţilor administrativ-teritoriale**](https://data.gov.ro/dataset/siruta-registrul-unitatilor-administrativ-teritoriale-ale-romaniei)

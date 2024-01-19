MFP pune la dispozitie urmatoarele [nomenclatoare geografice](https://mfinante.gov.ro/nomenclatoare-geografice-mfp):

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

Pentru cei care sunt la [inceput de drum](https://www.didactic.ro/resurse-educationale/invatamant-liceal/informatica/toate-clasele/stiri?page=113) si vor sa lucreze cu nomenclatoare intr-o gazduire cu suport pentru PhP si MySQL ar putea sa consulte [Clegerea de aplicatii web](https://evomind.org/wp-content/uploads/Culegere-aplicatii-web-2.pdf), o carta editata prin 2019 de catre Cătălina Enescu(profesor la CNI "Tudor Vianu"). 



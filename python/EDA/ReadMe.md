Salut!

Am postat aici o explorare de date(Analaiza Exploratorie a Datelor=EDA) pt o predictie statica/ML.

[Interesanta](https://chatgpt.com/share/6819fdc8-07e8-800b-8aa6-b51458f13e49) este/a fost si [discutia](https://chatgpt.com/share/681b81d9-13fc-800b-bc48-9905815200c1) cu [ChatGPT](https://chatgpt.com/share/6819fdc8-07e8-800b-8aa6-b51458f13e49).

Totul a plecat de la un concurs [Freelancer](https://www.freelancer.com/contest/time-series-forecasting-model-development-2553381)

Am creat un batch([start_statistics.bat](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/start_statistics.bat)) ce poate fi rulat de sub windows.

Acest batch are comentate si toate instalarile/operatiunile necesare dar si partea de rulare a fisierului python([tennis_statistics.py](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/tennis_statistics.py)).

Ideea este ca am o arhiva zip([Files_for_Prediction_Model.zip](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/Files_for_Prediction_Model.zip)) care se auto-descarca la rularea batch-ului.

Arhiva contine urmatoarele:

A). pt partea de antrenament/train(perioada istorica IAN-01-2024 - FEB-14-2025) :
- aHistorical_01012024_02142025.xlsx ce contine datele de tran/invatare/antrenament(nu trebui splitat pt testare deoarece alte date sunt livrate pt testare)
- 2 dictionare(index-uri) unul pt coloana L(combinatia de 2 planete) si unul pt coloana N(L concatenat cu M si separat cu '-'):
    - bColumn_L_Signs_Symbols.xlsx
    - bColumn_N_Signs_Symbols.xlsx
  unde M este coloana categoriala de intentitati ale influentei astrale(combinatie de 2 planete);
  dupa cum va asteptati alaturi de M  atat L cat si rezultanta lor N sunt coloane categoriale

B). pt partea de testare in (10)fisiere (splitate/impartite/separate) zilnic:

 - restul celor 10 zile/fisiere-zilnice .xlsx cu denumite dupa sablonul Daily__MMDDYYYY.xls unde MM=02(FEB), YYYY=2025(anul curent) si DD=15-24(zilele in care s-au prelevat date de testare din luna FEB-2025)

Cerinta proiectului este urmatoarea:

<details>
    <summary> detalii despre ... Descrierea/specificatia tehnica a proiectului!</summary>
<pre>
Antrenați/Creați un model de predicție folosind fișierul de date istorice atașat.

Creați un Predictor care poate fi rulat pe (de preferință sub WINDOWS si prin PYTHON).

Predictorul trebuie să ruleze fișiere zilnice și să prezică ce jucător de tenis va avea un rezultat 
    OVER/CÂȘTIGĂ sau 
    UNDER/PIERDE 
pe baza datelor istorice anterioare(colectate in fisierul Historical_01012024_02142025.xlsx).

Există doar 5 coloane de luat în considerare(celelalte coloane au valori-constante: 1 sau 'MP%').

A - Jucător(A - numele jucatoarului de tenis, iar B - data in care s-a nascut respectivul jucator analizat)
H - Rezultatul meciurilor
L - Combinație de 2-planete(a se vedea dictionarul bColumn_L_Signs_Symbols.xlsx)
M - Grad-de-intensitate(intensitatea influentri astrale)
N - Planete/Intensitate(a se vedea dictionarul bColumn_N_Signs_Symbols.xlsx: concatenare L + '-' M = N)

Puteți utiliza un(1) sau toate cele 3 coloane L,M,N. 
Puteți compara jucătorii cu ei înșiși sau cu toți ceilalti jucători.

Coloana N are 768 de semne-simboluri unice(ex. „Jupiter_Neptune-BLK_Square”).

Coloana L are 168 de simboluri unice(ex. „Jupiter_Neptune”).

Puteți alege să le utilizați pe toate sau pe unele dintre ele. 
Ideea aici este de a identifica efectul pendulului. 
Fiecare semn-simbol tinde să urmeze un val de maxime și minime ale 
rezultatelor OVER/CÂȘTIGĂTOR sau UNDER/PIERDERE. 
Un posibil obiectiv este de a identifica când un val a dat o lovitură și 
se va întoarce în direcția opusă. 
De exemplu, dacă 
    semn-simbolul(valoare existenta/din col. N) „Jupiter_Neptune-BLK_Square” are o
    distributie (pe un subset de randuri de...), (90,9% la 9.1%) :
        - 20 de rezultate PESTE/OVER(numarate pe un subset de randuri din col.H) și 
        -  2 rezultate SUB/UNDER(numarate pe acelasi subset de randuri din col.H), 
există șanse mari să înceapă să aibă (mai departe), mai multe rezultate „SUB”,
dar avem nevoie de modelul de predicție pentru a calcula valul fiecărui semn-simbol, 
astfel încât să poată prezice cat mai precis schimbarea de direcție(sens). 
Acest lucru se poate face 
        - după data-calendaristica a meciului...
               ... in care a obtinut respectivul rezultat(ante-penultima coloana: P,.... 
               ... unde Q = year(P).... Q fiind o coloana dependenta de col.P!) sau 
        - după numărul de rezultate(din col. H). 
Ne pasă/intereseaza doar de rezultate și consecvență, așa că faceți tot posibilul să le obțineți. 
NU există reguli, ci doar rezultate necesare.

De asemenea, suplimentar, sunt furnizate alte rezultate cunoscute, 
valabile încă 10 zile( fisierele Daily__MMDDYYYY.xls), 
pe care le puteți folosi pentru a vă testa predictorul, 
înainte de a fi supus analizei/validarii.

Nota: 
    Modelul gasit va fi calculat/testat/confruntat/validat în raport cu alte 
        40 de fișiere zilnice (care nu au fost furnizate inca!)
    pentru a-i determina/valida acuratețea. 

Scopul este de a se  obține o acuratețe, cât mai aproape de 70% sau mai mult(<b> >= 70% </b>).

</pre>

<br/><hr/>

</details>


Ar trebui/hai sa ne aruncam o privire a valorilor care se repeta sau variaza pe fiecare coloana/rand.....

<details>
    <summary>detalii despre ... Nota explicativa cu privire la redundanta/utilizarea coloanelor!</summary>

<hr/><br/>

<pre>
Nota:
    - desi L,M si N sunt 3 coloane care nu sunt independente intre ele,
      N fiind o variabila compusa din variabilele simple/componente L si M,
      totusi cred ca trebuie avute in vedere atunci cand analizam rezultatele din col-tinta H,
      doarece s-ar putea ca aceste componente(L si M)  sa joace un rol interesant/important in 
      explicatia acesteia(col. de rezultate H)
    - coloana P trebuie pastrata pentru a ordona randurile dupa aceasta si pt a se utiliza atunci cand
      rezultatele(col. H) vor fi vazute/analizate ca o serie-temporala.
      Coloana P desi ar putea fi inlocuita cu un index trebuie sa va spun ca nu este in regula 
      sa se procedeze astfel, deoarece o coloana de tip data calendaristica(ascunde alte date-componente 
      simple cum este ziua,luna si anul... date care permit analiza ciclicitatii/sezonalitatii...temporale).
      De pilda, daca aveti ziua puteti vedea ca daca o analizati ca fiind a n-a zi a sapatamanii veti vedea 
      ca aceste valori calculate se vor repeta luand valorile...1,2,3,4,5,6,7;
      Intrinsec ziua(DD) se va repeta si va lua valori intre 1 si 30/31 ... la fel si lunile(MM) ascund o 
      cicilicitate luand valori in intervalul 1-12, in cadrul unui an(YYYY).
     - coloana Q se poate determina din coloana P, Q fiind "calculata" ca: Q = year(P), deci dedusa din
       coloana P. 
       Prin urmare, la coloana Q, se poate renunta fara probleme(eliminarea ei nu va duce la pierdere de informatie,
       si deci nu se va simti lipsa acesteia...).
     - coloanelel A si B pot consituie un foarte bun instrument de identificare a jucatorilo din cadrul 
       randurilor/meciurilor, dar numele jucatorului/data nasterii care identifica un tenismen anume veti vedea ca se 
       pot repeta, pt ca acestia pot participa la mai multe meciuri/jocuri(si chiar turnee/competitii sportive!)
</pre>

<br/><hr/>
</details>

Si acum cateva ...

<details>
    <summary>...Link-uri utile...</summary>

<hr/><br/>

 - [ro-ASE-SPSS: analiza multivariata a datelor](https://orzanm.ase.ro/spss/pdf/Analiza%20multivariata%20a%20datelor.pdf);
 - [ro-Hoteca: Distributii de frecventa, percentile si ierarhii-percentile](https://psihoteca.ro/distributii-de-frecventa-percentile-si-ierarhii-percentile/)
 - [ro-UBBU-CJ: Fizica-statistica](https://doctorat.ubbcluj.ro/sustinerea_publica/rezumate/2012/fizica/HORVAT_SZABOLCS_RO.pdf)
 - [md-UPB-Mathem: Modelarea matematica](https://dep2.mathem.upb.ro/pdf/didactice/Modelarea%20matematica%20prin%20Matlab.pdf)
 - [md-ASE-Lia POPOVICI: STATISTICA PENTRU ÎNVĂȚĂMÂNTUL PROFESIONAL TEHNIC SUPORT DE CURS Chișinău - 2023 ](https://irek.ase.md/xmlui/bitstream/handle/123456789/2661/Popovici%20Lia_Statistica.pdf?sequence=1&isAllowed=y)
 - [ro-RevistaDeStatistica: Metode şi procedee de ajustare a datelor pe baza seriilor cronologice utilizate în analiza tendinţei dezvoltării diferitelor domenii de activitate social-economică](https://www.revistadestatistica.ro/wp-content/uploads/2014/02/RRS_7_2012_A2_ro.pdf)
 - [ro-wiki: Pendul gravitational ideal(neamortizat)](https://ro.wikipedia.org/wiki/Pendul_gravita%C8%9Bional); [miscarea oscilatorie](http://www.physics.pub.ro/Referate/BN122B/Studiul_miscarii_oscilatorii_cu_ajutorul_PENDULULUI_de_TORSIUNE.pdf);
   <br/>[ro-edituraADP-Fizica XI: miscarea oscilatorie armonica amortizata](https://edituradp.ro/site_img/downloads/2016/05/pagini-fizica-xi.pdf);
   <br/>[YT-Cursul 6  de oscilatii si unde: OSCILAȚII AMORTIZATE, OSCILAȚII FORȚATE, REZONANȚA](https://www.youtube.com/watch?v=kBs1brmQLi0&ab_channel=ROMULUSBOERIU%28Physics%2CLogic%2CScience%29)
 - [roCantemirML-2024: Fizica-11 - Oscilatii Mecanice](https://www.cantemircml.ro/wp-content/uploads/2024/09/Fizica.pdf)
 - [ro-wiki: Rezonanta](https://ro.wikipedia.org/wiki/Rezonan%C8%9B%C4%83)
 - [ro-INSSE- statistici](http://statistici.insse.ro/tempoins/index.jsp?page=tempo3&lang=ro&ind=EXP102F)
 - [ro-scriBD: Statistica Cap.5 - NALIZA SERIILOR CRONOLOGICE 5.1. INDICATORI: DEFINIRE; FORMULE DE CALCUL INDICATORII SERIILOR CRONOLOGICE](https://www.scribd.com/doc/25497366/Statistica-Capitolul5)
 - [ro-stuDocu: Corelatia seriala](https://www.studocu.com/ro/document/universitatea-transilvania-din-brasov/econometrics/corelatia-seriala/33449333)
 - [ro-UMF-CV: reprezentarea grafica a datelor statistice](https://old.umfcv.ro/files/b/i/Biostatistica%20MG%20-%20Cursul%20IV.pdf)
 - [ro-UCV: Danciulescu Curs 7 - ANALIZA SERIILOR CRONOLOGICE](http://inf.ucv.ro/documents/danciulescu/curs7.pdf)
 - [Google-imagini: ...statistica  serii efectul pendul ML...](https://www.google.com/search?q=statistica++serii+efectul+pendul+ML&sca_esv=482345221402daf0&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AHTn8zoUmkMoR8NKuYw8NcpRZE-H66siGQ%3A1746683111298&ei=50QcaNX3Eb6Exc8Pw4mL4AY&ved=0ahUKEwiVh4nTlZONAxU-QvEDHcPEAmwQ4dUDCBE&uact=5&oq=statistica++serii+efectul+pendul+ML&gs_lp=EgNpbWciI3N0YXRpc3RpY2EgIHNlcmlpIGVmZWN0dWwgcGVuZHVsIE1MSL1FULU7WKVCcAF4AJABAJgBc6AB1AKqAQMwLjO4AQPIAQD4AQGYAgCgAgCYAwCIBgGSBwCgB4cBsgcAuAcA&sclient=img)
 - [RRS_10_2012_A5_ro: Seriile dinamice/cronologice(de timp)](https://www.revistadestatistica.ro/wp-content/uploads/2014/02/RRS_10_2012_A5_ro.pdf)
 - [curs_statistica_web-Cristina TULBU-FRUNZE: ORGANIZAREA ȘI ANALIZA DATELOR STATISTICE](https://epedagogie.md/pluginfile.php/1189/block_html/content/suport%20de%20curs_statistica_web.pdf)
 - [ro-eduBoom: Prelucrarea si reprezentarea datelor statistice M2 M3](https://eduboom.ro/video/665/prelucrarea-si-reprezentarea-datelor-statistice-m2-m3)
 - [ro-stuDocu-Univ.Vasile-Alexandri(BC)-teoria si metodologia evaluarii: Elemente de statistica-matematica ](https://www.studocu.com/ro/document/universitatea-vasile-alecsandri-din-bacau/teoria-si-metodologia-evaluarii/elemente-de-statistica-matematica/21547719)
 - [ro-stuDocu-UV(TM)-statistica aplicata: Serii de timp - indicatori si indici statistici](https://www.studocu.com/ro/document/universitatea-de-vest-din-timisoara/statistica-aplicata/serii-de-timp-indicatori-si-indici-statistici/13291935)
 - [ro-scriBD: curs-Statistica-in-cercetare-22-01-2016](https://www.scribd.com/document/475695770/curs-Statistica-in-cercetare-22-01-2016-p-pdf)
 - [MS-ro-ro: Exemple de utilizari ale datelor calendaristice drept criterii in interogarile Aceess](https://support.microsoft.com/ro-ro/topic/exemple-de-utiliz%C4%83ri-ale-datelor-calendaristice-drept-criterii-%C3%AEn-interog%C4%83rile-access-aea83b3b-46eb-43dd-8689-5fc961f21762)
 - [ro-UAIC: Organizarea datelor statistice](https://www.math.uaic.ro/~eduard/Capitolul%201.%20Organizarea%20datelor%20statistice.pdf)
 - [ro-UPT-mec: Analiza Exploratorie a unei serii de Date](https://mctr.mec.upt.ro/wp-content/uploads/2018/12/ADE_2.pdf)
 - [ro-INSSE: metogologie/strategie](https://insse.ro/cms/files/statistici/comunicate/somaj_BIM/a20/precizari_metodologice_dec.pdf)
 - [ro-teleWork: Analiza datelor](https://www.telework.ro/ro/analiza-datelor/)
 - [ro-teleWork: Modelarea datelor pt BD](https://www.telework.ro/ro/modelarea-datelor-pentru-baza-de-date/)
 - [Google-imagini: analiza statistica Ml  exploratorie a seriilor de date calendaristice multivariate schema logica strategie metodologie](https://www.google.com/search?q=analiza+statistica+Ml++exploratorie+a+seriilor+de+date+calendaristice+multivariate+schema+logica+strategie+metodologie&sca_esv=a122d3f84a806bce&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AHTn8zqhPeRGrL5f4ncOBwxiY06oslNndw%3A1746688220212&ei=3FgcaODMDLmJ7NYP_aLBUQ&ved=0ahUKEwjgqpjXqJONAxW5BNsEHX1RMAoQ4dUDCBE&uact=5&oq=analiza+statistica+Ml++exploratorie+a+seriilor+de+date+calendaristice+multivariate+schema+logica+strategie+metodologie&gs_lp=EgNpbWcidmFuYWxpemEgc3RhdGlzdGljYSBNbCAgZXhwbG9yYXRvcmllIGEgc2VyaWlsb3IgZGUgZGF0ZSBjYWxlbmRhcmlzdGljZSBtdWx0aXZhcmlhdGUgc2NoZW1hIGxvZ2ljYSBzdHJhdGVnaWUgbWV0b2RvbG9naWVIAFAAWABwAHgAkAEAmAEAoAEAqgEAuAEDyAEA-AEBmAIAoAIAmAMA4gMFEgExIECSBwCgBwCyBwC4BwA&sclient=img)
 - [...](https://www.google.com/search?q=statistica++efectul+pendul&sca_esv=482345221402daf0&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zr5FTi6xtTaPdaQ91kGM6IdfiW7Mg%3A1746681660523&ei=PD8caMLZH9-Jxc8PscKyoAo&ved=0ahUKEwjC56SfkJONAxXfRPEDHTGhDKQQ4dUDCBA&uact=5&oq=statistica++efectul+pendul&gs_lp=Egxnd3Mtd2l6LXNlcnAiGnN0YXRpc3RpY2EgIGVmZWN0dWwgcGVuZHVsMgUQABjvBTIIEAAYogQYiQUyBRAAGO8FMggQABiiBBiJBTIIEAAYogQYiQVI5HlQAFjUd3AAeACQAQCYAZsBoAHCH6oBBDAuMzO4AQPIAQD4AQGYAiGgApwgwgIEECMYJ8ICCxAAGIAEGLEDGIMBwgIOEAAYgAQYsQMYgwEYigXCAg4QLhiABBixAxjRAxjHAcICChAAGIAEGEMYigXCAggQLhiABBixA8ICCBAAGIAEGLEDwgILEC4YgAQYsQMYgwHCAhAQLhiABBhDGMcBGIoFGK8BwgIFEAAYgATCAgUQLhiABMICCxAuGIAEGMcBGK8BwgIIEAAYgAQYywHCAgYQABgWGB7CAggQABgWGAoYHsICBRAhGKABwgIIEAAYgAQYogTCAgQQIRgVwgIFECEYnwXCAgYQABgIGB6YAwCSBwQwLjMzoAeM3QGyBwQwLjMzuAecIA&sclient=gws-wiz-serp)
<br/><hr/>

</details>

Salut!

Am [postat](https://www.google.com/search?q=python+how+conduct+EDA+statistics&sca_esv=177fae3e0b1a050b&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AHTn8zqEuZTvEu4AUIG0Re_4PwQWsrJh-Q%3A1746704644735&ei=BJkcaLbELKiNxc8P0bOD2AY&ved=0ahUKEwi21oHv5ZONAxWoRvEDHdHZAGsQ4dUDCBE&uact=5&oq=python+how+conduct+EDA+statistics&gs_lp=EgNpbWciIXB5dGhvbiBob3cgY29uZHVjdCBFREEgc3RhdGlzdGljc0jlIVCmDliNH3ABeACQAQCYAYEBoAGjBqoBAzAuN7gBA8gBAPgBAZgCAKACAJgDAIgGAZIHAKAHuwKyBwC4BwA&sclient=img) [aici](https://python.plainenglish.io/fundamentals-of-eda-990e9d99f5ef) o [explorare](https://old.umfcv.ro/files/b/i/Biostatistica%20MG%20-%20Cursul%207%20-%20Teste%20statistice.pdf) de date([Analiza Exploratorie a Datelor](https://www.dasca.org/world-of-data-science/article/a-comprehensive-guide-to-mastering-exploratory-data-analysis)=[EDA](https://www.geeksforgeeks.org/what-is-exploratory-data-analysis/?ref=rp)) pt o [predictie](https://www.markovml.com/blog/eda-tools) [statistica](https://moodle.fspac.ubbcluj.ro/pluginfile.php/96733/course/overviewfiles/Programul%20SPSS-%20%281%29%20%281%29.pdf?forcedownload=1)/ML.

[Interesanta](https://chatgpt.com/share/6819fdc8-07e8-800b-8aa6-b51458f13e49) este/a fost si [discutia](https://chatgpt.com/share/681b81d9-13fc-800b-bc48-9905815200c1) cu [ChatGPT](https://chatgpt.com/share/6819fdc8-07e8-800b-8aa6-b51458f13e49).

Totul a plecat de la un [concurs](https://medium.com/swlh/exploratory-data-analysis-eda-from-scratch-in-python-8c12c2673aa7)(nu de imprejurari!:) [Freelancer](https://www.freelancer.com/contest/time-series-forecasting-model-development-2553381)

Am creat un batch([start_statistics.bat](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/start_statistics.bat)) ce poate fi rulat de sub windows.

Acest batch are comentate si toate instalarile/operatiunile necesare dar si partea de rulare a fisierului python([tennis_statistics.py](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/tennis_statistics.py)).

Ideea este ca am o arhiva zip([Files_for_Prediction_Model.zip](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/Files_for_Prediction_Model.zip)) care se auto-descarca la rularea batch-ului.

Arhiva contine urmatoarele:

A). pt partea de antrenament/train(perioada istorica IAN-01-2024 - FEB-14-2025) :
- aHistorical_01012024_02142025.xlsx ce contine datele de train/invatare/antrenament(nu trebui splitat pt [testare](https://www.ibm.com/docs/ro/cognos-analytics/11.2.x?topic=dashboards-statistical-tests) deoarece alte date sunt livrate pt testare)
- 2 dictionare(index-uri) unul pt coloana L(combinatia de 2 planete) si unul pt coloana N(L concatenat cu M si separat cu '-'):
    - bColumn_L_Signs_Symbols.xlsx
    - bColumn_N_Signs_Symbols.xlsx
  unde M este coloana categoriala de intentitati ale influentei astrale(combinatie de 2 planete);
  dupa cum va asteptati alaturi de M  atat L cat si rezultanta lor N sunt coloane categoriale

B). pt partea de testare in (10)fisiere (splitate/impartite/separate) zilnic:

 - restul celor 10 zile/fisiere-zilnice .xlsx cu denumite dupa sablonul Daily__MMDDYYYY.xls unde MM=02(FEB), YYYY=2025(anul curent) si DD=15-24(zilele in care s-au prelevat date de testare din luna FEB-2025)

Cerinta/descrierea [tehnica](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/Req.txt) proiectului este urmatoarea:

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

Coloana N are 768 de semne-simboluri unice/distincte(ex. „Jupiter_Neptune-BLK_Square”).

Coloana L are 168 de simboluri unice/distincte(ex. „Jupiter_Neptune”).

Puteți alege să le utilizați pe toate sau pe unele dintre ele. 
Ideea aici este de a identifica efectul pendulului. 
Fiecare semn-simbol tinde(are tendinta/tredul de a ...sau ...) să urmeze un val de Maxime și Minime ale 
rezultatelor OVER/CÂȘTIGĂTOR sau UNDER/PIERDERE. 
Un posibil obiectiv este de a identifica când un val a dat o lovitură(mingea a lovit peretele daca ai juca tenis la perete...:) și 
se va întoarce în direcția opusă. 
De exemplu, dacă 
    semn-simbolul(valoare existenta/din col. N) „Jupiter_Neptune-BLK_Square” are o
    [distributie](https://www.scribd.com/document/213374961/Forma-Distributiei-Statistica) (pe un subset de randuri de...), (90,9% la 9.1%) :
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
    <summary>Nota explicativa cu privire la redundanta/utilizarea coloanelor!</summary>

<hr/><br/>

<pre>
Nota:
- desi L,M si N sunt 3 coloane care NU sunt independente intre ele(una obtinandu-se din celelalte 2),
  N fiind o variabila-externa, compusa/[combinata](https://www.ibm.com/docs/ro/cognos-analytics/11.2.x?topic=tests-influence-test)(N este o variabila externa/exogena/explicativa a seriei studiate: H(P)=y(t)...unde 
  H joaca  rolul lui y iar coloana P joaca rolul lui t/timpul-calendaristic) din variabilele sale simple/componente(L si M), 
  totusi cred ca L si M , trebuie avute  in vedere(luate in considerare/calcul) atunci cand analizam rezultatele din col-tinta H, 
  doarece <b><i>s-ar putea </i></b>, ca aceste 2 componente / variabile-exogene(x1=L si x2=M ia x=(x1,x2) unde x este variabila 
  explicativa exogena N(P)=x(t), ierarhic-superioara componentelor sale structurale, x1 si x2), sa joace un rol interesant / 
  important, in explicatia evolutiei/comportamentului(in timp) a acesteia(coloanei-tinta/de rezultate H=y)
- coloana P(dimensiunea temporala/calendaristica) trebuie pastrata pentru a ordona randurile dupa aceasta si 
  pt a se utiliza atunci cand rezultatele(col. H) vor fi vazute/analizate ca o serie-calendaristica/temporala.
  Coloana P, desi ar putea fi inlocuita cu un index, trebuie sa va spun ca nu este in regula sa se procedeze astfel, deoarece o 
  coloana de tip data calendaristica(ascunde alte date-componente simple, cum ar fi ziua,luna si anul... date care permit analiza 
  ciclicitatii/sezonalitatii...temporale).
  Indexul temporal, va permite/asigura in continuare, ordonarea in timp, dar ea va omite/ascunde ciclicitatile/repetarea din cadrul 
  elementelor/sirului de date temporale si prin urmare se pierd informatii constitutive importante, de frecventa.
  Cu alte cuvinte se va face/prefera o esantionare mai grosiera, in locul uneia mai detailate/atomizate/precise avand deci in final,
  o granularitate/grad de investigare mai mare/imprecisa.
  O discretizare intr-un grad cat mai inalt(asa cum ai trece de la la numere Natura/Intregi la numere rationale si apoi la numere cu 
  o zecimala si apoi la 2,3,...n zecimale... ca sa nu mai vorbim de numere periodice) poate aduce lucruri noi in evaluarea noastra,
  greu de vazut/surprins daca acestea nu sunt vazute in amanunt in sirurile de valori/seriile dependente de factorul/variabila timp
  (serii temporale: calendaristice sau de ce nu se poate adanci/largi discretizarea, atat in sensul micsorarii mergand la o frecventa: 
  de divizori ai celor 24 ore cat are ziua...12-ore=1/2 de zi, 8-ore, 6-ore, 4-ore(sfert de zi), 3-ore, 2-ore(bi-orar), orar,
  minute(si divizori ai lui 60),secunde(si divizori ai lui 60),zecimi-de-secunda,sutimi-de-secunda,miimi-de secunda,... ori in sensul
  majorarii pasului de esantionare: bianual,tri-anual, 4/cvadru-anual, 5-anual/5-ani/cincinale,...decenii,secole/veacuri,milenii...).
  Cuanta de timp(pasul esantionarii), fie ea discretizata/aproximata/rotunjita, in sensul misorarii, sau in sensul majorarii, 
  NU trebuie sa  fie ignorata, in analizele dumneavoastra viitoare!
  De pilda, daca aveti disponibila ziua(DD), o puteti vedea, daca o analizati, ca fiind a <i>n</i>-a zi a saptamanii si deci 
  mai departe veti vedea  ca aceste valori calculate se vor repeta luand valorile...1,2,3,4,5,6,7;
  Cu alte cuvinte ati putea dezvolta analiza fie pe ziua din luna dar si pe ziua 1/2/3/4/5/6/7 a/din saptaman[ii/a], si mai departe 
  fie pe saptamani si apoi pe decade(10 zile), apoi pe luni ale anului si tot asa... folosind intervale/frecvente/grupari temporale 
  din ce in ce mai mari.
  Intrinsec ziua(DD) se va repeta si va lua valori intre 1 si 30/31 ... 
  La fel si lunile(MM) ascund o cicilicitate luand valori in intervalul 1-12, in cadrul unui an(YYYY).
  Si aici am putea extinde analiza la trimestre(4 luni) si semestre(6 luni), dupa caz.
  Atomizarea sau gruparea si in general frecventa datelor temporale poate constitui un bun prilej/factor de analiza, in cazul 
  explorarii-statistice a seriilor-temporale(calendaristice in acest caz).
  Veti beneficia astfel de mai multe ciclicitati in analiza/explorarea datelor puse la dispozitie!
- coloana Q se poate determina din coloana P, Q fiind "calculata/evaluata/determinata" ca fiind : Q = year(P), deci dedusa din
  coloana P. 
  Prin urmare, la coloana Q, se poate renunta fara probleme(eliminarea ei nu va duce la pierdere de informatie,
  si deci nu se va simti lipsa acesteia...).
- avand 10 zile de date pt testare(ma duce cu gandul si la o analiza decadala atunci cand grupam datele...:)
- coloanelel A si B pot consituie un foarte bun instrument de identificare a jucatorilo din cadrul 
  randurilor/meciurilor, dar numele jucatorului/data nasterii care identifica un tenismen anume veti vedea ca se 
  pot repeta, pt ca acestia pot participa la mai multe meciuri/jocuri(si chiar turnee/competitii sportive!)
</pre>

<br/><hr/>
</details>
Sa comparam corelatia(ex Pearson) si regresia(ex OLS)...
<details>
    <summary>... comparatie Corr vs. OLS...</summary>

<hr/>
<br/>
<pre><small>
✅ Corelația (Pearson):
Scop: arată dacă x este un candidat pentru o relație liniară cu y.

Ce face concret?:
-Măsoară forța și direcția unei relații liniare.
-Valori aproape de ±1 indică o relație liniară puternică (pozitivă sau negativă).
-Nu presupune un model de regresie și nu face predicții.
-Este simetrică: corr(x,y)=corr(y,x).

✅ OLS (Regresie Liniară - Ordinary Least Squares):
Scop: estimează o relație de tip funcție: y=a⋅x+b+ε, adică cum y depinde de x.

Ce face concret?:
-Evaluează cât de bine x explică variația lui y.
-Permite testarea semnificației relației (prin testul t pentru coeficientul lui x).
-Poate include și alți predictori (multivariat).
-Nu este simetrică: y=f(x) nu înseamnă x=f(y).

🔍 Diferența-cheie:

 Concept	                Corelație Pearson	        OLS (Regresie Liniară)

 Tip relație               Liniară (simetrică)          Liniară direcționată: y în funcție de x
 Poți face predicții?      ❌ Nu                       ✅ Da
 Test semnificație?        ❌ (nu direct)              ✅ (test t, F)
 Detectează influență?     ❌ (doar asociere)          ✅ (dacă coeficientul e semnificativ)

✅ Concluzie:
Corelația identifică candidatul pentru o relație-liniară(exista o legatura-liniara?), 
iar Regresia(OLS) măsoară și modelează explicit această relație-liniara, 
testând dacă influența este statistic semnificativă(taria legaturii).

Q1: corelatia a 2 coloane una target(y) si una candidata(x) arata ca y depinde/este o functie de x, y(x)?
A1: Corelația dintre două coloane, una considerată target (y) și cealaltă candidată (x), 
    nu implică automat că y este o funcție de x, adică y(x) în sens matematic strict.

Iată ce înseamnă mai exact:

✅ Ce sugerează corelația:
-O corelație ridicată (pozitivă sau negativă) indică o relație liniară între cele două variabile. 
 Cu cât coeficientul Pearson este mai aproape de +1 sau -1, cu atât relația liniară este mai puternică.
-O astfel de relație sugerează că x poate avea un impact asupra lui y, sau 
 cel puțin că ele variază împreună într-un anumit mod.

⚠️ Ce nu implică corelația:
-Corelația nu înseamnă cauzalitate. 
 Chiar dacă y și x sunt corelate, nu poți spune sigur că y este o funcție de x fără o analiză mai profundă.
-Nu înseamnă automat că poți prezice exact y pe baza lui x (mai ales dacă relația nu e liniară sau e slabă).
-Alte variabile pot influența y, iar x poate fi doar un efect colateral (variabilă confuză).

📌 Concluzie:
-Corelația este un indiciu că o relație între y și x ar putea exista, dar nu dovedește că y este determinată de x.
-Pentru a spune că y = f(x), ai nevoie de o modelare, de exemplu regresie, și de o validare statistică serioasă.


Q2: daca y si x nu sunt corelate atunci nu poate avea loc cauzalitate adica nu poti determina pe y din x...e corect?
A2: Da, în mare parte este corect, dar cu niște nuanțe importante:

✅ Corect:

Dacă x și y nu sunt corelate deloc (de exemplu, coeficient de corelație Pearson ≈ 0), atunci:
-Nu există o relație liniară între ele.
-Este puțin probabil ca x să poată prezice sau determina y printr-o relație simplă, mai ales liniară.
-Într-un model de regresie simplu (fără alte variabile), x nu ajută la prezicerea lui y.

⚠️ Dar atenție:
Lipsa de corelație NU exclude complet cauzalitatea.
-Exemplu celebru: o relație non-liniară (ex: y=x<sup>2</sup>
 are corelație liniară zero dacă x e distribuit simetric în jurul lui 0, dar x cauzează clar y.
-Corelația Pearson măsoară <b>doar</b> relații/legaturi <b>liniare</b>.
 Relațiile non-liniare (exponențiale, logaritmice, parabolice) pot exista chiar dacă corelația e zero.
-Alte metode (corelația Spearman, mutual information etc.) pot detecta relații non-liniare.

✅ Concluzie:
-Dacă nu există niciun tip de corelație (liniară sau non-liniară), atunci e foarte puțin probabil ca 
 x să determine y.
-Dar lipsa corelației liniare nu este suficientă pentru a afirma categoric că nu există cauzalitate — doar că 
 nu e evidentă și nu e simplă.

Q3: corelatia verifica liniaritatea doar?
A3: Da, corelația Pearson — cea mai frecvent folosită — verifică doar liniaritatea relației dintre două variabile.

🔍 Detalii:

✅ Corelația Pearson:
-Măsoară forța(taria) și direcția(sensul/panta:pozitiv sau negativ)) relației liniare dintre două variabile.
-Intervalul valorilor:
  −1 (relație liniară negativă perfectă), 
   0 (nicio relație liniară), 
  +1 (relație liniară pozitivă perfectă).
-Dacă y=a⋅x+b, atunci Pearson va fi aproape de +1 sau -1 (în funcție de semn).

❌ Ce nu detectează:
-Relații non-liniare, cum ar fi:
        Parabolice:   y=x<sup>2</sup> 
        Logaritmice:  y=log(x)
        Exponențiale: 𝑦=e <sup>x</sup>
-În astfel de cazuri, corelația-Pearson poate fi aproape de zero, chiar dacă relația este clară și
 cauzală(x determina cauzal/functional pe y).

🧠 Alte tipuri de corelație pentru relații non-liniare:

Tip corelație	        Detectează relații	                Exemple de utilizare

Pearson            	    Doar liniare	                    Regresie liniară, analize simple
Spearman	            Monotone (nu doar liniare)	        Ordinală, scoruri, ranguri
Kendall Tau	            Monotone	                        Date cu ranguri, date cu zgomot
Mutual Information	    Orice relație (inclusiv complexă)	AI, ML, analiză avansată

✅ Concluzie:
Da, corelația (Pearson) testează doar liniaritatea. 
Pentru a identifica relații mai generale, trebuie să folosești metode complementare.


Q4: si daca vreau sa stiu daca x influenteaza cumva y care este testul cel mai des folosit si ce detecteaza acesta?
A4: Dacă vrei să afli dacă x influențează cumva y (adică dacă există o relație de tip cauzal sau predictiv între ele), 
    atunci ai la dispoziție mai multe teste/statistici, în funcție de tipul de relație așteptată.

✅ Cele mai frecvent folosite teste și ce detectează ele:

Test / metodă	                               Ce detectează?	                               Tip relație	                Observații

Regresie liniară (OLS)	                       Dacă x explică variația lui y	                Liniară	                Poți testa semnificația coeficientului lui x
Test F (din regresie)	                       Dacă x (sau un set de x-uri) explică y	        Liniară	                Test global pentru toți predictorii
Test t (coeficienți regresie)	               Dacă fiecare x influențează semnificativ y	    Liniară	                Dacă p < 0.05, x este un
                                                                                                                            predictor semnificativ
Corelația Spearman/Kendall	                   Relații monotone (nu neapărat liniare)	        Monotonă	            Detectează trenduri
                                                                                                                            crescătoare/descrescătoare
Mutual Information	                           Orice fel de relație (chiar foarte complexă)	    Generală	            Frecvent folosit în ML pentru
                                                                                                                            feature selection
ANOVA (dacă x este categorial)	               Dacă grupurile x influențează valorile lui y	    Generală                Pentru variabile explicative categorice
Granger Causality (pentru serii temporale)     Dacă trecutul lui x ajută la prezicerea lui y	Temporală (predictivă)	Nu e cauzalitate reală, dar e un indiciu

🔎 Dacă ai o relație numerică între două variabile continue:

1.Începi cu o regresie liniară simplă:
-Te uiți la coeficientul lui x și la valoarea p asociată.
-Dacă
           p < 0.05 →
 Atunci
         → x este un predictor semnificativ pentru y.

2.Dacă suspectezi relație non-liniară:
-Încearcă o regresie polinomială sau
 folosește Spearman sau
 mutual information.

</small></pre>
</br>
<hr/>

</details>
Si acum cateva ...

<details>
    <summary>...Link-uri utile...</summary>

<hr/><br/>

 - [ro-ASE-SPSS: analiza multivariata a datelor](https://orzanm.ase.ro/spss/pdf/Analiza%20multivariata%20a%20datelor.pdf);
 - [ro-Hoteca: Distributii de frecventa, percentile si ierarhii-percentile](https://psihoteca.ro/distributii-de-frecventa-percentile-si-ierarhii-percentile/)
 - [distrib.-t vs. distrib.-Normala](https://www.investorhood.ro/distributia-t-in-analiza-probabilitatilor/)
 - [](Indicatori ai formei distributiei](https://www.scribd.com/document/534803630/Tema-Indicatorii-ai-formei-distributiei-si-concentrarii)
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
   <br/>Corelația se referă la o clasă largă de relații statistice care implică [Dependența](https://dexonline.ro/definitie/dependenta)
   <br/>Un coeficient de Corelatie mai mare de 0,75 (sau mai mic de -0,75) inseamna o corelatie/[asociere](https://dexonline.ro/definitie/asociere) puternica/semnificativa (grad de Asociere foarte bun/taria legaturii este semnificativa).
   <br/> -0,25 < r < 0,25 sau echivalent |r| < 0.25 grad de asociere(taria legaturii/dependentei/asocierii) foarte bun sau semnificativ!
   <br/> Corelatia ne arata doar cat de puternica/tare/semnificativa este o legatura(stiind deja ca am detectat in trecut o [legatura](https://www.umfst.ro/info/statmed_exemple_rezolvari.pdf) intre 2 variabile)
   <br/> Corelatia nu ne spune sau nu detecteaza daca intre 2 variabile exista vre-o relatie/legatura/asociere-implicita(nu explicita) si
   <br/>nici natura legaturii(adica daca este  una/o legatura de natura liniara sau neliniara, ori daca este cicla sau aciclica/periodica...etc)
   <br/>Daca va mai amintiti de la matematica, o functie poate fi reprezentata prin legaturi intre elementele multimii X/t si Y,
   <br/>adica avem reprezentarea implicita("cu galusti") si avem apoi reprezentarea-explicita prin formule de calcul ori
   <br/>reguli-algoritmice( a ne aminti de sirurile de valori...)
   <br/>Orice functie/dependenta are o reprezentare-implicita(daca intre cele 2 multimi am vre-o legatura/asociere deja demonstrata...
   <br/> adica daca am demonstrat ca este o functie si nu 2 multimi de date independente una fata de alta!)
   <br/>Dar nu orice functie are o forma de reprezentare-explicita!
   <br/>Cautarea acestei explicitari/explicari este un proces anevoios/greu daca nu imposibil de gasit!!!
   <br/>Procesul consta in gasirea unor reguli explicabile in cuvinte/algoritmic sau si de dorit chiar matematic(desi nu totdeauna
   <br/> treaba asta este posibila), proces care ne ajuta sa descoperim faptul ca(si uneori cum) valorile X ori t(timpul sau variabila
   <br/>explicativa), explica/determina(prin reguli de compunere/calcul), valorile rezultatului(Y, care devine astfel dependent de X)
   <br/>Asadar nu trebuie confundate [conceptele-cheie](https://www.reddit.com/r/AskStatistics/comments/rqi7rr/why_is_correlation_always_linear/?tl=ro) de:
   <br/> - independenta-relativa,
   <br/> - asocierea(legatura/dependenta-implicita) si
   <br/> - dependenta(legatura-explicita).
   <br/> - monotonia(crescator/descrescator cu variantele strict sau nestrict ori nemonotona/aleatoare)
   <br/> - liniaritate vs neliniaritate( si aici verificam daca am periodicitate sau nu...)
 - [Tipuri/Comaparatie/Diferente/Distinctie intre corelatii](https://statisticasociala.tripod.com/cor_par.htm)
   <br/> [Testele](https://www.ibm.com/docs/ro/cognos-analytics/11.2.x?topic=tests-analysis-variance-anova) vin sa studieze toate/o parte din aspectele aceastea(si nu numai!...Google sau ChatGPT va poate [ajuta](https://phys.ubbcluj.ro/~dana.maniu/BIOSTAT/C5.pdf) aici!)
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
 - [ro-UAIC: Organizarea datelor-statistice](https://www.math.uaic.ro/~eduard/Capitolul%201.%20Organizarea%20datelor%20statistice.pdf)
 - [ro-UPT-mec: Analiza Exploratorie a unei serii de Date](https://mctr.mec.upt.ro/wp-content/uploads/2018/12/ADE_2.pdf)
 - [ro-INSSE: metogologie/strategie](https://insse.ro/cms/files/statistici/comunicate/somaj_BIM/a20/precizari_metodologice_dec.pdf)
 - [ro-teleWork: Analiza datelor](https://www.telework.ro/ro/analiza-datelor/)
 - [ro-teleWork: Modelarea datelor pt BD](https://www.telework.ro/ro/modelarea-datelor-pentru-baza-de-date/)
 - [Google-imagini: analiza statistica ML  exploratorie a seriilor de date calendaristice multivariate schema logica strategie metodologie](https://www.google.com/search?q=analiza+statistica+Ml++exploratorie+a+seriilor+de+date+calendaristice+multivariate+schema+logica+strategie+metodologie&sca_esv=a122d3f84a806bce&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AHTn8zqhPeRGrL5f4ncOBwxiY06oslNndw%3A1746688220212&ei=3FgcaODMDLmJ7NYP_aLBUQ&ved=0ahUKEwjgqpjXqJONAxW5BNsEHX1RMAoQ4dUDCBE&uact=5&oq=analiza+statistica+Ml++exploratorie+a+seriilor+de+date+calendaristice+multivariate+schema+logica+strategie+metodologie&gs_lp=EgNpbWcidmFuYWxpemEgc3RhdGlzdGljYSBNbCAgZXhwbG9yYXRvcmllIGEgc2VyaWlsb3IgZGUgZGF0ZSBjYWxlbmRhcmlzdGljZSBtdWx0aXZhcmlhdGUgc2NoZW1hIGxvZ2ljYSBzdHJhdGVnaWUgbWV0b2RvbG9naWVIAFAAWABwAHgAkAEAmAEAoAEAqgEAuAEDyAEA-AEBmAIAoAIAmAMA4gMFEgExIECSBwCgBwCyBwC4BwA&sclient=img)
 - [Google-imagini: python analiza statistica ML  exploratorie a seriilor de date calendaristice multivariate schema logica strategie metodologie](https://www.google.com/search?q=python+analiza+statistica+ML++exploratorie+a+seriilor+de+date+calendaristice+multivariate+schema+logica+strategie+metodologie&sca_esv=a122d3f84a806bce&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AHTn8zp2H-UsovX5_XEXjg0ybTyY2MXgCA%3A1746688350698&ei=XlkcaP6uKpeoxc8P0YSJ6QY&ved=0ahUKEwj-1bSVqZONAxUXVPEDHVFCIm0Q4dUDCBE&uact=5&oq=python+analiza+statistica+ML++exploratorie+a+seriilor+de+date+calendaristice+multivariate+schema+logica+strategie+metodologie&gs_lp=EgNpbWcifXB5dGhvbiBhbmFsaXphIHN0YXRpc3RpY2EgTUwgIGV4cGxvcmF0b3JpZSBhIHNlcmlpbG9yIGRlIGRhdGUgY2FsZW5kYXJpc3RpY2UgbXVsdGl2YXJpYXRlIHNjaGVtYSBsb2dpY2Egc3RyYXRlZ2llIG1ldG9kb2xvZ2llSABQAFgAcAB4AJABAJgBAKABAKoBALgBA8gBAPgBAZgCAKACAJgDAJIHAKAHALIHALgHAA&sclient=img)
 - [Google-imagini: matematica statistica teste asociere legatura dependenta taria legaturii corelatie regresie](https://www.google.com/search?q=matematica+statistica+teste++asociere+legatura+dependenta+taria+legaturii+corelatie+regresie&sca_esv=e5960107d5fb9778&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AHTn8zo8r-FEaGvUn2U5iWgelbovEP4Q9Q%3A1746692325255&ei=5WgcaPqpD6aRxc8PjbWHIA&ved=0ahUKEwi6sND8t5ONAxWmSPEDHY3aAQQQ4dUDCBE&uact=5&oq=matematica+statistica+teste++asociere+legatura+dependenta+taria+legaturii+corelatie+regresie&gs_lp=EgNpbWciXG1hdGVtYXRpY2Egc3RhdGlzdGljYSB0ZXN0ZSAgYXNvY2llcmUgbGVnYXR1cmEgZGVwZW5kZW50YSB0YXJpYSBsZWdhdHVyaWkgY29yZWxhdGllIHJlZ3Jlc2llSI0dUO8JWMUacAF4AJABAJgBc6ABjQaqAQMwLje4AQPIAQD4AQGYAgCgAgCYAwCIBgGSBwCgB7sCsgcAuAcA&sclient=img)
 - [scriBD: Regresia Simpla/Multipla, Corelatia=intensitatea/taria legaturii stiute/cunoscute/aratate deja ca fiind lineara](https://www.scribd.com/document/25497341/Statistica-Capitolul4)
 - [Regresie vs. Corelatie](https://www.diplomade10.ro/corelatia-vs-regresia-simpla-pe-care-sa-folositi-si-de-ce/)
 - [Google: asociere corelatie legatura taria-legaturii dependenta teste statistice](https://www.google.com/search?q=asociere+corelatie+legatura+taria-legaturii+dependenta+teste+statistice&sca_esv=fc7dcd13867fca7a&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zqCqEhdE4OVyCAKWGBkC1Ijy9fZvA%3A1746696244672&ei=NHgcaJnpKLqJ7NYP8Z2qoAs&ved=0ahUKEwiZ08bJxpONAxW6BNsEHfGOCrQQ4dUDCBA&uact=5&oq=asociere+corelatie+legatura+taria-legaturii+dependenta+teste+statistice&gs_lp=Egxnd3Mtd2l6LXNlcnAiR2Fzb2NpZXJlIGNvcmVsYXRpZSBsZWdhdHVyYSB0YXJpYS1sZWdhdHVyaWkgZGVwZW5kZW50YSB0ZXN0ZSBzdGF0aXN0aWNlSKN-UIcCWLN8cAF4AZABAJgBrgGgAeERqgEEMC4xNrgBA8gBAPgBAZgCCaACmAnCAgoQABiwAxjWBBhHwgIIEAAYogQYiQXCAgUQABjvBcICBBAhGAqYAwCIBgGQBgiSBwMxLjigB846sgcDMC44uAeSCQ&sclient=gws-wiz-serp)
 - [scriBD: Prelucrarea statistica a datelor](https://www.scribd.com/document/369695098/Prelucrarea-Statistica-a-Datelor)
   <br/>[Testele de Asociere](https://www.scribd.com/search?query=Testele%20de%20asociere%20sunt%20folosite%20c%C3%A2nd%20dorim%20s%C4%83%20%C5%9Ftim%20dac%C4%83%20aceste%20leg%C4%83turi%20...%20leg%C4%83tur%C4%83%20cu%20variabila%20dependent%C4%83%2C%20ar%20trebui%20s%C4%83%20folosim%20alte%20teste%20statistice) sunt folosite când dorim să ştim dacă aceste legături ... legătură cu variabila dependentă, ar trebui să folosim alte [teste statistice](https://www.ibm.com/docs/ro/cognos-analytics/11.2.x?topic=dashboards-statistical-tests)
 - [ro-scriBD-seminar: Corelatia parametrica si neparametrica](https://www.scribd.com/document/393773788/Seminar-3-Aplicatii-Rezolvate)
 - [ro-UAIC-mah: Teste parametrice](/https://www.math.uaic.ro/~eduard/Capitolul%207.%20Teste%20neparametrice.pdf)
 - [ro-UAIC-mah: Teste neparametrice](https://www.math.uaic.ro/~eduard/Capitolul%207.%20Teste%20neparametrice.pdf)
 - [MSFT-ro: Functii statistice](https://support.microsoft.com/ro-ro/office/func%C8%9Bii-statistice-referin%C8%9B%C4%83-624dac86-a375-4435-bc25-76d659719ffd)
 - [MSFT-ro: Functii statistice EXCEL](https://support.microsoft.com/ro-ro/office/descrierea-func%C8%9Biilor-statistice-confidence-din-excel-97f5bf0e-5d56-4f8e-8345-2ec1dada8cd5)
 - [UMFcv-biostatistica-Curs.VII: Esantion](https://old.umfcv.ro/files/b/i/Biostatistica%20MG%20-%20Cursul%20VII.pdf)
 - [UMFcj: Indrumar/Indicatii Laborator](https://www.info.umfcluj.ro/images/Laboratoare/Ro/indicatii_ro.pdf)
 - [indexCopernicus: Utilizarea metodelor statistice in padagogie](https://journals.indexcopernicus.com/api/file/viewByFileId/1291474)
 - [testul de Independenta - [c]hi pătrat/^2](https://www.ibm.com/docs/ro/cognos-analytics/11.2.x?topic=tests-chi-square-test-independence)
 - [IBM: Testul hi<sup>2</sup> pt frecvente egale](https://www.ibm.com/docs/ro/cognos-analytics/11.1.x?topic=tests-chi-square-test-equal-frequencies)
 - [scriBD-curs-IBM: Teste-Statistice](https://www.scribd.com/document/421618353/Teste-Statistice-Material-Curs-ibm)
 - [IBM: termeni statistici](https://www.ibm.com/docs/ro/cognos-analytics/11.2.x?topic=dashboards-statistical-terms)
 - [IBM: Curs recapitulativ](https://www.scribd.com/document/551465973/IBM-Curs-Recapitulativ-TIMAR-1)
 - [IBM:-Termeni: Distributia generala](https://www.ibm.com/docs/ro/cognos-analytics/11.2.x?topic=terms-overall-distribution)
 - [ro-Pub-Fizica-Cursuri Gh.Cata-Danil-TN-StiinteAplicateIV-Lectia5: Metode de analiza bazate pe ımprastierea elastica a  particulelor ıncarcate](http://www.physics.pub.ro/Cursuri/Gheorghe_Cata-Danil_-_Tehnici_Nucleare_(Stiinte_Aplicate_an_IV)/Lectia5.pdf)
 - [ro-TSM: Scurta incursiune in ML](https://www.todaysoftmag.ro/article/3052/scurta-incursiune-in-machine-learning)
 - [Google-imagini: statistica prin exemple practice](https://www.google.com/search?q=statistica+prin+exemple+practice&sca_esv=0370362934c86a31&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AHTn8zrQ7KI6KFKIaVElNp33AJJ398DODQ%3A1746717034301&ei=askcaIGSEqGPxc8Pt9bSuA0&ved=0ahUKEwiB7-iClJSNAxWhR_EDHTerFNcQ4dUDCBE&uact=5&oq=statistica+prin+exemple+practice&gs_lp=EgNpbWciIHN0YXRpc3RpY2EgcHJpbiBleGVtcGxlIHByYWN0aWNlSL5CUABYhj9wAHgAkAEAmAGUAaABpx6qAQQwLjMyuAEDyAEA-AEBmAIPoALtDsICBxAjGCcYyQLCAgoQABiABBhDGIoFwgILEAAYgAQYsQMYgwHCAgUQABiABMICDhAAGIAEGLEDGIMBGIoFwgIIEAAYgAQYsQPCAg0QABiABBixAxhDGIoFwgIQEAAYgAQYsQMYQxiDARiKBcICBBAAGB7CAgYQABgKGB7CAgcQABiABBgTwgIGEAAYExgewgIIEAAYExgKGB6YAwCSBwQwLjE1oAe0f7IHBDAuMTW4B-0O&sclient=img)
 - [Google-imagini: statistica prin exemple practice teoria sistemelor](https://www.google.com/search?sca_esv=0370362934c86a31&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zrPMgHDzqbR1PF6qh-ejBC5uHwHVQ:1746717163546&q=statistica+prin+exemple+practice+teoria+sistemelor&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGls0vqphpL9nGKy0PrLJqseLh0EQ6IW_YF9DHIKeRA2FImp3Dx7GIevZQOss0rMv5TwrsSkEzs3vjTgfVgkUxjFkc7bdZRacoaE2ybx0YCsH_PIueOLTVREae_OlwzJRYKSZ07h5A1B6NB9wqCZA3ckin8ZHNLEw_J4au92iWG4WiQ_L8N-eQCoeVRv3QIGVEoZm7Ch6A&sa=X&ved=2ahUKEwj4qLnAlJSNAxUFSvEDHf6IHDoQtKgLegQIExAB&biw=1920&bih=911&dpr=1)
 - [Google: teste statistice](https://www.google.com/search?q=testele+statistice+si+ce+ne+arata&sca_esv=fc7dcd13867fca7a&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zo3IgLnsfE9XJT3I04ca9NiBC3Elw%3A1746696918013&ei=1nocaIJNj4_s1g-hubnhDw&ved=0ahUKEwiCkNCKyZONAxWPB9sEHaFcLvwQ4dUDCBA&uact=5&oq=testele+statistice+si+ce+ne+arata&gs_lp=Egxnd3Mtd2l6LXNlcnAiIXRlc3RlbGUgc3RhdGlzdGljZSBzaSBjZSBuZSBhcmF0YTIFECEYoAEyBRAhGKABSJZIUABYpkVwAHgAkAEAmAHKAaAB3CSqAQYwLjMyLjG4AQPIAQD4AQGYAiGgArklwgIKECMYgAQYJxiKBcICBBAjGCfCAgoQABiABBhDGIoFwgIREC4YgAQYsQMY0QMYgwEYxwHCAgsQABiABBixAxiDAcICBRAAGIAEwgIOEC4YgAQYsQMYgwEYigXCAgoQLhiABBhDGIoFwgIOEC4YgAQYsQMY0QMYxwHCAg0QABiABBixAxhDGIoFwgIIEAAYgAQYsQPCAh0QLhiABBixAxjRAxjHARiXBRjcBBjeBBjgBNgBAcICCBAAGIAEGMsBwgIGEAAYFhgewgIFEAAY7wXCAggQABiABBiiBMICBRAhGJ8FwgIHECEYoAEYCpgDALoGBggBEAEYFJIHBjAuMzIuMaAHqK0BsgcGMC4zMi4xuAe5JQ&sclient=gws-wiz-serp)
 - [ro-stuDocu-UBB-statistics-suport de curs: Statistica Descriptiva](https://www.studocu.com/ro/document/universitatea-babes-bolyai/statistics/suport-de-curs-id-mg-statistica-descriptiva/11389987)
 - [UTh.CJ-Lucian Busoniu-IS: Identificarea Sistemelor](https://busoniu.net/teaching/sysid2024/index_ro.html)
 - [stuDOCU-UPB-TS: Probleme TS rezolvate](https://www.studocu.com/ro/document/universitatea-politehnica-din-bucuresti/teoria-sistemelor/probleme-teoria-sistemelor-rezolvate/6378610?origin=course-highest-rated-1)
 - [ro-academicDirect-Sorana D  Bolboaca-Statistica-2012-Statistica-MultiVariata: Lucrarea 1 - Statistica-Descriptiva(Excel)](http://sorana.academicdirect.ro/pages/doc/Doc2012/_materiale/Doct_LPStatistica_2007.pdf)
 - [ro-academicDirect-Sorana D  Bolboaca-Cus Statistica-2007: Cursul 1. Elemente de biostatistica](http://sorana.academicdirect.ro/pages/doc/Doc2012/_materiale/Doct_CursStatistica_2007.pdf)
 - [...](https://www.google.com/search?q=statistica++efectul+pendul&sca_esv=482345221402daf0&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zr5FTi6xtTaPdaQ91kGM6IdfiW7Mg%3A1746681660523&ei=PD8caMLZH9-Jxc8PscKyoAo&ved=0ahUKEwjC56SfkJONAxXfRPEDHTGhDKQQ4dUDCBA&uact=5&oq=statistica++efectul+pendul&gs_lp=Egxnd3Mtd2l6LXNlcnAiGnN0YXRpc3RpY2EgIGVmZWN0dWwgcGVuZHVsMgUQABjvBTIIEAAYogQYiQUyBRAAGO8FMggQABiiBBiJBTIIEAAYogQYiQVI5HlQAFjUd3AAeACQAQCYAZsBoAHCH6oBBDAuMzO4AQPIAQD4AQGYAiGgApwgwgIEECMYJ8ICCxAAGIAEGLEDGIMBwgIOEAAYgAQYsQMYgwEYigXCAg4QLhiABBixAxjRAxjHAcICChAAGIAEGEMYigXCAggQLhiABBixA8ICCBAAGIAEGLEDwgILEC4YgAQYsQMYgwHCAhAQLhiABBhDGMcBGIoFGK8BwgIFEAAYgATCAgUQLhiABMICCxAuGIAEGMcBGK8BwgIIEAAYgAQYywHCAgYQABgWGB7CAggQABgWGAoYHsICBRAhGKABwgIIEAAYgAQYogTCAgQQIRgVwgIFECEYnwXCAgYQABgIGB6YAwCSBwQwLjMzoAeM3QGyBwQwLjMzuAecIA&sclient=gws-wiz-serp)
<br/><hr/>

</details>

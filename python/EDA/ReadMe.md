Salut!

Am postat aici o explorare de date(Analaiza Exploratorie a Datelor=EDA) pt o predictie statica/ML.

Interesanta a fost si discutia cu [ChatGPT](https://chatgpt.com/share/6819fdc8-07e8-800b-8aa6-b51458f13e49).

Totul a plecat de la un concurs [Freelancer](https://www.freelancer.com/contest/time-series-forecasting-model-development-2553381)

Am creat un batch([start_statistics.bat](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/start_statistics.bat)) ce poate fi rulat de sub windows.

Acest batch are comentate si toate instalarile/operatiunile necesare dar si partea de rulare a fisierului python([tennis_statistics.py](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/tennis_statistics.py)).

Ideea este ca am o arhiva zip([Files_for_Prediction_Model.zip](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/Files_for_Prediction_Model.zip)) care se auto-descarca la rularea batch-ului.

Arhiva contine urmatoarele:

A). pt partea de antrenament/train(perioada istorica IAN-01-2024 - FEB-14-2025) :
- aHistorical_01012024_02142025.xlsx ce contine datele de tran/invatare/antrenament(nu trebui splitat pt testare deoarece alte date sunt livrate pt testare)
- 2 dictionare(index-uri) unul pt coloana L(combinatia de 2 planete) si unul pt coloana N(Lconcatenat cu M si separat cu '-'):
    - bColumn_L_Signs_Symbols.xlsx
    - bColumn_N_Signs_Symbols.xlsx
  unde M este coloana categoriala de intentitati ale influentei astrale(combinatie de 2 planete);
  dupa cum va asteptati alaturi de M  atat L cat si rezultanta lor N sunt coloane categoriale

B). pt partea de testare in (10)fisiere (splitate) zilnic:

 - restul celor 10 fisiere .xlsx cu denumite dupa sablonul Daily__MMDDYYYY.xls unde MM=02(FEB), YYYY=2025(anul curent) si DD=15-24(zilele in care s-au prelevat date de testare din luna FEB-2025)

Cerinta proiectului este urmatoarea:
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

Scopul este de a se  obține o acuratețe, cât mai aproape de 70% sau mai mult(<b> >= 70% </b>.
</pre>

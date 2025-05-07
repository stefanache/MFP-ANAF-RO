Salut!

Am postat aici o explorare de date(Analaiza Exploratorie a Datelor=EDA) pt o predictie statica/ML.

Interesanta a fost si discutia cu [ChatGPT](https://chatgpt.com/share/6819fdc8-07e8-800b-8aa6-b51458f13e49).

Totul a plecat de la un concurs [Freelancer](https://www.freelancer.com/contest/time-series-forecasting-model-development-2553381)

Am creat un batch([start_statistics.bat](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/EDA/start_statistics.bat)) ce poate fi rulat de sub windows.

Acest batch are comentate si toate instalarile/operatiunile necesare dar si partea de rulare a fisierului python(tennis_statistics).

Ideea este ca am o arhiva zip(Files_for_Prediction_Model.zip) care se auto-descarca la rularea batch-ului.

Arhiva contine urmatoarele:

A.pt partea de antrenament/train(perioada istorica IAN-01-2024 - FEB-14-2025) :
- aHistorical_01012024_02142025.xlsx ce contine datele de tran/invatare/antrenament(nu trebui splitat pt testare deoarece alte date sunt livrate pt testare)
- 2 dictionare(index-uri) unul pt coloana L(combinatia de 2 planete) si unul pt coloana N(Lconcatenat cu M si separat cu '-'):
    - bColumn_L_Signs_Symbols.xlsx
    - bColumn_N_Signs_Symbols.xlsx
  unde M este coloana categoriala de intentitati ale influentei astrale(combinatieie de 2 planete);
  dupa cum va asteptati alaturi de M  atat L cat si rezultanta lor N sunt coloane categoriale

B.pt partea de testare in (10)fisiere (splitate) zilnic:

 - restul celor 10 fisiere .xlsx cu denumite dupa sablonul Daily__MMDDYYYY.xls unde MM=02(FEB), YYYY=2025(anul curent) si DD=15-24(zilele in care s-au prelevat date de testare din luna FEB-2025)

Salut tuturor,

In acest articol o sa ne ocupam putin de platforma de *eCommerce*, [**eMag-API**](https://www.studocu.com/ro/document/universitatea-spiru-haret-bucuresti/managemaent-financiar-contabil/e-mag-marketplace-api-documentation-v4/29232142).

Aici aveti un [info-center](https://marketplace.emag.ro/infocenter/emag-academy/product-import-through-api-or-feeds/api-documentation/?lang=en) al platformei, iar aici aveti [documentatia](https://marketplace.emag.ro/documentation/api/external) API-ului(aceasta este prima versiune, deja invechita!... stiu ca in 11.03.2022 se ajunsese deja la v4.4.5!).

Acest repository [**eMAG Tech-Labs**](https://github.com/eMAGTechLabs), poate sa va ajute, ca si punct de plecare.

Daca aveti probleme cu platforma **emag-marketplace-api**(indiferent de versiune) [stackoverflow](https://stackoverflow.com/questions/78647654/emag-marketplace-api-read-product-offer-filter-not-working) va poate veni in ajutor. O alta solutie, de aceasta data una autohtona, ar fi sa cautati discutiile, aparute pe forumul romanesc [**devforum.ro**](https://devforum.ro/t/integrare-emag-prin-api/13114), cu privire la **emag-api**.

**Emag-api** nu este singura platforma de **marketplace** din Romania. Astfel ca va puteti inspira si din exemplul celor de [***CEL.ro***](https://marketplace.cel.ro/?gad_source=1&gclid=Cj0KCQiA19e8BhCVARIsALpFMgFwgOMkzksPeIm9SexSqEjW2cKGCU68tfLIcaoBKSpdTovaCuHJutgaAsjZEALw_wcB)

Pentru dezvoltatorii in **C#** va recomand sa va uitati pe acest [***test-api***](https://github.com/Usergitbit/EmagAPITest/tree/master)(asta, in cazul in care doriti sa programati de la zero interfata magazinului dvs.!). Daca sunteti in criza de timp, atunci, cel putin, uitati-va pe acest cod-sursa **C#**, [***Form1.cs***](https://github.com/Usergitbit/EmagAPITest/blob/master/EmagAPITest/Form1.cs)

Inca de la inceput, trebuie sa va spun, ca in prinicpal, din punctul de vedere al dezvoltatorului,  aveti access la acest api doar in calitate de client. Un astfel de client, scris in **python**, poate fi chiar [***acesta***](https://github.com/chawel/python-emag)(sub rezerva ca, acest cod ,nu a mai fost revizuit de multa vreme si s-ar putea, sa se refere, la o versiune mai veche a acestei platforme!)

O cautare dupa topicul [**emag**](https://github.com/topics/emag?l=php&o=asc&s=updated), pentru limbajul **php** nu aduce in prim-plan prea multe rezultate(dar trebuiesc incercate si alte subiecte legate de acestea, scrise in fel si chip, si cine stie, poate voi aveti mai mult [succes](https://github.com/MihaiCraciun88/eMag-API-Test-Tool) decat mine!). Cam la fel stau lucrurile si in cazul [CEL.ro](https://github.com/celdotro/marketplace).

Daca sunteti deja pe alte platforme cum este cazul ***Prestashop***, si doriti integrarea cu platforma **eMag**, atunci ar trebui sa incercati sa cautati si pe aceste platforme(ex. [***Prestashop***](https://www.prestashop.com/forums/topic/445986-modul-api-conectare-emagro/), desigur dupa acest/acelasi subiect(**eMag**). Dar din nou uitati-va/fiti atenti  si la ***data*** in care a avut loc conversatia!

Referitor la integrari, iata ca cei de la [**Zitec**](https://commercemarketplace.adobe.com/media/catalog/product/zitec-Zitec_Emkp-0-1-7-ce/user_guides.pdf), prin aceast *ghid utilizator*, va aduc la cunostinta anumite reguli privind utilizarea produsului, **eMAG Marketplace Plugin**.

Platforma **eMag-API** este disponibila(deocamdata), pt urmatoarele [limbi naturale](https://marketplace.emag.ro/infocenter/?cmpid=284464&utm_source=google&utm_medium=cpc&utm_campaign=Search%20Marketplace%202018&utm_content=34568669730&gad_source=1&gclid=Cj0KCQiA19e8BhCVARIsALpFMgEaUFlRtt1TBIrMH-yZd_PrKRJ4Hjbs_JrRqrFkBHzGUE2sJVdlVVQaAs7kEALw_wcB): **RO**(romana), ***BG***(bulgara), ***HU***(ungara) si ***PL***(poloneza).

Sa nu uitam ca [**ChatGPT**](https://chat.openai.com/) genereaza cod si va poate fi de mare ajutor(mai ales, in acesta situatie, cand internetul, nu prea abunda in exemple, pt acest API).
Totusi, tot acest cod, generat de catre ChatGPT, sub rezerva ca se pot strecura si greseli sau [inadvertențe](https://m.dex.ro/inadverten%C8%9B%C4%83), trebuie in prelabil testat separat, pentru ca mai apoi, sa fie inserat in aplicatiile voastre de baza/principale, deja dezvoltate pana in acel moment.

Trebuie sa va spun ca acest api nu este gratuit si in plus se adreseaza in general persoanelor juridice(PJ).
Pentru a aceesa aceasta interfata va trebui ca pe [site](https://marketplace.emag.ro/infocenter/emag-academy/?lang=en)-ul lor sa va creati un cont(inregistrati ca si utilizator) si apoi, sa va alegeti limba de dialog ca mai apoi sa furnizati informatiile de plata:
 - **IBAN***
 - **Bank account holder***
 - sa bifati daca raspunsul este afirmativ la intrebarea<br/>
   **The bank account holder is the legal company?**
 - **Bank***
 - **SWIFT***
 - **currency***
 - sa alegeti **YES**, daca raspunsul este afirmativ, sau **NO**, in caz contrar:<br/>
  **I am romanian producer?*** 
 - **Short description of company**

   ***NOTA***:<br/>
   Inainte de a furniza aceste date, cred ca ar fi bine sa contactati telefonic, sau cel putin prin email, oficialitatile eMag. pt a va asigura ca le puteti furniza cu incredere(conform GDPR), aceste date sensibile. Cel putin/macar, puteti folosi un cont curent  bancar, mai putin folosit si care nu contine o suma semnificativa!!!!





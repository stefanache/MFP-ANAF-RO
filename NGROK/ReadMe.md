Astazi(01.05.2025) am primit acest eMail, care are urmatorul Buletin-Informativ al echipei/celor de la [**NGROK**](https://ngrok.com/), cu titlul:

*NGROK este acum [activ](https://stefanache.github.io/MFP-ANAF-RO/NGROK/ngrok_index.html) pt Kubernetess(K8s)*

Acum [**NGROK**](https://ngrok.com/docs/getting-started/) usureaza 

 - accesul/ingerarea-securizat/a la mediul [Kubernetess(K8s)](https://en.wikipedia.org/wiki/Kubernetes)

Inainte de toate cateva cuvinte despre ...tinta/scopul produsului [**NGROK**](https://ngrok.com/docs/what-is-ngrok/), asupra caruia acesta([NGROK](https://foundryvtt.wiki/en/setup/hosting/ngrok)-ul), in acest articol, se concentreaza...
<br/>pe numele/denumirea sau/sa, [orchestratorul-de-containere/izolare](https://en.wikipedia.org/wiki/Containerization_(computing)) ***Kubernetess***(***K8s***).

Asadar sa facem mai intai cunostinta cu Kubernetess(K8s):

***Kubernetess*** mai este cunoscut și sub numele de ***K8s*** , este un sistem de 
<br/>orchestrare a [containerelor](https://en.wikipedia.org/wiki/Containerization_(computing)) open-source pentru 

automatizarea 

 - implementării ,
 - scalarii și
 - gestionării software-ului .

Proiectat inițial de Google , proiectul este acum întreținut de o comunitate mondială de contribuitori , 
<br/>iar marca comercială este deținută de *Cloud Native Computing Foundation(CNCF)*.

Numele ***Kubernetes*** provine din grecescul κυβερνήτης (kubernḗtēs), care înseamnă „ guvernator ”, „ cârmaci ” sau „pilot”. 

***Kubernetes*** este adesea abreviat ca ***K8s*** , numărând cele opt(8) litere dintre K și s (un numeronim ).

***Kubernetes*** asamblează unul sau mai multe computere, fie mașini virtuale , fie bare metal , într-un cluster care poate rula sarcini de lucru în containere. <br/>Funcționează cu diverse *runTime*-uri de *containere*, cum ar fi ***containerd*** și ***CRI-O***. 
<br/>Adecvarea/Potrivirea sa pentru rularea și gestionarea sarcinilor de lucru de toate dimensiunile și stilurile a dus la adoptarea sa pe scară largă în *cloud* și *centre de date*. 
<br/>Există mai multe distribuții ale acestei platforme - de la *furnizori independenți de software*(ISV), precum și oferte găzduite în cloud de la toți furnizorii majori de cloud public. 
<br/>Software-ul ***K8s*** constă dintr-un plan de control și noduri pe care rulează aplicațiile propriu-zise. 
<br/>***K8s*** include instrumente precum ***kubeadm*** și ***kubectl*** care pot fi utilizate pentru a interacționa cu API-ul său bazat pe ***REST***.

In general...Orchestratorii sunt o piesă critică a infrastructurii atunci când configurați un mediu bazat pe containere. 
<br/>Deși puteți gestiona manual *câteva(sub 5)* containere folosind ***Docker*** și un sistem de operare cum ar fi ***Windows***/***Ubuntu***-***WSL2***..., aplicațiile utilizează adesea cinci(5), zece(10) sau chiar sute(x100) de containere, ceea ce reprezintă punctul de plecare al orchestratorilor.

Orchestratoarele de containere au fost create pentru a ajuta la gestionarea containerelor la scară largă și în producție. 
<br/>Orchestratoarele oferă funcționalități pentru:

Orchestratorii vă ajută să dezvoltați aplicații containerizate la scară largă, oferind funcționalități pentru:

 - Implementare la scară largă
 - Planificarea volumului de lucru
 - Monitorizarea stării de sănătate
 - Repetarea erorii când un nod eșuează
 - Scalare în sus sau în jos
 - Rețele
 - Descoperirea serviciilor
 - Coordonarea actualizărilor aplicațiilor
 - Afinitatea nodului de cluster

Si acum cateva cuvinte despre actorul principal al acestui articol: [**NGROK**](https://www.pubnub.com/guides/what-is-ngrok/):

[**NGROK**](https://ngrok.com/docs/what-is-ngrok/) este un proxy invers distribuit la nivel global care securizează, protejează și accelerează aplicațiile și serviciile de rețea, indiferent de locul în care le rulați. 
<br/>Vă puteți gândi la ngrok ca la ușa de la intrarea în aplicațiile dumneavoastră.

**NGROK** este independent de mediu , deoarece poate livra trafic către servicii care rulează oriunde, fără modificări ale rețelei mediului dvs. 
<br/>Rulați aplicația pe AWS, Azure, Heroku, un cluster Kubernetes local, un Raspberry Pi și chiar pe laptop. 
<br/>Cu **NGROK**, totul funcționează la fel.

**NGROK** este o platformă de ingress unificată , deoarece combină toate componentele necesare pentru a livra trafic de la serviciile dvs. către internet într-una singură. 
<br/>**NGROK** consolidează proxy-ul invers, echilibratorul de încărcare, gateway-ul API, firewall-ul, rețeaua de livrare, protecția DDoS și multe altele.

Bonus, la finele acestui articol, echipa [NGROK](https://ngrok.com/docs/how-ngrok-works/) a promis ca va reveni intr-un alt artico/eMail viitor, in care se va face referire la 

 - *echilibrărea-încărcării*  - extrem de simple

*Lecturare placuta*!

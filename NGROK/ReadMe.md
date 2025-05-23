Astazi(01.05.2025) am primit acest eMail, care are urmatorul [Buletin-Informativ](https://stefanache.github.io/MFP-ANAF-RO/NGROK/ngrok_index.html) al echipei/celor de la [**NGROK**](https://ngrok.com/), cu titlul:

 - "**NGROK** este acum [activ](https://stefanache.github.io/MFP-ANAF-RO/NGROK/ngrok_index.html) pt ***Kubernetess***(***K8s***)"

Acum [**NGROK**](https://ngrok.com/docs/getting-started/) usureaza 

 - accesul/ingerarea-securizat/a la mediul [Kubernetess(K8s)](https://en.wikipedia.org/wiki/Kubernetes)

Inainte de toate, cateva cuvinte despre ...tinta/scopul produsului [**NGROK**](https://ngrok.com/docs/what-is-ngrok/), asupra caruia acesta([NGROK](https://foundryvtt.wiki/en/setup/hosting/ngrok)-ul), in acest articol, se concentreaza...
<br/>pe numele/denumirea sau/sa, [orchestratorul-de-containere/izolare](https://en.wikipedia.org/wiki/Containerization_(computing)) ***Kubernetess***(***K8s***).

<details>
<summary>Delaii despre <b>Kubernetess</b>(<b>K8s</b>)</summary>

<hr/><br/>

 -A) Asadar sa facem mai intai cunostinta cu ***Kubernetess***(***K8s***):

***Kubernetess*** mai este cunoscut și sub numele de ***K8s*** , este un sistem de 
<br/>orchestrare a [containerelor](https://en.wikipedia.org/wiki/Containerization_(computing)) open-source pentru 

automatizarea 

 - implementării ,
 - scalarii și
 - gestionării software-ului .

Proiectat inițial de Google , proiectul este acum întreținut de o *comunitate-mondială-de-contribuitori* , 
<br/>iar marca comercială este deținută de *Cloud-Native-Computing-Foundation(CNCF)*.

Numele ***Kubernetes*** provine din grecescul κυβερνήτης (kubernḗtēs), care înseamnă „ guvernator”, „cârmaci” sau „pilot”/"controller"/"manager". 

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

<br/><hr/>

</details>

Si acum intra in scena actorul principal, **NGROK**, livratorul securizat...
<details>
<summary>Detalii despre <b>NGROK</b></summary>
<hr/><br/> 

-B) Si acum cateva cuvinte despre actorul principal al acestui articol: [**NGROK**](https://www.pubnub.com/guides/what-is-ngrok/):

[**NGROK**](https://ngrok.com/docs/what-is-ngrok/) este un *proxy-invers distribuit la nivel global* care securizează, protejează și accelerează aplicațiile și serviciile de rețea, indiferent de locul în care le rulați. 
<br/>Vă puteți gândi la **NGROK** ca la ușa de la intrarea în aplicațiile dumneavoastră.

**NGROK** este independent de mediu , deoarece poate livra trafic către servicii care rulează oriunde, fără modificări ale rețelei mediului dvs. 
<br/>Rulați aplicația 
   - pe un cloud cum ar fi:
      - *AWS*,
      - *Azure*,
      - *Heroku*, sau
  - pe un *cluster Kubernetes local*,
  - pe un *Raspberry Pi* și chiar
  - pe *laptop*. 
<br/>Cu **NGROK**, totul funcționează la fel(indiferent de mediul de rulare al aplicatiiilor tale!).

**NGROK** este o platformă de *ingress/ingerare* unificată , deoarece combină toate componentele necesare, pentru a livra trafic de la serviciile dvs., către internet, într-una singură. 
<br/>**NGROK** consolidează proxy-ul invers, echilibratorul de încărcare, gateway-ul API, firewall-ul, rețeaua de livrare, protecția DDoS și multe altele.

Ce poți face cu **NGROK**?
<hr/>

***Dezvoltare*** și 

 - *Testarea Webhook-urilor* : Rulați **NGROK** pe mașina locală pentru a obține o adresă URL care să primească webhook-uri direct în aplicația pe care o dezvoltați.
   <br/>[Inspectați(interfata) și reluați cererile](https://ngrok.com/docs/agent/web-inspection-interface/) pentru o dezvoltare rapidă.
 - *Previzualizări locale* : Faceți o demonstrație a unui site-web(care rulează pe mașina locală) pentru
     - un client sau
     - o parte interesată,
<br/>fără a-l implementa pe un site-de-testare(aflat la distanta/gazduit de un hostinger/terta parte).
 - *Testarea backend-ului mobil* : Testați aplicațiile-mobile care se leaga pe / acceseaza un backend(pe care îl dezvoltați pe mașina locală).

***Intrarea*** în 
 - *API-uri în rețelele clienților : Rulați [agentul **NGROK**](https://ngrok.com/docs/agent/) ușor sau [controlerul/orchestratorul ***Kubernetes***](https://ngrok.com/docs/k8s/) în mediile clienților dvs. pentru a vă conecta în siguranță la API-urile din rețelele lor, fără o configurație complexă a rețelei.
 - API-uri pe dispozitive : Rulați **NGROK** [ca serviciu](https://ngrok.com/docs/agent/#background-service) pe dispozitivele dvs. pentru a crea adrese URL securizate pentru API-urile lor locale, permițând serviciului dvs. cloud să le controleze și să le administreze.
 - API-uri în medii de dezvoltare locale : Importați **NGROK** [ca bibliotecă](https://ngrok.com/docs/agent-sdks/ în propria interfață CLI, astfel încât să puteți crea experiențe de dezvoltare locale mai bune pentru clienții dezvoltatori.
 ***producție***
 
 - *Gateway API* : Folosește [modulele HTTP](https://ngrok.com/docs/traffic-policy/actions/) ale **NGROK** pentru a securiza, proteja, accelera și transforma traficul către API-urile tale de producție.
   
 - *Kubernetes Ingress(ingerare)* : Rulați [operatorul ***Kubernetes*** **NGROK**](https://ngrok.com/docs/k8s/) pentru a crea un ingress/o ingerare de trafic/flux/date către serviciile ***Kubernetes*** care rulează în orice cluster.
   
 - *Proxy cu funcție de identificare* : Folosește acțiunile:
   
    - [OAuth](https://ngrok.com/docs/traffic-policy/actions/oauth/) ,
    - [JWT Validation](https://ngrok.com/docs/traffic-policy/actions/jwt-validation/) sau
    - [OpenID Connect](https://ngrok.com/docs/traffic-policy/actions/oidc/)
  
   din **NGROK** pentru a federa(folosire in comun) autentificarea aplicației tale cu un furnizor de identitate.
   
 - *Load Balancer*: Folosește [Edges](https://ngrok.com/docs/universal-gateway/edges/) pentru a
     - echilibra sarcina traficului pentru
         - scalabilitate și
         - failover sau pentru a
     - face implementări
         - blue/green și
         - canary.
 
  ***la distanță***
 - *SSH* : Creați [puncte-finale/endpoints TCP](https://ngrok.com/docs/universal-gateway/tcp/) pentru a permite accesul-SSH la mașini-aflate-la-distanță.
 - *RDP* : Creați [puncte-finale/endpoints TCP](https://ngrok.com/docs/universal-gateway/tcp/) pentru a permite accesul-RDP la mașini-aflate-la-distanță.

<hr/><br/>

</details>

Bonus, la finele acestui articol, echipa [NGROK](https://ngrok.com/docs/how-ngrok-works/) a revenit cu un alt [articol](https://ngrok-21124867.hs-sites.com/ngrok-news-introducing-load-balancing-with-endpoint-pools-1?ecid=ACsprvtCOE5sYY70AC6LhWnkaUlOsFAe46p0oSK5cLw4g_PdiucHWe4l_A5NXQ7An-BqoO2p_1Om&utm_campaign=Monthly%20Newsletter&utm_medium=email&_hsenc=p2ANqtz-8wXpIKFWVE--Z4RiCtxyX5misqt8m_YM5gWFCvQVI3FODzvt1GVptasUmagZiw65R62p3cxoGfB1Wi3PzeSTOu0KtjXR8kAMjrV-c_zi1sSC6ylh4&_hsmi=362601512&utm_content=362601512&utm_source=hs_email)/[gMail](https://mail.google.com/mail/u/0/#inbox/FMfcgzQbfLbQmKjgShBFJDxxqDqNbDnH), in care a facut referire la: 

 - [*echilibrărea-încărcării*](https://github.com/stefanache/MFP-ANAF-RO/blob/main/NGROK/1832757829207277295.pdf)  - extrem de simpla(desigur... cu [NGROK](https://ngrok.com/blog-post/endpoint-pools-load-balance-anything)!):
    - [pt./intre EndPoint-uri](https://ngrok.com/blog-post/endpoint-pools-load-balance-anything?utm_campaign=may_2025_newsletter&utm_medium=newsletter&_hsenc=p2ANqtz-9odbwX3hCF4A4QiBcfmvdFc9TPfFSw62-afSZTD2RSRgYofVsi_Z0Rbnc0TKP_9Fu7iQZjywVpgL8YxF6ws-Hfn9Qt_j4y9_Ca0s9SrPasd0oQSXo&_hsmi=362601512&utm_content=blog_endpoint_pools_load_balance_anything&utm_source=email)... or see this
      <br/>[YT-HD-video: Load balance anything, anywhere with ngrok's Endpoint Pools](https://www.youtube.com/watch?v=qlLBdKCzGeE&ab_channel=ngrok)
      <br/>videoul explica elementele fundamentale ale pooling-ului între mașini virtuale(VM-uri) și clustere K8s!
    - [ pt./intre Cloud-uri](https://ngrok.com/docs/guides/other-guides/load-balancing-multiple-clouds/?utm_campaign=may_2025_newsletter&utm_medium=newsletter&_hsenc=p2ANqtz-9_RhQw7c5n2yhnhUQ_5H40g9tqGubJBN_FfY0rmZHgQl0wPzkiLKSUiLTk4IQe6sTbob7_9XhKzxaBOCJfghzIqFRlDwPoyAcbiV66pyg5E-nq0Fs&_hsmi=362601512&utm_content=docs_load_balancing_multiple_clouds&utm_source=email)
      - pt Kubernetes(K8s):
         - [intre servicii-instalate("Services Deployed") in K8s](https://ngrok.com/docs/guides/other-guides/load-balancing-kubernetes/?utm_campaign=may_2025_newsletter&utm_medium=newsletter&_hsenc=p2ANqtz-_nzwz7GfV7qg8K20JlAIJLMTIFy7UGaVbK5fI8_3xX_gV1R3l597p1MELycgXRcyNxDPVTKQc8tu6fr5grLAfXr_eNGqXhtr7R4I_2cTDOn4Wd4ak&_hsmi=362601512&utm_content=docs_load_balancing_kubernetes&utm_source=email)
         - [intre clustere-K8s](https://ngrok.com/docs/guides/other-guides/load-balancing-kubernetes-clusters/?utm_campaign=may_2025_newsletter&utm_medium=newsletter&_hsenc=p2ANqtz-97tDr5ACKXsBPtPRbg4lm2HlzKx0q2BVtlBVKpEDIF6Ly5_QvaP1jQZe4e0mUh8T_hPOwlO57BRjRnLmHASOY3tWzNRP1bCxz362f2AzHGzFBJj3M&_hsmi=362601512&utm_content=docs_load_balancing_kubernetes_clusters&utm_source=email)

[**NGROK-Agent**](https://ngrok.com/docs/agent/) poate fi o optiune ușor de utilizat în linie de comandă( a se vedea si [ghidul NGROK](https://ngrok.com/docs/getting-started/#step-1-install)), care, 
<br/>redirecționează traficul de la endpoint-urile, pe care le creează pe marginea ngrok, către serviciile aplicației din amonte(deci greu accesibile!:).

**Agentul-ngrok** este un executabil nativ independent, fără dependențe de execuție. 
<br/>Rulează pe toate sistemele de operare majore și este împachetat pentru distribuire pe cele mai populare manageri de pachete.

**Agentul ngrok** folosește un fișier de configurare ***YAML*** simplu , se poate instala singur ca serviciu nativ al sistemului de operare(OS) și are, 
<br/>de asemenea, o interfață CLI încorporată pentru apelarea API-ului **ngrok** .

[*Lecturare placuta*](https://ngrok.com/docs/guides/other-guides/using-mcp/)!

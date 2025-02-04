Salutare,

In acest [***studiu***](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf/) din seria "Rezumatelor din sfera cercetărilor **AI**", au aparut, o seama de termeni/prescurtări, des utiliza[ți/te].<br>(Multumim [**Linkedin-pulse**](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf) si [**GenAIworks**](https://www.linkedin.com/company/genaiworks/?lipi=urn%3Ali%3Apage%3Ad_flagship3_pulse_read%3Bqdtvwz5hT727bPTetmJkQA%3D%3D)!!!)

Pentru inceput, pentru a fi inteles, cu usurinta, acest articol, vom trece in revista, cativa dintre acesti termeni:

 - **LLM** - Modele de Limbaj mari(scalate la diverse marimi/scale/scalari **1B**, **3B**, **8B**, **...**).
 - **SFT** = Supervised Fine-Tuning = reglare-Fină Supravegheată.
 - **CFT** = Critique Fine-Tuning = reglare Fină Critică.
 - **RL**  = Reinforcement Learning = învățăre prin consolidare.
 - **OOD** = Out-Of-Distribution = în afara Distribuției.  
 - **GR** = [GuardReasoner](https://arxiv.org/html/2501.18492v1) = model de Gardă bazat pe Raționament(metodologia GuardReasoner; de la ***imitatie*** la **garantii**).
 - **GRT** = GuardReasonerTrain = Setul de antrenare/antrenament(train) al modelului GuardReasoner(GR)
 - **RDS** = Reasoning Data Synthesis = Sinteza Datelor de Raționament
   <br/>RDS este un mod/o varianta/un modul de abordăre privind instruirea/invatare/antrenarea pt indeplinirea sarcinilor-AI, in conformitate cu  metodologia GuardReasoner(GR).
 - **SFT** =  Supervised Fine-Tuning = ajustarea/Tunarea Fina Supervizata.  
 - **R-SFT** = Reasoning Supervised Fine-Tuning = reglaj-Fin Supravegheat bazat pe/de Raționament(Reasoning: mod/modul/model de gândire-asemănătoare omului);
   <br/>Capacitatea/Abilitatea de a raționa este crucială/extrem de importantă pentru **LLM**-uri, permițându-le să ***imite*** modele de gândire asemănătoare omului.
   <br/>R-SFT este un mod/o varianta/un modul de abordăre privind instruirea/invatare/antrenarea pt indeplinirea sarcinilor-AI, in conformitate cu  metodologia GuardReasoner(GR).
 - **DPO** = Direct Preference Optimization = Optimizarea Directă a Preferințelor(pt mostre).   
 - **HS-DPO** = Hard-Sample Direct Preference Optimization = - Optimizarea Directă a Preferințelor pentru esantioanele/[mostrele](https://www.google.com/search?q=mostre+sau+monstre&rlz=1C1CHBF_enRO1132RO1132&oq=mostre+sau+monstre&gs_lcrp=EgZjaHJvbWUyCQgAEEUYORiABDIKCAEQABgKGBYYHjIKCAIQABiABBiiBNIBCTYwMzhqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8) dure(mostre/exemple/esantioane/probe destinate invatarii/antrenamentului, si care... se află în apropierea graniței/limita de decizie/i);
   <br/>HS-DPO este un mod/o varianta/un modul de abordăre privind instruirea/invatare/antrenarea pt indeplinirea sarcinilor-AI, in conformitate cu metodologia GuardReasoner(GR).

   - **ST-TS** = Simple Test-Time Scaling = Scalarea Simpla a Timpului de Testare.
   - **CFT** = Critique Fine-Tuning = ajustarea/Tunarea-Fină Critică.

Acum sa vedem pe scurt(in rezumat), cateva ***lucrari*** abordate în / abordări din... acest [articol/studiu](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf/):

 - [***GuardReasoner: Towards Reasoning-based LLM Safeguards***](https://media.licdn.com/dms/image/v2/D4D12AQETgqODoeNclw/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609408068?e=1744243200&v=beta&t=QbYLdtFfZmuj79a0NUd7mvWuec5o8avTPALdZtYAJ5o) / [***GuardReasoner: către garanții LLM bazate pe raționament***](https://arxiv.org/pdf/2501.18492) 
   <br/>Lucrarea prezintă GuardReasoner(**GR**), o nouă protecție pentru **LLM**, concepută pentru a spori siguranța prin etalarea unor capacități de raționament.
   <br/>Autorii creează setul de date GuardReasonerTrain(**GRT**), care cuprinde 127.000 de mostre cu 460.000 de pași de raționament detaliați și folosesc reglarea fină supravegheată de raționament/invatare(**R-SFT**) și optimizarea preferințelor directe ale mostrelor dure(**HS-DPO**) pentru a îmbunătăți abilitățile de raționament ale modelului. 
<br/><br/>Datele de antrenament, codul și modelele(**LLM**-urile) utilizate, de diferite scale/scalari(**1B**, **3B**, **8B**), sunt open source(sursă deschisă...in vederea studiului, modificarilor...).<br/>
<br/>**LLM**-urile sunt din ce în ce mai integrate în diverse domenii, dar sunt vulnerabile la/unor ***manipulări rău-intenționate***(de unde si termenul de **guard**=garda/garanție!).
<br/>Modelele de gardă(care ofera garanții) existente, deși eficiente, suferă de limitări în performanță, explicabilitate și generalizare. 
<br/>GuardReasoner(**GR**) abordează aceste probleme prin deblocarea și îmbunătățirea abilităților de raționament ale modelelor de gardă(care ofera garanții de protectie impotriva manipularilor rau-voitoare, atunci cand, antrenarea are loc pe seturi de date inselatoare, sau cu continut compromitator/daunator/dur sau daca vreti abraziv).<br/>
<br/>Experimente și rezultate(studii de  [ablație/indepărtarea nocivitații](https://dexonline.ro/intrare/abla%C8%9Bie/62), studii de masurare a eficienței si performanțelor...<br/>
<br/>1. GuardReasoner 8B(**GR-8B**) realizează cele mai bune performanțe în sarcinile de detectare a nocivității prompte și a celei de răspuns, depășind/întrecând/concurând atât modelele open-source(sursă deschisă), cât și cele cu sursă închisă.
<br/>2. GuardReasoner(**GR**) oferă pașii detaliați de raționament, sporind transparența și ajutând la corectarea probelor/mostrelor etichetate greșit.
<br/>3. Modelul(**GR**) funcționează independent de categoriile fixe, recunoscând conținutul dăunător deschis, îmbunătățind astfel generalizarea.
<br/><br/>[Lucrarea](https://arxiv.org/pdf/2501.18492) evidențiază dezvoltarea unui model de gardă(cum este **GR**) pentru a atenua riscurile potențiale și impactul dăunător al[e]/asupra **LLM**-urilor, contribuind la integrarea mai sigură a **AI** în societate.<br/>
 
 - [***s1: Simple Test-Time Scaling***](https://media.licdn.com/dms/image/v2/D4D12AQGAMOOG_LIz-w/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609419796?e=1744243200&v=beta&t=Ftsru31-7BNv1egojySpq3atw2MXXPnqoMiB5F97TIM) / [***s1: Scalare simplă a timpului de testare***](https://arxiv.org/pdf/2501.19393)
   <br/>Lucrarea prezintă **s1**, o nouă abordare a scalarii timpului de testare pentru modelele de limbaj, care își propune să îmbunătățească performanța prin utilizarea calculului suplimentar în timpul testării.
   <br/>Inspirați de modelul **o1** al ***OpenAI***, autorii organizează un mic set de date, **s1K**, format din 1.000 de întrebări asociate cu urme de raționament.
   <br/>Modelul, datele și codul sunt open source(sursă deschisă).<br/>
<br/>Scalarea timpului de testare(**ST-TS**), care crește calculul în timpul testării pentru a îmbunătăți performanța, a atras atenția, în special cu modelul **o1** al ***OpenAI***.<br/> 
<br/>Autorii își propun să găsească cea mai simplă abordare pentru a obține atât scalarea timpului de testare, cât și performanța puternică a raționamentului.<br/> 
<br/>Ei organizează un set de date mic, **s1K**, și dezvoltă forțarea bugetului pentru a controla calcularea timpului de testare, ceea ce duce la un model de raționament puternic care se scalează cu mai multe calcule în timpul testării.<br/>
<br/>Depășește[Concură/Concurează](https://gresit.ro/concura-sau-concureaza.html) cu modelul/LLM **o1-preview** al ***OpenAI*** la întrebările de matematică ale competiției și este modelul de raționament cu cel mai eficient eșantion(sample).

 - [***Critique Fine-Tuning: Learning to Critique is More Effective than Learning to Imitate***](https://media.licdn.com/dms/image/v2/D4D12AQFto_Ylz-JZRw/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609430306?e=1744243200&v=beta&t=J9gmmy-NsLmShTXbFLsuOGghvSjg9Fnn4aZwZq1fG4g) / [***Ajustarea/tunarea-Fină critică: a învăța să critici - este mai eficient decât - a învăța să imite***](https://arxiv.org/pdf/2501.17703)
   <br/>Autorii validează eficacitatea **CFT** folosind un set de date de 50.000 de mostre/esantioane de la **WebInstruct**, cu critici generate de **GPT-40**.
   <br/>**CFT** depășește constant **SFT** la șase repere matematice cu diferite modele de bază, obținând o îmbunătățire cu 4-10%.<br/> 
   <br/>Lucrarea propune Critique Fine-Tuning (**CFT**), care mută accentul de la imitație la învățarea bazată pe critică, inspirată de procesele de învățare umană care pun accent pe gândirea critică și feedback-ul constructiv.<br/>
   <br/>Autorii creează un set de date de 50.000 de mostre/esantioane din **WebInstruct**, folosind **GPT-40** pentru a genera critici pentru răspunsurile zgomotoase(/considerate ca fiind criticabile/gresite).<br/>
   <br/>CFT depășește constant **SFT **la șase repere matematice, obținând o îmbunătățire cu 4-10%.
   <br/> Autorii susțin că **CFT** reprezintă un pas semnificativ înainte în a face formarea modelului lingvistic(**LLM**) și mai eficientă.<br/>
   

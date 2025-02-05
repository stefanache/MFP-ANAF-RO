*Salutare* si ... *Bun venit* la ...  

 [**Linkedin: AI Research Roundup**](https://www.google.com/search?q=AI+Research+Roundup&rlz=1C1CHBF_enRO1132RO1132&oq=AI+Research+Roundup&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg8MgYIAhBFGDwyBggDEEUYPNIBCTE3NTBqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8)

... din această săptămână,  unde se explorează:
 - cele mai recente progrese în modelele **AI**,
 - tehnici de antrenament și ...
 - îmbunătățiri bazate pe raționament. 

Săptămâna aceasta, se evidențiaza lucrări referitoare la ...
 - a)îmbunătățirea siguranței(garantii de siguranta ale...) modelului lingvistic,
 - b)scalarea capacităților de raționament în timpul testului,
 - c)perfecționarea instruirii prin învățarea bazată pe critici,
 - d1)avansarea in **AI**-multimodală și ...<br/>d2)contrastarea/compararea reglajului-fin supervizat(**SFT**) cu/vs. învățarea de consolidare(**RL**). 

<br>(Multumim [**Linkedin-pulse**](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf) - in calitare de *editor/publicator* si [**GenAIworks**](https://www.linkedin.com/company/genaiworks/?lipi=urn%3Ali%3Apage%3Ad_flagship3_pulse_read%3Bqdtvwz5hT727bPTetmJkQA%3D%3D) - in calitate de *autor/postator*!!!)

Hai să ne scufundăm(mai bine zis sa aprofundăm toate aceste subiecte)!

In acest [***studiu***](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf/) complex, care se refera la seria "*Rezumatelor din sfera cercetărilor **AI***", au aparut, o seama de <br/>termeni/prescurtări, des utiliza[ți/te].

Pentru inceput, pentru a intelege cu usurinta, acest articol/săptămânal, vom trece in revistă, cativa dintre acesti termeni:

 - [**LLM**](https://en.wikipedia.org/wiki/Large_language_model) - Large Language Model = Modele mari de Limbaj(scalate la diverse marimi/scale/scalari **1B**, **3B**, **8B**, **...**).
 - [**VML**](https://encord.com/blog/vision-language-models-guide/) - Vision-Language Models = Modele de Limbaj Vizual.<br/>
 - [**FT**](https://en.wikipedia.org/wiki/Fine-tuning_(deep_learning)) = Fine-Tuning = reglare/Tunare-Fina.
 - [**SFT**](https://huggingface.co/docs/trl/sft_trainer) = Supervised Fine-Tuning = reglare-Fină Supravegheată.
 - [**CFT**](https://arxiv.org/pdf/2501.17703?) = Critique Fine-Tuning = reglare Fină Critică.
 - [**RL**](https://en.wikipedia.org/wiki/Reinforcement_learning)  = Reinforcement Learning = învățăre prin consolidare/întărire(cu o recompensă bazată pe rezultate).
 - [**OOD**](https://paperswithcode.com/task/ood-detection) = Out-Of-Distribution = ([detectia](https://www.sciencedirect.com/science/article/abs/pii/S0950705125000231)) în(of)-afara(out)-Distribuției.  
 - [**GR**](https://huggingface.co/papers/2501.18492) = [GuardReasoner](https://arxiv.org/html/2501.18492v1) = model de Gardă bazat pe Raționament(metodologia GuardReasoner; de la ***imitatie*** la **garantii**).
 - [**GRT**](https://github.com/yueliu1999/guardreasoner) = GuardReasonerTrain = Setul de antrenare/antrenament(train) al modelului GuardReasoner(GR)
 - [**RDS**](https://arxiv.org/abs/2403.02333) = Reasoning Data Synthesis = Sinteza Datelor de Raționament
   <br/>RDS este un mod/o varianta/un modul de abordăre privind instruirea/invatare/formarea/antrenarea pt indeplinirea sarcinilor-AI, in conformitate cu  metodologia GuardReasoner(GR).
 - [**SFT**](https://huggingface.co/docs/trl/sft_trainer) =  Supervised Fine-Tuning = ajustarea/Tunarea Fina Supervizata.  
 - [**R-SFT**](https://www.invisible.co/blog/what-is-supervised-fine-tuning) = Reasoning Supervised Fine-Tuning = reglaj-Fin Supravegheat bazat pe/de Raționament(Reasoning: mod/modul/model de gândire-asemănătoare omului);
   <br/>Capacitatea/Abilitatea de a raționa este crucială/extrem de importantă pentru **LLM**-uri, permițându-le să ***imite*** modele de gândire asemănătoare omului.
   <br/>R-SFT este un mod/o varianta/un modul de abordăre privind instruirea/invatare/formarea/antrenarea pt indeplinirea sarcinilor(***tasks***)-**AI**, in conformitate cu  metodologia GuardReasoner(**GR**).
 - [**DPO**](https://arxiv.org/abs/2305.18290) = Direct Preference Optimization = Optimizarea Directă a Preferințelor(pt mostre/esantioane/samples).   
 - [**HS-DPO**](https://www.threads.net/@theturingpost/post/DFgdZq7MRJ_) = Hard-Sample Direct Preference Optimization = - Optimizarea Directă a Preferințelor pentru esantioanele/[mostrele](https://www.google.com/search?q=mostre+sau+monstre&rlz=1C1CHBF_enRO1132RO1132&oq=mostre+sau+monstre&gs_lcrp=EgZjaHJvbWUyCQgAEEUYORiABDIKCAEQABgKGBYYHjIKCAIQABiABBiiBNIBCTYwMzhqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8) dure(mostre/exemple/esantioane/probe destinate invatarii/antrenamentului, si care... se află în apropierea graniței/limita de decizie/i);
   <br/>HS-DPO este un mod/o varianta/un modul de abordăre privind instruirea/invatare/antrenarea pt indeplinirea sarcinilor-AI, in conformitate cu metodologia GuardReasoner(**GR**).<br/> 

 - [**ST-TS**](https://arxiv.org/abs/2501.19393) = Simple Test-Time Scaling = Scalarea Simpla a Timpului de Testare.
 - [**CFT**](https://github.com/TIGER-AI-Lab/CritiqueFineTuning) = Critique Fine-Tuning = ajustarea/Tunarea-Fină Critică.

Acum sa vedem pe scurt(in rezumat), cateva ***lucrari*** abordate în / ***abordări*** din... acest complex [articol/studiu](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf/):

 - [a)***GuardReasoner: Towards Reasoning-based LLM Safeguards***](https://media.licdn.com/dms/image/v2/D4D12AQETgqODoeNclw/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609408068?e=1744243200&v=beta&t=QbYLdtFfZmuj79a0NUd7mvWuec5o8avTPALdZtYAJ5o) / [***GuardReasoner: către garanții LLM bazate pe raționament***](https://arxiv.org/pdf/2501.18492) 
   <br/>Lucrarea prezintă GuardReasoner(**GR**), o nouă protecție pentru **LLM**, concepută pentru a spori siguranța prin etalarea unor capacități de raționament.
   <br/>Autorii creează setul de date GuardReasonerTrain(**GRT**), care cuprinde **127.000** de *mostre*/*esantioane*(samples) cu **460.000** de *pași* detaliați de raționament  și folosesc reglarea fină supravegheată de raționament/invatare(**R-SFT**) și optimizarea preferințelor directe ale mostrelor dure(**HS-DPO**) pentru a îmbunătăți abilitățile de raționament ale modelului. 
<br/><br/>Datele de antrenament, codul și modelele(**LLM**-urile) utilizate, de diferite scale/scalari(**1B**, **3B**, **8B**), sunt open source(sursă deschisă...in vederea studiului, modificarilor...).<br/>
<br/>**LLM**-urile sunt din ce în ce mai integrate în diverse domenii, dar sunt vulnerabile la/unor ***manipulări rău-intenționate***(de unde si termenul de **guard**=garda/garanție!).
<br/>Modelele de gardă(care ofera garanții) existente, deși eficiente, suferă de limitări în performanță, explicabilitate și generalizare. 
<br/>GuardReasoner(**GR**) abordează aceste probleme prin deblocarea și îmbunătățirea abilităților de raționament ale modelelor de gardă(care ofera garanții de protectie impotriva manipularilor rau-voitoare, atunci cand, antrenarea are loc pe seturi de date inselatoare, sau cu continut compromitator/daunator/dur sau daca vreti abraziv).<br/>
<br/>Experimente și rezultate(studii de  [ablație/indepărtarea](https://dexonline.ro/intrare/abla%C8%9Bie/62)  nocivitații, studii de masurare a eficienței si performanțelor...<br/>
<br/>1. GuardReasoner 8B(**GR-8B**) realizează cele mai bune performanțe în sarcinile de detectare a nocivității prompte și a celei de răspuns, depășind/întrecând/concurând atât modelele open-source(sursă deschisă), cât și cele cu sursă închisă.
<br/>2. GuardReasoner(**GR**) oferă pașii detaliați de raționament, sporind transparența și ajutând la corectarea probelor/mostrelor etichetate greșit.
<br/>3. Modelul(**GR**) funcționează independent de categoriile fixe, recunoscând conținutul dăunător deschis, îmbunătățind astfel generalizarea.
<br/><br/>[Lucrarea](https://arxiv.org/pdf/2501.18492) evidențiază dezvoltarea unui model de gardă(cum este **GR**) pentru a atenua riscurile potențiale și impactul dăunător al[e]/asupra **LLM**-urilor, contribuind la integrarea mai sigură a **AI** în societate.<br/>
 
 - b)[***s1: Simple Test-Time Scaling***](https://media.licdn.com/dms/image/v2/D4D12AQGAMOOG_LIz-w/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609419796?e=1744243200&v=beta&t=Ftsru31-7BNv1egojySpq3atw2MXXPnqoMiB5F97TIM) / [***s1: Scalare simplă a timpului de testare***](https://arxiv.org/pdf/2501.19393)
   <br/>Lucrarea prezintă **s1**, o nouă abordare a scalarii timpului de testare pentru modelele de limbaj, care își propune să îmbunătățească performanța prin utilizarea calculului suplimentar în timpul testării.
   <br/>Inspirați de modelul **o1** al ***OpenAI***, autorii organizează un mic set de date, **s1K**, format din **1.000** de *întrebări* asociate cu *urme de raționament*.
   <br/>Modelul, datele și codul sunt open source(sursă deschisă).<br/>
<br/>Scalarea timpului de testare(**ST-TS**), care crește calculul în timpul testării pentru a îmbunătăți performanța, a atras atenția, în special cu modelul **o1** al ***OpenAI***.<br/> 
<br/>Autorii își propun să găsească cea mai simplă abordare pentru a obține atât scalarea timpului de testare, cât și performanța puternică a raționamentului.<br/> 
<br/>Ei organizează un set de date mic, **s1K**, și dezvoltă forțarea bugetului pentru a controla calcularea timpului de testare, ceea ce duce la un model de raționament puternic care se scalează cu mai multe calcule în timpul testării.<br/>
<br/>Depășește[Concură/Concurează](https://gresit.ro/concura-sau-concureaza.html) cu modelul/LLM **o1-preview** al ***OpenAI*** la întrebările de matematică ale competiției și este modelul de raționament cu cel mai eficient eșantion(sample).

 - c)[***Critique Fine-Tuning: Learning to Critique is More Effective than Learning to Imitate***](https://media.licdn.com/dms/image/v2/D4D12AQFto_Ylz-JZRw/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609430306?e=1744243200&v=beta&t=J9gmmy-NsLmShTXbFLsuOGghvSjg9Fnn4aZwZq1fG4g) / [***Ajustarea/tunarea-Fină critică: a învăța să critici - este mai eficient decât - a învăța să imite***](https://arxiv.org/pdf/2501.17703)
   <br/>Autorii validează eficacitatea **CFT** folosind un set de date de **50.000** de *mostre*/*esantioane*(samples) de la [**WebInstruct**](https://tiger-ai-lab.github.io/MAmmoTH2/) / [***HF***](https://huggingface.co/datasets/TIGER-Lab/WebInstructSub), cu critici generate de [**GPT-4o**](https://openai.com/index/hello-gpt-4o/).
   <br/>[**CFT**](https://tiger-ai-lab.github.io/CritiqueFineTuning/) depășește constant [**SFT**](https://www.linkedin.com/posts/techsachinkumar_critique-fine-tuning-teaching-llm-models-activity-7290893014795710466-24cQ) la șase(**6**) repere/benchmark-uri/standuri de testare matematice(**MATH**, **Minerva-Math**, **GSM8K**, **OlympiadBench**, American Invitational Mathematics with -Examination: **AIME24** and Competitions: **AMC23**) cu diferite modele de bază(LLM: ***Qwen2.5***, ***Qwen2.5-Math*** si ***DeepSeek-Math***), obținând o îmbunătățire cu/intre **4**-**10***%*.<br/> 
   <br/>Lucrarea propune Critique Fine-Tuning ([**CFT**](https://arxiv.org/html/2501.17703v1)), care mută accentul de la imitație la învățarea bazată pe critică, inspirată de procesele de învățare umană care pun accent pe gândirea critică și feedback-ul constructiv.<br/>
   <br/>Autorii creează un set de date de **50.000** de *mostre*/*esantioane* din [**WebInstruct**](https://github.com/TIGER-AI-Lab/MAmmoTH2) / [**HF**](https://huggingface.co/datasets/TIGER-Lab/WebInstruct-CFT), folosind [**GPT-4o**](https://openai.com/index/gpt-4o-and-more-tools-to-chatgpt-free/) pentru a genera critici pentru răspunsurile zgomotoase(/considerate ca fiind criticabile/gresite).<br/>
   <br/>[**CFT**](https://medium.com/@techsachin/critique-fine-tuning-teaching-llm-models-to-critique-and-analyze-responses-0a603c95e900) depășește constant [**SFT**](https://www.researchgate.net/figure/Training-dynamics-comparison-of-different-methods-on-Qwen25-Math-7B-across-key_fig1_388495470) la șase repere matematice, obținând o îmbunătățire cu/intre **4**-**10***%*.
   <br/> Autorii susțin că [**CFT**](https://arxiv.org/abs/2501.17703) reprezintă un pas semnificativ înainte în a face formarea modelului lingvistic([**LLM**](https://x.com/askalphaxiv/status/1885848467307745559)) și mai eficientă.<br/>

 - d1)[***Baichuan-Omni-1.5 Technical Report: Pushing the Boundaries of Omni-Modal AI with 73.3 Benchmark Mastery***](https://media.licdn.com/dms/image/v2/D4D12AQHaviv9ZKEfHA/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609441226?e=1744243200&v=beta&t=xu8DVC0orT18YUEBWfme_88Cz97DwtUdRRCNJ4xgP4E) / [***Raport tehnic Baichuan-Omni-1.5: Depășirea limitelor AI omni-modale cu 73.3 Benchmark Mastery***](https://arxiv.org/abs/2501.15368)
     <br/>**Baichuan-Omni-1.5**, un model omnimodal avansat dezvoltat de ***Baichuan Inc***.
     <br/> Acest model este conceput pentru a înțelege și a genera conținut în mai multe modalități(multi-modal), inclusiv text, imagini, audio și video.<br/> 
     <br/>Modelul poate procesa și genera text și vorbire de înaltă calitate din intrări text, imagine, audio și video, permițând interacțiuni intermodale fără întreruperi.
     <br/>**Baichuan-Omni-1.5** atinge un scor mediu de **73,3** la zece benchmark-uri de înțelegere a imaginii, depășind alte modele precum **GPT-4o-mini**.</br/>
     <br/>Modelul este antrenat pe aproximativ 500 de miliarde de puncte de date multimodale de înaltă calitate, folosind o strategie de antrenament în mai multe etape care integrează-progresiv alinierea(aducerea la acelasi numitor comun) multi-modală și reglarea fină(**fine-tuning**) a mai multor sarcini.<br/>
     <br/>Canalul de instruire/invatare/formare/antrenare(training) implică etape care încorporează-progresiv viziunea(imagine,video) și audio în **LLM**(eminamente textual), urmate de reglaj-fin(**fine-tuning**) supravegheat cu date omni-modale.<br/>

     <br/>d2)[***SFT-Memorizes, RL-Generalizes: A Comparative Study of Foundation Model Post-training***](https://media.licdn.com/dms/image/v2/D4D12AQECyR29nuOTPg/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609451688?e=1744243200&v=beta&t=Wfqmd54SFNi3uhaGABY2NYPDNUaAOtsuAw3lrBaUqkE) / [***SFT-memorează, RL-generalizează: Un studiu comparativ al modelului de fundație post-formare/antrenare***](https://arxiv.org/pdf/2501.17161)
   <br/>Această lucrare investighează efectele reglajului fin supravegheat (**SFT**) și ale învățării prin consolidare (**RL**) asupra capacităților de generalizare și memorare ale modelelor de bază(**LLM**), concentrându-se atât pe mediile bazate pe text, cât și pe cele vizuale(imagini/video).<br/> 
<br/>*Comparatie*: **Generalizare** *versus*(*vs.*) **Memorare**:<br/>
<br/>**RL Generalizes**: **RL**, mai ales atunci când este antrenat/întărit cu o recompensă bazată pe rezultate, arată o generalizare mai bună atât în ​​mediile textuale, cât și în cele vizuale(imagine,video) bazate pe reguli.<br/>
<br/>**SFT-Memorizes**: **SFT** tinde să memoreze datele de antrenament și se luptă să generalizeze la scenarii în afara distribuției([**OOD**](https://arxiv.org/abs/2308.10261)).<br/>
<br/>**RL** îmbunătățește capacitățile de recunoaștere vizuală de bază ale modelului, contribuind la o generalizare îmbunătățită în domeniile vizuale.
<br/>**SFT** este încă util pentru antrenamentul RL eficient, deoarece stabilizează formatul de ieșire al modelului, permițând RL ulterior să obțină câștiguri de performanță.<br/>
<br/>**RL** îmbunătățește constant performanța [**OOD**](https://encord.com/blog/what-is-out-of-distribution-ood-detection/) în toate sarcinile, în timp ce **SFT** arată o degradare a performanței.
<br/>Creșterea calculului **RL** îmbunătățește acuratețea recunoașterii vizuale în [**VLM**](https://encord.com/blog/vision-language-models-guide/)-uri, în timp ce scalarea **SFT** deteriorează atât recunoașterea vizuală, cât și performanța generală.<br/>
<br/>Lucrarea demonstrează că **RL** este superior **SFT** în dobândirea de cunoștințe generalizabile în sarcini complexe, multimodale.
<br/>Cu toate acestea, **SFT** este încă crucial pentru stabilizarea formatului de ieșire al modelului, permițând antrenamentul **RL** eficient.<br/>

   

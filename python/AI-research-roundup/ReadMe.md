*Salutare* si ... *Bun venit* la ...  

 [**Linkedin: AI Research Roundup**](https://www.google.com/search?q=AI+Research+Roundup&rlz=1C1CHBF_enRO1132RO1132&oq=AI+Research+Roundup&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg8MgYIAhBFGDwyBggDEEUYPNIBCTE3NTBqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8)

... din această săptămână,  unde se explorează:
 - cele mai recente progrese în *modelele*-**AI**(***LLM***-uri),
 - tehnici de *antrenament* și ...
 - îmbunătățiri bazate pe *raționament*. 

Săptămâna aceasta, se evidențiaza lucrări referitoare la ...
 - a)îmbunătățirea siguranței(garantii de siguranta=**GR** ale...) modelului lingvistic(**LLM**),
 - b)scalarea capacităților de *raționament* în timpul testului(**s1**),
 - c)perfecționarea *instruirii/antrenarii/formarii* prin învățarea(*learning*) bazată pe *critici*(**C*FT***),
 - d1)avansarea in **AI**-multimodală(LLM: ***Baichuan-Omni-1.5***) și ...<br/>d2)contrastarea/compararea *reglajului-fin*(***FT***) supervizat(**S*FT***) cu/**vs.** învățarea de consolidare/intarire/recompensa(**RL**). 

<br>(Multumim [**Linkedin-pulse**](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf) - in calitare de *editor/publicator* si [**GenAIworks**](https://www.linkedin.com/company/genaiworks/?lipi=urn%3Ali%3Apage%3Ad_flagship3_pulse_read%3Bqdtvwz5hT727bPTetmJkQA%3D%3D) - in calitate de *autor/postator*!!!)

Hai să ne *scufundăm*(mai bine zis... sa *aprofundăm*.... toate aceste subiecte)!

In acest [***studiu***](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf/) complex, care se refera la seria "*Rezumatelor din sfera cercetărilor **AI***", au aparut, o seama de <br/>termeni/prescurtări, des utiliza[ți/te].

Pentru inceput, pentru a intelege cu usurinta, acest articol/săptămânal, vom trece in revistă, cativa dintre acesti termeni:

 - [**LLM**](https://en.wikipedia.org/wiki/Large_language_model) - Large Language Model = Modele mari de Limbaj(scalate la diverse marimi/scale/scalari **1B**, **3B**, **8B**, **...**).
   <br/>Un *model de limbă/Limbaj mare* (**LLM**) este un tip de model de învățare automată(**ML**) conceput pentru sarcini de procesare a limbajului natural(**NLP**), cum ar fi generarea limbajului.
   <br/>**LLM**-urile sunt modele lingvistice cu mulți parametri și sunt instruite/antrenate/invatate/formate cu învățare auto-supravegheată([**SAL**](https://en.wikipedia.org/wiki/Supervised_learning)) pe o cantitate mare de text.
 - [**VML**](https://encord.com/blog/vision-language-models-guide/) - Vision-Language Models = Modele Vizuale de Limbaj .<br/>
 Aceste modele(**VML**) pot procesa și înțelege modalitățile de limbaj (text) și viziune (imagine) simultan pentru a efectua sarcini avansate de limbaj-viziune/vizual, cum ar fi *răspunsul la întrebări vizuale* ([**VQA**](https://vision-explorer.allenai.org/visual_question)), *subtitrărea imaginilor* și *căutarea text-la-imagine*;
 <br/> Aceste modele pot fi folosite(in mod repetat/recursiv) si in cazul *video*/*videoclip*-urilor, dat fiind faptul ca un *video* este o insiruire de mai multe cadre/imagini(*sprite*-uri). Deci video=**{**imagini**}**.
 - [**FT**](https://en.wikipedia.org/wiki/Fine-tuning_(deep_learning)) = Fine-Tuning = reglare/Tunare-Fina.
   <br/>În *învățarea-profundă*(**DL**) , *reglarea-fină*([**FT**](https://www.linkedin.com/pulse/building-fine-tuning-large-language-model-generative-ai-tazkera-haque-y8bcc/)) este o abordare/varianta a *transferului-de-învățare*, varianta în care, *parametrii-unui-model*(**LLM**) de *rețea-neuronală*([**NN**](https://en.wikipedia.org/wiki/Neural_network)) **pre-antrenată**, sunt antrenați/invațați/acordați/modificați/ajustați, pe/la *date-noi*.
   <br/>*Reglarea-fină*([**FT**](https://www.google.com/search?sca_esv=744faba34f407743&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zrr0TLZFmUEEwoawJ0AwF5IOI0fkA:1738759617183&q=.avi+fine+tuning+ai+model+llm&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGls0vqphpL9nGKy0PrLJqseLh0EQ6IW_YF9DHIKeRA2FImZJj7_nGLmr0IdZilOghZzNgMFk3aJ_aCLgBcYPfMMnTtkxvIFSifbF8fUw2Jv7wsjn4EFAru9uCvKItEWlh6Msc2bc_waqIcpbvO3hgkPwNEnEn1FFfLcV0CGEYhkFgRYo-ax&sa=X&ved=2ahUKEwih1tOqyKyLAxVcVfEDHfgkAi0QtKgLegQIDBAB&biw=1920&bih=911&dpr=1)) se poate face pe <ins>întreaga</ins> *rețea-neuronală*(**NN**), sau doar pe un *<ins>subset-de-straturi</ins>* ale *acesteia*(**NN**), caz în care, *straturile*, care *<ins>nu</ins> sunt reglate-fin*(**FT**), sunt „*înghețate*”(adică, acele *straturi*, [rămân](https://dexonline.ro/definitie/r%C4%83m%C3%AEn/701200) *<ins>ne</ins>modificate*/*<ins>nu</ins> sunt modificate*, în timpul *retro-propagarii*).
   <br/>Un *model*(**LLM**) poate fi, de asemenea, *<ins>mărit</ins>* cu „*adaptoare*”, care constau din/au mult-mai-puțini *parametrii*, decât *modelul-original*(**LLM**) și  care(**LLM**), apoi este reglat-fin(**FT**), într-un mod eficient(*Parameter-Efficient-Fine-Tuning*=**PEFT**), din punct de vedere(d.p.d.v.) al *parametrilor* sai, prin reglarea/ajustarea/acordarea *greutăților-adaptoarelor*(a se vedea si... Implementarea/ajustarea-**PEFT** eficienta prin *Low-Rank Adaptation*=**LoRA**) și/dar lăsând, restul *greutăților-modelului*(**LLM**), *înghețate*.
 - [**SFT**](https://huggingface.co/docs/trl/sft_trainer) = Supervised Fine-Tuning = reglare-Fină Supravegheată(Etichetată/Clasificată/Categorisită corespunzator).
   <br/>*Tunajul/Reglajul-fin(**FT**) supravegheat*(**S*FT***) este utilizat, în mod obișnuit, pt **antrenarea** *model*elor de limbaj(**LLM**), in a <ins>imita</ins>|<ins>cauta</ins>&<ins>reda</ins> *răspunsurile*-*adnotate*(etichetate), la instrucțiunile/regulile/cerintele/task-urile date/incredintate/cerute.
 - [**CFT**](https://arxiv.org/pdf/2501.17703?) = Critique Fine-Tuning = reglare-Fină Critică.
   <br/>*Tunarea/Reglarea-Fina(**FT**) Critică*(**C*FT***), este o strategie, în care *model*ele(**LLM**), învață să *critice*, răspunsurile zgomotoase(care d.p.d.v al sarcinii, sunt...partial|>**100%** sau total|=**100%** gresite=adica raspunsurile care au/poseda un **grad**=**procent**=**?** ***%*** de **incorectitdine**), mai degrabă/în loc să/decât să le *imite*... pe cele corecte(total-corecte=**100%** *corecte* = **0%** *incorecte*).
    <br/>Inspirat de *învățarea-umană*(procese care pun accent pe gândirea critică), **C*FT*** încurajează analiza mai profundă și nenuanțat(ă) - de înțelegere — trăsături adesea trecute cu vederea de către standardul **S*FT***.
 - [**RL**](https://en.wikipedia.org/wiki/Reinforcement_learning)  = Reinforcement Learning = învățăre prin consolidare/întărire(cu o recompensă bazată pe rezultate).
   <br/>*învățare prin întărire* -este un termen provenit din- psihologie(a se vedea subiectele [*întărire*](https://en.wikipedia.org/wiki/Reinforcement) și [*condiționare operantă*](https://en.wikipedia.org/wiki/Operant_conditioning)).
   <br/><br/>Încadrarea tipică a unui scenariu de *învățare prin întărire*([**RL**](https://en.wikipedia.org/wiki/Reinforcement_learning)):<br/>
   - un [agent](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Reinforcement_learning_diagram.svg/500px-Reinforcement_learning_diagram.svg.png) întreprinde **acțiuni** într-un *mediu*, care sunt
     - interpretate/evaluate/observate/recompensate/[răsplătite](https://dexonline.ro/definitie/par%C3%A0nd%C4%83r%C4%83t/534761) ca-o/într-o <ins>*recompensă*</ins> și
     - reprezentate de o *stare*,
     care sunt transmise <ins>agentului</ins>.

   *Învățarea prin consolidare*(**RL** ) este o zonă interdisciplinară a **învățării automate(ML**)** și a **controlului optim**, preocupată de(care se ocupa de_ modul în care un <ins>agent-inteligent</ins> ar trebui să ia **acțiuni** într-un *mediu-dinamic* pentru a maximiza un <ins>*semnal-de-recompensă*</ins>.
   <br/>*Învățarea prin consolidare*(**RL**) este una dintre cele trei(3) paradigme/modele/posibilitati/variante de bază(principale) ale ***învățării automate(ML)***, alături de **învățarea-supervizată/supravegheată/etichetată(SL-supervised-learning)** și de **învățarea-nesupravegheată/nesupervizată/neetichetată(unSL-unsupervised-learning)**.
 - [**OOD**](https://paperswithcode.com/task/ood-detection) = ***Out***-*Of*-**Distribution** = ([detectia](https://www.sciencedirect.com/science/article/abs/pii/S0950705125000231)) în(*Of*)-afara(***Out***)-Distribuției(**Distribution**).
   <br/>*Detectarea Out of Distribution*(**OOD**) este sarcina de a *detecta-instanțe*, care *nu aparțin distribuției*, pe care a fost *instruit/invatat/antrenat/format* **clasificatorul**.
   <br/>***Datele***-**OOD** sunt adesea denumite ***date***-„*nevăzute*”, deoarece *model*ul(**LLM**-ul) nu le-a *întâlnit/văzut* în timpul **antrenament***ului*.<br/>
   <br/>*Detectarea-***OOD*** este de obicei efectuată prin**antrenarea/invatarea/formarea** unui *model*(**LLM**) pentru a distinge între ***datele***-*în*-*Distribuție*(**ID = In-Distribution**), pe care *model*ul(**LLM**-ul) le-a *văzut* în timpul **antrenamentului* și **datele**-**OOD**, pe care <ins>*nu*</ins> le-a *văzut*.
   <br/>Acest lucru poate fi realizat folosind o varietate de *tehnici*, cum ar fi ***antrenarea***(separat/ă) a unui ***detector***-**OOD**,  ori ***modificarea***-**arhitecturii** sau modificarea [**funcției-de-pierdere**](https://ro.eitca.org/artificial-intelligence/eitc-ai-adl-advanced-deep-learning/advanced-computer-vision/convolutional-neural-networks-for-image-recognition/what-is-the-mathematical-formula-for-the-loss-function-in-convolution-neural-networks/), a modelului(**LLM**-ului), pentru a-l(pe **LLM**) face mai sensibil, la ***datele***-**OOD**.<br/>  
 - [**GR**](https://huggingface.co/papers/2501.18492) = [GuardReasoner](https://arxiv.org/html/2501.18492v1) = *model* de *Gardă* bazat pe *Raționament*(metodologia *GuardReasoner*; se trece de la ***imitatie*** la **garantii**).
   <br/>Pe măsură ce **LLM**-urile influențează, din ce în ce mai mult, siguranța aplicațiilor critice, asigurarea siguranței acestora, folosind balustrade/protectii, rămâne o provocare cheie/importanta.
   <br/>Această lucrare, propune *GuardReasoner*(**GR**), o nouă protecție pentru **LLM**, prin ghidarea/orientarea/formarea *model*ului de gardă***GM**), pentru a *învăța* să **raționeze**.
   <br/> Concret, creăm mai întâi *setul-de-date(dataset)* <ins>*GuardReasonerTrain*(**GRT**)</ins>, care constă din ***127K***-*mostre/esantioane* cu ***460K***-*pași-de-raționament*(*detaliați*).
   <br/>Apoi, introducem raționamentul **S*FT*** pentru a <ins>debloca</ins> capacitatea de *raționament* a *model*elor de gardă(**GM**).
   <br/>În plus, prezentăm un *eșantion-dur* de **DPO** pentru a le <ins>consolida</ins> și mai mult capacitatea de *raționament*.
   <br/>În acest fel, *GuardReasoner*(**GR**) obține *performanțe mai bune*, in zona de *explicabilitate/descriere* și de *generalizare/rezumare*.
   <br/>Experimente și analize ample pe ***13*** *etape-de-referință*, a ***3*** *sarcini-de-protecție*, demonstrează superioritatea acestuia(**GR**).
   <br/>În mod remarcabil, **GuardReasoner**-**8B** depășește/intrece(ca performanta masurata(, *model*ul **GPT-4o+[CoT](https://learnprompting.org/docs/intermediate/chain_of_thought?srsltid=AfmBOopAoMbWL-h_oQrVQeHttPd3ZF9xB1c7nxBfe91RvbFJuLaDek9C)** cu **5,74%** și *model*ul **LLaMA Guard 3**-**8B** cu **20,84%**, in privinta *scorului*-**F1**(în *medie*=*AVG-F1*).
   <br/>Au fost lansate/furnizate *datele-de-antrenament*, *codul* și *modelele*-cu-diferite-scale*(**1B**, **3B**, **8B**) ale/din cadrul [GuardReasoner](https://github.com/yueliu1999/GuardReasoner/).<br/>
 - [**GRT**](https://huggingface.co/datasets/yueliu1999/GuardReasonerTrain) = GuardReasonerTrain = Setul de antrenare/antrenament(**train**) al modelului *GuardReasoner*([**GR**](https://github.com/yueliu1999/guardreasoner))
<br/>*GuardReasonerTrain* sunt *datele-de-instruire(dataset/ds-ul)* pentru **R-SFT** ale *GuardReasoner*([Cod](https://github.com/yueliu1999/GuardReasoner/): **GR**), așa cum este descris în lucrarea "[**GuardReasoner**](https://huggingface.co/papers/2501.18492): ***Towards Reasoning-based LLM Safeguards***
<br> Iata aici modul de utilizare:
<pre>
  <code>
      from datasets import load_dataset
      
      # Login using e.g. `huggingface-cli login` to access this dataset
      ds = load_dataset("yueliu1999/GuardReasonerTrain")
  </code>
 </pre>
 - [**RDS**](https://arxiv.org/abs/2403.02333) = Reasoning Data Synthesis = Sinteza Datelor de Raționament
   <br/>RDS este un mod/o varianta/un modul de abordăre privind instruirea/invatare/formarea/antrenarea pt indeplinirea sarcinilor-AI, in conformitate cu  metodologia GuardReasoner(GR). 
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
     <br/>**Baichuan-Omni-1.5**, un model *omni-modal* avansat dezvoltat de ***Baichuan Inc***.
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

   

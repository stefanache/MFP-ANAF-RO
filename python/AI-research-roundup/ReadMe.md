*Salutare* si ... *Bun venit* la ...  

 [**Linkedin: AI Research Roundup**](https://www.google.com/search?q=AI+Research+Roundup&rlz=1C1CHBF_enRO1132RO1132&oq=AI+Research+Roundup&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg8MgYIAhBFGDwyBggDEEUYPNIBCTE3NTBqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8) - <a href="https://arxiv.org/html/2501.18492"><i>February 3, 2025</i></a>

... din această săptămână,  unde se explorează:
 - cele mai recente progrese în *modelele*-**AI**(***LLM***-uri),
 - tehnici de *antrenament* și ...
 - îmbunătățiri bazate pe *raționament*. 

Săptămâna aceasta, se evidențiaza lucrări referitoare la ...
 - a)îmbunătățirea siguranței(garantii de siguranta=[**GR**](https://powerdrill.ai/discover/summary-guardreasoner-towards-reasoning-based-llm-cm6l9025xl1x507s3cdkjvx16) ale...) modelului lingvistic(**LLM**),
 - b)scalarea capacităților de *raționament*, în timpul/pe durata testarii(**s1**),
 - c)perfecționarea(**CFT** > ***RL***, unde simbolul "*>*" [inseamna](https://fliphtml5.com/okzbn/guim/DIDACTICA_MATEMATICII_-_Monica_Purcaru.pdf_%C2%B7_versiunea_1_%281%29/) "*mai bun/performant decat...*") *instruirii/antrenarii/formarii*, prin învățarea(*learning*) bazată pe *critici*(**C*FT***),
 - d1)avansarea in **AI** ***multi-modală***(LLM: ***Baichuan-Omni-1.5***) și ...<br/>d2)contrastarea/compararea *reglajului-fin*(***FT***) supervizat(**S*FT***) cu/**vs.** învățarea de consolidare/intarire/recompensa(**RL**); <br/>in zona [***OOD***](https://encord.com/blog/what-is-out-of-distribution-ood-detection/) avem ***RL*** > *SFT*. 

Va rog, sa aveti in vedere//urmriti/retineti... o prima <ins>*Concluzie*</ins>:
<br/> - Mai intai, in goana calului/bataia aripilor fluturelui/pe fuga, sa definim termenul "**OOD** - Out-of-Distribution".
<br/>Asadar, sa ne reamintim ca in ciclul de viata al uneui model avem *antrenamentul/invatarea/formarea* si in urma distribuirii(*deployment*-ului), modelul este utilizat pt deductie/*inferenta*/productie.
<br/>In timpul/faza de *antrenament*ului invata sa separe/clasifice/categoriseasca niste clase de obiecte/entitati(sa zicem textuale dar nu numai), pe care mai apoi, in faza de productie/inferenta le(datele folosite/intalnite in faza anteriora de ... antrenament) va recunoaste/valida/incadra/prezice.
<br/>Problema este ca la momentul/in faza de inferenta/deductie nu se poate garanta ca utilizatorul nu aduce/are in/spre dicutie/atentie/vedere/recunoastere/clasificare si date noi/nevazute/necunoscute modelului(care sunt in <ins>afara</ins> celor utilizate/vazute in faza anterioara de antrenament). Asa apare/a aparut termenul Out-of-Distribution([***OOD***](what-is-out-of-distribution-ood-detection)).
<br/>Pentru ca aceste date noi, sa le putea include, in setul de date reconogscibile, putem fie sa includem sub-setul nou de date alaturi de setul vechi si sa re-*antrenam*(ex. **RL**) modelul, fie sau/ori putem, doar sa-l *tunam*/ajustam-fin(ex. **FT**,**SFT**,**CFT**) folosind/pe sub-setul de date noi.
<br/> - Si acum concluzia: in zona/legat de [***OOD***](https://arxiv.org/pdf/2308.10261), per-total/pe scurt putem scrie... **CFT** > ***RL*** > *SFT* pt ca am/vom demonstra[t] ca avem ....<br/>

  - cf. c)  **CFT** > ***RL***
  - cf. d2) ***RL*** > *SFT*

<br>(Multumim [**Linkedin-pulse**](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf) - in calitare de *editor/publicator* si [**GenAIworks**](https://www.linkedin.com/company/genaiworks/?lipi=urn%3Ali%3Apage%3Ad_flagship3_pulse_read%3Bqdtvwz5hT727bPTetmJkQA%3D%3D) - in calitate de *autor/postator*!!!)

Ideea acestui articol a inceput/venit/pornit cu/inspirat de [la] urmatoarele **2** [figuri/imagini](https://arxiv.org/html/2501.18492) interesante:

<details>
 <summary> - <i>Figura</i> 1: LLaMA Guard 3(<b>LG3</b>) si/vs. GuardReasoner(<b>GR</b>)</summary>

<hr/>

<img src="https://github.com/user-attachments/assets/ad261a21-29e0-4ecd-ad37-eb8249703cf5" width="95%" height="auto"><a href="https://arxiv.org/html/2501.18492"><br/>LLaMA Guard 3(LG3) si GuardReasoner([**GR**](https://www.youtube.com/watch?v=T253JQcwWNo&ab_channel=AIPapersDecodedPodcast))</a></img>

 - Figura 1: Demonstrații ale **LLaMA Guard 3(LG3)** (partea stângă) și GuardReasoner([**GR**](https://arxiv.org/html/2501.18492v1)) (partea dreaptă), concentrându-se în principal pe 3 aspecte/caracteristici:
    - (1) performanță(safe=siguranță vs. harmful=dăunător/păgubos/fără siguranță/nesigur; măsurarea scorului asupra predictiei: [**F1**-***score***](https://en.wikipedia.org/wiki/F-score)),
    - (2) explicabilitate(prezenta sau/ori/vs. nu/inexistenta...explicatiilor/rationamentului/demonstratiei sau pasilor/modului de gandire/schema sau arhitectura cognitivă) și
    - (3) generalizare(tendinta de a fi categorial/prezinta si incadreaza-in anumite clase invatate sau/ori/vs.... aici insa, generalizare inseamna exact opusul, nu/fara categorisire/necategorisit).
<br/>Eșantionăm acest caz din WildGuardTest (Han și colab.,2024) set de date.


Asadar *Figura 1* ne arata o evaluare-comparativa!

<hr/>

</details>
<details>
 <summary> - <i>Figura</i> 2: GuardReasoner(<b>GR</b>)-module/componente</summary>

 <hr/>
 
<img src="https://arxiv.org/html/2501.18492v1/extracted/6167045/7_overall.png" width="95%" height="auto"><a href="https://arxiv.org/html/2501.18492v1/extracted/6167045/7_overall.png">GuardReasoner</a></img>

Hai să ne *scufundăm*(mai bine zis... hai sa *aprofundăm*.... in analiza si sa studiem in detaliu toate aceste module/componente ale **GR**)!

 - Figura 2: GuardReasoner([**GR**](http://paperreading.club/page?id=280945)) constă/este alcatuit din trei(**3**) module/componente: 

  - (1) Reasoning Data Synthesis([**RDS**](https://aclanthology.org/2024.lrec-main.900.pdf)),
  - (2) Reasoning-SFT(ℳ [**R-SFT**](https://sebastianraschka.com/blog/2025/understanding-reasoning-llms.html)) și
  - (3) Hard Sample DPO([**HS-DPO**](https://www.threads.net/@theturingpost/post/DFgdZq7MRJ_)).

Hai sa analizam pe rand (sa despicam firu' in 3 ! :) aceste componente ...

   - (1) În primul rând(**RDS**), **GPT-4o** este folosit pentru a crea/genera/sintetiza date de raționament([***GuardReasonerTrain***](https://github.com/yueliu1999/GuardReasoner/blob/main/train/README.md)) introducând promptul utilizatorului, răspunsul modelului țintă și adevărul de la sol/fata locului.
   - (2) Apoi, modelul de bază este antrenat de **R-SFT** pe acest set de date(sintetizat/generat cu ***RDS*** la pasul 1 al conductei de procesare, **GR**-pipeline) pentru a dezvolta modelul de raționament ℳ<sub><b>R-SFT</b></sub>
   - (3)ℳ<sub><b>R-SFT</b></sub> produce **k**-ieșiri pentru a identifica eșantioanele ambigue cu răspunsuri atât corecte, cât și incorecte.
     <br/>Diferite modele de raționament, care sunt antrenate pe diferite subseturi ale datelor de raționament, sunt utilizate pentru a îmbunătăți diversitatea acestor eșantioane și se aplică o abordare de ansamblu.
     <br/>În cele din urmă, **HS-DPO** este efectuat pe aceste eșantioane ambigue, selectând rezultate corecte ca date pozitive și pe cele incorecte ca date negative, cu accent pe eșantioane dure prin ponderarea celor cu mai multe erori.
     <br/>În acest fel, îl ghidăm pe ***GuardReasoner*** să învețe să raționeze.

<hr/>

</details>

In acest [***studiu***](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf/) complex, care se refera la seria "*Rezumatelor din sfera cercetărilor **AI***", au aparut, o seama de <br/>termeni/prescurtări, des utiliza[ți/te].

<details>
 <summary>Definire/Dictionar-Termeni-Utilizati in aceasta cercetare...</summary>

<hr/>

Pentru inceput, in vederea intelegerii, cu usurinta, a acestui articol/săptămânal, vom trece in revistă, cativa dintre termenii utilizati:

<details>
 <summary><b>LLM</b> & <b>VML</b></summary>

 <hr/>
 
 - [**LLM**](https://en.wikipedia.org/wiki/Large_language_model) - Large Language Model = Modele mari de Limbaj(scalate la diverse marimi/scale/scalari **1B**, **3B**, **8B**, **...**).
   <br/>Un *model de limbă/Limbaj mare* (**LLM**) este un tip de model de învățare automată(**ML**) conceput pentru sarcini de procesare a limbajului natural(**NLP**), cum ar fi generarea limbajului.
   <br/>**LLM**-urile sunt modele lingvistice cu mulți parametri și sunt instruite/antrenate/invatate/formate cu învățare auto-supravegheată([**SAL**](https://en.wikipedia.org/wiki/Supervised_learning)) pe o cantitate mare de text.<br/>
 
 - [**VML**](https://encord.com/blog/vision-language-models-guide/) - Vision-Language Models = Modele Vizuale de Limbaj .<br/>
 Aceste modele(**VML**) pot procesa și înțelege modalitățile de limbaj (text) și viziune (imagine) simultan pentru a efectua sarcini avansate de limbaj-viziune/vizual, cum ar fi *răspunsul la întrebări vizuale* ([**VQA**](https://vision-explorer.allenai.org/visual_question)), *subtitrărea imaginilor* și *căutarea text-la-imagine*;
 <br/> Aceste modele pot fi folosite(in mod repetat/recursiv) si in cazul *video*/*videoclip*-urilor, dat fiind faptul ca un *video* este o insiruire de mai multe cadre/imagini(*sprite*-uri). Deci video=**{**imagini**}**.

<hr/>

</details>

<details>
 <summary><b>FT</b> & <b>SFT</b> & <b>CFT</b>, <b>RL</b>, <b>OOD</b></summary>

 <hr/>
 
 - [**FT**](https://en.wikipedia.org/wiki/Fine-tuning_(deep_learning)) = Fine-Tuning = reglare/Tunare-Fina.
   <br/>În *învățarea-profundă*([**DL**](https://en.wikipedia.org/wiki/Fine-tuning_(deep_learning))) , *reglarea-fină*([**FT**](https://www.linkedin.com/pulse/building-fine-tuning-large-language-model-generative-ai-tazkera-haque-y8bcc/)) este o abordare/varianta a *transferului-de-învățare*, varianta în care, *parametrii-unui-model*(**LLM**) de *rețea-neuronală*([**NN**](https://en.wikipedia.org/wiki/Neural_network)) **pre-antrenată**, sunt antrenați/invațați/acordați/modificați/ajustați, pe/la *date-<ins>noi</ins>*.
   <br/>*Reglarea-fină*([**FT**](https://www.google.com/search?sca_esv=744faba34f407743&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zrr0TLZFmUEEwoawJ0AwF5IOI0fkA:1738759617183&q=.avi+fine+tuning+ai+model+llm&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGls0vqphpL9nGKy0PrLJqseLh0EQ6IW_YF9DHIKeRA2FImZJj7_nGLmr0IdZilOghZzNgMFk3aJ_aCLgBcYPfMMnTtkxvIFSifbF8fUw2Jv7wsjn4EFAru9uCvKItEWlh6Msc2bc_waqIcpbvO3hgkPwNEnEn1FFfLcV0CGEYhkFgRYo-ax&sa=X&ved=2ahUKEwih1tOqyKyLAxVcVfEDHfgkAi0QtKgLegQIDBAB&biw=1920&bih=911&dpr=1)) se poate face pe <ins>întreaga</ins> *rețea-neuronală*(**NN**), sau doar pe un *<ins>subset-de-straturi</ins>* ale *acesteia*(**NN**), caz în care, *straturile*, care *<ins>nu</ins> sunt reglate-fin*(**FT**), sunt „*înghețate*”(adică, acele *straturi*, [rămân](https://dexonline.ro/definitie/r%C4%83m%C3%AEn/701200) *<ins>ne</ins>modificate*/*<ins>nu</ins> sunt modificate*, în timpul *retro-propagarii*).
   <br/>Un *model*(**LLM**) poate fi, de asemenea, *<ins>mărit</ins>* cu „*adaptoare*”, care constau din/au mult-mai-puțini *parametrii*, decât *modelul-original*(**LLM**) și  care(**LLM**), apoi este reglat-fin(**FT**), într-un mod eficient(*Parameter-Efficient-Fine-Tuning*=**PEFT**), din punct de vedere(d.p.d.v.) al *parametrilor* sai, prin reglarea/ajustarea/acordarea *greutăților-adaptoarelor*(a se vedea si... Implementarea/ajustarea-**PEFT** eficienta prin *Low-Rank Adaptation*=**LoRA**) și/dar lăsând, restul *greutăților-modelului*(**LLM**), *înghețate(neschimbate)*.<br/>

[***Note***](https://developers.cloudflare.com/workers-ai/):

<details>
 <summary> - despre...metoda-<b>FT</b>, <b><ins>LoRA</ins></b></summary> 

 <hr/>

  - [Low-Rank Adaptation ↗ Adaptare de rang scăzut(**LoRA**)](https://blog.cloudflare.com/fine-tuned-inference-with-loras) este o metodă-specifică de reglare-fină(**FT**), care poate fi aplicată la diferite arhitecturi de model, nu doar **LLM**-urilor.
<br/>Este obișnuit ca greutățile modelului pre-antrenate să fie direct modificate sau îmbinate cu greutăți suplimentare de reglare-fină(**FT**) în metodele tradiționale de reglare-fină(**FT**).
<br/>**LoRA**, pe de altă parte, permite ca greutățile de reglare-fină(**FT**) și modelul pre-antrenat să rămână separate, iar modelul pre-antrenat să rămână neschimbat.
<br/>Rezultatul final este că puteți antrena *anumite* modele(incluzand aici si sub-categoria **LLM**-uri... si numai daca acestea *poseda* aceasta capabilitate..!) pentru...
    - a fi mai *precise* la anumite sarcini(**tasks***), cum ar fi generarea-de-cod,
    - a avea o anumită *personalitate* sau pentru...
    - generarea de imagini într-un anumit *stil*.

<br/>**LoRA** poate fi privita ca o *capabilitate/caracteristica/facilitate/optiune*, pe zona de competenta, **FT**,  atribuita/a unui model sau **LLM**.
<br/>Astfel, putem afirma/infirma despre un model/**LLM** ca poseda/prevede sau nu **LORA**...sau cu alte cuvinte, am mai putea spune ... "{cutare model/**LLM**) este **LoRA Enabled**

<hr/>

</details>

si separat/suplimentar, ...

<details>
 <summary> - despre facilitatea... <b><ins>Function-calling</ins></b></summary>

<hr/>
 
  - [**Function-calling ↗ Apelarea funcției**](https://developers.cloudflare.com/workers-ai/function-calling/) le permite oamenilor să utilizeze modele-de-limbaj-mari (**LLM**) și să utilizeze *răspunsul/iesirea* modelului(**LLM**-ului) pentru a executa-*funcții* sau a interacționa-cu *API*-*uri-externe.
<br/>Dezvoltatorul definește de obicei un set-de-*funcții* și schema-de-intrare(in joc/rol) necesară pentru fiecare *funcție* in parte, pe care o numim **tools**.
<br/>Apoi, modelul(**LLM**-ul) înțelege în mod inteligent, când trebuie să efectueze un apel-de-instrument(**Function-calling** of **tool**) și returnează o *ieșire-JSON*(*raspuns*) pe care utilizatorul trebuie să o alimenteze către o altă *funcție* sau *API*.
<br/>În esență, **Function-calling/Apelarea-funcției** vă permite să efectuați <ins>acțiuni(descrise de *functii**)</ins> cu **LLM**-uri executând *cod* sau efectuând apeluri-*API* suplimentare.

<br/>***Function-calling*** este o *capabilitate/caracteristica/facilitate/optiune* atribuita/a **LLM**-ului, adica spunem... "{cutare-**LLM**} are sau nu are facilitatea **Function-calling**" sau uneori, mai putem spune, in urmatorul fel .... "{cutare-**LLM**} [nu] este **Function-calling Enabled**"  

<hr/>

</details>

<br/>
   
 - [**SFT**](https://huggingface.co/docs/trl/sft_trainer) = Supervised Fine-Tuning = reglare-Fină Supravegheată(Etichetată/Clasificată/Categorisită corespunzator).
   <br/>*Tunajul/Reglajul-fin(**FT**) supravegheat*(**S*FT***) este utilizat, în mod obișnuit, pt **antrenarea** *model*elor de limbaj(**LLM**), in a <ins>imita</ins>|<ins>cauta</ins>&<ins>reda</ins> *răspunsurile*-*adnotate*(etichetate), la instrucțiunile/regulile/cerintele/task-urile date/incredintate/cerute.<br/>



 - [**CFT**](https://arxiv.org/pdf/2501.17703?) = Critique Fine-Tuning = reglare-Fină Critică.
   <br/>*Tunarea/Reglarea-Fină(**FT**) Critică*([**C*FT***](https://www.youtube.com/watch?v=GN-vfsgymOk&ab_channel=Keyur)), este o strategie, în care *model*ele(**LLM**), învață să *critice*(se face o analiză profundă pt. a găsi un răspuns/o etichetare tranșant[ă]), răspunsurile zgomotoase(care d.p.d.v al sarcinii, sunt...partial|>**100%** sau total|=**100%** greșite/incorecte=adica raspunsurile care au/poseda un **grad**=**procent**=**?** ***%*** de **incorectitdine**), mai degrabă/în loc să/decât să le *imite*... pe cele corecte(total-corecte=**100%** *corecte* = **0%** *incorecte*).
    <br/>Inspirat de *învățarea-umană*(procese care pun accent pe gândirea critică), [**C*FT***](https://github.com/TIGER-AI-Lab/CritiqueFineTuning) încurajează analiza mai profundă și nenuanțat(ă) - de înțelegere — trăsături adesea trecute cu vederea de către standardul **S*FT***(**C*FT*** > **S*FT***).
    <br/>Asadar,  Critique Fine-Tuning (**C*FT***) - propune o schimbare de paradigmă, în formarea LLM-ului, în care modelele, *învață* să <ins>critice</ins>, mai degrabă *decât*, să <ins>imite</ins>!
<hr/>

 - [**RL**](https://en.wikipedia.org/wiki/Reinforcement_learning)  = Reinforcement Learning = învățăre prin consolidare/întărire(cu o recompensă bazată pe rezultate).
   <br/>*învățare prin întărire* -este un termen provenit din- psihologie(a se vedea subiectele [*întărire*](https://en.wikipedia.org/wiki/Reinforcement) și [*condiționare operantă*](https://en.wikipedia.org/wiki/Operant_conditioning)).
   <br/><br/>Încadrarea tipică a unui scenariu de *învățare prin întărire*([**RL**](https://en.wikipedia.org/wiki/Reinforcement_learning)):<br/>
   - un [agent](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Reinforcement_learning_diagram.svg/500px-Reinforcement_learning_diagram.svg.png) întreprinde **acțiuni** într-un *mediu*, care sunt
     - interpretate/evaluate/observate/recompensate/[răsplătite](https://dexonline.ro/definitie/par%C3%A0nd%C4%83r%C4%83t/534761) ca-o/într-o <ins>*recompensă*</ins> și
     - reprezentate de o *stare*,
     care sunt transmise <ins>agentului</ins>.

   *Învățarea prin consolidare*(**RL** ) este o zonă interdisciplinară a **învățării automate(ML**)** și a **controlului optim**, preocupată de(care se ocupa de_ modul în care un <ins>agent-inteligent</ins> ar trebui să ia **acțiuni** într-un *mediu-dinamic* pentru a maximiza un <ins>*semnal-de-recompensă*</ins>.
   <br/>*Învățarea prin consolidare/intarire*(**RL**) este una dintre cele trei(3) paradigme/modele/posibilitati/variante de bază(principale) ale ***învățării automate(ML)***, alături de **învățarea-Supervizată/Supravegheată/Etichetată**(**SL** = *Supervised-Learning*) și de **învățarea-neSupravegheată/nesupervizată/neEtichetată**(**unSL** = *unSupervised-Learning*). Asadar, In **ML**, avem deci 3 paradigme de invatare, clasice/traditionale : {**RL**,**SL**,**unSL**}( <br/>

<hr/>

  - [**OOD**](https://paperswithcode.com/task/ood-detection) = ***Out***-*Of*-**Distribution** = ([detectia](https://www.sciencedirect.com/science/article/abs/pii/S0950705125000231)) în(*Of*)-afara(***Out***)-Distribuției(**Distribution**).
   <br/>*Detectarea Out of Distribution*([**OOD**](https://www.unitbv.ro/documente/cercetare/doctorat-postdoctorat/sustinere-teza/2022/CIUȘDEL_COSTIN/CiusdelC_rezumat_RO.pdf)) este sarcina de a *detecta-instanțe-de-date-textuale*, care *nu aparțin distribuției*, pe care a fost *instruit/invatat/antrenat/format* **clasificatorul**.
   <br/>***Datele***-**OOD** sunt adesea denumite ***date***-„*nevăzute*”, deoarece *model*ul(**LLM**-ul) nu le-a *întâlnit/văzut* în timpul **antrenament***ului*.<br/>
   <br/>*Detectarea-**OOD*** este de obicei efectuată prin **antrenarea/invatarea/formarea** unui *model*(**LLM**), pentru a distinge între ***datele***-*în*-*Distribuție*(**ID = In-Distribution**), pe care *model*ul(**LLM**-ul) le-a *văzut* în timpul *antrenamentului* și **datele**-**OOD**, pe care <ins>*nu*</ins> le-a *văzut*.
   <br/>Acest lucru poate fi realizat folosind o varietate de *tehnici*, cum ar fi ***antrenarea***(separat/ă) a unui ***detector***-**OOD**,  ori ***modificarea***-**arhitecturii** sau modificarea [**funcției-de-pierdere**](https://ro.eitca.org/artificial-intelligence/eitc-ai-adl-advanced-deep-learning/advanced-computer-vision/convolutional-neural-networks-for-image-recognition/what-is-the-mathematical-formula-for-the-loss-function-in-convolution-neural-networks/), a modelului(**LLM**-ului), pentru a-l face(pe **LLM**), mai sensibil/senzorial/dependent, la ***datele***-**OOD**.<br/>  

 <hr/>
 
</details>   

<details>
 <summary><b>GR</b> & <b>GRT</b></summary>

 <hr/>
 
 - [**GR**](https://huggingface.co/papers/2501.18492) = [GuardReasoner](https://arxiv.org/html/2501.18492v1) = *model* de *Gardă* bazat pe *Raționament*(metodologia *GuardReasoner*; se trece de la ***imitatie*** la **garantii**).
   <br/>Pe măsură ce **LLM**-urile influențează, din ce în ce mai mult, siguranța aplicațiilor critice, asigurarea siguranței acestora, folosind balustrade/protectii, rămâne o provocare cheie/importanta.
   <br/>Această lucrare, propune *GuardReasoner*(**GR**), o nouă protecție pentru **LLM**, prin ghidarea/orientarea/formarea *model*ului de gardă***GM**), pentru a *învăța* să **raționeze**.
   <br/><br/> Concret: 
   <br/>-Creăm mai întâi *setul-de-date(dataset)* <ins>*GuardReasonerTrain*(**GRT**)</ins>, care constă din ***127K***-*mostre/esantioane* cu ***460K***-*pași-de-raționament*(*detaliați*).
   <br/>-Apoi, introducem raționamentul ***SFT*** pentru a <ins>debloca</ins> capacitatea de *raționament* a *model*elor de gardă(**GM**).
   <br/>-În plus, prezentăm un *eșantion-dur/dificil* de **DPO**(Direct Preference Optimization), pentru a le(**GM**-urilor) <ins>consolida/intari</ins> și mai mult, capacitatea de *raționament*.
   <br/><br/>În acest fel, *GuardReasoner*(**GR**) obține *performanțe mai bune*, in zona de *explicabilitate/descriere* și de *generalizare/necategorisire*.
   <br/>Experimente și analize ample pe ***13*** *etape-de-referință*, a ***3*** *sarcini-de-protecție*, demonstrează superioritatea acestuia(**GR**).
   <br/>În mod remarcabil, **GuardReasoner**-**8B**(**GR-8B**) depășește/intrece(ca performanta masurata(, *model*ul **GPT-4o+[CoT](https://learnprompting.org/docs/intermediate/chain_of_thought?srsltid=AfmBOopAoMbWL-h_oQrVQeHttPd3ZF9xB1c7nxBfe91RvbFJuLaDek9C)**, cu **5,74%** și *model*ul 
   <br/>**LLaMA Guard 3**-**8B**, cu **20,84%**, in ceea ce priveste, *scorul*-**F1**(în *medie*=*avg-F1*).
   <br/>Au fost lansate/furnizate *datele-de-antrenament/train-dataset*, *codul-sursa* și *modelele*-cu-diferite-scale*(**1B**, **3B**, **8B**) ale/din cadrul [GuardReasoner](https://github.com/yueliu1999/GuardReasoner/).<br/>

 - [**GRT**](https://huggingface.co/datasets/yueliu1999/GuardReasonerTrain) = GuardReasonerTrain = Setul de antrenare/antrenament(**train**) al modelului *GuardReasoner*([**GR**](https://github.com/yueliu1999/guardreasoner))
<br/>*GuardReasonerTrain* sunt *datele-de-instruire/train(dataset/ds-ul)* pentru **R-SFT** ale *GuardReasoner*([Cod](https://github.com/yueliu1999/GuardReasoner/): **GR**), așa cum este descris în lucrarea "[**GuardReasoner**](https://huggingface.co/papers/2501.18492): [***Towards Reasoning-based LLM Safeguards***](https://huggingface.co/papers/2501.18492)".
<br/>Iata aici modul de utilizare al acestui *GRT-dataset*(**GRT-ds**):
<pre>
  <code>
      from datasets import load_dataset
      
      # Login using e.g. `huggingface-cli login` to access this dataset
      ds = load_dataset("yueliu1999/GuardReasonerTrain")
  </code>
 </pre>

 
 <hr/>

 </details>

  <details>
 <summary><b>RDS</b> , <b>R_SFT</b></summary>

 <hr/>
 
 - [**RDS**](https://arxiv.org/abs/2403.02333) = Reasoning Data Synthesis = Sinteza Datelor de Raționament
   <br/>[*RDS*](https://arxiv.org/pdf/2403.02333) este un mod/o varianta/un modul/o varianta de abordare privind instruirea/invatarea/formarea/antrenarea pt indeplinirea sarcinilor-AI, in conformitate cu  metodologia *GuardReasoner*(**GR**).
   <br/> Sintetizarea/Generarea/Crearea datelor(noi) de raționament([RDS](https://arxiv.org/html/2412.08864v1)) de înaltă calitate, pentru formarea continuă, s-a dovedit a fi eficientă, în îmbunătățirea performanței, modelelor lingvistice mari(**LLM**).
   <br/> Cu toate acestea, abordările sintetice anterioare se luptă să extindă cu ușurință datele și să suporte costuri mari în urmărirea calității înalte.
   Va propun, spre intelegere, un caz de utilitate/o [lucrare-auxiliara](https://arxiv.org/pdf/2403.02333)...desigur, cu referinte catre *RDS*.
   <br/> În această [lucrare](https://arxiv.org/pdf/2403.02333), se propune **GSDP**(Graph-based Synthetic Data Pipeline), un cadru economic și scalabil, pentru sinteza datelor de raționament, de înaltă calitate.
   <br/> Inspirați de *graficele/grafurile/reteaua de cunoștințe/cunoaștere*, s-a extras *puncte de cunoștințe*, din *datele-semințe*, și s-a construit un *grafic/graf/retea-de-relații*, cu/intre *punctele de cunoaștere/cunoștințe*, pentru a explora interconexiunile/relatiile lor.
   <br/>Sa ne reamintim faptul ca, un [graf](https://ro.wikipedia.org/wiki/Graf) are relatii=muchii si noduri/puncte.
   <br/> Explorând *relațiile implicite, dintre cunoștințe*, aceasta metoda/model(**GSDP**), realizează de 255 ori(×), *extinderea/extrapolarea/cresterea* datelor.
   <br/> În plus, **GSDP**, condus de modele open-source, realizează o calitate a sintezei, comparabilă cu **GPT-4-0613**, menținând în același timp, costuri cu/de 100 ori(×), mai mici.
   <br/> Pentru a aborda, cea mai dificilă sarcină de raționament matematic, se prezentă setul de date(dataset/ds) ***GSDP-MATH***, care cuprinde peste ***1,91 milioane*** de perechi(*problema și răspuns(**QA**)*) matematice.
   <br/> După reglajul-fin(**FT**) pe ds-ul***GSDP-MATH***, modelul(LLM-ul) **GSDP-7B**(bazat pe LLM-ul de baza/de inceput/de plecare, **Mistral-7B**) atinge o precizie de **37,7%** la/pe benchmark-ul **MATH** și de **78,4%** pe/la benchmark-ul **GSM8K**, demonstrând eficacitatea acestei metode( **GSDP**).
   <br/> *Setul de date* și *modelele instruite* în această [lucrare]((https://arxiv.org/pdf/2403.02333)) sunt disponibile.

<hr/>

 - [**R-SFT**](https://www.invisible.co/blog/what-is-supervised-fine-tuning) = Reasoning Supervised Fine-Tuning = reglaj-Fin Supravegheat bazat pe/de Raționament(Reasoning: mod/modul/model de gândire-asemănătoare omului);
   <br/>Capacitatea/Abilitatea de a raționa, este crucială/extrem de importantă, pentru **LLM**-uri, permițându-le, să ***imite***, modelele de gândire, asemănătoare omului.
   <br/>[*R-SFT*](https://arxiv.org/pdf/2403.02333), este un mod/o varianta/un modul de abordăre, privind instruirea/invatare/formarea/antrenarea, pt indeplinirea sarcinilor(***tasks***)-**AI**, in conformitate cu  metodologia GuardReasoner(**GR**).
   <br/><br/> De ce este atât de importantă reglarea-fină(*FT*) supravegheată(*SFT*)?<br/>
<br/> Prețuiește *calitatea*datelor -asupra/in/vs.- dauna *cantității* de date<br/>
<br/>În primele zile ale **AI**, *cantitatea* de date domina.
<br/>Cu cât sunt mai multe date, cu atât performanța este mai bună – sau așa părea.
<br/>Dar, pe măsură ce modelele de bază continuă să crească în sofisticare, volumul de date(de unul singur/de la sine putere) nu mai garantează *relevanța* sau *utilitatea*.
<br/>De fapt, *cantitățile* excesive de date generice, pot dilua *performanța* unui model.<br/>
<br/>Acum, companiile care doresc să construiască produse *AI* diferențiate și de înaltă performanță își schimbă atenția către date țintite, de înaltă calitate — rolul exact al reglajului supervizat îl umple.
<br/>Reglarea-fină(*FT*) supravegheată(*SFT*) funcționează prin *antrenarea* modelelor pe *date-organizate*, specifice sarcinii, făcându-le adepți în manipularea aplicațiilor din lumea reală, cu impact ridicat.<br/>
<br/>Datele de înaltă calitate și diverse nu numai că îmbunătățesc *raționamentul* modelului, ci îi ajută pe modele să învețe nuanțe complexe, specifice sarcinilor.
<br/>Prin restrângerea a ceea ce contează, reglarea-fină(FT), optimizează modelele, pentru rezultate puternice și concentrate.<br/>

<hr/>

</details>

<details>
 <summary><b>DPO</b> & <b>HS-DPO</b></summary>

 <hr/>
 
 - [**DPO**](https://arxiv.org/abs/2305.18290) = Direct Preference Optimization = Optimizarea Directă a Preferințelor(pt mostre/esantioane/samples).
   <br/>În timp ce, *modelele lingvistice*(***LM***)-*nesupravegheate*(***unSLM***), la scară largă(**LLM**),adica **unSLLM**, *învață* cunoștințe generale ale lumii, marginea și unele abilități de *raționament*, iar obținerea unui *control-precis al comportamentului-lor*(**unSLLM**) este dificilă(din cauza naturii complet nesupravegheate a pregătirii lor).
<br/>Metodele de *dobândire/învațare* existente, a unei astfel de direcții(*nesupravegheate*), colectează etichete umane (de-o calitate relativă),atunci cand doriti să modelați generațiile și să ajustați ***LM***-ul-nesupravegheat(**unSLM**-ul), pentru a se alinia cu aceste preferințe, de multe ori, folosind/cu *învățare prin consolidare/intarire/recompensa(RL)* din *feedbackul(HF)*(recompensate de catre noi oamenii, ca urmare a raspunsului/rezultatului obtinut)-*uman*(***RLHF***).
<br/>Cu toate acestea, [***Reinforcement Learning from Human Feedback(RLHF)***](https://arxiv.org/html/2312.11819v2), este o procedură complexă și adesea instabilă, potrivită, mai întâi, unui *model-de-recompensă*(**RL**) care reflectă *preferințele umane*, și apoi, reglajului ***LM***ului-mare(**LLM**-ului) *nesupravegheat*(**unSLLM**), folosind *învățarea prin întărire*(**RL**), pentru a maximiza această *recompensă*, estimată, fără a devia, prea departe, de modelul original.
<br/>În această [lucrare](https://arxiv.org/abs/2305.18290), se introduce, o nouă parametrizare, a modelului de recompensă(**RL**), în/adusa ***RLHF***-ului, care permite, extragerea *optimu*lui corespunzător politicii în formă închisă, permițându-ne să rezolvăm, problema standardului ***RLHF***, doar cu o pierdere simplă/inerenta de *clasificare*(din cauza ca, procesul de clasificare, din perspectiva umana, in practica, este greoi in a-l efectua, cu o foarte mare precizie / exactitate).
<br/>Algoritmul rezultat, pe care îl numim *Direct Preference Optimization*([*DPO*](https://arxiv.org/pdf/2305.18290)), este stabil, performant și ușor din punct de vedere(d.p.d.v.) computațional(al calcului), eliminând necesitatea, eșantionării din ***LM**, în timpul reglajului-fin(**FT**), sau necesitatea interpretării *reglajului* **hiper-parametric** *semnificativ*(reglajul unui numar, semnificativ de mare, de parametrii).
<br/>Experimentele noastre arată că, *DPO*-ul se poate regla-fin(**FT**), astfel incat, *LM*-ul să se *alinieze*(controlat/asa cum vrem noi), la preferințele umane, precum și faptul ca, sau,  aceasta *aliniere* se efectuaza/are loc... *mai bine* decât in cazul metodelelor deja existente.
<br/>În special, reglarea-fină(**FT**) cu/bazata pe *DPO*, depășește [***RLHF***](https://arxiv.org/html/2403.10704v1), bazat pe **PPL Quantization([PPQ](https://github.com/OpenPPL/ppq))**, în capacitatea sa, de a controla senzorii-generați și potrivește sau îmbunătățește calitatea răspunsului, în rezumat și dialog, într-o singură tură(dintr-o singura trecere), fiind în același timp, substanțial mai simplu de implementat și instruit/invatat.
<br/>***Note-concluzive/explicative***:
<br/>-***nota1***: studiem/explicam ***Dependenta***, ***PPQ*** *=* [**PPL**](https://huggingface.co/docs/transformers/perplexity)(*Q*), unde avem urmatoarea explicatie:
<br/>   Perplexitatea([**PPL**](https://github.com/ggerganov/llama.cpp/discussions/4110)) este o măsurătoare foarte aproximativă pentru a vedea cât de multă [cuantificare](https://dexonline.ro/definitie/cuantificare/definitii)(Quantization) modifică de fapt rezultatul final al modelului;
<br/>         adica PPQ = PPL-Quantization(Q) = rezultat=fctie(Quantization) = dependenta: rezultat(Quantization) = PPL(Q).
<br/>-***nota2***: studiem/explicam ***Comparatia***, **FT** *vs.* **RLHF**, unde avem urmatoarea situatie:
<br/>   *vechi*: **RLHF** *bazata pe* ***PPQ***,  adica unde avem *dependenta*:  **RLHF**(*PPQ*)
<br/>   *nou*:   **FT**   *bazata pe* ***DPO***,  adica unde avem *dependenta*:  **FT**(*DPO*)     --- ***este mai bun/castigator/winner***!!! ---

 - [**HS-DPO**](https://www.threads.net/@theturingpost/post/DFgdZq7MRJ_) = Hard-Sample Direct Preference Optimization = ExempleDificile - Optimizarea Directă a Preferințelor pentru esantioanele/[mostrele](https://www.google.com/search?q=mostre+sau+monstre&rlz=1C1CHBF_enRO1132RO1132&oq=mostre+sau+monstre&gs_lcrp=EgZjaHJvbWUyCQgAEEUYORiABDIKCAEQABgKGBYYHjIKCAIQABiABBiiBNIBCTYwMzhqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8) dure/dificile(mostre/exemple/esantioane/probe destinate invatarii/antrenamentului, si care... se află în apropierea graniței/limita de decizie/i);

   <br/>*HS-DPO* este un mod/o varianta/un modul/o varianta de abordare privind instruirea/invatare/antrenarea pt indeplinirea sarcinilor-AI, in conformitate cu metodologia GuardReasoner(**GR**).
   <br/> Metoda/Tehnica/Abordarea *HS-DPO*=ExempleDificile(HS)-Optimizarea Preferințelor Directe(DPO), pentru eșantionare(*S*ampling), se caracterizeaza prin urmatoarele aspecte:
<br/> • GuardReasoner(**GR**) *identifică* cele mai dificile/grele/dure(*H*ard) cazuri/exemple/esantioane/mostre/puncte de investigare(samples), adica *identifică* ExempleDificile/HardSamples(*HS*), în care răspunsurile **AI**, conțin *atât* **raționament-corect**, *cât și* **raționament-incorect**(pașii de rationament/rationamentul corect[i] vs./si incorect[i]).
<br/> • Se *antrenează* folosind <ins>mai multe modele de raționament</ins>, fiecare cu puncte forte diferite, pentru a <ins>îmbunătăți acuratețea</ins>.
<br/> • Modelul *compară* <ins>pașii-**buni**-de-raționament</ins> și/cu/vs. <ins>pașii-***răi***-de-raționament</ins>, *învățând să prefere/identifice* pașii/raționamentul **corect/bun[i]** față de cei/in dauna celor **înșelatori/falsi/incorecti**.<br/>

<hr/>

</details>

 <details>
 <summary><b>ST-TS</b></summary>

 <hr/>
 
 - [**ST-TS**](https://arxiv.org/abs/2501.19393) = Simple Test-Time Scaling = Scalarea(crestere/scadere) Simpla a Timpului/Duratei-de-Testare.

Test-time scaling([*ST-TS*](https://arxiv.org/pdf/2501.19393)) este o abordare promițătoare, a modelarii limbajului(**LM**), care folosește compoziția suplimentară, la/pe timpul/momentul/durata-de-testare, pentru a îmbunătăți performanța.

Modelul **o1** al ***OpenAI***, a arătat această capacitate, dar nu a publicat(să-și împărtășească, în mod clar...) metodologia, ducând la multe repli-
eforturi [cationice](https://dexonline.ro/definitie/cationic)(de cautare a etimologiei).

Căutăm, cea mai simplă abordare, de atingere a,  scalarii timpului/duratei-de-testare și mai cautam in plus si un raționament puternic-performa[n]t.

În primul rând, organizăm un mic(small) set/esantion de date/dataset/samples/exemple, **s1K**, de ***1.000 de întrebări***, asociate cu urme(care ne arata modul de gândire) de raționament, bazându-ne pe *trei(3) criterii*, pe care le validăm(verificam), prin ablațiuni(indepartari/taieri/inlaturari de exemple, care nu corespund/indeplinesc cel[or/e] 3 criterii de validare):
   - *dificultate*,
   - *diversitate* și
   - *calitate*.

În al doilea rând, s-a  *<ins>forțat</ins> dezvoltarea bugetului*...de timp/duratei, pus/alocat/prevazut/estimat pentru a controla timpul/durata-de-testare, fie prin... *încheierea*(<ins>forțată</ins>), a procesului de gândire, aferent modelului, sau/ori(la fel de... echi-probabil) fie prin recurgerea la... *prelungirea*(<ins>forțată</ins>) a acestuia(timpului/duratei-de-testare), prin adăugarea de durate/timpi de asteptare(de tip „Așteptați”), de mai multe ori, in/la/pe durata/momentul generar[ii/ea] modelului, atunci când, procesul acesta, încearca să se termine.

Acest lucru, poate duce la/face ca modelul, dublarea/sa-si dubleze verificaril[or/e], atunci cand... se elaboreaza răspunsul acestuia, reparând/corectand adesea, trepte/etape de raționament-incorect/pasi de gândire incorectă.

După reglarea-fină(**FT**) supravegheată(**SFT**), a modelului de limbaj(*LM*) **Qwen2.5-32B-Instruct**,  pe esantionul **s1K** și echipat *<ins>cu</ins> forțarea-bugetului*(modelul acesta imbunatatit), modelul **s1-32B**, la întrebările concursului de matematică, depaseste/intrece modelul **o1-Preview**, cu până la **27%**, pt./pe sarcinile/task-urile/întrebările concursurilor de matematică, ***MATH*** și ***AIME24***.

Mai departe, scalarea **s1-32B**, *<ins>cu</ins> forțarea bugetului*, permite extrapolarea/cresterea performanțelor sale, depășindu-le pe cele ale modelului standard/obisnut, adica cel *<ins>fără</ins> interventie*, in/pe timpul/durata-de-testare, de la **50**% la **57**%, pe/pt. sarcina **AIME24**.

*Modelul*, *datele* și *codul* sunt oferite <ins>open-source</ins>, la adresa: [*https://github.com/simplescaling/s1*.](https://github.com/simplescaling/s1)

<hr/>

</details>

<hr/>

</details>

<br/>Acum, in sfarsit a venit momentul sa intram in detalii/miezul publicatiilor aparute...

<details>
 <summary>Lucrari abordate/studiate, in aceasta saptamana, de catre renumita publicatie/revista online...<b>AI Research Roundup</b>... </summary>

<hr/>
 
Sa vedem pe scurt(in rezumat), cateva ***lucrari*** abordate în / ***abordări*** din... acest complex [articol/studiu](https://www.linkedin.com/pulse/ai-research-roundup-safety-scaling-multimodal-breakthroughs-dynuf/):<br/>

<details>
 <summary> - <b>a</b>. GuardReasoner(<b>GR</b>)</summary>
 
 <hr/>

 - [a)***GuardReasoner: Towards Reasoning-based LLM Safeguards***](https://media.licdn.com/dms/image/v2/D4D12AQETgqODoeNclw/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609408068?e=1744243200&v=beta&t=QbYLdtFfZmuj79a0NUd7mvWuec5o8avTPALdZtYAJ5o) / [***GuardReasoner: către garanții LLM bazate pe raționament***](https://arxiv.org/pdf/2501.18492) 
   <br/>Lucrarea prezintă GuardReasoner(**GR**), o nouă protecție pentru **LLM**, concepută pentru a spori siguranța prin etalarea unor capacități de raționament.
   <br/>Autorii creează setul de date GuardReasonerTrain(**GRT**), care cuprinde **127.000** de *mostre*/*esantioane*(samples) cu **460.000** de *pași* detaliați de raționament  și folosesc reglarea-fină(*FT*) supravegheată(*SFT*) de raționament/invatare(**R-SFT**) și optimizarea preferințelor directe ale mostrelor dure/dificile(**HS-DPO**) pentru a îmbunătăți abilitățile de raționament ale modelului. 
<br/><br/>Datele de antrenament/train-ds, codul-sursa și modelele(**LLM**-urile) utilizate, de diferite scale/scalari(**1B**, **3B**, **8B**), sunt open source(sursă deschisă...in vederea studiului, modificarilor...).<br/>
<br/>**LLM**-urile sunt din ce în ce mai integrate în diverse domenii, dar sunt vulnerabile la/unor ***manipulări rău-intenționate***(de unde si termenul de **guard**=garda/garanție!).
<br/>Modelele de gardă(care ofera garanții) existente, deși eficiente, suferă de limitări în performanță, explicabilitate și generalizare(necategorisirea). 
<br/>GuardReasoner(**GR**) abordează aceste probleme prin deblocarea și îmbunătățirea abilităților de raționament ale modelelor de gardă(care ofera garanții de protectie impotriva manipularilor rau-voitoare, atunci cand, antrenarea are loc pe seturi de date inselatoare, sau cu continut compromitator/daunator/dur sau daca vreti abraziv si abuziv/neetice).<br/>
<br/>In continuare, urmeaza cateva lucruri despre <i>experimente și rezultate, studii de [ablație/indepărtarea](https://dexonline.ro/intrare/abla%C8%9Bie/62)  nocivitații, studii de masurare a eficienței si performanțelor</i>...<br/>
<br/>1. GuardReasoner 8B(**GR-8B**) realizează cele mai bune performanțe în sarcinile de detectare a nocivității prompte și a celei de răspuns, depășind/întrecând/concurând atât modelele open-source(sursă deschisă), cât și cele cu sursă închisă.
<br/>2. GuardReasoner(**GR**) oferă pașii detaliați de raționament, sporind transparența și ajutând la corectarea probelor/mostrelor etichetate greșit.
<br/>3. Modelul(**GR**) funcționează independent de categoriile fixe, recunoscând conținutul dăunător/rau/dur deschis, îmbunătățind astfel generalizarea(necategorisirea).
<br/><br/>[Lucrarea](https://arxiv.org/pdf/2501.18492) evidențiază dezvoltarea unui model de gardă(cum este **GR**) pentru a atenua riscurile potențiale și impactul dăunător al[e]/asupra **LLM**-urilor, contribuind la integrarea mai sigură a **AI** în societate.
<br/><br/>***Retineti*** va rog, *dependenta-terminiologica*: **GR**(***R-SFT***(*SFT*(FT)) , ***HS-DPO***(*DPO*) , ***GRT***).
 <hr/>
 </details>
 
 <details>
 <summary> - <b>b</b>. <b>s1</b>: Simple Test-Time Scaling(<b>ST-TS</b>)</summary>

 <hr/>
  
 - b)[***s1: Simple Test-Time Scaling***](https://media.licdn.com/dms/image/v2/D4D12AQGAMOOG_LIz-w/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609419796?e=1744243200&v=beta&t=Ftsru31-7BNv1egojySpq3atw2MXXPnqoMiB5F97TIM) / [***s1: Scalare simplă a timpului de testare***](https://arxiv.org/pdf/2501.19393)
   <br/>Lucrarea prezintă **s1**, o nouă abordare a scalarii/ajustarii(cresterii/descresterii) timpului/duratei-de-testare, pentru modelele de limbaj, abordare care își propune, să îmbunătățească *performanța*, prin utilizarea calculului-suplimentar în timpul /pe durata-testării.
   <br/>Inspirați de modelul **o1**, al furnizorului ***OpenAI***, autorii organizează, un mic(small) set de date(ds/samples), **s1K**, format din **1.000** de *întrebări(Questions)*, asociate cu *urme de raționament(Answers)*.
   <br/>Modelul, datele și codul sunt oferite ca open-source(sursă deschisă).<br/>
<br/>Scalarea timpului-de-testare(**ST-TS**), care crește calculul, în timpul testării, pentru a îmbunătăți performanța, a atras atenția, în special, odata cu aparitia, modelului **o1** al ***OpenAI***.<br/> 
<br/>Autorii își propun, să găsească, cea mai simplă abordare, pentru a obține, atât scalarea timpului-de-testare, cât și performanța-puternică, a raționamentului.<br/> 
<br/>Ei organizează/prepara/construiesc, un set de date mic, **s1K**, și dezvoltă forțarea-bugetului, pentru a controla, calcularea timpului-de-testare, ceea ce duce, la un model de raționament, puternic, care se scalează, cu mai multe calcule în/pe timpul/durata-testării.<br/>
<br/>Depășește[Concură cu/Concurează cu](https://gresit.ro/concura-sau-concureaza.html) modelul/LLM **o1-preview** al furnizorului ***OpenAI***, la întrebările-de-matematică(Math-questions) ale competiției/olimpiadei, și este modelul de raționament, cu cel mai eficient eșantion(sample) testat.

<hr/>
</details>

<details>
 <summary> - <b>c</b>. Critique Fine-Tuning(<b>CFT</b>)</summary>
 
 <hr/>
 
 - c)[***Critique Fine-Tuning(CFT): Learning to Critique is More Effective than Learning to Imitate***](https://media.licdn.com/dms/image/v2/D4D12AQFto_Ylz-JZRw/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609430306?e=1744243200&v=beta&t=J9gmmy-NsLmShTXbFLsuOGghvSjg9Fnn4aZwZq1fG4g) /<br/> [***Ajustarea/tunarea-Fină critică(CFT): a învăța-să-critici -este mai eficient, decât- a învăța-să-imite***](https://arxiv.org/pdf/2501.17703)
   <br/>Autorii validează/arata/demonstreaza eficacitatea **CFT**-ului, folosind un set de date de **50.000** de *mostre*/*esantioane*(samples), de la [**WebInstruct**](https://tiger-ai-lab.github.io/MAmmoTH2/) / [***HF***](https://huggingface.co/datasets/TIGER-Lab/WebInstructSub), cu/folosind *critici*, generate de catre modelul [**GPT-4o**](https://openai.com/index/hello-gpt-4o/).
   <br/>[**CFT**](https://tiger-ai-lab.github.io/CritiqueFineTuning/)-ul depășește constant [***SFT***](https://www.linkedin.com/posts/techsachinkumar_critique-fine-tuning-teaching-llm-models-activity-7290893014795710466-24cQ)-ul, la șase(**6**) repere/benchmark-uri/standuri de testare, matematice(**MATH**, **Minerva-Math**, **GSM8K**, **OlympiadBench**, American Invitational Mathematics with -Examination: **AIME24** and Competitions: **AMC23**), cu diferite modele de bază(LLM: ***Qwen2.5***, ***Qwen2.5-Math*** si ***DeepSeek-Math***), obținând o îmbunătățire cu/intre/de circa/aproximativ **4**-**10** *%*.<br/> 
   <br/>Lucrarea propune Critique Fine-Tuning ([**CFT**](https://arxiv.org/html/2501.17703v1))-ul, care mută accentul, de la imitație, la învățarea bazată pe critică(*CL*=Critical-Learning), inspirată de procesele de învățare-umană(*HL*), care pun accent pe gândirea/rationamentul-critic[ă](*CR*=Critical-Reasoning) și feedback(*HF*=Human-Feedback)-ul constructiv.<br/>
   <br/>Autorii, creează un set de date(*ds*), de **50.000** de *mostre*/*esantioane*, din [**WebInstruct**](https://github.com/TIGER-AI-Lab/MAmmoTH2) / [**HF**](https://huggingface.co/datasets/TIGER-Lab/WebInstruct-CFT), folosind [**GPT-4o**](https://openai.com/index/gpt-4o-and-more-tools-to-chatgpt-free/), pentru a genera *critici*, pentru/la răspunsurile-zgomotoase(considerate ca fiind, *criticabile* sau mai bine spus... gresite ori corecte, doar intr-o anumita proportie, <= 100%).<br/>
   <br/>[**CFT**](https://medium.com/@techsachin/critique-fine-tuning-teaching-llm-models-to-critique-and-analyze-responses-0a603c95e900)-ul, depășește constant, [***SFT***](https://www.researchgate.net/figure/Training-dynamics-comparison-of-different-methods-on-Qwen25-Math-7B-across-key_fig1_388495470)-ul, la șase(***6***) repere matematice, obținând o îmbunătățire cu/intre/de circa/aproximativ **4**-**10** *%*.
   <br/> Autorii, susțin că, [**CFT**](https://arxiv.org/abs/2501.17703)-ul,  reprezintă un pas, semnificativ, înainte, în a face/construi/permite, formarea modelului-lingvistic([**LLM**](https://x.com/askalphaxiv/status/1885848467307745559)-ului) și mai eficientă.
   <br/>Unul dintre cele mai convingătoare avantaje ale **CFT** este eficiența sa.
   <br/>În comparație, cu abordările bazate pe învățare prin consolidare(**RL**), cum ar fi ***SimpleRL***, **CFT** obține performanțe similare sau mai bune, consumând în același timp, de 140 de ori, mai puține resurse de calcul.
<br/><br/>***Retineti*** vă rog, că:  **CFT**-ul este mai bun decat **RL** si ***SFT***-ul, adica/ori/s-au altfel scris:  **CFT** >= ***RL*** > *SFT*
<hr/>

</details>

<details>
 <summary> - <b>d1</b>. <b>Baichuan-Omni-1.5</b> <b>&</b> - <b>d2</b>. <b>SFT</b>-Memorizes<i>-vs.-</i><b>RL</b>-Generalizes</summary>
 
 <hr/>
 
 - d1)[***Baichuan-Omni-1.5 Technical Report: Pushing the Boundaries of Omni-Modal AI with 73.3 Benchmark Mastery***](https://media.licdn.com/dms/image/v2/D4D12AQHaviv9ZKEfHA/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609441226?e=1744243200&v=beta&t=xu8DVC0orT18YUEBWfme_88Cz97DwtUdRRCNJ4xgP4E) / [***Raport tehnic Baichuan-Omni-1.5: Depășirea limitelor AI omni-modale cu 73.3 Benchmark Mastery***](https://arxiv.org/abs/2501.15368)
     <br/>**Baichuan-Omni-1.5**, un model(**LLM**) *omni-modal* avansat dezvoltat de ***Baichuan Inc***.
     <br/> Acest model este conceput pentru a înțelege și a genera conținut în mai multe modalități(multi-modal), inclusiv text, imagini, audio și video.<br/> 
     <br/>Modelul poate procesa și genera text și vorbire de înaltă calitate din intrări text, imagine, audio și video, permițând interacțiuni inter-modale fără întreruperi.
     <br/>**Baichuan-Omni-1.5** atinge, un scor mediu de **73,3**, la zece benchmark-uri, de înțelegere a imaginii, depășind alte modele(**LLM**-uri), precum **GPT-4o-mini**.<br/>
     <br/>Modelul este antrenat, pe aproximativ 500 de miliarde de puncte(samples) de date(**ds**-uri), *ds*-uri multi-modale, *ds*-uri de înaltă calitate, folosind o strategie de antrenament, în mai multe etape, care integrează-progresiv alinierea(aducerea la acelasi numitor comun) multi-modală și reglarea fină(**fine-tuning(FT)**), a mai multor sarcini*tasks*).<br/>
     <br/>Canalul de instruire/invatare/formare/antrenare(training) implică etape, care încorporează/integreaza-progresiv viziunea(imagine,video) și audio în **LLM**(uzual/de obicei/la baza fiind... textuale), urmate de reglaj-fin(**fine-tuning(FT)**) supravegheat(**SFT**), cu date omni-modale.
<br/><br/>***Retineti*** va rog, *depententa-terminologica*: **Baichuan-Omni-1.5**(***LLM*** , ***SFT***(*FT*)))

<hr/><br/>

 - d2)[***SFT-Memorizes***, **RL-Generalizes**: A Comparative Study of Foundation Model Post-training](https://media.licdn.com/dms/image/v2/D4D12AQECyR29nuOTPg/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1738609451688?e=1744243200&v=beta&t=Wfqmd54SFNi3uhaGABY2NYPDNUaAOtsuAw3lrBaUqkE) / [***SFT-memorează***, **RL-generalizează**: Un studiu comparativ al modelului de fundație post-formare/antrenare](https://arxiv.org/pdf/2501.17161)
   <br/>Această lucrare, investighează efectele reglajului-fin(*FT*) supravegheat (***SFT***) și ale *învățării prin consolidare/intarire*(**RL**), asupra capacităților, de *generalizare(necategorisire)* și de *memorare(imitare)*, ale modelelor de bază(**LLM**-urilor), concentrându-se, atât pe mediile bazate pe text(*LLM*-uri), cât și pe mediile-vizuale(imagini/video...*VLM*-uri).<br/> 
<br/>*Comparatie*: **RL=Generalizare** *versus*(*vs.*) ***SFT=Memorare/Imitare***:<br/>
<br/>**RL Generalizes**: **RL**, mai ales, atunci când, este antrenat/întărit cu o recompensă, bazată pe rezultate, arată/prezinta/are o *generalizare(necategorisire)*, mai bună, atât în ​​mediile textuale(**LLM*-uri), cât și în mediile vizuale(imagine,video...*VLM*-uri)), bazate pe reguli.<br/>
<br/>***SFT-Memorizes***: ***SFT***-ul tinde/incearcă/se luptă să *memoreze*, datele de antrenament(*ds*-urile) și se luptă/incearcă/tinde să *generalizeze(neclasificare/necategorisire)*, la/în scenarii de tipul, în-afara-distribuției([**OOD**](https://arxiv.org/abs/2308.10261)-uri).<br/>
<br/>**RL**-ul îmbunătățește, capacitățile de *recunoaștere-vizuală*, de bază, ale modelului, contribuind la o *generalizare(necategorisire)* îmbunătățită, în domeniile/zonele vizuale.
<br/>***SFT***-ul este încă util, pentru antrenamentul **RL**, eficient, deoarece *stabilizează*, formatul-de-ieșire, al modelului(*LLM*-ului), permițând, **RL**-ului, ulterior, să obțină câștiguri de performanță.<br/>
<br/>**RL**-ul îmbunătățește, constant, performanța-[**OOD**](https://encord.com/blog/what-is-out-of-distribution-ood-detection/), în toate sarcinile(*performanta-generala*), în timp ce, ***SFT***-ul arată o degradare a *performanței*(deci **RL** > ***SFT***).
<br/>Creșterea calculului-**RL**, îmbunătățește, *acuratețea*, *recunoașterii-vizuale*, în [**VLM**](https://encord.com/blog/vision-language-models-guide/)-uri, în timp ce, scalarea ***SFT***-ului, deteriorează,  atât *recunoașterea-vizuală*, cât și *performanța-generală*(deci **RL** > ***SFT***).<br/>
<br/>Lucrarea demonstrează că, **RL**-ul este superior **SFT**-ului, în dobândirea/invatarea de cunoștințe-generalizabile(necateorisire), în zona sarcinilor-complexe, multi-modale.
<br/>Cu toate acestea, sa nu uitam ca, ***SFT***-ul, este încă crucial/important/util, pentru *stabilizarea*, formatului-de-ieșire, al modelului(LLM/VLM), permițând ulterior,  antrenamentul-**RL**-eficient.
<br/><br/>***Retineti*** vă rog, că:   in scenariile **OOD** si **VLM**, **RL** > ***SFT***, dar/insa...
<br/>...se mai foloseste inca, ***SFT***-ul(stiuta fiind, capacitatea sa de *memorare/imitare*), inainte de aplicarea **RL**-ului(stiuta fiind, tendinta sa de *generalizare(necategorisire)*), dar in acest caz, j***SFT***-ul joaca un rol/ca element de... *stabilizator/stabilizare*, a[l] iesirii/raspunsului oferit.

<hr/>

</details>

<hr/>

</details>

Alte *aparitii*:

 - [Cum să construiți AI care gândește/rationeaza, prezice și evoluează (February 10, 2025)](https://www.linkedin.com/pulse/ai-roundup-how-build-thinks-predicts-thrives-genai-works-gxq8f/)
 - [Lucrări explicate 306: Ajustarea critică(**CFT**)](https://ritvik19.medium.com/papers-explained-306-critique-fine-tuning-738b25d1b51c)

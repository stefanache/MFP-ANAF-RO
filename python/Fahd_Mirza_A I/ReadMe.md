Va propun sa urmariti [seria](https://www.youtube.com/@fahdmirza/videos) de [episoade](https://github.com/fahdmirza) Youtube([**YT**](https://www.linkedin.com/in/fahdmirza/?originalSubdomain=au)) elaborate de [**Fahd Mirza**](https://www.youtube.com/results?search_query=Fahd+Mirza+AI)([blog](https://www.fahdmirza.com/))

Mi-a atras(in mod [deosebit](https://huggingface.co/fahdmirzac)( atentia acest proiect [Web LLM Assistant](https://www.youtube.com/watch?v=txflvGG_hIc); 

In fisierul batch [**_1.RUN_install**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/Fahd_Mirza_A%20I/_1.RUN_install.bat) veti gasi comentate(instructiunile prefixate cu ***REM***) instructiunile pentru instalare(care sunt necesare doar o singura data la momentul instalrii) cat si instructiunele active pt rulare;(*Nota*: in procesul de instalare se va crea un director al aplicatiei denumit ***Web-LLM-Assistant-Llamacpp-Ollama***); Aceasta aplicatie-exemplu permite interogarea/cautarea web, gen ***Google***, prefixand(cu semnul sau simbolul escape **/**)..., lucru care va semnala faptul ca urmeaza o cerere de cautare web, ...cererea  de interogare tastata de catre utilizator, la **prompt**-ul modelului conversational/de chat-ing(**gemma2:9b-instruct-q5_K_M**), model oferit de server-ul local(preinstalat) **Ollama**; Dupa decarcare(utilizand **git**), in interiorul directorului aplicatiei(***Web-LLM-Assistant-Llamacpp-Ollama***) ,veti gasi un fisier denumit **requirements.txt**(care contine ***dependenta*** de librariile necesare rularii: [**llama-cpp-python**](https://python.langchain.com/docs/integrations/llms/llamacpp/), [*duckduck*](https://medium.com/@garysvenson09/how-to-use-duckduckgo-search-with-python-in-langchain-157a816fa8d5), [*go_search*](https://github.com/tanghaibao/goatools/blob/main/goatools/go_search.py), [*colorama*](https://pypi.org/project/colorama/), [*requests*](https://www.w3schools.com/python/module_requests.asp), [*beautifulsoup4*](https://pypi.org/project/beautifulsoup4/) sau prescurtat [*BS4*](https://pypi.org/project/beautifulsoup4/), [*trafilatura*](https://pypi.org/project/trafilatura/), [*readchar*](https://pypi.org/project/readchar/));

Iata 2 exemple de cereri ce pot fi plasate(pe rand/succesiv) in prompter-ul cererii aplicatiei:

      /latest news on AI advancements
     
      /github ANAF

Cea de-a 2 a cerere, spre exemplu, va lansa o cerere, catre motorul de cautare, pt string-ul **github ANAF** si va reda rezultatele aferente descoperite.
 
Fisierul principal necesar rularii aplicatiei este **Web-LLM.py**.

Eu am avut urmatorul context-software(**SW**) de instalare si rulare:

- **Windows 10 Pro**
- **git**(utilitarul preinstatlat si utilizat pt descarcarea/download-area depozitului github al aplicatiei-exemplu)
- **python 3.10.0** (cu environment/mediu vrtual specific: ***venv***, pt instalarea dependentelor: librariilor de care depinde aplicatia motorului de cautare web)

Ca si context hardware(**HW**), pe PC-ul meu(**i7**, **32GB GDDR4 RAM** si **1TB SSD**) am avut la dispozitie un GPU modest(**Geforce RTX 4060**)

Pentru cei care doresc sa genereze cod(**code generative-AI**), folosind modele conversationale(**LLM**), va recomand, din aceiasi serie **YT**(YouTube:), aplicatia-exemplu: [***Qwen2.5 Coder 32B Instruct***](https://www.youtube.com/watch?v=tMd0FcPSei4)
 sau  [***Qwen 2.5 Coder 32B***](https://www.youtube.com/watch?v=KYvVl0UT1Sk&ab_channel=PromptEngineering)

 <hr/>

 <details>
       <summary>Hai sa discutam si alte proiecte-AI promovate de domnul <a href="https://www.linkedin.com/in/fahdmirza/recent-activity/all/">Fahd Mirza</a></summary>
       
<br/><br/><hr/>


[Orizontul](https://www.marktechpost.com/2024/11/14/microsoft-released-llm2clip-a-new-ai-technique-in-which-a-llm-acts-as-a-teacher-for-clips-visual-encoder/) [cunoasterii](https://www.microsoft.com/en-us/research/project/llm2clip/) in domeniul [generative-AI](https://www.youtube.com/watch?v=mJ-wt79u0Ls), poate fi [largit](https://github.com/microsoft/LLM2CLIP) si prin studierea unor [lucrari](https://microsoft.github.io/LLM2CLIP/) precum cea intitulata  [LLM2CLIP](https://microsoft.github.io/LLM2CLIP/).

<hr/>

In domeniul ***generative-AI(NLP,NLU)***, mai precis in domeniul [**generarii/intelegerii-3D**](https://github.com/nv-tlabs/LLaMA-Mesh), a aparut pe Youtube(YT) un filmulet al unui [3D-Chatbot](https://www.youtube.com/watch?v=c-LbbZEkcBo) interesant, intitulat "**Nvidia [Llama-Mesh](https://huggingface.co/spaces/Zhengyi/LLaMA-Mesh) - Generate [3D](https://www.youtube.com/watch?v=PSU4wB8WkzA) [Mesh](https://huggingface.co/bartowski/LLaMA-Mesh-GGUF) and Shapes with Text - Install Locally**", cu privire la generarea in spatiu-tridimensional(3D) de retele/invelitori/suprafete([**3D-mesh/shape**](https://huggingface.co/spaces/Zhengyi/LLaMA-Mesh)), generandu-se daca doriti, inclusiv,  coordonatele varfurilor sau nodurilor retelei [3D](https://towardsdatascience.com/generate-3d-images-with-nvidias-llama-mesh-69a6929a4580)(date ca/spre exemplu), pt corpuri/obiecte/solide, obtinindu-se astfel modele unificate de suprafete 3D([geometrii-triangulate](https://ro.wikipedia.org/wiki/Triangularea_unei_suprafe%C8%9Be)), pornind de la interogari textuale livrate unui model-LLM specializat(in acest caz fiind [**Zhengyi/LLaMA-Mesh**](https://github.com/nv-tlabs/LLaMa-Mesh)). 
In acest [proiect](https://github.com/nv-tlabs/LLaMA-Mesh), pentru afisarea/construirea interfetei-web-utilizator(intrarea proiectului) s-a apelat la libraria/pachetul python [**gradio**.](https://www.gradio.app/). Pentru redarea/randarea 3D(iesirea grafica a proiectului **LLaMA-Mesh**) s-a folosit libraria [**trimesh**](https://trimesh.org/). Pe partea de procesare(coloana vertebrala a proiectului) s-a utilizat pachetul [**transformers**](https://huggingface.co/docs/transformers/index). 

<hr/>

Un alt proiect legat de subtitrarea sau transcrierea/descrierea unei imagini este proiectul local(windows) care utilizeaza ca LLM, modelul [Llama3.2-vision](https://www.youtube.com/watch?v=qc99ShiPAY8)(atentie la [licenta](https://www.reddit.com/r/ollama/comments/1gxwd1j/llama_32_vision_in_the_eu/?%24deep_link=true&correlation_id=a31d354b-4ba5-42d7-a450-375f98de2cb4&post_fullname=t3_1gxwd1j&post_index=0&ref=email_digest&ref_campaign=email_digest&ref_source=email&utm_content=post_title&%243p=e_as&_branch_match_id=1376944233253091740&utm_medium=Email%20Amazon%20SES&_branch_referrer=H4sIAAAAAAAAA22P207DMBBEvyZ9Sy%2B2QwGpQgjEb6yceJss%2BKa1Q%2FrEt7NpgSckWxqd8cyup1pzedztGJ2jurU5bz3Fj53OT40yOp8QbNmITEwjRethZn%2Ba1lSjnxv1JmdZlu1PfkhBAMtN3ttgRQgKGGsReRgvizu8i7qaoBV8UqEUgSLUCQHntVFLaaeMQ8ywLtPo18ozNupuSMzobb1GnHCrD053pm9Nb7vWKHdsren2rT5254d7h2rojeRyKhXOs%2FfRBlzrNPztcjMpOryIsxfAeBaFwZIHRyOWeoMw2JAtjfF%2Ft6SZB%2Fz1BM41wJBild8LvY6pVD1uvuQ5MlMcoee0FOTTy8Qp4DfMPtIgjgEAAA%3D%3D)) deservit de serverul dvs. **Ollama**. Desigur acesta se poate utiliza si pt filmulete/video-uri avand in vedere faptul ca un astfel de obiect este format dintr-o multime sau un intreg sir/serie de imagini captate succesiv in timp.

Tot in zona [media](https://www.youtube.com/@fahdmirza) puteti consulta si acest proiect [**OmniAudio-AI model 2.6B**](https://www.youtube.com/watch?v=CrTGp60KIOA) ori proiectul [**Voice-Isolator**](https://www.youtube.com/watch?v=giblKlWtjGY).

<hr/>

Daca doriti sa testati un [**RAG multimodal(imagini si text)**](https://www.linkedin.com/in/fahdmirza/recent-activity/all/) atunci puteti consulta periodic activitatea pe [***Linkedin***](https://www.llamaindex.ai/blog/multimodal-rag-in-llamacloud) a d-lui [**Fahd Mirza**](https://www.youtube.com/watch?v=96p0-3dZTOs)(trebuie sa aveti cont pe [**LLamaCloud**](https://cloud.llamaindex.ai/login):)

<hr/>

Daca sunteti interesat de aceasta atractiva interfata **Vocala** | **Speech** in task-urile dumneavoastra AI, puteti sa cititi, mai jos, povestea...

<details>
      <summary>modelelor <b>ASR</b>...</summary>
      
<br/><br/>

Foarte interesant este si acest [model ASR | S2T](https://github.com/usefulsensors/moonshine?tab=readme-ov-file)(model de transcriere: **Voice** | **Speech** 2 ***Txt****), rulabil local(nu necesita Ollama) pe CPU(nu necesita GPU) denumit [**Moonshine**](https://www.youtube.com/watch?v=xciiB9vmImY&t=101s).<br/>
Daca intentionati sa instalati pachetul python ***useful-moonshine-onnx***(ca mai apoi sa puteti sa rulati modelul **Moonshine** din python) pe [CPU-uri/dispozitive mici/portabile](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2b-install-the-useful-moonshine-onnx-package-to-use-moonshine-with-onnx)(de ex pe [**SBC**-ul **Raspberry Pi**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file); SBC=este un mic computer pe o singura placa) atunci va trebui sa utilizati **ONXX-Runtime**.<br/> Daca insa, utilizati un [CPU normal/obisnuit](https://github.com/usefulsensors/moonshine?tab=readme-ov-file)(laptop ori desktop-PC), atunci va trebui sa instalati pachetul python ***useful-moonshine***(ca mai apoi sa puteti sa rulati modelul **Moonshine** din python), scris in(deci bazat pe sau dependent de) frontend-ul [**Keras**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2a-install-the-useful-moonshine-package-to-use-moonshine-with-torch-tensorflow-or-jax), care la randul sau, poate avea ca backend, una dintre cele 3 optiuni posibile: [**Torch**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2a-install-the-useful-moonshine-package-to-use-moonshine-with-torch-tensorflow-or-jax), [**TensorFlow**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2a-install-the-useful-moonshine-package-to-use-moonshine-with-torch-tensorflow-or-jax), ori [**JAX**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2a-install-the-useful-moonshine-package-to-use-moonshine-with-torch-tensorflow-or-jax)(in cazul in care, ca backend, utilizati **JAX**-ul, aveti posibilitatea de a utiliza **GPU** via [**CUDA**](https://hub.docker.com/r/nvidia/cuda), in loc de **CPU**).<br/> 
Indiferent ca instalati si utilizati pachetul ***useful-moonshine-onnx*** ori pachetul ***useful-moonshine***, mai intai de toate, va trebui/puteti sa utilizati un manager/gestionar de environment/mediu, cum este [**uv**](https://docs.astral.sh/uv/pip/environments/), pentru a crea si activa mediul specific ce va gazdui acest proiect.<br/>
Dupa activarea mediului de lucru, veti descarca din/[clona](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2a-install-the-useful-moonshine-package-to-use-moonshine-with-torch-tensorflow-or-jax) depozitul-Github aferent, cu ajutorul utilitarului [**uv**](https://docs.astral.sh/uv/pip/environments/), dupa caz, pachetul ***useful-moonshine-onnx*** ori pachetul ***useful-moonshine***.<br/>
In cazul utilizarii pachetului ***useful-moonshine***, va mai trebui desigur, sa specificati in plus, in variabila **KERAS_BACKEND**, care backend ati ales sa fie utilizat, dintre [**Torch**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2a-install-the-useful-moonshine-package-to-use-moonshine-with-torch-tensorflow-or-jax), [**TensorFlow**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2a-install-the-useful-moonshine-package-to-use-moonshine-with-torch-tensorflow-or-jax), ori [**JAX**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#2a-install-the-useful-moonshine-package-to-use-moonshine-with-torch-tensorflow-or-jax).<br/> 
Modelul **Moonshine** are o varianta de baza(***Base**), de aproximativ ***400 MB***, in timp ce varianta sa subtire(**Tiny**) are/este in jur de **190 MB**.<br/> 
Pentru a vă face o idee despre beneficii: **Moonshine** procesează segmentele(*chunks*) audio de 10 secunde de **5 ori mai rapid** decât rivalul sau [***Whisper***](https://egemengulpinar.medium.com/running-whisper-large-v3-on-docker-with-gpu-support-e8a5b5daabf9), menținând aceeași [*WER*](https://www.alibabacloud.com/blog/an-overview-of-methods-to-effectively-improve-rag-performance_601725) =i.e.= [*Word-Error Rates*](https://www.galileo.ai/hallucinationindex) =i.e.= [*rata de a transcrie gresit cuvintele*](https://medium.com/the-ai-forum/implementing-advanced-rag-in-langchain-using-raptor-258a51c503c6) (sau avand chiar una mai buna!).<br/> 
Codul  de inferenta(scris in **python**), care este necesar transcrierii fisierului audio **beckett.wav**(plasat in directorul ***ASSETS_DIR***) si care utilizeaza varianta **Tiny** a modelului pre-antrenat **Moonshine**, este unul cat se poate de simplu:

             >>> import moonshine # or import moonshine_onnx
             >>> moonshine.transcribe(moonshine.ASSETS_DIR / 'beckett.wav', 'moonshine/tiny') # or moonshine_onnx.transcribe(...)

Codul va produce urmatorul text-rezultat:

             ['Ever tried ever failed, no matter try again, fail again, fail better.']

Desigur acesta este un exemplu de inceput(daca vreti ... un exemplu de testare a respectivului pachet) dar dumneavoastra puteti experimenta si alte [exemple](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#examples)(un [exemplu](https://github.com/usefulsensors/moonshine/tree/main/demo) in acest sens, este si cel al utilizarii modelului **Moonshine** din/impreuna cu binecunoscuta librarie, a celor de la ***HuggingFace***, [**Transformers**](https://github.com/usefulsensors/moonshine?tab=readme-ov-file#huggingface-transformers)).<br/> 

</details>

<hr/>

La un moment dat, s-a simtit nevoia de ... integrare a continutului structurat, specific stocat in bazele de date relationale(SQL DB), cu cel nestructurat, continut de asemenea masiv, dar,  stocat, de aceasta data, in documente.

<details>
<summary>Iata aici, pe scurt, povestea produsului...<b>MindsDB</b></summary>

<br/><br/>Daca aveti niste/un documente/continut(nestructurat[e]) dar care contin[e] informatii/date(structurate; structura este cunoscuta/data) atunci probabil ca ati dori sa [extrageti](https://medium.com/mindsdb/transforming-unstructured-data-into-structured-using-ai-e989c56b1442)(folosind un model/[platforma](https://mindsdb.com/) AI: spre exemplu [**MindsDB**](https://github.com/mindsdb/mindsdb?tab=readme-ov-file)) si sa [stocati](https://www.youtube.com/watch?v=zDa3qvpD5lw) aceste [date structurate](https://www.youtube.com/watch?v=zDa3qvpD5lw) intr-o baza de date(desigur [structurata](https://www.youtube.com/watch?v=dadY-cUpUm0)); Probabil ca deja ati identificat/intuit scopul acestei [povesti](https://www.unite.ai/ro/jorge-torres-co-founder-ceo-of-mindsdb-interview-series/) de conversie si de evitare a efortului de /abstractizare si automatizare a procesar[e | ii] traditional[a | e] [ETL](https://codefinity.com/blog/What-is-the-ETL-process?utm_source=google&utm_medium=cpc&utm_campaign=21193856569&utm_content=&utm_term=&dki=&gad_source=1&gclid=CjwKCAiAyJS7BhBiEiwAyS9uNa_eEYf7AIH9uu9IcYxiQ-aiBs2SCAfM0t73VfokDo_vzZuJZKYdoBoClxcQAvD_BwE)(noul mod integrativ de a interactiona cu bazele de date dintr-o perspectiva [**AI DB - federative source data**](https://www.youtube.com/watch?v=xFTxatvBzJM)!!): ***NeStructurat***2(bidirectional)[**Structurat**](https://www.guru99.com/ro/sql-tools.html)!!!

Indiferent daca vreti sa implementati un [**RAPTOR-RAG**](https://angelina-yang.medium.com/raptor-for-advanced-rag-e0f646535c30), un [**RAPTOR**](https://www.youtube.com/watch?v=X4HPFFHjf_c), un [**RAG**](https://medium.com/the-ai-forum/implementing-advanced-rag-in-langchain-using-raptor-258a51c503c6), un **RIG** sau un simplu [**Agent**](https://github.com/mindsdb/mindsdb) puteti apela la [**MindsDB**](https://en.wikipedia.org/wiki/MindsDB) ca [integrator](https://hawatel.com/en/blog/mindsdb-what-is-it-and-what-is-it-used-for/)/[unificator](https://qdrant.tech/documentation/data-management/mindsdb/#)/[democratizator](https://hub.docker.com/r/mindsdb/mindsdb) de variate surse de date [federative](https://medium.com/israeli-tech-radar/reducing-mlops-complexity-using-sql-with-mindsdb-e20934f2e203). Pana la urma, spre exemplu, daca avem o valorificare simpla sau mixta/complexa a unui lac/masiv de date, provenind din multiple si variate [surse de date](https://docs.mindsdb.com/integrations/data-overview),  folosind un cadru-AI-NLP(cum este LangChain, LlamaIndex...), atunci un model-**LLM**(in sens larg: **ML-engine & Model**), pe date **structurate** sau ***nestructurate***(incluzand aici si metadatele indiferent cum sunt procurate), adica pe o BD **relationala**(daca vreti bazate pe relatii sau cartografiate... ex. [MySQL](https://www.w3schools.com/mysql/mysql_create_index.asp), [PostgreSQL](https://www.postgresql.org/docs/current/indexes.html), [SQL-Server](https://learn.microsoft.com/en-us/sql/relational-databases/indexes/indexes?view=sql-server-ver16), [Oracle](https://blogs.oracle.com/sql/post/how-to-create-and-use-indexes-in-oracle-database), ...), ***vectoriala/VectorDB***(ex. [MongoDB](https://www.mongodb.com/lp/cloud/atlas/vector/database?utm_content=rlsapostreg&utm_source=google&utm_campaign=search_gs_pl_evergreen_atlas_general_retarget-brand-postreg_gic-null_emea-all_ps-all_desktop_eng_lead&utm_term=&utm_medium=cpc_paid_search&utm_ad=&utm_ad_campaign_id=14412646473&adgroup=131761130372&cq_cmp=14412646473&gad_source=1&gclid=CjwKCAiAyJS7BhBiEiwAyS9uNWEyfpgYgC62yAeXsF48A6O7AVKZ2hYb0iest3R6lmTh2WdV5XbltRoCbikQAvD_BwE), [ChromaDB](https://weaviate.io/developers/weaviate/concepts/vector-index), [Weaviate](https://weaviate.io/developers/weaviate/concepts/vector-index)...) ... indiferent de forma lor de prezentare, de suportul ori locul de gazduire, adica daca sunt gazduite *local*, in *cloud* sau gazduite de/pe diverse *Aplicatii*(GhitHub/Gitlab, Docker-Hub, PyPI, Gmail/Email, Google-Calendar/Analytics, MS-Teams/Onedrive, MediaWiki, Paypall, Plaid,  Stripe, Shopify, SalesForce, Twitter, Youtube, Reddit, Slack,Stripe, Strapi, Binance, Confluence, WebCrowler,Hacker-News ...), au in cele din [urma](https://python.langchain.com/docs/integrations/providers/mindsdb/)/in [final](https://dev.to/niharikaa/mindsdb-integrate-aiml-models-into-your-applications-4oc7)/in [comun](https://github.com/aipengineer/awesome-opensource-ai-engineering/blob/main/libraries/mindsdb/README.md), ca intrare un context de interogare(***query/prompt***) si ca iesire un raspuns(***answer/response***), [ambele] fiind  stilizate/formulate/interfatate/automatizate in functie de contextul-utilizarii / scopului / evaluarii / valorizarii / aplicarii. Asadar [**MindsDB**](https://www.fragment-studio.com/technologies/mindsdb) permite atat integrarea/generaralizarea si automatizarea de ... **date alfa-numerice**(texte propriu-zise/pure dar si texte extrase / titrari / etichetari sau transcrieri / descrieri de/din surse-media, cum ar fi imagini, video, audio ... date de natura statica, daca vreti), cat si de ... **management / cautare-regasire / clasificare / traducere / procesare / transformare / modelare**(dar si actiuni de natura dinamica/activa/[procesuala](https://www.twelvelabs.io/blog/twelve-labs-and-mindsdb)), cu specificitate/accent pe zona [**AI-ML-NLP**](https://medium.com/mindsdb).

***OBS:***:

 - cu [**MindsDB**](https://medium.com/mindsdb), notiuni ca [**reglaj fin**, **reAntrenare** sau **RAG**](https://medium.com/mindsdb/whats-the-difference-between-fine-tuning-retraining-and-rag-3e2201143199), pot fi simplu efectuate, cu doar cateva comenzi!
 - despre principiul functionarii [**MindsDB**](https://mindsdb.com/minds), puteti consulta acest [articol](https://mindsdb.com/minds)
 - iata aici o [comparatie](https://medium.com/evadb-blog/mindsdb-vs-evadb-9005c7a9ffd1) intre [**MindsDB**](https://github.com/mindsdb)(ofera un set mai bogat de integrari) si [**EvaDB**](https://evadb.readthedocs.io/en/stable/)(ofera o utilizare mai buna a GPU-ului)
 - un articol interesant este si cel intitulat [**Reducerea complexitatii MLOps cu MindDB**](https://medium.com/israeli-tech-radar/reducing-mlops-complexity-using-sql-with-mindsdb-e20934f2e203)
 - puteti consulta aceasta [pagina](https://docs.mindsdb.com/mindsdb_sql/connect/mysql-client), pt a vedea, de pilda,  cum puteti folosi [**MindsDB**](https://mindsdb.com/blog/tutorial-enabling-machine-learning-in-questdb-with-mindsdb) impreuna cu **MySQL-CLI**.
 - o [***comparatie***](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/Docker-run-vs-docker-compose-Whats-the-difference) [**docker-*run***](https://medium.com/@jared.ratner2/setting-up-docker-and-docker-compose-with-nvidia-gpu-support-on-linux-716db95c0f7c) vs. [**docker-compose**](https://medium.com/@jared.ratner2/setting-up-docker-and-docker-compose-with-nvidia-gpu-support-on-linux-716db95c0f7c)(care foloseste fisier **.yml** / [**.yaml**](https://github.com/valiantlynx/ollama-docker/blob/main/docker-compose-ollama-gpu.yaml) pt configurare si care poate gestiona mai multe containere=**multi-container**) va va permite sa intelegeti aceste 2 instrumente despre care se face vorbire in documentatia de instalare [**MindsDB**](https://developers.minds.com/docs/getting-started/installation/)
 - pentru a instala [**docker**](https://dev.to/0xkoji/install-docker-on-wsl2-2ma5)(iata aici si o varianta de instalare [**docker-compose**](https://docs.docker.com/get-started/workshop/08_using_compose/)(parte a [**docker-desktop**](https://docs.docker.com/desktop/)) cu/folosind [**GPU**](https://gdevakumar.medium.com/setup-windows-10-11-machines-for-deep-learning-with-docker-and-gpu-using-wsl-9349f0224971)-deci va fi necesar sa utilizati/instalati/aveti [**driverul specific/aferent placii GPU**](https://www.nvidia.com/en-us/drivers/), care la randul sau va fi utilizat de catre pachetul [***CUDA***](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=WSL-Ubuntu&target_version=2.0&target_type=runfile_local)) si [**docker-compose**](https://www.geeksforgeeks.org/docker-compose-for-windows-tips-and-tricks/) si/pe [**Ubuntu-WSL2**](https://documentation.ubuntu.com/wsl/en/github-actions-docs/tutorials/gpu-cuda/) v-as recomand sa cititi acest [***gist***](https://gist.github.com/martinsam16/4492957e3bbea34046f2c8b49c3e5ac0)(il recomand!)
 - puteti vedea, in acest [articol](https://docs.docker.com/desktop/features/gpu/), cum puteti seta **GPU-PV**-ul(pt a fi utilizat, spre exemplu, de catre **LLM**-serverul **Ollama**) atunci cand folositi [**docker-*run***](https://stackoverflow.com/questions/70761192/docker-compose-equivalent-of-docker-run-gpu-all-option) sau [**docker-desktop**](https://docs.docker.com/desktop/)(care include **docker-compose**) instalat pe [***Ubuntu-WSL2***.](https://www.windowscentral.com/how-completely-remove-linux-distro-wsl)/[**windows 10 sau 11**](https://askubuntu.com/questions/1523831/gpu-not-working-with-wsl-2-running-ubuntu-22-04)
 - instalarea(*[ne](https://blog.roboflow.com/use-the-gpu-in-docker/)-[Docker](https://docs.docker.com/compose/how-tos/gpu-support/)-izata* si *fara suport [GPU](https://docs.docker.com/compose/how-tos/gpu-support/)*) diverselor **baze de date**(***MySQL***, ***MariaDB***, ***PostgreSQL***, ...) poate fi o adevarata provocare pe **Ubuntu-WSL**, asa incat acest [***website***](https://kontext.tech/article/1031/install-mariadb-server-on-wsl)(vedeti link-urile de legatura in partea de *jos* a paginii!) va poate veni in ajutor.
 
<details>
   <summary>Cateva consideratii despre/relativ la ...<b>GPU</b> si <b>Docker</b>-izare:...</summary> 
         
<br/><br/>In cazul in care, doriti suport <b>GPU</b> <i>Docker</i>-izat(in caz ca utilizati <b>docker-<i>run<i></b>, deci nu lucrati cu configurare in fisier .yaml ci configurati DIRECT IN LINIA DE COMANDA si desigur folositi fisier <b><i>Dockerfile</i></b>), iata aici o <a href="https://blog.roboflow.com/use-the-gpu-in-docker/">resursa de referinta</a>(<i>sper eu utila!</i>), care vorbeste despre <a href="https://medium.com/@albertqueralto/enabling-cuda-capabilities-in-docker-containers-51a3566ad014"><b>NVIDIA Container Toolkit</b></a>:

   [<img src="https://blog.roboflow.com/content/images/size/w1000/2020/05/image-39.png">]([https://link-to-your-URL/](https://blog.roboflow.com/use-the-gpu-in-docker/))

   **NVIDIA Container Toolkit** este o imagine Docker care oferă suport pentru a *recunoaște automat **driverele GPU**(cele care se vad in linia de comanda: **nvidia-smi**)* de pe computerul de bază(**Host/Server**) și pentru a *transmite aceleași **drivere***(expluneti driverele GPU la Docker) în containerul-Docker(**Container 1 ... Container N**) atunci când rulează.

   Iata ce se vede, la mine, cand dau comanda **nvidia-smi**, in **Ubuntu 22.04**, pe desktop-PC-ul meu:

                  user@DESKTOP-*******:~$ nvidia-smi
                  Sat Dec 21 21:24:31 2024
                  +-----------------------------------------------------------------------------------------+
                  | NVIDIA-SMI 565.51.01              Driver Version: 565.90         CUDA Version: 12.7     |
                  |-----------------------------------------+------------------------+----------------------+
                  | GPU  Name                 Persistence-M | Bus-Id          Disp.A | Volatile Uncorr. ECC |
                  | Fan  Temp   Perf          Pwr:Usage/Cap |           Memory-Usage | GPU-Util  Compute M. |
                  |                                         |                        |               MIG M. |
                  |=========================================+========================+======================|
                  |   0  NVIDIA GeForce RTX 4060        On  |   00000000:01:00.0  On |                  N/A |
                  |  0%   38C    P8             N/A /  115W |     488MiB /   8188MiB |      2%      Default |
                  |                                         |                        |                  N/A |
                  +-----------------------------------------+------------------------+----------------------+
                  
                  +-----------------------------------------------------------------------------------------+
                  | Processes:                                                                              |
                  |  GPU   GI   CI        PID   Type   Process name                              GPU Memory |
                  |        ID   ID                                                               Usage      |
                  |=========================================================================================|
                  |  No running processes found                                                             |
                  +-----------------------------------------------------------------------------------------+


Desigur, suplimentar, daca aveti de lucrat(sa spunem/luam cazul ne[*Docker*](https://hub.docker.com/r/nvidia/cuda/tags)izat), cu [***DNN***](https://developer.nvidia.com/deep-learning)([Deep Neural Network](https://medium.com/@milistu/how-to-install-cuda-cudnn-7e4a00ae4f44)), accelarand procesele via [**CUDA/GPU**](https://hub.docker.com/r/nvidia/cuda), atunci va trebui sa mai instalati si [***cuDNN***](https://developer.nvidia.com/cudnn)(in cazul [arhitecturii mele](https://forums.developer.nvidia.com/t/cuda-with-nvidia-geforce-rtx-4060/311019), descarcarea(si apoi instalarea conform instructiunilor specifice) [cuDNN](https://docs.nvidia.com/deeplearning/cudnn/latest/reference/support-matrix.html), se va efectua folosind urmatoarele filtre specifice: **Linux**, **x86_64**, **Ubuntu**, **22.04**, **deb(local)** pt **Driver for Linux 565.90** si **CUDA 12**)

</details>
</details>

<hr/>

<details>      
<summary>Si acum... cateva lucruri despre <b>agentii-AI</b>...</summary>

<br/>
<hr/>
      
Probabil ca multi ati/au auzit de procesatorul de plati [**Stripe**](https://www.youtube.com/watch?v=WM-1FGwjiZQ)(un rival/concurent/coleg de breasla al **Paypall** si... al multor astfel de "platitori")

<details>
      <summary>Iata aici povestea, pe scurt, a <b>Agentului-AI <i>Stripe</i></b>...</summary>

<br/><hr/><br/>Ideea de baza este ca platitorii(cum este si platforma **Stripe**) sunt un fel de intermediar/liant(intre parti/partide) in tranzactiile de contra(vanzatorul vrea pret mare iar cumparatorul vrea pret mic)-partida **Vanzare-Cumparare**(atentie nu exista vanzare fara cumparare sau vanzator=comerciant fara cumparator... *ATENTIE/obs:** vanzatorul fara cumparator [este denumit/face o]  *oferta-d-e vanzare* iar cumparatorul fara vanzator este [denumita/face o]  *oferta-de-cumparare* !!!), intre client si banca clientului( pe de-o parte) si comerciant impreuna cu banca comerciantului(pe de alta parte).

Daca va faceti [cont](https://docs.stripe.com/connect/authentication), pe aceasta platforma(**Stripe**), ca si comerciant(desigur ca puteti/oricine poate avea un asfel cont si in calitate de client), practic aveti deja posibilitatea, de a avea [propriul](https://dashboard.stripe.com/account/apikeys) magazin virtual de comert electronic/**e-commerce**(de vanzare a produsleor voastre fizice sau conceptuale).

Desigur, in astfel de tranzactii, software-ul dedicat este foarte important, in facilitarea acestui fel/tip de tranzactii, tri-partite(**client**+banca-client, **platitor-intermediar**-in acest caz **Stripe**, **comerciant**+banca-comerciant).

Astfel pt dezvoltatorii care utilizeaza **Python**, **NodeJS**... exista, de ceva timp, [**SDK**](https://en.wikipedia.org/wiki/Software_development_kit)-uri(Software Development Kit) care sa accelereze, procesul de dezvoltare al aplicatiilor de ***e-commerce***.

Odata cu aparitia **AI/NLP**, peste aceste pachete(**SDK**-uri) softare, ar fi util sa avem agenti-AI, care sa permita interfatarea-utilizator, mai usoar de infaptuit pentru un non-dezvoltator(utilizator obisnuit).

Un astfel de [**agent-AI Stripe**](https://github.com/stripe/agent-toolkit?tab=readme-ov-file), ne propune si dl. **Fahd Mirza**, in acest [**video-youtube**](https://www.youtube.com/watch?v=WM-1FGwjiZQ).

Acest **agent-AI Stripe** are 2 implementari: una pt./in **Python**(la care ne referim si noi in aceasta postare: instalarea se face cu comanda: ***pip install stripe-agent-toolkit***) si alta in/pt. **NodeJS**/**TypeScript**: instalarea se face cu c-da: ***npm install @stripe/agent-toolkit***) .

**Agentul-AI Stripe**(API-ul), scris in Python, are urmatoarele [metode](https://github.com/stripe/agent-toolkit?tab=readme-ov-file#supported-api-methods)/facilitati implementate(chiar daca **nu** acopera intregul spectru de facilitati oferite de catre ***SDK***-ul python):

 - [Creați un **client**](https://docs.stripe.com/api/customers/create)
 - [Listați toți **clienții**](https://docs.stripe.com/api/customers/list)
 - [Creați un nou **produs**](https://docs.stripe.com/api/products/create)
 - [Listați toate **produsele**](https://docs.stripe.com/api/products/list)
 - [Creați un nou **preț**](https://docs.stripe.com/api/prices/create)
 - [Listați toate **prețurile**](https://docs.stripe.com/api/prices/list)
 - [Creați un **link** de (instiintare) plată](https://docs.stripe.com/api/payment-link/create)
 - [Creați o ***factură***](https://docs.stripe.com/api/invoices/create)
 - [Creați un **articol** de ***factură***](https://docs.stripe.com/api/invoiceitems/create)
 - [Finalizați o ***factură***](https://docs.stripe.com/api/invoices/finalize)
 - [Recuperează/Extrage **balanta** de echilibru/verificare](https://docs.stripe.com/api/balance/balance_retrieve)
 - [Creați o **rambursare**](https://docs.stripe.com/api/refunds/create)

Asadar, sunt facilitati, care ofera operatii de tip [**CR*****UD***](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete), pt tabelele ce contin date(**Clienti**, **Produse**, **Preturi**, [*master-detail*](https://en.wikipedia.org/wiki/Master%E2%80%93detail_interface) **Factura-articole**), dar, si pt extragere de situatii/stari/interogari(**Link**-uri de **Pret**, **Balanta** de Verificare, Liste pt **Clienti**, **Produse**, **Preturi**,...), ori, pt cazuri operationale speciale(cum este cazul, **Rambursarii** unei sume deja incasate, in cazul, stornarilor de facturi-emise, de catre **Stripe**, in numele utilizatorui-comerciant).

Acest pull/set de operatii(principale/importante), pare sa fie unul indeajuns de **consistent(satisfacator/multumitor)**, pt a putea gestiona(din [perspectiva/dp.d.v] al  unui comerciant), un magazin **e-commerce**.

Bineinteles, ca pot fi luate in calcul si alte operatiuni, mai mult sau mai putin importante, dar acestea pot acoperi, in prima instanta, nevoile unui **utilizator**(mai precis...**comerciant**) obisnuit/normal,
mai ales daca aceste facilitati sunt solicitate(cu usurinta/facil/la indemana/in mod accelerat) prin "viu grai"(de fapt, cerute prin prompt-text/de la tastatura, dar desigur, pot fi folosite si alte extensii, pt a oferi chiar o interfata-utilizator vocala/audio de tip conversie/transcriptie [Sound2Text](https://turboscribe.ai/?ref=gad-2023-12-19-t2&gad_source=1&gclid=CjwKCAiAjp-7BhBZEiwAmh9rBZuAHVNwjav5J4p7SVICJZOI8EOJ9yc0zuxOfB-CDRx6DJlrhyXBRxoCbrcQAvD_BwE) / [Voice2Text](https://aws.amazon.com/pm/transcribe/?gclid=CjwKCAiAjp-7BhBZEiwAmh9rBbHm1lnxmkB3ISyv5aUS7HudRXF5IzkdtswQzJrlsURL1ts-yUGQyRoCDDgQAvD_BwE&trk=d04008cc-cbb5-47ba-a4cd-94ccbe34c035&sc_channel=ps&ef_id=CjwKCAiAjp-7BhBZEiwAmh9rBbHm1lnxmkB3ISyv5aUS7HudRXF5IzkdtswQzJrlsURL1ts-yUGQyRoCDDgQAvD_BwE:G:s&s_kwcid=AL!4422!3!655532932716!p!!g!!audio%20to%20text%20converter!20003303474!153392240092) / [S2T](https://aws.amazon.com/pm/transcribe/?gclid=CjwKCAiAjp-7BhBZEiwAmh9rBXH9t8Z33R_XtNvb7RjtJMASK3FMuSJNp_rUBdJ0n4vHe_Vy_1ilHRoCumkQAvD_BwE&trk=d04008cc-cbb5-47ba-a4cd-94ccbe34c035&sc_channel=ps&ef_id=CjwKCAiAjp-7BhBZEiwAmh9rBXH9t8Z33R_XtNvb7RjtJMASK3FMuSJNp_rUBdJ0n4vHe_Vy_1ilHRoCumkQAvD_BwE:G:s&s_kwcid=AL!4422!3!655532932716!p!!g!!audio%20to%20text%20converter!20003303474!153392240092) / [ASR](https://ro.wikipedia.org/wiki/ASR))   

Sa nu uitam, ca pana/in cele din urma, un **NLP** inseamna, a intelege([**NLU**](https://en.wikipedia.org/wiki/Natural_language_understanding)), un text(cerinta)-conversational(a), si a oferi/genera([**NLG**](https://datasolut.com/natural-language-processing-vs-nlu-vs-nlg-unterschiede-funktionen-und-beispiele/)), in final, acces la  un instrument **software(SW)** , pt a rezolva(cel mai adesea, in mod activ si uneori, in mod pasiv), aceasta cerere(**query**) a dvs(deci, este pana la urma, un intermediar/convertor: din **Limbaj natural**, exprimat prin text/audio/video, catre/la,  **Software(SW)**, cu alte cuvinte, inseamna, ca si valorificare, o tranformare/conversie: **Limbaj-Txt2SW**) .

Desigur, asa cum am mentionat anterior, ar trebui sa aveti in vedere si posibilitatea alternativa(dintr-o perspectiva ***pasiva***), cu alte cuvinte de a folosi **NLP=Txt2SW**, si pt cazuri pasive, adica de intelegere(daca vreti, doar de dragul conversatiei).<br/>
Chiar si pentru astfel de cazuri ***pasive***, in care se urmareste(cel mult), **traducerea** in diverse alte ***limbi naturale***(nu artificiale, cum sunt cele tehnice/software: php, python, javascript/java ...), dar si traducerea in ***limbaje artificiale***(codificabile ca si context programabil|) sau,  daca vreti, spre exemplu, in care se urmareste **valorificarea, ca si concept**(deci pasiv, si nu activ), in sensul **rezumarii**/extragerii de "idei/concepte", ori in sensul exprimarii de "**rationamente**"(mai mult sau mai putin logice/matematice/fizice/sau rationamente de modelare in oricare alta stiinta exacta/mai putin exacta), va trebui, ca scopul final/destinatia finala, sa aiba,  o reprezentare **algoritmica**(caracteristica specifica oricarui software/**SW**) ...

Un exemplu recent, de [model](https://huggingface.co/hexgrad/Kokoro-82M) **TTS**/**T2S**([Txt-to/2-Sound](https://www.fahdmirza.com/2024/12/install-kokoro-tts-model-locally.html)), ce poate fi rulat si local(avand un numar relativ redus de parametrii) ar fi si cazul modelului [**Kokoro**](https://www.youtube.com/watch?v=up-ZG35uuvQ)

</details>

<hr/> 

Un [exemplu](https://www.youtube.com/watch?v=pOBwIvpGWvU) de Agent de cod(generator agentic de cod/script de programare/traducere a propriilor sale actiuni-agentice in cod-Python, de [mica](https://www.reddit.com/r/ollama/comments/1hr4ad6/are_these_small_llms_really_useful/?%24deep_link=true&correlation_id=16dc3efb-152a-46bb-a301-632505a57ce9&post_fullname=t3_1hr4ad6&post_index=0&ref=email_digest&ref_campaign=email_digest&ref_source=email&utm_content=post_title&%243p=e_as&_branch_match_id=1394624833870618536&utm_medium=Email%20Amazon%20SES&_branch_referrer=H4sIAAAAAAAAA22Q3UrEMBCFn6Z7191t01YUFhHF1ximzWwbnPwwSane%2BOxOXfVKSODwnZwzQ5ZSUn44nYSsdeWIKR3ZhbeTSY9V25l0IcB8UBnFzS4gwyp8WfZUZZ6q9lXPtm3Hn%2FwUvQLRG5nRowpFnkLJKptFOrSDKhSCslAmyB6ZgdlnEFL5AWum68p7tdH2vu0sUYJ9q8q8FFmpaocpihBjcTGAs8qbwU6GrmPd9C3W3TCONZpzUw%2Bm7c899ncT3WsuxVxA2zmgp73OwN9SN9MFS%2B%2FqnBUIXVWRR8dg3Uy53CBM6BO6Ofzv5rjKRL%2BewrV4mGIo%2Bg1Kv8cUV5gOn%2FqcRFyYYZS4ZZLL8yLR0xebACZvlwEAAA%3D%3D) intindere adica pt sarcini de programare simple), care se bazeaza pe un model **LLM** (cum este Llama3.2), livrat/(de)servit local de un  Ollama server, poate fi tentant in a fi incercat. In ajutorul dumneavoastra vine acum o librarie([smolAgent](https://huggingface.co/blog/smolagents)) care va abstractizeaza/ususreaza acest demers(de a construi agenti de cod).

<details>
<summary><b><i>Nota</i>:</b> cateva lucruri remarcabile despre libraria <a href="https://huggingface.co/blog/smolagents"><b>smolAgent</b></a>...</summary> 

 Un astfel de [Agenț](https://github.com/huggingface/smolagents) scrie/genereaza cod Python(testat in/la executie) pentru a apela instrumente și pentru a orchestra alți agenți.<br/>
Cum recunoastem un astfel de Agent-de-codare? Hai sa vedem gradual cum stau lucrurile...<br/>
<table>
<tr>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">La nivel de agent</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Descriere</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Cum se numește asta</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Exemplu de model</font></font></th>
</tr>

<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">☆☆☆</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ieșirea LLM nu are impact asupra fluxului programului</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><b>Procesor simplu</b></font></font></td>
<td><code><b>process_llm_output(</b>llm_response<b>)</b></code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">★☆☆</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ieșirea LLM determină fluxul de control de bază</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><b>Router</b></font></font></td>
<td><code><b>if</b> llm_decision()<b>:</b> path_a() <b>else:</b> path_b()</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">★★☆</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ieșirea LLM determină execuția funcției</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><b>Apel de instrument</b></font></font></td>
<td><code><b>run_function(</b>llm_chosen_tool, llm_chosen_args<b>)</b></code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">★★★</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ieșirea LLM controlează iterația și continuarea programului</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><b>Agent cu mai mulți pași</b></font></font></td>
<td><code><b>while</b> llm_should_continue()<b>:</b> execute_next_step()</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">★★★</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Un flux de lucru agentic poate porni un alt flux de lucru agentic</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><b>Multi-Agent</b></font></font></td>
<td><code><b>if</b> llm_trigger()<b>:</b> execute_agent()</code></td>
</tr>
</table>

Se poate lesne observa, cum un **LLM**(mai precis iesirea/rezultatul-procesarii acestuia confera acestuia un anumit rol) poate juca, rand pe rand, diverse ***roluri/implicari***(in controlul formarii fluxului general de executie), spre exemplu: 

  - un rol pasiv(*fara implicare*),
  - un rol activ de **decident**(in alegerea de instrumente=o listă la care agentul are acces) sau de **furnizor de argumente** intr-un alternator de ***rutare decizionala***
  - un rol activ de **tester**(verificator de ramanere in/continuare a ciclar[e/ii]/bucl[a/ei] sau de abandonare a acesteia) intr-o ***bucla de executie***
  - un rol activ de **trigger** in declansarea ***executiei altui agent***

Pe masura ce creste implicarea sau in ordinea cresterii gradului de implicare, a LLM-ului(desigur implicat intr-o anumita structura de cod) respectiv, avem rand pe rand, de-a aface cu o **structura de cod** de tipul unui:

  - simplu **Procesor**
  - **Router**
  - **Agent cu mai multi pasi/multi-pas**
  - ori a unei *structuri de cod* de tipul unui **Multi-Agent**.

O prima observatie ar fi ca uitandu-ne la această definiție, „Agentul” nu este/are o definiție discretă, 0 sau 1: ci/în schimb, „Agentul” sau poate mai bine spus(din aceasta perspectiva a implicarii continue), „Agenția/Implicarea”,  evoluează pe un spectru continuu, pe măsură ce acordați mai mult sau mai puțină putere **LLM**-ului în fluxul dvs. de lucru.

Trebuie retinut si faptul ca aici ne refereim la suportul oferit de libraria [smolAgent](https://huggingface.co/blog/smolagents) care abstractizeaza sau simplifica scrierea agentilor de tipul  **Agentiilor de cod** adica care se refera la acei **agenti care își scriu acțiunile în cod**(a nu se confunda cu *„agenții folosiți pentru a scrie cod”*)

Asadar, orice sistem eficient care folosește inteligența artificială(AI/IA) va trebui să ofere **LLM**-urilor un fel de ***acces la lumea reală***: de exemplu, posibilitatea de a apela un **instrument de căutare** pentru a obține informații externe sau de a acționa asupra anumitor programe pentru a rezolva o sarcină(cu alte cuvinte, LLM-urile ar trebui să aibă **Agent/Agenție/implicare**). <br/>
Pentru LLM, **programele agentice** sunt poarta de acces către lumea exterioară.

***Agenții-AI*** sunt programe în care rezultatele LLM controlează fluxul de lucru .

Orice sistem care folosește LLM-uri va integra rezultatele LLM în cod. Influența intrării LLM asupra fluxului de lucru al codului este nivelul de agenție/implicare al LLM-urilor în sistem.
</details>

<hr/>

Un alt [proiect](https://www.youtube.com/watch?v=-0Y5oepu0Pc) interesant legat de *gestionarea* si *orchestrarea* ***agentilor-AI*** este si [**Agentarium**](https://github.com/Thytu/Agentarium).<br/>
[**Agentarium**](https://github.com/Thytu/Agentarium) este un cadru Python puternic care oferă o modalitate flexibilă și intuitivă de a *crea*, *gestiona* și *coordona* interacțiunile(ati putea citi chiar "*inter-acțiunile*") între mai mulți ***agenți-AI*** în diferite medii( a se consulta [exemplele](https://github.com/Thytu/Agentarium#examples) si [documentatia](https://github.com/Thytu/Agentarium#documentation)).

<hr/>

Tot legat de [***agenti-AI***](https://www.youtube.com/watch?v=ffL-bJsW5Xk) este si proiectul [**Griptape**](https://github.com/griptape-ai/griptape).<br/>
[**Griptape**](https://github.com/griptape-ai/griptape) este un cadru Python modular pentru construirea de aplicații bazate pe inteligență artificială(AI) care se conectează în siguranță la datele și API-urile companiei tale. Oferă dezvoltatorilor capacitatea de a menține controlul și flexibilitatea la fiecare pas(consultați [Griptape Docs](https://docs.griptape.ai/), precum si cursuri online gratuite, intitulate [Griptape Trade School](https://learn.griptape.ai/)!).<br/>
[**Griptape**](https://github.com/griptape-ai/griptape) este un cadru Python modular pentru agenți și fluxuri de lucru AI cu raționament, instrumente și memorie în lanț de gândire.

<hr/>

</details>

<hr/>

Acum, sa ne concetram/focusam atentia asupra unei parti importante a unui RAG si anume partea de incorporare(partea de <b>transformare</b> a propozitiilor unui text in vectori numerici)
In acest sens, [Nomic](https://nomic-ai.notion.site/Careers-Nomic-be1323b7fdef45dc994ed918a2c0ff69) a publicat pe Hub-ul modelellor LLM(HuggingFace), un nou [produs](https://huggingface.co/nomic-ai/modernbert-embed-base) intitulat [**ModernBERT Embed Base**](https://www.youtube.com/watch?v=HcVav0IqZlk).

<details>
<summary>Dupa cum puteti vedea, acest nou <b>incorporator</b>, beneficiaza de caracteristici specifice importante.</summary>

**ModernBERT Embed Base** este un model de încorporare antrenat de **ModernBERT base** , care aduce noile progrese ale ModernBERT la încorporare!

Antrenat pe seturile de date slab supravegheate și supravegheate, **ModernBERT Embed Base** , acceptă și dimensiunile de 256 ***Matryoshka Representation Learning(trunchierea Matryoshka***, reducând memoria de 3x cu pierderi minime de performanță.

Acest model(folosit pt sarcina de incorporare) are avantajul ca poate fi folosit ***direct*** din/cu bibliotecile **Transformers(python,js)**

Sa ne ocupam putin de cazul python:

 - instalarea bibiliotecii **Transformers** utilizand instalatorul(specific python) ***pip***:
 
       pip install git+https://github.com/huggingface/transformers.git
 
 - iata un [exemplu](https://huggingface.co/nomic-ai/modernbert-embed-base) simplu de utilizare pt sarcina de **Transformare de propoziții/SentenceTransformer** de dimensiune mare(768):

       from sentence_transformers import SentenceTransformer
    
       model = SentenceTransformer("nomic-ai/modernbert-embed-base")
    
       query_embeddings = model.encode([
               "search_query: What is TSNE?",
               "search_query: Who is Laurens van der Maaten?",
           ])
       doc_embeddings = model.encode([
       "search_document: TSNE is a dimensionality reduction algorithm created by Laurens van Der Maaten",
       ])
          
       print(query_embeddings.shape, doc_embeddings.shape)
       # (2, 768) (1, 768)
    
       similarities = model.similarity(query_embeddings, doc_embeddings)
       print(similarities)
       # tensor([[0.7214],
       #         [0.3260]])

***OBS:*** Dupa ce aceasta sarcina de inglobare/incapsulare a fost efectuata(in acest caz sarcina s-a efectuat cu ciopartire/trunchiere de 768), s-a efectuat valorificrea
acesteia cautand similaritatile.

 - aceiasi varianta de **SentenceTransformer**, dar de data aceasta, pt o dimensiune mai mica, de 256(utilizand pt aceasta ciopartire, ***trunchierea Matryoshka***), ar arata astfel::

       from sentence_transformers import SentenceTransformer
       
       model = SentenceTransformer("nomic-ai/modernbert-embed-base", truncate_dim=256)
       
       query_embeddings = model.encode([
           "search_query: What is TSNE?",
           "search_query: Who is Laurens van der Maaten?",
       ])
       doc_embeddings = model.encode([
           "search_document: TSNE is a dimensionality reduction algorithm created by Laurens van Der Maaten",
       ])
          
       print(query_embeddings.shape, doc_embeddings.shape)
       # (2, 256) (1, 256)
       
       similarities = model.similarity(query_embeddings, doc_embeddings)
       print(similarities)
       # tensor([[0.7759],
       #         [0.3419]])

 - similar, in varianta **Transformers**, pt inceput, fara trunchiere(valorificarea mentinandu-se aceiaisi), vom avea:

       import torch
       import torch.nn.functional as F
       from transformers import AutoTokenizer, AutoModel
       
       
       def mean_pooling(model_output, attention_mask):
           token_embeddings = model_output[0]
           input_mask_expanded = (
               attention_mask.unsqueeze(-1).expand(token_embeddings.size()).float()
           )
           return torch.sum(token_embeddings * input_mask_expanded, 1) / torch.clamp(
               input_mask_expanded.sum(1), min=1e-9
           )
       
       
       query_embeddings = model.encode([
               "search_query: What is TSNE?",
               "search_query: Who is Laurens van der Maaten?",
           ])
       doc_embeddings = model.encode([
       "search_document: TSNE is a dimensionality reduction algorithm created by Laurens van Der Maaten",
       ])
       
       tokenizer = AutoTokenizer.from_pretrained("nomic-ai/modernbert-embed-base")
       model = AutoModel.from_pretrained("nomic-ai/modernbert-embed-base")
       
       encoded_queries = tokenizer(queries, padding=True, truncation=True, return_tensors="pt")
       encoded_documents = tokenizer(documents, padding=True, truncation=True, return_tensors="pt")
       
       with torch.no_grad():
           queries_outputs = model(**encoded_queries)
           documents_outputs = model(**encoded_documents)
       
       query_embeddings = mean_pooling(queries_outputs, encoded_queries["attention_mask"])
       query_embeddings = F.normalize(query_embeddings, p=2, dim=1)
       doc_embeddings = mean_pooling(documents_outputs, encoded_documents["attention_mask"])
       doc_embeddings = F.normalize(doc_embeddings, p=2, dim=1)
       print(query_embeddings.shape, doc_embeddings.shape)
       # torch.Size([2, 768]) torch.Size([1, 768])
       
       similarities = query_embeddings @ doc_embeddings.T
       print(similarities)
       # tensor([[0.7214],
       #         [0.3260]])



 - utilizarea aferenta **Transformers**, dar de aceasta data, utilizind / impreuna cu ***trunchierea Matryoshka***, de dimensiune  mica(256):

       import torch
       import torch.nn.functional as F
       from transformers import AutoTokenizer, AutoModel
       
       
       def mean_pooling(model_output, attention_mask):
           token_embeddings = model_output[0]
           input_mask_expanded = (
               attention_mask.unsqueeze(-1).expand(token_embeddings.size()).float()
           )
           return torch.sum(token_embeddings * input_mask_expanded, 1) / torch.clamp(
               input_mask_expanded.sum(1), min=1e-9
           )
       
       
       query_embeddings = model.encode([
               "search_query: What is TSNE?",
               "search_query: Who is Laurens van der Maaten?",
           ])
       doc_embeddings = model.encode([
       "search_document: TSNE is a dimensionality reduction algorithm created by Laurens van Der Maaten",
       ])
       
       tokenizer = AutoTokenizer.from_pretrained(".")
       model = AutoModel.from_pretrained(".")
       truncate_dim = 256
       
       encoded_queries = tokenizer(queries, padding=True, truncation=True, return_tensors="pt")
       encoded_documents = tokenizer(documents, padding=True, truncation=True, return_tensors="pt")
              
       with torch.no_grad():
           queries_outputs = model(**encoded_queries)
           documents_outputs = model(**encoded_documents)
       
       query_embeddings = mean_pooling(queries_outputs, encoded_queries["attention_mask"])
       query_embeddings = query_embeddings[:, :truncate_dim]
       query_embeddings = F.normalize(query_embeddings, p=2, dim=1)
       doc_embeddings = mean_pooling(documents_outputs, encoded_documents["attention_mask"])
       doc_embeddings = doc_embeddings[:, :truncate_dim]
       doc_embeddings = F.normalize(doc_embeddings, p=2, dim=1)
       print(query_embeddings.shape, doc_embeddings.shape)
       # torch.Size([2, 256]) torch.Size([1, 256])

       similarities = query_embeddings @ doc_embeddings.T
       print(similarities)
       # tensor([[0.7759],
       #         [0.3419]])

       

       
***OBS:*** În cazul **Transformers**, puteți trunchia înglobările la o dimensiune mai mică prin/folosind tăierea înglobărilor(..._embeddings[:, :truncate_dim]) medii grupate, înainte de normalizare: ... = F.normalize(..._embeddings, p=2, dim=1)!
</details>
<hr/>
<details>
<summary>Recent a aparut modelul local <a href="https://www.youtube.com/watch?v=CV8TE9aE1xM&t=22s"><b>Dolphin 3.0 Llama 3.1 8B</b></a></summary>

Acest [model](https://huggingface.co/cognitivecomputations/Dolphin3.0-Llama3.1-8B) este un model local de uz general final(model de margine), permițând: 

 - codificare,
 - matematică,
 - agentic și ...
 - cazuri de utilizare generale
   
Modelul poate fi instalat local pe serverul **Ollama** utilizand comanda:

                  ollama pull hf.co/cognitivecomputations/Dolphin3.0-Llama3.1-8B-GGUF:Q8_0

ori

                  ollama run hf.co/cognitivecomputations/Dolphin3.0-Llama3.1-8B-GGUF:Q4_0

apoi verifica daca s-a instalat cu 

                  Ollama list

Desigur, există multe modalități de a folosi un astfel de model HuggingFace(HF), inclusiv:

 - Ollama
 - LM Studio
 - Biblioteca Huggingface Transformers
 - vllm
 - sglang
 - tgi

 </details>
 
<hr/>

Stim de ceva vreme, ca lupta dintre ***RAG***(cu cadrul sau de dezvoltare [***KAG***](https://www.youtube.com/watch?v=iG331lI479I)...) si **RAPTOR**, pare sa fie in favoarea celui din urma.<br/>
Dar iata ca a aparut si un alt candidat la suprematie!<br/>

<details>
<summary>Este vorba despre <a href="https://www.youtube.com/watch?v=7RhZE_FnL74&t=40s">Cache-Augmented Generation(<b>CAG</b>)</a></summary>

<br/>

Si [acesta](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa1d4VTR0TV9pazhwQkNtdTJka0syMUowS1p6UXxBQ3Jtc0tuMHE3eHp6Y0FsTjlJb29oSWlMaV9zZ3R2d29xR0dydU5xb1BlZDNrNlNnZW4xeFJCOWZoTTcxX1dtZEpZSy1MaUNrcFhXOHczV3p6ei16WjdkS0hYdXdCLWtHZFQxckRNdTA5NmhOZ3NyeXU5czdRWQ&q=https%3A%2F%2Fgithub.com%2Fhhhuang%2FCAG&v=7RhZE_FnL74) aste pregatit pt a rula ca si model / ***LLM*** final/de margine.<br/>
Retrieval-Augmented Generation (***RAG***) a apărut ca o abordare puternică pentru îmbunătățirea modelelor lingvistice prin integrarea surselor externe de cunoștințe.<br/> 

Cu toate acestea, ***RAG*** introduce și câteva provocări/limitari, printre care:

 - Latență de recuperare – Întârzieri cauzate de pașii de recuperare în timp real.
 - Erori de regăsire – Inexactități în selectarea documentelor relevante.
 - Complexitatea sistemului – Operă de arhitectură și întreținere crescută.

Pentru a aborda aceste limitări, propunem [generarea cache-augmentată (CAG)](https://medium.com/@ronantech/cache-augmented-generation-cag-in-llms-a-step-by-step-tutorial-6ac35d415eec) — o paradigmă alternativă care ocolește recuperarea în timp real.<br/>
[**CAG**](https://medium.com/@sahin.samia/cache-augmented-generation-a-faster-simpler-alternative-to-rag-for-ai-2d102af395b2) folosește ferestrele de context extinse ale modelelor moderne de limbaje mari ([***LLM***](https://arxiv.org/html/2412.15605v1)) prin preîncărcarea tuturor resurselor relevante în contextul modelului și prin memorarea în cache a parametrilor de rulare ai acestuia. <br/>
În timpul [inferenței/deductiei/elaborarii raspunsului](https://dexonline.ro/definitie/inferen%C8%9B%C4%83), memoria cache **KV** preîncărcată permite modelului să genereze răspunsuri direct, eliminând nevoia de recuperare.

Avantajele **CAG**:

 - Latență redusă – elimină recuperarea în timp real, permițând o inferență mai rapidă.
 - Fiabilitate îmbunătățită – Minimizează erorile de recuperare, menținând în același timp relevanța contextului.
 - Design simplificat – Oferă o alternativă simplificată, fără recuperare, la RAG, obținând rezultate comparabile sau superioare cu o complexitate mai mică.

Dezavantajele/Limitările **CAG**:

 - Dimensiune limitată de cunoștințe – CAG necesită ca întreaga sursă de cunoștințe să se încadreze în fereastra de context, ceea ce o face mai puțin potrivită pentru sarcini care implică seturi de date extrem de mari.
 - Constrângeri de lungime a contextului – Performanța LLM-urilor se poate degrada cu contexte foarte lungi ( referință ).

</details>

<hr/>

Daca doriti, sa aflati,  care/ce [**marime de LLM**](https://www.youtube.com/watch?v=nwVGUL8R-pg&ab_channel=FahdMirza), se potriveste,  arsenalului de resurse( pe care il poseda ....)din dotarea PC/Laptop-ul dvs., atunci [**LLMate**](https://www.youtube.com/watch?v=nwVGUL8R-pg&t=1s&ab_channel=FahdMirza) va poate ajuta in acest demers.

<hr/>

<details>
      <summary>La final, voi enumera cateva dintre <b>proiectele interesante</b>, prezentate pe YouTube(<b>YT</b>), de catre domnul <b>Fahd-Mirza</b>....</summary>

<hr/>
      
Aici voi insira o selectie de proiecte [interesante](https://huggingface.co/fahdmirzac)(scurt-comentate, traduse cf. ***YT***: [**Fahd-Mirza**](https://www.youtube.com/@fahdmirza)):

 - [Ollama Setup: Step-by-Step Guide to Your Perfect Web Interface](https://www.youtube.com/watch?v=XLltSNTm8kc&ab_channel=PyBron)
   <br/>În acest videoclip, se prezintă [configurarea](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbF9KYW9HbjF3U0RzTnFWeFRPbEFRaE5LcnZ0UXxBQ3Jtc0ttckQybV9YYVByQm5jaEpvaTdPVktUX1d5SV9aMzFLdHhrdjdpQjI0NmtRMDFnV0lUUnpKM0N4bEVxbkdBMTlrakVTR2xEdW1lS1BBbC1ja2NRT1FIcFJvQmF2NVB5WGJuLTRxd2pSSEx0WEJWOUNiVQ&q=https%3A%2F%2Fdrive.google.com%2Ffile%2Fd%2F1W2dWlY8SwXlm-d95L3doGKqMEfFngr4k%2Fview%3Fusp%3Dsharing&v=MVDSN6oR1oY) [**Ollama 3.1**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbVFod0c0Y0g3WHJsNWxPTkwxem9UN1d2M0Jad3xBQ3Jtc0ttM3pHZnRkbkpDVG1sQVo1eHFZM3lrN3pWZU5mZWdSY1IwRi1PQTFMa243dngyOEJpQlJ6RkpaMmUzMEpHSVhZTmJYVmt5aHZTY0RtNGN2bTAyNThGamhvUUhmc1ZEajVZZ2tTenh6WWtiLWhCdTE3UQ&q=https%3A%2F%2Fhub.docker.com%2Fr%2Follama%2Follama&v=MVDSN6oR1oY) și [**Open-WebUI**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbDBpclVMc0tHQUdEVEpWWXIwNk10OUZvMktCQXxBQ3Jtc0tsQ3dmYl85b1JiYlNPdjlzd0NQeWt1VzZ4VkVLeW5lRmh5dW4yNXdHMDBXZXJZU1pLVUdNNkdKU2JGWkZTc2dSUF83ZVMwZEY4U1BpUVdGcTNuUHFuRGsxdXRNR1Ezakx6d2U2RmwzS3dJOEswVWl1QQ&q=https%3A%2F%2Fdocs.openwebui.com%2F&v=MVDSN6oR1oY) folosind [***Docker***](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnZsbzlnOHNXVVliMHR5bzZXVWk4X3pMSG8wUXxBQ3Jtc0tsUzlYdjItTDdlWHlfaUo2WVJxaGxmN3I5QUNJQXBfVjBWdGloSkJJUmdPalRWZnFTWlMwNmo5OVdVejdqbk9PTXVfZWk4bzYySHJaU193MWtYX04wdHJsRU5fa19vcXNGLTd5MFMzbXZoWFRIZDlkaw&q=https%3A%2F%2Fwww.docker.com%2Fget-started%2F&v=MVDSN6oR1oY)(a se urmari si subiectul [***Docker-fara GUI***](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbVo5QzB3XzRkN1FuZUtBRFVlZUJ6SkdsdmJCZ3xBQ3Jtc0tuYmdzRURwZGUwbU9MZ09hYTRDbGxxb1pxM0tVWHdwcmVxQUwxNzY0b3BKaEI1Mk5MTG5uRzJQZkg3TnNvVGdoTk50U25JdXRyZnVjNlZmUHQtc1l4V2lPSzhEc3N6ZGFuMWFzQmNQUzJrRk9ZbUlmVQ&q=https%3A%2F%2Fdocs.docker.com%2Fengine%2Finstall%2Fubuntu%2F&v=MVDSN6oR1oY)) și vă voi arăta cum să integrați mai multe **modele-AI** pentru o [implementare eficientă](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbVQtdXJ0b3JFWm9YRUJjczZlV2xySFBiUW5vd3xBQ3Jtc0ttSnRELUw1OERjS0dDdWUzMkZ2VGFVeEtrX2pMRzZaUnFKSmhWdnJsbU41bFNTdVNMbjhfUUhJczFrV3o2VkVnZ1MxOVF2aUY3X1hvNmlKS3RsWV83Y3FhRWdmcDZWcG9SSWhsT0NyV1psSXYwb3liTQ&q=https%3A%2F%2Follama.com%2Flibrary%2Fllama3.1&v=MVDSN6oR1oY).
   <br/> Indiferent dacă sunteți un dezvoltator, un om de știință de date sau un pasionat de inteligență artificială(**AI**), sau pur și simplu doriți să economisiți bani găzduind **LLM**-uri acasă(<ins>local</ins>), acest ghid vă va ajuta să gestionați și să rulați cu ușurință diverse modele în <i>containerele</i>-***Docker***.
 - [Install **reAG** *Locally* with **Ollama** - *Reasoning Augmented Generation*](https://www.youtube.com/watch?v=SA-VVOKgyRA&t=312s&ab_channel=FahdMirza)
   <br/>Acest videoclip instalează <ins>local</ins> [**ReAG**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbHlaS1FnaU53M2EzWDlPajlmbV91blJaajl3Z3xBQ3Jtc0tueXFlSk4wMy1mazN4QWhydmVOTmQ5WjNLSnJzTjNYRkxnOXdRUU5uM0hUWWY0ZmVzMlkzcDdXbUtLX3F0aDdZME05R1dNb2ZOUUx1MVJaX0NUdmJta0gyaVdTZlJWclA3VGJValEybFg0OU1SbUU4NA&q=https%3A%2F%2Fgithub.com%2Fsuperagent-ai%2Freag&v=SA-VVOKgyRA) cu **Ollama**, care oferă o alternativă robustă prin alimentarea documentelor brute direct în modelul de limbă(***LLM***).
   <br/>***LLM***-ul utilizat: **DeepSeek-R1:14b**
 - [**Zyphra** Just Dropped **Zonos** - Instant ***TTS*** and ***Voice Cloning*** - Install *Locally*](https://www.youtube.com/watch?v=ymrAhkg2TTA&ab_channel=FahdMirza)
   <br/>Acest videoclip instalează <ins>local</ins> [**Zonos-v0.1**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa2FSLUpsWGczc3NBcUllWE1qdUJzUHJQRDU5UXxBQ3Jtc0tsaV94WHJJSW1yUGtyaC1iaU1pNWZrbXF3bmU3bjZwYmJGcVRyN0tMLTFEN3JGbGZHOWtpUkdvaHBPN2VIbWJGcnVVbTJTd0tBb296UW82Unh1YUk1aVpGMWdJYWdYekUtUmdIZnVXVGFWbW9zanhHWQ&q=https%3A%2F%2Fhuggingface.co%2FZyphra%2FZonos-v0.1-hybrid&v=ymrAhkg2TTA)(dockerizat), care permite generarea de vorbire(***Text-To-Speach(TTS)***) extrem de naturală din solicitările text.
   <br/>Este Apache 2 și multi-lingv(in mai multe limbi literare). 
 - [**Phi4-Noesis** - Deep and Fast *Reasoning Model* - Install *Locally*](https://www.youtube.com/watch?v=-yNviNIyBBs&ab_channel=FahdMirza)
   <br/>Acest videoclip instalează <ins>local</ins> [**Phi4-Noesis:14b-q8_0**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmNQOGpSN0Rwb1ZkTkJYbWFZVjdPSGo2SGFfUXxBQ3Jtc0ttNkNRdGluQTFWYWJ1cWx6ajlhb1l4TFR1N254cWNta1JWWUV2SGU5X25OcUp5TEktSkdXN0ZZSUNIZWd2TkN1cjdYYzFzbHg1QTUyZFNJOGVta0NIN3RoNWZqakFPaWZQRk9MdzVBNmc4WDRjcmRiSQ&q=https%3A%2F%2Fhuggingface.co%2Fdimsavva%2Fphi4-noesis&v=-yNviNIyBBs), care este o reglare-fină(***FT***) a **Phi-4** cu un raționament rapid(*fast*) și profund(*deep*).
 - [**DeepScaleR 1.5B** - *Fine-Tuned(FT)* from *Distilled DeepSeek* with *Long Context* - Install *Locally*](https://www.youtube.com/watch?v=Im3TOjz4UcM&ab_channel=FahdMirza)
   <br/>Acest videoclip este un tutorial pas cu pas pentru a vă arăta cum să instalați și să rulați [**DeepScaleR-1.5B-Preview**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbldIUndsUEJ2QnRvYmhIS2Fabm55SXVwckw0UXxBQ3Jtc0tuM3EyeEVQRjlQVGlGYlJzaGktamZKaDByQjZUMGNBeUxRaVNrREQ0aUkzNkFVa2t1Y3ZSS21fNWt5elQwLXNYQjJ1SlRJWWdwNVBfZkJYbngwM1U1QUIwck5SZkt1QlpmdGFuUjBwLVR4V3NpNmlSOA&q=https%3A%2F%2Fhuggingface.co%2Fagentica-org%2FDeepScaleR-1.5B-Preview&v=Im3TOjz4UcM) <ins>local</ins> și să îl testați.
 - [**NanoSage** - ***Deep-Research*** *Assistant* - Install *Locally* with ***Ollama*** and *Run on CPU*](https://www.youtube.com/watch?v=9hhuEbLcT-c&ab_channel=FahdMirza)
   <br/>Acest videoclip instalează <ins>local</ins> [**NanoSage**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnBuNTEzMWZLeVVKb0V0UnJkbkRnMlJXXzZJUXxBQ3Jtc0ttSUlpWFVlR3FSZmVxXzlvUTA0TjN1LUI0amZjaW5ULTBUanIwVDlacDJ2M3hoaGpsaHE1MnFIdF9qMDFqT2l5eERhc211YXhzajlXQmFZdmdfT2pqT056c09GUy1Td3VGQm8xUkptZE1qbG5UTmFjUQ&q=https%3A%2F%2Fgithub.com%2FmasterFoad%2FNanoSage&v=9hhuEbLcT-c), care este un asistent propus de ***Deep-Research*** si care rulează pe <ins>laptop(*Run on CPU*</ins>, folosind modele minuscule(modele foarte mici: ***nano-modele***).
    <br/>Prin ce diferă **NanoSage** de alți cercetători asistenți?
<br/>Oferă o defalcare/despica/impartire *structurată*(gen/un fel de *tabel-de-BD*) a unui canal de *căutare*-*recursiv*, bazat pe *relevanță/importanta*, cu mai multe surse(*multi-sursa*).
<br/>Acesta prezintă modul în care sistemul rafinează/despica o interogare(*query*) a utilizatorului, construiește o *bază-de-cunoștințe* din date-*locale* și date-*web* și explorează dinamic sub-interogările(*sub-queries*), urmărind progresul printr-un Cuprins(***TOC***).<br/>
<br/>Cu explorarea bazată pe **Monte-Carlo**, sistemul echilibrează *adâncimea* și *lățimea*, *clasificând* relevanța-fiecărei-ramuri pentru a asigura *precizie* și pentru a evita tangentele care nu au legătură(falsa informare).
<br/>Rezultatul?
<br/>Un raport detaliat, bine organizat, generat folosind generarea-de-recuperare-augmentată(**RAG**), care integrează cele mai valoroase informații.<br/>
<br/>Am vrut să experimentez noi metode de cercetare, așa că m-am gândit că, practic, atunci când cercetăm un subiect, explorăm aleatoriu idei noi în timp ce căutăm, iar **NanoSage** practic face asta!
<br/>Își explorează și înregistrează călătoria, unde fiecare pas (*relevant*) este un nod... și apoi vi-l rezumă într-un <ins>raport</ins> frumos!
<br/>Unde tabelul de conținut(***TOC***) este practic graficul/planul său de căutare.
 - [*kimi.ai* Releases **Kimi** and **K1.5 Loong Thinking**](https://www.youtube.com/watch?v=ch3zn_i0Fak&t=52s&ab_channel=FahdMirza)
   <br/>Acest videoclip face o trecere în revistă aprofundată a modelelor [**Kimi**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa21oOFgtc25zNVBpbzRBNzhSZ2lCU0lUS0tld3xBQ3Jtc0tsMVZtSlc1Y2xnUWxiZFlQV2RUYmJnVk5vaEh0UXZpUk9kellrMldIMXlRVkNHVTQ1ektZdEZ5V2Nid3FDSXdGZDNQMURlN044bGQtR01vcEEwYmdibjNiRzZudndxX0c0Q2JNVnVIOGFuVlNvMkxhOA&q=https%3A%2F%2Fkimi.ai%2F&v=ch3zn_i0Fak) și [**K1.5 Loong Thinking**](https://huggingface.co/papers/2501.12599)([Gândire (inden-)lung(-ată)](https://www.youtube.com/watch?v=551oCIW5IH4&ab_channel=ArxivPapers)).
 - [**Ollama Model Manager** - *Filter and Custom Tags* with Models *Locally*](https://www.youtube.com/watch?v=gCA816T7TsA&ab_channel=FahdMirza)
   <br/>Acest videoclip arată cum să instalați local **Ollama Model Manager** pentru a gestiona modelele ***Ollama*** la nivel <ins>local</ins> cu un script Python [**wrapper/gist**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbHIzaXdESVdHb1hQN0FHTVZoTS1TU3pFbTZjZ3xBQ3Jtc0tuQnRJeGNwYU1KRV9QRUdWRzdvN1Q5YV8zamVSTUR4SThfOTJhNXdvandPTUNSYlhGRDZDVjZGQWViZzhqQ1YyX2VtbUR5SWExcXdKbzdJaEdIRDBoeEstUDhTbUVUazJxbTltbFVueVljdHJxMG5EZw&q=https%3A%2F%2Fgist.github.com%2FitsPreto%2F038abe634dd10e9850768cd0b13ed169&v=gCA816T7TsA).
   <br/>În acest videoclip, autorul prezintă un nou instrument open-source numit manager de model-**AMA**, care permite utilizatorilor să gestioneze modele de inteligență artificială(AI) la nivel local, folosind un script(**wrapper/gist**) *Python* simplu.
   <br/>Videoclipul subliniază ușurința instalării și utilizării pe diferite sisteme de operare, inclusiv ***Linux***, ***Windows*** și ***macOS***.
   <br/>Printr-o serie de demonstrații, creatorul arată cum să adauge etichete voastre/personalizate(*Custom Tags*) modelelor, să recupereze informații detaliate despre model(*Filter by Ollama-Tags or Custom-Tags*) și să gestioneze eficient înglobările.
   <br/>Utilizatorii sunt încurajați să exploreze acest instrument inovator și să utilizeze resursele însoțitoare([**wrapper/gist**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbHIzaXdESVdHb1hQN0FHTVZoTS1TU3pFbTZjZ3xBQ3Jtc0tuQnRJeGNwYU1KRV9QRUdWRzdvN1Q5YV8zamVSTUR4SThfOTJhNXdvandPTUNSYlhGRDZDVjZGQWViZzhqQ1YyX2VtbUR5SWExcXdKbzdJaEdIRDBoeEstUDhTbUVUazJxbTltbFVueVljdHJxMG5EZw&q=https%3A%2F%2Fgist.github.com%2FitsPreto%2F038abe634dd10e9850768cd0b13ed169&v=gCA816T7TsA)) furnizate în descrierea videoclipului.
 - [Best AI Model to Generate Artwork from Text - **PixelWave** Flux.1-Dev 03 - Install <ins>Locally</ins>](https://www.youtube.com/watch?v=zZKwyns3yL8&ab_channel=FahdMirza)
   <br/>Acest videoclip arată cum să instalați <ins>local</ins> [**PixelWave Flux.1-Dev 03**](https://civitai.com/models/141592?modelVersionId=992642), care este un model ***FLUX*** de uz general reglat-fin(**FT**), excelent pentru stiluri **artistice** și **foto**.
 - [Install **Flux.1-Dev Upscaler** ***ControlNet*** <ins>Locally</ins> - Upscale Images with Flux](https://www.youtube.com/watch?v=3TBAy9Zg5II&ab_channel=FahdMirza)
   <br/>Acest videoclip arată cum să instalați modelul [**Flux Dev Upscaler**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnB3WkstV2NTVXhCckNiZml6R2IxWVFxS0FOZ3xBQ3Jtc0trdElQZnpvRFdxdWctZ081QVp1WGJUYjNkMVg4QmE1LTJHamdybVlVVFpDb0RXektDcDVJVTFEb0ZUc1lTR20zcWNkUy1MczA0WUgtc0lSQ001cWJqSjBpVkFORHk5RXFNMUFYTzdFRjJNcFVPQl9yTQ&q=https%3A%2F%2Fhuggingface.co%2Fjasperai%2FFlux.1-dev-Controlnet-Upscaler&v=3TBAy9Zg5II) la nivel <ins>local</ins> și imagini de lux(la scara crescuta).
   <br/>Acesta este ***Flux.1-dev ControlNet*** pentru imagini cu rezoluție joasă.
 - [Install Perplexica with SearXNG and Ollama and Llama 3.1 for Local AI Search Engine for Free](https://www.fahdmirza.com/2024/07/install-perplexica-with-searxng-and.html)
   <br/>Acest videoclip arată cum să instalați <ins>local</ins> [**Perplexica**](https://www.youtube.com/watch?v=LjTIy0FEkAQ&ab_channel=FahdMirza) cu modelul [**SearXNG**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmluQkNzYV80NThsaHhveldkdU1PS0ZEQlhid3xBQ3Jtc0tuV0JvelVJOERkNGZrYVlGNm1JTDR1VTJLQkMtZzhSZmpIYktzc0ctSU1rRm1Ma0pIbDE1RmI0NEtoNWtmWFZWb1cydmtnRHdOZkNqc3JFMjZ5ZHQ5TEVRVUZXNm1jRldobzNOb0pYU3JYV213QUowMA&q=https%3A%2F%2Fwww.fahdmirza.com%2F2024%2F07%2Finstall-perplexica-with-searxng-and.html&v=LjTIy0FEkAQ) și **Ollama** ***Llama 3.1*** și să faceți căutare bazată pe inteligență artificială(**AI**).
 - [Install **LibreChat** with **Ollama** <ins>Locally</ins> to Chat with Any Model](https://www.youtube.com/watch?v=d9ZV3-YkX-8&ab_channel=FahdMirza)
 <br/>Acest videoclip arată cum să instalați <ins>local</ins> **LibreChat** și să îl integrați cu ***Ollama***.
 <br/>Puteți folosi **Llama 3** , **Mistral** sau <i>orice model</i> pentru a [discuta privat și local](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbXduLXdybkROMkFuc3JUdVRyUTBOdGlmblQ2QXxBQ3Jtc0treVBLZ04xZkxvOTExTjZiX1REV2I4blJtV3owTnNOS2hlY0JndF9pZm1UMGlpYzVsWlRVOXlYWFBWNlFyRlhmVHpXd0wyWmdZdzg4U0NDTzlfSmJHckVwQUpJWkVSemhYWTF5elJIblVxMDlYMk03aw&q=https%3A%2F%2Fwww.fahdmirza.com%2F2024%2F05%2Finstall-librechat-locally-with-ollama.html&v=d9ZV3-YkX-8) cu **GUI web**.
 - [nstall **HuggingFace Models** Directly in **Open WebUI** with **Ollama** <ins>Locally</ins>](https://www.youtube.com/watch?v=yLAIWsb5-ls&ab_channel=FahdMirza)
 <br/>Acest videoclip oferă o demonstrație pas cu pas despre cum să rulați oricare dintre ***modelele 45K+ GGUF*** pe **Hugging Face Hub** direct cu **Ollama**(<ins>local</ins>) în **Open WebUI**. 
 - ...

<hr/>

</details>

<hr/>


 </details>








Salut!

De curand am achizitionat o placa second-hand [**NVIDIA RTX-4060(8GB de VRAM)**](https://www.google.com/search?sca_esv=2db17c2fd44c4b31&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zrUESfusT4go5cpreNHKddiOj8amQ:1743685415565&q=fahd+mirza+ollama+ai+URL+product+page+crawler&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGls0vqphpL9nGKy0PrLJqseLh0EQ6IW_YF9DHIKeRA2FImp3Dx7GIevZQOss0rMv5Tw3qvJeve1MmdHGrmodySi5X9GAMZzvnhGIQLToZD4Rmo08ZvpK4A47ZUf2v3SmkLkUzVoZeU_rK5MaBiAElFTosjVL2eUMwAznjSXBjp3_KrjzxBuKTxT_X2lGmFgtiaKnbku3g&sa=X&ved=2ahUKEwiXz62u9ruMAxXuBNsEHcvSIfQQtKgLegQIFhAB&biw=1920&bih=911&dpr=1#vhid=5oPvqvb-QnS8oM&vssid=mosaic) pt a o folosi la studiile de caz AI(placile **GPU**, nu sunt utile numai/doar pt jocuri ...dar iata ca pot fi utile si pt... a invata!!!).
<br/>Desi am la dispozitie acest **GPU**, am intalnit tutoriale care nu necesita in mod obligatoriu *GPU*...; Aceste cazuri de utilitate(use-case sau show-case)/task-uri pot fi rulate chiar si pe **CPU**(unitatea de procesare a oricarui PC: desktop/laptop), dar cu amendamentul ca vor dura(cel mai probabil!) mai mult(sau... cu mult mai mult) timp...(de la caz la caz!).

<br/>Va propun sa urmariti [seria](https://www.youtube.com/@fahdmirza/videos) de [episoade](https://github.com/fahdmirza) Youtube([**YT**](https://www.linkedin.com/in/fahdmirza/?originalSubdomain=au)) elaborate de [**Fahd Mirza**](https://www.youtube.com/results?search_query=Fahd+Mirza+AI)([blog](https://www.fahdmirza.com/)); *Multumiri domnului [**Fahd-Mirza**](https://stackoverflow.com/questions/41112946/get-all-videos-for-a-given-user)!*

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
       <summary>Hai sa discutam si despre ... alte proiecte-AI promovate de domnul <a href="https://www.linkedin.com/in/fahdmirza/recent-activity/all/">Fahd Mirza</a></summary>
       
<br/>

<hr/>

[Orizontul](https://www.marktechpost.com/2024/11/14/microsoft-released-llm2clip-a-new-ai-technique-in-which-a-llm-acts-as-a-teacher-for-clips-visual-encoder/) [cunoasterii](https://www.microsoft.com/en-us/research/project/llm2clip/) in domeniul [generative-AI](https://www.youtube.com/watch?v=mJ-wt79u0Ls), poate fi [largit](https://github.com/microsoft/LLM2CLIP) si prin studierea unor [lucrari](https://microsoft.github.io/LLM2CLIP/) precum cea intitulata  [LLM2CLIP](https://microsoft.github.io/LLM2CLIP/).

<details>
	<summary>grupul de proiecte: Llama-Mesh/3D-Chatbot, Llama3.2-vision si OmniAudio-AI, RAG multimodal, Moonshine, MindsDB  ...</summary>

<br/>Sa le evaluam pe rand....

<hr/>

<details>
	<summary><b>Llama-Mesh/3D-Chatbot</b></summary>

<hr/>

In domeniul ***generative-AI(NLP,NLU)***, mai precis in domeniul [**generarii/intelegerii-3D**](https://github.com/nv-tlabs/LLaMA-Mesh), a aparut pe Youtube(YT) un filmulet al unui [3D-Chatbot](https://www.youtube.com/watch?v=c-LbbZEkcBo) interesant, intitulat "**Nvidia [Llama-Mesh](https://huggingface.co/spaces/Zhengyi/LLaMA-Mesh) - Generate [3D](https://www.youtube.com/watch?v=PSU4wB8WkzA) [Mesh](https://huggingface.co/bartowski/LLaMA-Mesh-GGUF) and Shapes with Text - Install Locally**", cu privire la generarea in spatiu-tridimensional(3D) de retele/invelitori/suprafete([**3D-mesh/shape**](https://huggingface.co/spaces/Zhengyi/LLaMA-Mesh)), generandu-se daca doriti, inclusiv,  coordonatele varfurilor sau nodurilor retelei [3D](https://towardsdatascience.com/generate-3d-images-with-nvidias-llama-mesh-69a6929a4580)(date ca/spre exemplu), pt corpuri/obiecte/solide, obtinindu-se astfel modele unificate de suprafete 3D([geometrii-triangulate](https://ro.wikipedia.org/wiki/Triangularea_unei_suprafe%C8%9Be)), pornind de la interogari textuale livrate unui model-LLM specializat(in acest caz fiind [**Zhengyi/LLaMA-Mesh**](https://github.com/nv-tlabs/LLaMa-Mesh)). 
In acest [proiect](https://github.com/nv-tlabs/LLaMA-Mesh), pentru afisarea/construirea interfetei-web-utilizator(intrarea proiectului) s-a apelat la libraria/pachetul python [**gradio**.](https://www.gradio.app/). Pentru redarea/randarea 3D(iesirea grafica a proiectului **LLaMA-Mesh**) s-a folosit libraria [**trimesh**](https://trimesh.org/). Pe partea de procesare(coloana vertebrala a proiectului) s-a utilizat pachetul [**transformers**](https://huggingface.co/docs/transformers/index). 

<hr/>
</details>

<details>
	<summary><b>Llama3.2-vision</b> si <b>OmniAudio-AI</b></summary>
<hr/>

Un alt proiect legat de subtitrarea sau transcrierea/descrierea unei imagini este proiectul local(windows) care utilizeaza ca LLM, modelul [Llama3.2-vision](https://www.youtube.com/watch?v=qc99ShiPAY8)(atentie la [licenta](https://www.reddit.com/r/ollama/comments/1gxwd1j/llama_32_vision_in_the_eu/?%24deep_link=true&correlation_id=a31d354b-4ba5-42d7-a450-375f98de2cb4&post_fullname=t3_1gxwd1j&post_index=0&ref=email_digest&ref_campaign=email_digest&ref_source=email&utm_content=post_title&%243p=e_as&_branch_match_id=1376944233253091740&utm_medium=Email%20Amazon%20SES&_branch_referrer=H4sIAAAAAAAAA22P207DMBBEvyZ9Sy%2B2QwGpQgjEb6yceJss%2BKa1Q%2FrEt7NpgSckWxqd8cyup1pzedztGJ2jurU5bz3Fj53OT40yOp8QbNmITEwjRethZn%2Ba1lSjnxv1JmdZlu1PfkhBAMtN3ttgRQgKGGsReRgvizu8i7qaoBV8UqEUgSLUCQHntVFLaaeMQ8ywLtPo18ozNupuSMzobb1GnHCrD053pm9Nb7vWKHdsren2rT5254d7h2rojeRyKhXOs%2FfRBlzrNPztcjMpOryIsxfAeBaFwZIHRyOWeoMw2JAtjfF%2Ft6SZB%2Fz1BM41wJBild8LvY6pVD1uvuQ5MlMcoee0FOTTy8Qp4DfMPtIgjgEAAA%3D%3D)) deservit de serverul dvs. **Ollama**. Desigur acesta se poate utiliza si pt filmulete/video-uri avand in vedere faptul ca un astfel de obiect este format dintr-o multime sau un intreg sir/serie de imagini captate succesiv in timp.

Tot in zona [media](https://www.youtube.com/@fahdmirza) puteti consulta si acest proiect [**OmniAudio-AI model 2.6B**](https://www.youtube.com/watch?v=CrTGp60KIOA) ori proiectul [**Voice-Isolator**](https://www.youtube.com/watch?v=giblKlWtjGY).

<hr/>

</details>

<details>
	<summary><b>RAG multimodal(imagini si text)</b></summary>

<hr/>
	
Daca doriti sa testati un [**RAG multimodal(imagini si text)**](https://www.linkedin.com/in/fahdmirza/recent-activity/all/) atunci puteti consulta periodic activitatea pe [***Linkedin***](https://www.llamaindex.ai/blog/multimodal-rag-in-llamacloud) a d-lui [**Fahd Mirza**](https://www.youtube.com/watch?v=96p0-3dZTOs)(trebuie sa aveti cont pe [**LLamaCloud**](https://cloud.llamaindex.ai/login):)

<hr/>
</details>

<details>
	<summary>model ASR | S2T: <b>Moonshine</b></summary>

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

</details>

<details>
	<summary><b>MindsDB</b>...GPU...Docker</summary>

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

</details>

<hr/>

</details>

<details>
	<summary>Agenti-AI: Stripe....orchestrare-multiagent cu libraria-smolAgent ori cadre-de-lucru precum Agentarium, Griptape, ...</summary>

<hr/>

[Agenții AI](https://undetectable.ai/blog/ro/ce-sunt-agentii-ai/) sunt din ce în ce mai utilizați în locurile de muncă moderne pentru:
 - a ajuta la luarea deciziilor,
 - a automatiza sarcinile(a controla fluxul de lucru) și
 - a optimiza eficiența.

<details>      
<summary>Si acum... cateva lucruri despre acesti <b>agenti-AI</b>...</summary>

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

</details

<hr/>

Un alt [proiect](https://www.youtube.com/watch?v=-0Y5oepu0Pc) interesant legat de *gestionarea* si *orchestrarea* ***agentilor-AI*** este si [**Agentarium**](https://github.com/Thytu/Agentarium).<br/>
[**Agentarium**](https://github.com/Thytu/Agentarium) este un cadru Python puternic care oferă o modalitate flexibilă și intuitivă de a *crea*, *gestiona* și *coordona* interacțiunile(ati putea citi chiar "*inter-acțiunile*") între mai mulți ***agenți-AI*** în diferite medii( a se consulta [exemplele](https://github.com/Thytu/Agentarium#examples) si [documentatia](https://github.com/Thytu/Agentarium#documentation)).

<hr/>

Tot legat de [***agenti-AI***](https://www.youtube.com/watch?v=ffL-bJsW5Xk) este si proiectul [**Griptape**](https://github.com/griptape-ai/griptape).<br/>
[**Griptape**](https://github.com/griptape-ai/griptape) este un cadru Python modular pentru construirea de aplicații bazate pe inteligență artificială(AI) care se conectează în siguranță la datele și API-urile companiei tale. Oferă dezvoltatorilor capacitatea de a menține controlul și flexibilitatea la fiecare pas(consultați [Griptape Docs](https://docs.griptape.ai/), precum si cursuri online gratuite, intitulate [Griptape Trade School](https://learn.griptape.ai/)!).<br/>
[**Griptape**](https://github.com/griptape-ai/griptape) este un cadru Python modular pentru agenți și fluxuri de lucru AI cu raționament, instrumente și memorie în lanț de gândire.

<hr/>

</details>

<details>
	<summary>subiecte discutate: ModernBERT-Embed-Base, Dolphin 3.0-Llama3.1, CAG, LLMate,...</summary>

<br/>Sa spunem cate ceva despre fiecare subiect in parte ...

<hr/>

<details>
	<summary>Incorporatorul <b>ModernBERT Embed Base</b> de la Nomic</summary>

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

</details>

<hr/>

<details>
<summary>Recent a aparut modelul local <a href="https://www.youtube.com/watch?v=CV8TE9aE1xM&t=22s"><b>Dolphin 3.0-Llama3.1(8B)</b></a></summary>

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

</details>


<details>
	<summary>subiecte: Articol cu privire la NLP-tasks..., MS-Data-Formulator, AirLLM si Harbor, ...</summary>

Sa le analizam pe rand in cele ce urmeaza...
<hr/>

 Aici puteti consulta un [articol](https://medium.com/@harshapulletikurti/choosing-the-correct-llm-model-from-hugging-face-hub-183fc6198295) despre [strategia](https://paperswithcode.com/methods) pe care trebuie sa o alegeti, atunci cand va trebui sa folositi, intr-un [NLP](https://www.trantorinc.com/blog/natural-language-processing-with-python)-[task](https://medium.com/nlplanet/two-minutes-nlp-33-important-nlp-tasks-explained-31e2caad2b1b)/[NLP](https://towardsai.net/p/editorial/natural-language-processing-nlp-with-python-tutorial-for-beginners-1f54e610a1a0)-[sarcina](https://huggingface.co/docs/hub/models-tasks), un [LLM](https://huggingface.co/docs/hub/spaces) ori o [librarie](https://www.upgrad.com/blog/python-nlp-libraries-and-applications/)(incluzand aici si [algoritmii](https://shelf.io/blog/18-effective-nlp-algorithms-you-need-to-know/)) sau [altul](https://www.geeksforgeeks.org/natural-language-processing-nlp-tutorial/)/[alta](https://www.kaggle.com/code/faressayah/natural-language-processing-nlp-for-beginners).

<hr/>

Iata aici un [data-formulator](https://www.youtube.com/watch?v=ySWRDqrzKrk&ab_channel=FahdMirza) propus de catre compania [**MS**](https://github.com/microsoft) si analizat intr-un scurt [filmulet](https://www.youtube.com/watch?v=ySWRDqrzKrk&ab_channel=FahdMirza), pe canalul de **YT**, de catre dl. ***Fahd-Mirza***(daca doriti, cititi si transcriptul-YT din subsolul paginii de prezentare a filmuletului-YT).
<br/>Acest videoclip instalează local [**MS Data Formulator**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa2JBU0gwM2pUb3dQclgtdkZsMVZBd3dLUE5HUXxBQ3Jtc0trYlJzdUlKa2NyMGt5MENhUjFLYjFUcXRmOUdMUUEyTUlqdXR6cjJzb0FRN2w5aGZFZUkxYms4SFpOQmczOTc1ckJQLWloUnFGQV9pQ0pDd1ZINjhEUHlKUG9iZXlCQ1htOWFrRWNaN01BNWpHenZ5UQ&q=https%3A%2F%2Fgithub.com%2Fmicrosoft%2Fdata-formulator&v=ySWRDqrzKrk), care vă permite să transformați datele.și să creați vizualizări bogate în mod iterativ cu AI.
<br/>Datele de intare analizate pot fi fisiere de date masive, date spatio-temporale si nu numai!... ar putea fi date, sa spunem... pt.intinderi mari geografice sau ...serii temporale, pe intervale-temporale insemnate. 

<hr/>

[Incredibil!  Sa facem cunostinta cu AirLLM ](https://huggingface.co/blog/lyogavin/airllm)

In acest fragment de articol, incerc sa aduc in centrul atentiei un instrument-*backend* de [optimizare](https://github.com/av/harbor), de/in timp-real(de fapt o [bibilioteca](https://www.reddit.com/r/LocalLLaMA/comments/1ckxzi3/airllm_batching_ram_size_doesnt_limit_throughput/?tl=ro) Python) care permite sa rulati local un LLM cu un consum  <ins>redus de VRAM</ins>(de memorie-virtuala GPU).
<br/>Este vorba despre produsul software [**AirLLM**](https://www.youtube.com/watch?v=gYBlzMsII9c&ab_channel=FahdMirza), prezentat pe youtube(YT) de catre dl.Fahd-Mirza!
<br/>Acest videoclip este un [tutorial](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbjVjUXFBMnhrSzVoT2NYUTJFWmNDZEV3XzJNQXxBQ3Jtc0trWmc4UmFBYVktdDc3X19ZamNOX1RzWFhMWnJGemZ1U250ZDdDakk3eXdLQUtJVDVFOV9pOEp4UGN4dEpxTjFVQ3V0Nk52WGFPM1VtVWVWbU5UdTRtcF93T3dPcmdBVU9WZnJLVmUzNjMyMUNXdFJOYw&q=https%3A%2F%2Fgithub.com%2Flyogavin%2FAnima%2Ftree%2Fmain%2Fair_llm&v=gYBlzMsII9c) practic care arată pas cu pas cum să instalați local [**AirLLM**](https://www.linkedin.com/posts/dat-tran-a1602320_airllm-allowing-70b-large-language-models-activity-7190973639935098880-QkTA/) și să rulați [***Llama 3 de 8B***](https://huggingface.co/blog/lyogavin/llama3-airllm) sau orice [***model 70B***](https://www.kaggle.com/code/simjeg/platypus2-70b-with-wikipedia-rag/notebook) pe un GPU dotat cu numai <ins>4 GB VRAM</ins>. Ca sa va faceti o idee, *NVIDIA RTX-4060* are *8 GB* de *VRAM*(observabili cu comanda: *nvidia-smi*).
<br/>[**AirLLM**](https://github.com/lyogavin/airllm) optimizează utilizarea memoriei de inferență(VRAM), permițând modelelor de limbaj mari(LLM) din clasa ***70 miliarde***(***70B***), să execute inferențe pe un singur card GPU de numai *4 GB*(fără a folosi *metode de compresie*, cum ar fi *cuantificarea*, *distilarea* ori *tăierea*). Și puteți rula acum [***405B Llama 3.1***](https://ai.gopubby.com/crazy-challenge-run-llama-405b-on-a-8gb-vram-gpu-ab5a280a3889) pe un GPU cu <ins>8 GB VRAM<ins>.

***PS***: 
<br>Sub rezerva ca acest proiect este un proiect inca "tanar"(aflat sub un intens proces de dezvoltare/implementare), recomand totusi sa consultati(in extenso/ca bonus!), instrumentul-integrator [Harbor](https://github.com/av/harbor), care poate fi folosit ca instrument-CLI pt automatizarea crearii de [arhitecturi-complete/customizabile/configurabile-AI](https://techshinobi.org/posts/easy-local-llm/)(UI + Backend + eventual_Servicii_anexe/suplimentare/sateliti/ajutatoare/complementare).
<br/>[Harbor](https://github.com/av/harbor) va permite sa rulați fără efort backend-uri, API-uri, front-end-uri și servicii LLM cu/utilizand o singură comandă.
<br/>[Harbor](https://github.com/av/harbor) trebuie sa fie instalat pe/sub *Linux* si necesita [*Docker*](https://docs.docker.com/desktop/wsl/#enabling-docker-support-in-wsl-2-distros)(pe/pt. Windows necesita [WSL2](https://docs.docker.com/desktop/wsl/#enabling-docker-support-in-wsl-2-distros) pt a avea la dispozitie si a beneficia de Linux) ca si suport(Linux si Docker sunt cerinte-preinstalate/preliminare!). 

<hr/>

</details>

<details>
	<summary>grupul de proiecte: LHM, Orpheus.cpp, ZEUS Bolt-Graphics, Sesame-CSM(1B), AgenticSeek, RTX-4090 modified to Have 96GB-VRAM, QvQ-Max   ...</summary>
	
<br/>Hai sa dicutam despre ... fiecare proiect in parte...
	
<hr/>

[<b>LHM</b>](https://www.youtube.com/watch?v=2rT90vdwd04&ab_channel=FahdMirza)
<br/>Acest videoclip instalează local [LHM](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnJnWk5PMF9vV0hoUk1xTVViYjN6LXhOVWVQUXxBQ3Jtc0trM0FuSk1HTGw4b1pKMV81czRZcmxTZ3ptQjdFVDFnbzlFQ01SaFJDdVp6V1NQa0Itd2pkQmQ3Z0lJWkV5eFNHZFlVZG9LYlZ2YjNaMWFPTWVtWGdvNXdrYWprQzhVTDQ1WkhkTnNXQUljUkRrOGotaw&q=https%3A%2F%2Fgithub.com%2Faigc3d%2FLHM&v=2rT90vdwd04): Large Animatable Human Reconstruction Model pentru o singură imagine în 3D în câteva secunde. 

<hr/>

[txt2audio=TTS: <b>Orpheus.cpp</b>](https://www.youtube.com/watch?v=3l_65hgyfRI&ab_channel=FahdMirza)
<br/>Acest videoclip instalează local [Orpheus.cpp](https://github.com/freddyaboulton/orpheus-cpp), care vă permite să creați audio din text pe CPU. 
<br/>Streaming(flux) rapid TTS cu [Orpheus](https://github.com/freddyaboulton/orpheus-cpp) + WebRTC (cu FastRTC)

<hr/>

[Meet ZEUS: The INSANE 2TB GPU That Could Change Everything!](https://www.youtube.com/watch?v=kyj2WTB3Wug&ab_channel=FahdMirza)(a se citi si transcriptul-YT!)
<br/>[Bolt-Graphics](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbWcyNnJpMU9oUDNzSHF0QkpDbjNMN1VYSGRRQXxBQ3Jtc0ttNzhrTnFYRDFWSmswcHVlR1gzbTczc3ZuUWg2aDZlbnRkelphNzVrUU9wTk0wTDZIOXJQc3llQ09HVVl1V2dOZlR5NkkwOGhYdTlRMmd4aTZ0YTNURjBianJhWnR0TmMyZk1HQ2hpT2N6NUxhelNFcw&q=https%3A%2F%2Fbolt.graphics%2F&v=kyj2WTB3Wug) ZEUS GPU include arhitectura RISC-V, 2TB memorie și 800GbE integrat – poate provoca NVIDIA în dominația AI? 

<hr/>

[<b>Sesame-CSM(1B)</b> - Install Locally - Conversational Speech Model](https://www.youtube.com/watch?v=ULV6cXgnkAo&ab_channel=FahdMirza)
<br/>Acest videoclip instalează local [CSM 1B](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqblctckNVdTNkRnJJMEk2eFc2T1JoNTQ3b0swZ3xBQ3Jtc0ttQUZyQ19BV21qeHhjUXBwR3VHWE9mV3BGdUxOOGlwU2I5bkIxVHh5Tm1halhWcnRJSUVkejhXaVd2dDNVVWx3NUVVLXhDM2JER1I1dTB3bUNhLUl4cW1PVldhNUVoNy0xdXpydElNMG5xZFpiS25oYw&q=https%3A%2F%2Fhuggingface.co%2Fsesame%2Fcsm-1b&v=ULV6cXgnkAo) (Conversational Speech Model) de la Sesame pentru prezența vocală.

<hr/>

[<b>AgenticSeek</b> by Manus AI](https://www.youtube.com/watch?v=ozgb1cPRPpE&ab_channel=FahdMirza)
Acest videoclip arată cum să instalați local [AgenticSeek](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbDdyZk9iRUFGX1UwdWlxYUJfa1lpOGpTX1IyZ3xBQ3Jtc0ttUUFDYkJhY0hMSV9nNWdwb250TEJZd2FNRi1oZHdmeGFqSUc3b0NkUldpU3c3QzFnMW9mUjFtcHNiLTRQSUliZnc5c2FaQkUxR3ZQZjJBeXc4a19mcnhQSXFtbDNIazN1eVNmSHZ6S1lvSldBbmVESQ&q=https%3A%2F%2Fgithub.com%2FFosowl%2FagenticSeek&v=ozgb1cPRPpE), care este o alternativă complet locală la Manus AI, un asistent AI activat vocal.

<hr/>

[China Modifying NVIDIA <b>RTX-4090</b> to Have <b>96GB-VRAM</b>](https://www.youtube.com/watch?v=Y0oO09tRqhg&ab_channel=FahdMirza)
<br/>Acest [videoclip](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbWd0YzZSdERDNDZsejd2SnpMYmdONHR5eGtNd3xBQ3Jtc0tudk9oUnhyanJwOGIzc3RJc1ota0w0ZHR1cFFxSlV6WmRXVFVDbFZMSkJHTjI0NDlTcmgxeEZKRWl1RWZTWlZSYVlJMjZvbVIxbjRxZll2cmgzUVAwNU11VnpHLVVXSVhBZ1Nla2pESm8wN3hiZDUxNA&q=https%3A%2F%2Fx.com%2Fmrqs_gabriel13%2Fstatus%2F1896625290769764423&v=Y0oO09tRqhg) opinează despre acoperirea media actuală a cursei AI dintre China și SUA.

<hr/>

<details>
	<summary><b>QvQ-Max</b> de la Alibaba...</summary>
<br/>
<hr/>
	
[**QvQ-Max**: Top Visual Reasoning Model from Alibaba - Thorough Testing](https://www.youtube.com/watch?v=2dswEwhHSdY&ab_channel=FahdMirza)
<br/>🔥Acest videoclip testează [**QVQ-Max**](https://simonwillison.net/2024/Dec/24/qvq/)(al echipei [Qwen2.5 Max](chat.qwen.ai)...a Alibaba ), care vine cu Multi-Image Recognition(recunoastere multi-imagine) și alte funcții.
<br/>[**QvQ**](https://simonwillison.net/2024/Dec/24/qvq/) este o continuare(axată pe viziune/recunoastere multi-imagine) a [**QwQ**](https://simonwillison.net/2024/Nov/27/qwq/)-ului.
<br/>[**QwQ**](https://simonwillison.net/2024/Nov/27/qwq/) este un model impresionant de scalare(ajustare) a [*inferenței*](https://www.teachthought.com/literacy/difference-inference-prediction/)(a nu se confunda [*inferenta/concluzionare/deductie-logica* cu *predictia/prognozare*](https://www.difference.wiki/inference-vs-prediction/)!) cu licență deschisă(open-source): 

   - dați-i un prompt(o intrebare) și se va "gândi/rationa"(cu voce tare/vorbind), la multe jetoane(cuvinte-cheie), în timp ce ...
   - ... încearcă să obțină un răspuns bun,...
   - ... similar modelelor **o1** și **o3** ale ***OpenAI***.
   
<br/>Noul **QvQ** adaugă viziune mixului(de imagini).
<br/>Il puteți încerca direct/online(ca orice alt model) pe [**Hugging Face Spaces**](https://huggingface.co/spaces/Qwen/QVQ-72B-preview) — (desigur, cu mici restrictii... pt ca resursele [nu] sunt [ne]limitate si astfel pot incerca noul produs, cat mai multi cu putinta doritori/utilizatori... ) acceptă o imagine și o singură solicitare și apoi transmite un răspuns foarte lung în cazul în care se "gândește/rationeaza" la problema pe care ați pus-o. 
<br/>Nu există nici-o opțiune de a trimite o solicitare de urmărire(elaborare)...

<hr/>

</details>

<hr/>

</details>


<details>
	<summary>grupul de proiecte: Thera, Fin-R1, MoonCast, Extract-SD-from-Any-PDF, Teapot,OlympicCoder(7B), Parse-Vision,    ...</summary>

<br/>Sa analizam pe rand fiecare subiectin parte ...

<hr/>

[<b>Thera</b> - First Arbitrary-Scale Super-Resolution AI Model - Install Locally](https://www.youtube.com/watch?v=nlBsozc7Ny0&ab_channel=FahdMirza)
<br/>Acest [videoclip](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnI0NEtlMWpIYVRFX0Q2ZkdKZlgydmE2bmtCUXxBQ3Jtc0tuRnVlNjBVMG9vTzVKRlBEc2REUVVuSG1Eck9SZFZ3Z0FpM0p1WVZSeFJoandRWmprWFhLbUdzYjJLREhDb3hHQ3FPaG1vQVJ1cUZwQUZWV1RaZDB4dm02WnJ0bnR1Z2dGT2RERGNpeVYxcHJHM1J4NA&q=https%3A%2F%2Fgithub.com%2Fprs-eth%2Fthera&v=nlBsozc7Ny0) instalează local **Thera**, care este prima metodă de super-rezoluție la scară arbitrară cu un model de observare fizică încorporat

<hr/>

[<b>Fin-R1</b>: Financial Reasoning LLM for Insurance, Trust, Securities, Banking - Install Locally](https://www.youtube.com/watch?v=0esd2c-H0eM&ab_channel=FahdMirza)
<br/>Acest [videoclip](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbHBSTUdmY1JnRUJ2OG5ReWFZZmlnLUowYlB5UXxBQ3Jtc0tsNHZqajRtVFI3THNGWTNEcGozbF84VU1PVTZrYjJ5ZklDSXk4RFlSeURGNTB5RkZDb0pUWXpuYlpwa2VTeDhsZE5DOGY3YWl0bUN4TzhwZ0hVdW1xWFk4eW9rS1k0Z05PWmtwSlVjQ3Fzb05iRlZ6TQ&q=https%3A%2F%2Fhuggingface.co%2FSUFE-AIFLM-Lab%2FFin-R1&v=0esd2c-H0eM) instalează local **Fin-R1**, care este un model de limbă mare pentru raționament financiar complex 🔥 

<hr/>

[<b>MoonCast</b> AI Tutorial: Install & Generate Realistic Podcasts from Any Text in Minutes!](https://www.youtube.com/watch?v=BVFHuZDuA6M&ab_channel=FahdMirza)
<br/>Aflați cum să instalați [MoonCast AI](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmo2a2pEMDRjTURnV2czQnNIUGFmdWtKWjVFZ3xBQ3Jtc0tsNmQxTGowODlidGJuRkM5MGZVdHhmbGkzQWtJVXBaUVpSSm9Pa182LWRaeDNvSS1sUWh1Y0ZvMFZiaktMeWlMOHlkMmM1MnNYNjBaN0lrc2lOaGdia19mZlVYNU9ERUdVSzlNdXpxZWNaS3ZUM1IxYw&q=https%3A%2F%2Fgithub.com%2Fjzq2000%2FMoonCast&v=BVFHuZDuA6M) și să transformați instantaneu orice document text sau pagină web în podcasturi realiste și spontane! 🔥

<hr/>

[<b>Parse-Vision</b> - Visualize What OCR is Parsing in PDFs - Install Locally](https://www.youtube.com/watch?v=Hl3u5DSvU_c&ab_channel=FahdMirza)
<br/>Acest videoclip instalează [Parse Vision](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnphLUdZYnRabEYycFpCT2ZuTTZGY0k1clAtQXxBQ3Jtc0tuYkFkLWdOZU85RS1jcmJIRlhxd2tZanZGbTJlWTBpT0t0ZHl5SzR2WjItUml2b1NoQnJ4SXR0aF9xV2dGQkhmRUEzd2d6SG9qWFU0eE1MNUpYVGhQY1ZJY2ZkWmRjNEVEM2k4TERmNFNqcVNYaF9lSQ&q=https%3A%2F%2Fgithub.com%2Forasik%2Fparsevision&v=Hl3u5DSvU_c) la nivel local, care este un instrument open-source pentru a vizualiza ceea ce OCR analizează într-un document PDF. 🔥 

<hr/>

[<b>Extract Structured-Data from Any PDF</b> Using AI for Free: Hands-on Tutorial](https://www.youtube.com/watch?v=yiXxS_gv-Hc&ab_channel=FahdMirza)
<br/>Acest videoclip arată cum să utilizați AI pentru a extrage date din orice document PDF, cum ar fi ***Facturi***, ușor și liber. 🔥 

<hr/>

[<b>Teapot</b> LLM - Hallucination-Resistant Pocket RAG Model - Install Locally](https://www.youtube.com/watch?v=Slilr02pSF0&ab_channel=FahdMirza)
<br/>[Teapot](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbDAwaEZNMVJnUHFTQzVzdWRseFhTa1ZEbzZhZ3xBQ3Jtc0ttdHN1RjBES0pJWjV1b0o0UWhkTklIVHI3WWl0MXN3UWVZVDYtV196bkVWVWFsS2x6Z2VhbUZieHpRbFQxUjR1Ri1sYnB4Mzhud3YzbFVmSHlPOElqOElBSHlKMXFXVlBOSGxKRlVtbjZiR3NuOXRldw&q=https%3A%2F%2Fhuggingface.co%2Fteapotai%2Fteapotllm&v=Slilr02pSF0) este un model de limbaj mic open-source (~800 de milioane de parametri) reglat fin pe date sintetice și optimizat pentru a rula local pe dispozitive cu resurse limitate, cum ar fi smartphone-uri și procesoare. 🔥 

<hr/>

[<b>OlympicCoder 7B</b> - Competitive Coding Model with Reasoning - Install Locally](https://www.youtube.com/watch?v=mGg_IKXqfVg&ab_channel=FahdMirza)
<br/>[OlympicCoder-7B](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa3A3R3FKdWZfcVRITXZheHNURFFULXZpb0dOUXxBQ3Jtc0tsazNRcERwcU93UVRQb0lTSGRxU3AyQnJrWkpfQnR3YWx3MTVGYVVUVngtQVgyXzRES1dTRzVidXAxWEkxX0MwOFNzVVB1RXVHQmJmdXpPQ210NzVwcUJhWlJ0NGpBTF9FRHQ1bjNXQjd3cVlLMTZHbw&q=https%3A%2F%2Fhuggingface.co%2Fopen-r1%2FOlympicCoder-7B&v=mGg_IKXqfVg) este un model de cod care atinge performanțe puternice pe *benchmark/standuri de lucru/testare*-uri de codare competitive, cum ar fi *LiveCodeBench* și *Olimpiada Internațională de Informatică* din *2024*.

<hr/>

[<b>Parse-Vision</b> - Visualize What OCR is Parsing in PDFs - Install Locally](https://www.youtube.com/watch?v=Hl3u5DSvU_c&ab_channel=FahdMirza)
<br/>Acest videoclip instalează [Parse-Vision](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbXlmTnZ6V0JhWnhrYnpMV2h0V3RVUmRBdnhIZ3xBQ3Jtc0tuUUlqSGpxazlaUG9sUERpcjRyNzU4OFduNjRpNWF2YzQ1WUJLV05NNnptakRYYjZwYnBESU53bS1UY1I5VXc3aWFYQlQ3WHRGTzdTX1BJeXBOR2h2ZmhKTGZMdFVMbjNWOTNhbjJldERtaVNFWUUtTQ&q=https%3A%2F%2Fgithub.com%2Forasik%2Fparsevision&v=Hl3u5DSvU_c) la nivel local, care este un instrument open-source pentru a vizualiza ceea ce OCR analizează într-un document PDF. 🔥 

<hr/>

</details>

<details>
	<summary>grupul de proiecte: HVI/MM, Deep-Researcher, Hugging-Face(HF), FastCuRL(1.5B), ColNomic-Embed-Multimodal(3B) ...</summary>

 <br/>Hai sa analizam fiecare topic in parte...
 
<hr/>

[MM - Inductive Moment Matching by Luma Labs and Stanford](https://www.youtube.com/watch?v=-BOtslzbRB0&ab_channel=FahdMirza)
<br/>Acest videoclip instalează local [*HVI*](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbDN4QzEwZlhNZDUwRkwycnVaOUVmd0drUVRoQXxBQ3Jtc0tsLXFCaEVrWkxSTWJtOWlaSS1kdU1rWl9rYmR4MHQtSHpZY1hncnk1NTktcDE4SFFraTFUWVVqVmxUczdEb0VGQlZuOU1RM004ZVlrSzIxSXdVbTJEV2ZGbWRmUjN2MGZxYVpQck5icVc2RHhmYlFsQQ&q=https%3A%2F%2Fgithub.com%2FFediory%2FHVI-CIDNet&v=-BOtslzbRB0) care îmbunătățește imaginile cu lumină scăzută prin utilizarea unui nou spațiu de culoare pentru a reduce zgomotul și a îmbunătăți luminozitatea în mod eficient. 🔥


<hr/>

[<b>Local-Deep-Researcher</b> with Ollama - Install Locally for Web Search](https://www.youtube.com/watch?v=czGVsAd3b88&ab_channel=FahdMirza)
<br/>🔥Acest videoclip instalează local [**Local Deep Researcher**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqblIzVWt4d1hHc1VqSk5TSndWcVdCVVVHRklxZ3xBQ3Jtc0tuX0RiODU2aE4zd1oxOVZtRkdnVVBuWjJmYUk4aFIyb3YtRHg4dnlwZzJ6ajNoaUo5S0xHNUxadGk0UGdzaGZ3am03NVdMZGpoYTVPazdhaXVXUGlGa2p4UXJ5c29feGNLcnhqdkQ1WUFsYnAxcjFHTQ&q=https%3A%2F%2Fgithub.com%2Flangchain-ai%2Flocal-deep-researcher&v=czGVsAd3b88), care este un [**asistent de cercetare/cautare pe web**](https://www.youtube.com/results?search_query=fahd+mirza), complet local, care utilizează orice **LLM** găzduit de ***Ollama*** sau ***LMStudio***. 

<hr/>

[A Quick Tutorial on <b>Hugging-Face(HF)</b>](https://www.youtube.com/watch?v=AYZQq5l2DCE&ab_channel=FahdMirza)
<br/>Acest videoclip este un tutorial pentru începători pentru a parcurge [Hugging Face](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmJDdkRvRG15V2RsdzQwODhpbkE0dnVtSUVvd3xBQ3Jtc0trenJBak53NE15TkI3WERKQ1lfRlAyRDNnU3gzVnpLelBJUGRmMFR6elhLYk45cXdHSzNpT01VVW12YVl6b0I5bEE5aDdXbXNrUGtZdERZVEJfMVBXZ3g2MTdSYUNJdGlQa1V2TkFDSUVuZ0toSk5KQQ&q=https%3A%2F%2Fhuggingface.co%2F&v=AYZQq5l2DCE) pentru a găsi și selecta un tutorial pentru cazul dvs. de utilizare

<hr/>

[<b>FastCuRL(1.5B)</b>: Slow-Thinking Reasoning Model - Install and Test Locally](https://www.youtube.com/watch?v=CIYQzW0NR1U&ab_channel=FahdMirza)
<br/>🔥Acest videoclip instalează local **FastCuRL-1.5B-Preview**, care este un *model de raționament lent* care îl depășește pe ***DeepScaleR-1.5B*** cu **50%** *pași de antrenament*(reglare-fina/Fine-Tuning=FT).
<br/>In acest videoclip,  **Fahd-MIRZA** prezintă modelul **FastCurl**, un [model de limbaj(LLM)](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbTYwM3RBTDRmV1drZTcwekFRME5QOXc1MXVNUXxBQ3Jtc0tsZUFKT0Y5anVXaHpGRlBmamRETW81T1FuMzNnWVVMY2JoUS0tVjdUcVFiLXdHYzd5YzBBZVhUX19IbGFBSkNNQ3ZGc0lBMVVXMFR1ajk0bHN3WGI3eEE2S0hYdHpvOUZCWXFJcUpWa1JvYWJ5aGlzZw&q=https%3A%2F%2Fhuggingface.co%2FNickyang%2FFastCuRL-1.5B-Preview&v=CIYQzW0NR1U) cu 1,5 miliarde de parametri, reglat-fin(**FT**) cu o abordare nouă cunoscută sub numele de *învățare rapidă de consolidare* a *curriculumului*.
<br/>Această metodă îmbunătățește abilitățile de raționament ale modelului prin implementarea unui proces de instruire structurat care începe cu sarcini mai ușoare și crește treptat în complexitate. 
<br/>Videoclipul acoperă procedura de instalare, prezintă performanța modelului la diferite sarcini de raționament și demonstrează modul în care gestionează eficient interogările complexe pas cu pas, deși unele răspunsuri nu sunt complet exacte.

<hr/>

[<b>ColNomic-Embed-Multimodal(3B)</b>: Visual Document Retrieval - Install Locally](https://www.youtube.com/watch?v=URwFXlQXzsg&ab_channel=FahdMirza)
<br/>[**Colnomic-embed-multimodal-3B**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa0NZcFRaOGM4YWFkaUktOExkbE05NlZxY0FwZ3xBQ3Jtc0ttTXk3SW9iRzBrRFBPQk9WVGZWVkEwSVJFV3Rjdk5qQlZIMXpPTFNHUTByLVNsc041QVlVYXRsZFNaVnhhM2dKX0xVdW9qRnozbENsaG5UNXc0SXByS0trRTAzSFdoQzNzbGJXdkRnVF96aURHQUMyZw&q=https%3A%2F%2Fhuggingface.co%2Fnomic-ai%2Fcolnomic-embed-multimodal-3b&v=URwFXlQXzsg) de la ***Nomic*** este un *model de încorporare multimodal* de ultimă generație cu mai multi *vectori*, care excelează la sarcinile(tasks) de *recuperare vizuală* din/[a] documente[lor]. 🔥
<br/>În acest videoclip, ***Fahd Mirza*** prezintă modelul **Nomic Embed Multimodal**, un instrument open-source pentru încorporarea *diferitelor* tipuri de date, cum ar fi *text*, *imagini*, *PDF-uri* și *diagrame*. 
<br/>Videoclipul acoperă procesul de *instalare* pe o mașină *locală* și arată cum să *utilizați* modelul pentru *recuperarea* eficientă a documentelor vizual-textuale. 
<br/>Cu aproximativ *3 miliarde(3B) de parametrii*, modelul demonstrează valori impresionante de performanță, evidențiind capacitatea sa de a *codifica* și *compara*(a pune fata in fata) *interogări-textuale* cu *documente-vizuale*.

<hr/>

</details>

<details>
	<summary>grupul de proiecte: Biniou, LLM-conversation, GitDiagram, GemmaX2(9B), Run directly GGUF-Models from HF,  ...</summary>

Sa analizam pe rand fiecare subiect in parte ...

<hr/>

[<b>Biniou</b> - Generate Text, Video, Image, Music, 3D Locally - Free and Private](https://www.youtube.com/watch?v=7JFU3W045hE&ab_channel=FahdMirza)
<br/>Acest videoclip arată cum să instalați și să utilizați [Biniou](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbkFncXdyV0txaHhxMDRXLUpWVTVtX2RBMWtfZ3xBQ3Jtc0tsZzRHNXV4MXMwNk5aaGY4VndLTUhsVXZIcUpmb08wQmUwSFVyM2JHN0FqVU12VTJKdHlYQ0RsMGR5VjhGdW5ocmQyUnRjLS03dThTeC1Ddnh4cm5GTXcxUXllVzMxcEVHYmtJU3RJRmE4WjhSRzZSRQ&q=https%3A%2F%2Fgithub.com%2FWoolverine94%2Fbiniou&v=7JFU3W045hE), care este o interfață web all-in-one pentru AI. 
<br/>În acest videoclip, prezentatorul prezintă „Biniou(a se citi Binu)”, o nouă interfață-web concepută pentru a rula modele mari de limba(LLM-uri) local și offline. 
<br/>Procesul de instalare pe Linux(nu am incercat... dar probabil ca acesta va functiona si [de] sub Windows 10/11 sau cel putin/macar [de] sub WSL) este demonstrat, arătând cât de ușor este să configurați și să gestionați diverse instrumente AI-generative, incluzand aici generarea de text, imagini, video și audio. 
<br/>Videoclipul evidențiază, de asemenea, caracteristicile ușor de utilizat ale interfeței de utilizare și oferă o privire asupra capacităților de descărcare și generare a modelelor, subliniind versatilitatea și comoditatea acestui sistem auto-găzduit(local si offline).

<hr/>

[LLM-conversation](https://www.youtube.com/watch?v=D6vw-FLGQ-c&ab_channel=FahdMirza)
<br/>Acest videoclip instalează local această aplicație Python care permite conversații între agenții-LLM folosind API-ul **Ollama**. 🔥
<br/>În acest videoclip, Fahd-Mirza prezintă un proiect inovator care utilizează modele în limba(LLM) locală pentru a facilita conversațiile dintre ei. 
<br/>[Proiectul-github](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbkc2SlBwbmVtcWJiQXpjekFQeWlNQjJGMmFFQXxBQ3Jtc0tsazhBam5qc0l3MFctU2tSOGxYZTNCMEFzSGVwaEdsQVJKWU5PTW1vdVhmZjZQVW1FVEdsSjR4dzdOck5TT1dmS2pjZGt1S3dIeW1hUHJjbHRubXljMmx5WVk0ZFJmMFpDd0R1UlhZOW9aUzhOZDN0Yw&q=https%3A%2F%2Fgithub.com%2Ffamiu%2Fllm_conversation&v=D6vw-FLGQ-c), conceput ca o aplicație Python ușoară, oferă utilizatorilor posibilitatea de a personaliza interacțiunile prin definirea parametrilor modelului, cum ar fi temperatura și dimensiunea contextului. 
<br/>Fahd-Mirza demonstrează procesul de configurare, instalarea componentelor necesare și prezintă diverse scenarii conversaționale, subliniind natura jucăușă și interactivă a acestui proiect model de limbaj(LLM) de origine.

<hr/>

[<b>GitDiagram</b> - Free, Simple, Fast Interactive Diagrams for Any GitHub Repo - Install Locally](https://www.youtube.com/watch?v=tHHRDZtBTCQ&ab_channel=FahdMirza)
<br/>Acest videoclip instalează [GitDiagram](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbG1aelN6M1I1MmV5YjZ1OEtqY0V1TjNIU01IQXxBQ3Jtc0ttQVZNeG8xTEI2YWc0MmZldXNERXc1Mkl0bF9BMjFINVIyOFZZcHUybHBENFA0RmFyRnItbFYyQjZVb2p0N1dxQ2stYlpQSlcxbWZvUHlPZWYwNjV0aWdYY3ZRdzZmNjc4X3NGWnB1N2ZZYklvTENwcw&q=https%3A%2F%2Fgithub.com%2Fahmedkhaleel2004%2Fgitdiagram&v=tHHRDZtBTCQ), care vă permite să transformați orice depozit-GitHub(repository/repo) într-o diagramă-interactivă pentru vizualizare în câteva secunde. 🔥
<br/>În acest videoclip, ***Fahd-MIRZA*** prezintă un proiect care convertește orice depozit-GitHub într-o diagramă de arhitectură-interactivă pentru vizualizare. <br/>Acest instrument rulează pe modele-API de la ***OpenAI*** și ***Anthropic*** și permite utilizatorilor să navigheze direct prin diferite componente ale unui repoository]. 
<br/>Procesul de instalare este, de asemenea, detaliat, inclusiv cerințele preliminare necesare, cum ar fi **NodeJS**, **Docker** și configurarea *cheilor-API*. 
<br/>Domnul ***Fahd-MIRZA*** evidențiază mai multe caracteristici ale instrumentului, inclusiv capacitatea de a vizualiza structuri complexe de tip repo[sitory] și de a aborda unele dintre erorile întâlnite în timpul utilizării.

<hr/>

[<b>GemmaX2(9B)</b> - LLM-based Translation Model - Install Locally](https://www.youtube.com/watch?v=7qsosU4PcdE&ab_channel=FahdMirza)
<br/>Acest videoclip instalează local [GemmaX2-28-9B-v0.1](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbjdqOG1IaG5KUEUtWmhkcjRZYnpwQ0pXN3Y3QXxBQ3Jtc0tuUkc5cVpsX1RGOTJGZWJGQ2N4ckQxZ19kSFI5T2x5dmJFc3BmZGZyZ1dMRWZvYXloeEF2OU83YkFDZmdlcDJJRVFkU29hNkpVZTVzVGxwNlBUZHJKNm12eGZzRmw1ei1YREJ0b1Z1TlF3ZzVBWWtuQQ&q=https%3A%2F%2Fhuggingface.co%2FModelSpace%2FGemmaX2-28-9B-v0.1&v=7qsosU4PcdE), care este un model de traducere bazat pe LLM care acceptă 28 de limbi. 🔥
<br/>În acest videoclip, d-nul Fahd-Mirza explorează **GemmaX2**, un model de limbă(LLM) conceput special pentru ***traducerea multilingvă***, care cuprinde două variante de 2 miliarde(2B) și 9 miliarde(9B) de parametri. 
<br/>Modelul utilizează o strategie unică de amestecare a datelor, cunoscută sub numele de **PFMS** (în primul rând paralel, in al doilea rand mono-lingv) pentru o instruire îmbunătățită în 28 de limbi(naturale). 
<br/>Domnul Fahd prezintă instalarea modelului, demonstrează capacitățile sale de traducere și compară performanța acestuia cu alte modele, subliniind că, deși funcționează bine pentru modele mai mici, <ins>nu se potrivește</ins> cu cele mai înalte modele, cum ar fi ***GPT-4.5***.

<hr/>

[How-To Run Private <b>GGUF-Models</b> from Hugging Face Hub Directly in Ollama](https://www.youtube.com/watch?v=vkXzeVUvV24&ab_channel=FahdMirza)
<br/>Acest videoclip oferă o demonstrație pas cu pas despre cum să rulați LLM-uri de tip [GGUF](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbTJpc1IyWmZtR05sZzlnQ25YdjQ2cFlnbXcxUXxBQ3Jtc0trTlUtc2J3VUhxbnNsWlVPemNIb0hDeTA5dGVUYXlPQUNkQUpuWmJ5SXNUc0dBeE4yZWZjbm10NnlQTjJzQndXZ3lnYTg0M1lfZUJ5UEdqNWwwNEdsSkNEemg5aWNNY05fMjJhUnJHZGRRMldfWlhvTQ&q=https%3A%2F%2Fhuggingface.co%2Fdocs%2Fhub%2Fen%2Follama&v=vkXzeVUvV24)-urile private din hub-ul Hugging Face direct în **Ollama**(serverul local de LLM-uri/stocate si ele tot local sau la distanta pe HF). 🔥
<br/>În acest videoclip, Fahd Mirza ne prezintă **Hugging-Face(HF)**(un binom din internet: hub/depozit+website) și **Ollama**(a se citi AMA si care... se instaleaza ca un server/serviciu local), două platforme pe care le folosim frecvent pentru a lucra cu modele de limbaj mari(**LLM**-uri). 
<br/>El evidențiază o nouă caracteristică de la **Hugging-Face**, care permite utilizatorilor să ruleze depozite private la nivel local folosind **Ollama**, facilitând gestionarea în siguranță a modelelor de către indivizi și organizații. 
<br/>Tutorialul ghidează utilizatorii prin crearea unui depozit privat pe **Hugging-Face**, configurarea **cheilor-SSH** pentru conectivitate sigură și demonstrarea cum să ruleze aceste modele private la nivel local(fără a fi nevoie să introduceți parole). 

<hr/>

</details>

<details>
	<summary>grupul de proiecte: PyMuPDF / PyMuPDF4LLM, Swarm of AI Agents, Gemma3(27B), Orpheus-TTS, Gemma3(12B),...<br/>
		...Nomic-Embed-Code, Qwen-Agent, Run LLM remotely on HF, Qwen2.5, Create DS using Ollama, IBM-Docling ...</summary>

<hr/>

Sa le analizam pe rand ....
 
[<b>PyMuPDF</b> and <b>PyMuPDF4LLM</b> - Prepare PDF for LLM and RAG - Install Locally](https://www.youtube.com/watch?v=xR7er853eek&ab_channel=FahdMirza)
<br/>[Ce este PyMuPDF și PyMuPDF4LLM?](https://github.com/pymupdf/PyMuPDF)
<br/>Acest videoclip arată cum să instalați local, [PyMuPDF4LLM](https://github.com/pymupdf/PyMuPDF), pentru a facilita extragerea conținutului PDF în formatul de care aveți nevoie pentru LLM și RAG. 🔥

<hr/>

[Create a <b>Swarm of AI Agents</b> Easily with LLMs](https://www.youtube.com/watch?v=qyFFcfAmOSY&ab_channel=FahdMirza)
<br/>Acest [videoclip](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmV4eHRHYTBUb3NuS0haTmM5ODNiaFNhWUV1QXxBQ3Jtc0tsQUgtTktJaXVHdnZya0EzQ0Q0VWdYWk9FMU8zY2NXb1QwX25rN2R2RVhkQlc2UzNZOGlTTWxfTk9GTW1ULVdON0tBdl9waTJaY21WY1NURG5PV3NqMDAzRlhOMGZQMGttTnloakotQzhza0g3RmgzNA&q=https%3A%2F%2Fcolab.research.google.com%2Fgithub%2Fdeepset-ai%2Fhaystack-cookbook%2Fblob%2Fmain%2Fnotebooks%2Fswarm.ipynb&v=qyFFcfAmOSY) arată cum să creați cu ușurință un roi/swarm de agenți AI cu Haystack, OpenAI și Anthropic în colaborarea Google. 🔥

<hr/>

[Google <b>Gemma-3(27B)</b> - Top Class Multimodal Model - Install Locally](https://www.youtube.com/watch?v=noN0txjM51Q&ab_channel=FahdMirza)
<br/>Acest videoclip instalează local modelul [Gemma 3](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbk9SZVFHQ0lDZVNyekdVQkxMeml5LXZKV3BzQXxBQ3Jtc0tuVlpaU01PS0xmcUFCUUlBRjhyX0pnXzhBcTJvRGdDdlJ6LXI5ZWU5a1NScHRMTlpxSFBfZkR3ZEVqOE9VRHJMTXRwWXMyZFN6S1BFZ1pHbHZWMmc3LTN5YnQyb0xDdE9WcUhsNG1xLUNfMWhyMTdSSQ&q=https%3A%2F%2Fhuggingface.co%2Fgoogle%2Fgemma-3-27b-it&v=noN0txjM51Q), care este multimodal, gestionând introducerea textului și a imaginii și generând text în 144 de limbi. 

<hr/>

[Clone Your Own Voice Locally with <b>Orpheus TTS</b> - Step-by-Step Easy Guide](https://www.youtube.com/watch?v=c6r0g9NTXIQ&ab_channel=FahdMirza)
<br/>Acest videoclip prezintă un tutorial practic pas cu pas pentru a-ți clona vocea dintr-un eșantion audio existent utilizând modelul [Orpheus TTS](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbUZCY0g2cmxIQnhUdk1ra1dZMkFEeTdzcmxvd3xBQ3Jtc0ttMUZoa2xsWUc1cHVDM21WMWNsTjVudGkzcnZRVkxNRnhmLVQxNzhCelVzV2NQeU12SXppUHFqQVcweDJnOE84amU2RVUtalhGVXBxY1hTbUE0RjItVXJWUW0wQTQzN0NCa3N1OU84Rng2dDVLQ1R1Yw&q=https%3A%2F%2Fhuggingface.co%2Fcanopylabs%2Forpheus-3b-0.1-pretrained&v=c6r0g9NTXIQ). 🔥

<hr/>

[Run <b>Gemma 3(12B)</b> Vision Model(VLM) on CPU Locally - Easiest Tutorial](https://www.youtube.com/watch?v=ZGtAoFteslM&ab_channel=FahdMirza)
<br/>Acest videoclip este un tutorial simplu pas cu pas pentru a instala și rula modelul [Gemma-3 12B](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbjhuZkZ6U3lQczNsVEw4eHlGZmR0V1lJMDFQUXxBQ3Jtc0tuUkxycXBVTWs2N2Z4aXh0UHpzU1NsZC0zUnBZMm00dEhxVXhQa2U2YUhPbXc2UDg4Q0ttYUVHZG5hNmFBaVo0TkZNZmJGbnAxcGRGY2dUdXlYN2U5UkJjQWx4OF9jQmE0dW9icXNUMHRiblhlcEk3RQ&q=https%3A%2F%2Fhuggingface.co%2Fggml-org&v=ZGtAoFteslM) cu **llama.cpp** în format **gguf**. 🔥 

<hr/>

[<b>Nomic Embed Code</b> - A State-of-the-Art Code Retriever - Install Locally](https://www.youtube.com/watch?v=oRHH4Z1M9Bc&ab_channel=FahdMirza)
<br/>Acest videoclip instalează local [nomic-embed-code](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbFkzSk8zVFRCWEE0ZV9kc05hOTdFU3pYR2FqZ3xBQ3Jtc0tsSWJqVmlqTVBUeHVJem9XWnBDWkFxMjBxWGJ0ZUk4RVJISjF5T1ZfaDVpZGswa19XOXVCR1Y4Q3dxVTFWQkFpc3VuV3N4YkltLWJZUzNnaTRpTmNpY0tVNXNhWjVMbjhRUzMxYnJIT0V6RFBzdXZnUQ&q=https%3A%2F%2Fhuggingface.co%2Fnomic-ai%2Fnomic-embed-code&v=oRHH4Z1M9Bc) este un model de încorporare de cod de ultimă generație, care excelează la sarcinile de recuperare a codului. 🔥

<hr/>

[<b>Qwen-Agent</b> with Ollama: Plan, Tool-Use, Memory of Qwen - Install Locally](https://www.youtube.com/watch?v=EbxLmxjL8v4&t=245s&ab_channel=FahdMirza)
<br/>Acest videoclip arată cum să instalați local [Qwen-Agent](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbUc2ZmhISUVoN1dfdzh0c1Q4S1R5Zm1QWnNud3xBQ3Jtc0tsazBTbTJBZWZZaDQxQ2ROajJwUFlnRmVWS1NXRzIzdUVTM3czMzJtV3ppam5mYXN2ejJWVTFRNmtUaVctdmRsdGJTaUhrUExqbGhUN29RZHR4TXI2ODlzdWhmS3ZDUHh3ajBOUWVkdzE4VkZXV3d4Yw&q=https%3A%2F%2Fgithub.com%2FQwenLM%2FQwen-Agent&v=EbxLmxjL8v4), care este un cadru pentru dezvoltarea aplicațiilor LLM bazate pe instrucțiunile care urmează, utilizarea instrumentelor, planificarea și capacitățile de memorie ale Qwen. 🔥

<hr/>

[HUGE - Run Models Directly from Hugging Face with Ollama Locally](https://www.youtube.com/watch?v=6ZCHwKzBd7o&ab_channel=FahdMirza)
<br/>Acest videoclip oferă o demonstrație pas cu pas despre cum să rulați oricare dintre modelele 45K+ GGUF pe Hugging Face Hub direct cu Ollama. 🚀

<hr/>

[<b>Qwen2.5</b> - Party of LLMs - Install and Test Locally](https://www.youtube.com/watch?v=x97BWsrmjpU&ab_channel=FahdMirza)
<br/>Acest videoclip arată cum să instalați local modelul [Qwen2.5](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbDliR1dKVmY4OGxWekVSMWtPS3JfVzNNM0l2Z3xBQ3Jtc0tsYXk3VVBid2xSb3VuX3ZBdmlBQ2dsQktFdDJwZmtaTW9PelBuTk41LXJlUks5MGZGQ1cxOXd6UnRSaGZ5a2ZkNEtsR2EtQnI0OVIydFl4a25YOE9zZEJRUG5mOHp3RU9GNGVrR0UxSzZ6Yll0bjkwZw&q=https%3A%2F%2Fqwenlm.github.io%2Fblog%2Fqwen2.5%2F&v=x97BWsrmjpU), care este cea mai recentă serie de modele Qwen în limbaj mare(LLM). 🔥

<hr/>

[How to Create Your Own <b>Dataset</b> from Scratch with <b>Ollama</b> Locally](https://www.youtube.com/watch?v=Lie8uMoAVec&ab_channel=FahdMirza)
<br/>Acest videoclip este un [tutorial](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbEtCVDcxLWE3S21xQmNJUkFqdDk0Sko2Z1hSd3xBQ3Jtc0ttOEdrUFFIRHhsYmtNU0tCeDYtWWJBX3VOVnVsRTZyOXVsSXE3bUlVRnZUOGJxV0pYYjU1NlJfOUpvQXdWVi1SX1hUSW5sRGxJS2FJdHJnNjJXVURFSV9BLTZKMElZakZ2b3RhbXBFb1E3czQ2Mm4xaw&q=https%3A%2F%2Fwww.fahdmirza.com%2F2024%2F08%2Ffree-llm-dataset-creation-with-ollama.html&v=Lie8uMoAVec) pas cu pas pentru a crea propriul set de date personalizat din schema bazei de date la nivel local cu modelul gratuit de la Ollama. 🔥

<hr/>

[<b>Docling</b> - IBM Library to Make Documents AI Ready - Install and Test Locally](https://www.youtube.com/watch?v=9gDJ6PhvVck&ab_channel=FahdMirza)
<br/>Acest videoclip arată cum să instalați IBM [Docling](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbVkyaVJrWlM3OGtoNENXVUhWLXVxcnVOajQzUXxBQ3Jtc0tsT18yRmZIZmc5bmRmb1o4V0hwUzRoREFodXJkcl85eGtFV29RNFkzSGpYRkFTM0Z6Uk5Cb1RsUUViQk5OMWNoa2xwNEFacV9aNG5XMDd6VmJSdUdSOW9HLVBPbVZIUTlWc2tSMk5XaUJsbmtMSEpSQQ&q=https%3A%2F%2Fgithub.com%2FDS4SD%2Fdocling&v=9gDJ6PhvVck) local, care citește formate de documente populare (PDF, DOCX, PPTX, Imagini, HTML, AsciiDoc, Markdown) și exportă în Markdown și JSON. 🚀 

<hr/>

</details>

<details>
	<summary>grupul de proiecte: CAMEL, PortKey, GPTme, DB-Agent, Kimi-VL, MCP, ...  </summary>

<hr/>

Sa le luam pe rand...
 
<details>
	<summary><b>CAMEL-AI</b>...</summary>

<hr/>

[Build Agentic RAG Chatbot with Camel AI in Free Google Colab](https://www.youtube.com/watch?v=WECSryd63Sc&ab_channel=FahdMirza)
<br/>Acest videoclip arată cum să construiți un chatbot simplu Agentic RAG cu ajutorul [Camel AI](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbXJkM2RZNmxVWlVlVTFObTBhcWE2MWVyV3RFd3xBQ3Jtc0tsR21seXVUQ0NUdFR0Q3Buc2NVeTBGeDE3QUlHTjQweFJ0VENhSFBfYV9kS2pVWTAyc3VOb1ZnMWRjclROVHBSOXhYWWZDZmpUbXVGOHV5czY2dkdFX1gyZnI2RVNESjVMN3FwWmMtZUNkbUNXQU1ZSQ&q=https%3A%2F%2Fgithub.com%2Fcamel-ai%2Fcamel&v=WECSryd63Sc), SambaNova și Firecrawl. 🔥
<br/>🐫 [**CAMEL-AI**](https://www.camel-ai.org/): Primul și cel mai bun cadru **multi-agent**. Găsirea *legii de scalare* a agenților. 
<br/>🐫 **CAMEL** este o comunitate open-source dedicată găsirii *legilor de scalare* ale agenților. 
<br/>Studierea acestor *agenți* la *scară largă* oferă informații valoroase asupra ...
 - comportamentelor,
 - capacităților și
 - riscurilor potențiale
<br/>ale acestora. 
<br/>Pentru a facilita cercetarea în acest domeniu, **CAMEL-AI** implementeaza și sprijina diverse tipuri de ...
 - agenți,
 - sarcini,
 - solicitări,
 - modele și
 - medii simulate.

<hr/>	

</details>


<details>
	<summary><b>PortKey-AI-GW</b>...</summary>

<hr/>

[Instalați AI-Gateway cu Ollama local](https://www.youtube.com/watch?v=mR-L8DNN5K8&ab_channel=FahdMirza)
<details>
      <summary>PortKey-AI-Gateway(GW) ... rezumat...video-YT...detalii...</summary>
<hr/>
<pre>Rezumat
            
În acest videoclip, Fahd Mirza prezintă PortKey-AI-Gateway, o soluție ușoară și open-source concepută pentru rutarea rapidă, 
fiabilă și sigură a modelelor AI, cu o latență de mai puțin de 1 milisecundă. 
El demonstrează instalarea acestui AI-gateway la nivel local alături de framework-ul LLaMA și modelul Llama 3.2. 
De-a lungul videoclipului, Fahd evidențiază caracteristici precum reîncercări automate, alternative și 
bare de protecție, subliniind potențialul sistemului, recunoscând în același timp limitările acestuia. 
În cele din urmă, el oferă exemple practice pentru a arăta cum să utilizați eficient AI-Gateway, 
oferind în același timp perspective asupra potențialelor îmbunătățiri.
            
Repere

0:02
Introducerea PortKey AI Gateway și a funcționalităților sale de bază.
0:16
Discuție asupra tipurilor de modele care pot fi integrate, inclusiv modele de limbaj și modele de viziune.
0:30
Prezentare generală asupra naturii ușoare a PortKey-AI-Gateway și a aspectului său open-source.
1:10
Menționați capacitatea soluției de întreprindere de a procesa zilnic peste 10 miliarde de jetoane(tokens).
6:40
Începe instalarea PortKey-AI-Gateway, evidențiind ușurința sa de configurare.
7:36
Primul exemplu de integrare a PortKey-AI-Gateway cu Llama 3.2, prezentând apelul API.
9:49
Discuție despre fiabilitatea balustradelor în PortKey-AI-Gateway, cu teste practice prezentate.
12:05
Recapitulare a momentelor importante ale performanței și încurajarea spectatorilor să se aboneze.</pre>

<hr/>

</details>

<br/>Acest videoclip arată cum să instalați local [PortKey-AI-Gateway](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmU0X1NzcDVSZ2NscFlLdW4yRHRjWEhPazljZ3xBQ3Jtc0ttTVdiYm9XeDVEZE55eEluU0VhTjYzbEdOUGZnaUVubkRPUm9tVV9rbU9ZMERKdFgwbkp1ZVRwb0lOT3ZTT1FMNkZGNUY2V2pqM3NDUW9PcmsxRGk2d19PWWplTGxSbE1fWGl4Skp1aTg4bHdUaGxtWQ&q=https%3A%2F%2Fgithub.com%2FPortkey-AI%2Fgateway&v=mR-L8DNN5K8), care este utilizat pentru rutarea rapidă, fiabilă și sigură către 
peste 1600 de modele de limbă, viziune, audio și imagine. 🔥

<hr/>

</details>

<details>
	<summary><b>GPTme</b>...QwQ...</summary>

 <hr/>
 
[Install GPTme with Ollama and QwQ Locally - AI Agents in Terminal](https://www.youtube.com/watch?v=QBmFw7eiLPU&ab_channel=FahdMirza)
<br/>Acest videoclip arată cum să instalați local [GPTme](https://github.com/ErikBjare/gptme ) și să îl integrați cu Ollama pentru viziune, utilizarea browserului și alte instrumente. 🔥

[GPT-Me](gptme.org/docs/) este Agentul dvs. din terminalul dvs. si este echipat cu/ofera urmatoarele instrumente-locale: 
 - scrierea de cod(fiind un generator/sintetizator de cod),
 - folosește/acceseaza terminalul(instrument de agent-AI bazat pe UI=terminal),
 - navighează pe web,
 - vizualizează.

QwQ este un model de rezumare din seria Qwen(oferit de Alibaba grup)
<br/>LLM-uri oferite de cei de la Meta: LLama3.3(70B),LLama3.2(1B si 3B),LLama3.1(405B)

<details>
      <summary>GPTme ... rezumat...video-YT...detalii...</summary>

<hr/>

<pre>
      Rezumat
În acest videoclip, Fahd Mirza prezintă progresele realizate în proiectul GPT-Me, în special integrarea 
modelelor locale precum LlaMA cu capacități agentice. 
Videoclipul prezintă procesul de instalare locală a GPT-Me și demonstrează cum se ruleaza acesta împreună cu
modele bazate pe LLaMA. 
Fahd arată, de asemenea, limitările actuale ale acestor instrumente, în special în ceea ce privește capacitățile lor
de raționament, subliniind totodată potențialul pe care îl oferă pentru diverse sarcini, inclusiv codificare și 
căutări pe web.

      Repere
0:02
Introducerea videoclipului și prezentarea generală a subiectului de către Fahd Mirza.
0:15
Discuție despre limitările inițiale ale GPT-Me în ceea ce privește suportul modelului local.
0:35
Prezentare generală a capabilităților GPT-Me ca instrument de agent AI bazat pe terminal.
1:06
Explicația suportului pentru instrumente în modele și importanța selectării modelului potrivit pentru capabilitățile agentice.
3:35
Demonstrație de descărcare și rulare a modelului QWQ folosind LLaMA și arătând consumul de VRAM.
4:37
Procesul de instalare a GPT-Me explicat, inclusiv utilizarea comenzilor pip.
5:53
Interacțiune cu modelul GPT-Me pentru generarea unui script Python și salvarea acestuia.
9:00
Testarea capacităților de vedere/viziune ale modelului cu imagini locale, indicând limitări.
9:40
Căutare web de succes efectuată de model, prezentând funcționalitate îmbunătățită.
10:29
Concluzie care discută progresul general al sistemului și...</pre>

<hr/>

</details>

<hr/>

</details>

<details>
	<summary>AI <b>DB-Agent</b> pentru(4)...SQLite</summary>
	
<hr/>

[How-to Build Database-AI-Agents - Hands on Easy Tutorial](https://www.youtube.com/watch?v=Tkds301xtHI&ab_channel=FahdMirza)
<br/>Acest videoclip este un tutorial pas cu pas pentru a crea de la zero agenți de baze de date(BD) bazați pe inteligență artificială(AI) pentru ai utiliza cu propriile date. 🔥

<details>
      <summary>Open-AI/SQLite ... rezumat...video-YT...detalii...</summary>

<hr/>
<pre>
      Rezumat: 
În acest tutorial practic, prezentatorul demonstrează cum se creaza un agent de bază de date folosind 
modele de limbaj mari(LLM) precum OpenAI. 
Videoclipul subliniază importanța integrării AI cu bazele de date pentru a automatiza procesele și a ajuta la 
luarea deciziilor în întreprinderi. 
Tutorialul ne arata/învață cum să ne configuram mediul, cum să importam bibliotecile necesare și cum să interacționam cu 
o bază-de-date SQLite, folosind interogări în limbaj natural(NLP), arătând eficiența și flexibilitatea utilizării 
LLM-urilor pentru sarcinile bazei-de-date.
      Repere:
0:02
Introducere în conceptul de agenți de baze de date în AI și semnificația acestora în managementul datelor de întreprindere.
1:27
Anunțul privind utilizarea modelului OpenAI pentru sarcini text-to-SQL și importanța integrării cu bazele de date.
2:14
Mențiune despre utilizarea cadrului Langchain pentru a construi aplicații bazate pe LLM.
4:00
Prezentatorul importă un fișier CSV într-o bază de date SQLite, explicând procesul de import al datelor.
7:38
Configurarea LLM folosind o cheie API OpenAI, ilustrând cum să pregătiți mediul pentru interogare.
7:49
Prima interogare în limbaj natural pusă în baza de date despre cel mai popular produs din Canada, prezentând interacțiunea cu AI.
9:28
Executarea cu succes a interogării SQL generată de LLM, oferind un răspuns specific din baza de date.
10:06
Discuție despre potențialul utilizării LLM-urilor pentru a răspunde întrebărilor în limbaj natural în scenariile de servicii 
pentru clienți.
10:58
Asigurarea că tot codul folosit va fi distribuit pe blogul prezentatorului, invitând spectatorii să acceseze resurse.
11:10
Încurajarea de a vă abona la canal și de a partaja conținutul, evidențiind implicarea comunității.</pre>

<hr/>

 </details>

<hr/>

</details>
	
<details>
	<summary>Modelul MoE-vision(VLM) multimodal: <b>Kimi-VL</b>...</summary>
 <hr/>

 [Kimi VL A3B Thinking - Model MoE Vision cu raționament multimodal - Instalați local](https://www.youtube.com/watch?v=yzF6DJHHBq0&ab_channel=FahdMirza)
 <br/>Acest videoclip instalează local [Kimi-VL](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmJOLXhhODYzeGp2d2RJVUt2QlZqMnRSZVh2d3xBQ3Jtc0tscV9tczl4c2xCQ05MY1BRSkI0QVg5RzlydFNkSEV4ZXQ4aGxnOHJYMlFhdmt0WXBrWEVMUUxkbktPdUIxeTNXYndaS2JjcDROM2xCOGtidVNPRFFDMGxMX3U3cElhOXZoVC0xdi1wbFZRRVZmTkdyNA&q=https%3A%2F%2Fhuggingface.co%2Fmoonshotai%2FKimi-VL-A3B-Thinking&v=yzF6DJHHBq0), un model de limbaj de viziune (VLM) cu sursă deschisă eficientă Mixture-of-Experts (MoE). 🔥

 <details>
       <summary>Kim VL ... rezumat...video-YT...detalii...</summary>

<hr/>
       
<pre>
      Rezumat
În acest videoclip, Fahd Mirza prezintă Kim-VL, un model avansat de limbaj de viziune, multimodal, open-source care realizează un 
raționament eficient cu doar 2,8 parametri activați. 
Procesul de instalare al variantei sale extinse, <a href="https://www.youtube.com/watch?v=Cyj-Ywx4Dns&ab_channel=Them-PowerPlatform">KVL</a>(Key-Value Entity Look-up), este demonstrat împreună cu testele pe diferite 
criterii de referință. 
Caracteristicile cheie includ performanța sa puternică în 
      OCR, 
      raționamentul matematic, 
      înțelegerea mai multor imagini și 
      interpretarea contextului, 
rezultatele arătând capacități superioare în comparație cu modelele de ultimă generație.
Videoclipul evidențiază aspecte distinctive ale arhitecturii modelului care ajută abilitățile sale avansate de raționament.

      Repere
0:02
Fahd Mirza salută spectatorii și prezintă Kim-VL, subliniind capacitățile sale avansate de raționament multimodal.
0:39
Explicație a <a href="https://www.researchgate.net/publication/333368176_Incorporating_Joint_Embeddings_into_Goal-Oriented_Dialogues_with_Multi-task_Learning">arhitecturii-KVL</a>(Încorporarea înglobărilor comune în dialogurile orientate spre obiective cu învățare cu 
sarcini multiple), detaliind amestecul său de decodor de limbaj expert(MoE) pentru o înțelegere multimodală eficientă.
3:22
Descărcarea modelului este în curs; 
Fahd discută despre procesul de <a href="https://dexonline.ro/definitie/inferen%C8%9B%C4%83">inferență(deductie)</a> cu două imagini pentru a testa abilitățile de raționament ale modelului.
4:48
Ki-VL începe să tragă concluzii despre un manuscris decolorat, identificând autorul și contextul printr-un raționament 
pas cu pas.
6:45
Fahd începe să testeze capabilitățile OCR în diferite limbi(NLP), cum ar fi chineză și indoneziană, examinând 
performanța modelului.
8:44
Fahd îl îndeamnă pe Kim-VL să abordeze o problemă de ambuteiaj și evaluează capacitatea sa de a oferi soluții pas cu pas.
10:03
Modelul are sarcina de a deduce emoțiile umane dintr-o imagine, demonstrând raționamentul său coerent și analiza contextului.
11:49
Fahd invită spectatorii să se aboneze și să partajeze canalul, subliniind implicarea comunității și sprijinul 
pentru conținut.</pre>

<hr/>

 </details>

<hr/>

</details>

<details>
	<summary>MCP...client-server...</summary>
<hr/>


Model Context Protocol([MCP](https://www.pt.ro/ce-este-mcp-model-context-protocol/)) este un standard deschis propus de Anthropic pentru a conecta 
 - sistemele de inteligență artificială (precum asistenții bazați pe LLM)
 - la sursele de date și uneltele externe de care au nevoie

([Model Context Protocol · GitHub](https://github.com/modelcontextprotocol#:~:text=The%20Model%20Context%20Protocol%20,with%20the%20context%20they%20need)).

Pe scurt, MCP oferă o modalitate standardizată prin care modelele lingvistice pot accesa „contextul” relevant – fie că este vorba de 
			 - fișiere,
			 - baze de date,
			 - aplicații de business sau
			 - alte servicii
– eliminând izolarea acestor modele de datele organizaționale importante. 
Scopul MCP este de a ajuta modelele avansate să producă răspunsuri mai bune și mai relevante, având acces la 
 - informațiile actualizate și
 - instrumentele potrivite

([Introducing the Model Context Protocol \ Anthropic](https://www.anthropic.com/news/model-context-protocol#:~:text=business%20tools%2C%20and%20development%20environments,produce%20better%2C%20more%20relevant%20responses)).

Hai sa vedem un proiect client-server ce utilizeaza acest protocol MCP:

[Easiest Tutorial on Model Context Protocol (MCP) - Hands-on](https://www.youtube.com/watch?v=C2UnDOt-f3M&ab_channel=FahdMirza)
<br/>Acest [videoclip](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa2xZRWRtRGt6aVVHOGZzT0s3eGgxbmFYeDV4Z3xBQ3Jtc0tuemhESVpOeUp4anlubjh2OUtIZE5ETjVvNnNSSUFZMHFLaEptZHd5c2lfSmJqeU5HSEYwMkw1SHZuMGVzRmFwMjUtWTNlVXp4U3VadzdvMnVwd042dVZJcEUzR0FIRC1INF9vU1JUeGJBeVNZcUxsTQ&q=https%3A%2F%2Fwww.fahdmirza.com%2F2025%2F04%2Fhow-to-build-mcp-server-and-client-step.html&v=C2UnDOt-f3M) este un tutorial foarte simplu pas cu pas despre Protocolul de Context Model([MCP Anthropic](https://www.fahdmirza.com/2025/04/how-to-build-mcp-server-and-client-step.html)) cu o lume bună și apoi un exemplu din lumea reală(pentru a testa [codul-python](https://github.com/fahdmirza/mcp), veti avea nevoie de o [cheie-API](https://docs.anthropic.com/en/api/admin-api/apikeys/get-api-key) gratuita/free  de la Anthropic). 🔥

<details>
	<summary>...mai intai, sa analizam/evaluam/vedem in detaliu,  codul + c-zile_shell utilizat[e]... 
		<br/>scris(pt Linux...dar usor adaptabil pt Windows) gradual/progresiv/evolutiv/de-la simplu la complex...</summary>
<hr/>
<pre>
✅ <ins>Step 1: Environment Setup</ins>

# Conda environment (Ubuntu 22.04)
conda create -n mcp-env python=3.10 -y
conda activate mcp-env

export ANTHROPIC_API_KEY=""   #Get from anthropic.com

# Install packages
pip install "mcp[cli]" anthropic python-dotenv

🚩 <ins>Step-2: Hello-World MCP-Example: 1) si 2)</ins>
✅ 1)Hello World [MCP](https://mychen76.medium.com/mcpo-supercharge-open-webui-with-mcp-tools-4ee55024c371)-Server (~/mcp-hello-server/hello.py)
<CODE>
from mcp.server.fastmcp import FastMCP

mcp = FastMCP("hello-world")

@mcp.tool()
async def say_hello(name: str) -> str:
    """Say Hello to a person.

    Args:
        name: The person's name.
    """
    return f"Hello, {name}! 🎉"

if __name__ == "__main__":
    mcp.run(transport='stdio')
</CODE>
<ins>-Run MCP-server:</ins>

cd ~/mcp-hello-server
python hello.py

✅ 2)Hello World MCP-Client (~/mcp-hello-client/client.py)
<CODE>
import asyncio
from contextlib import AsyncExitStack
from mcp import ClientSession, StdioServerParameters
from mcp.client.stdio import stdio_client

async def main():
    server_script_path = "/home/Ubuntu/mcp-hello-server/hello.py"  # correct absolute path!

    server_params = StdioServerParameters(
        command="python",
        args=[server_script_path],
        env=None
    )

    async with AsyncExitStack() as stack:
        stdio_transport = await stack.enter_async_context(stdio_client(server_params))
        session = await stack.enter_async_context(ClientSession(*stdio_transport))

        await session.initialize()
        result = await session.call_tool("say_hello", {"name": "MCP User"})
        
        # Correctly handle MCP response
        content_item = result.content[0]
        print(content_item.text)

asyncio.run(main())
</CODE>
<ins>-Run MCP-client:</ins>

cd ~/mcp-hello-client
python client.py

🚩 <ins>Step-3: SQLite Database MCP-Example:</ins> 
 - pe parte de server: a.1) si a.2)
 - iar pe parte de client: b)

✅ a.1)SQLite DB Setup (~/sqlite-mcp-server/setup_db.py)
<code>
import sqlite3

conn = sqlite3.connect("/home/Ubuntu/sqlite-mcp-server/users.db")
cursor = conn.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT
)
""")

cursor.executemany("""
INSERT INTO users (name, email) VALUES (?,?)
""",[
    ("John Doe","john@example.com"),
    ("Jane Smith","jane@example.com"),
    ("Alice Johnson","alice@example.com")
])

conn.commit()
conn.close()
</code>
<ins>-Run once to setup database:</ins>

cd ~/sqlite-mcp-server
python setup_db.py

✅ a.2)SQLite MCP-Server (~/sqlite-mcp-server/sqlite_server.py)
<code>
from mcp.server.fastmcp import FastMCP
import sqlite3

mcp = FastMCP("sqlite-db-server")

@mcp.tool()
async def get_user_info(user_id: int) -> dict:
    """Get user info by ID."""
    conn = sqlite3.connect("/home/Ubuntu/sqlite-mcp-server/users.db")
    cursor = conn.cursor()

    cursor.execute("SELECT id,name,email FROM users WHERE id=?", (user_id,))
    user = cursor.fetchone()
    conn.close()

    if user:
        return {"id":user[0],"name":user[1],"email":user[2]}
    else:
        return {"error":"No user found"}

if __name__ == "__main__":
    mcp.run(transport='stdio')
</code>

<ins>-Run SQLite MCP-server:</ins>

cd ~/sqlite-mcp-server
python sqlite_server.py

✅ b)SQLite MCP-Client (~/sqlite-mcp-client/client.py)
<CODE>
import asyncio, json
from contextlib import AsyncExitStack
from mcp import ClientSession, StdioServerParameters
from mcp.client.stdio import stdio_client

async def main():
    server_script_path = "/home/Ubuntu/sqlite-mcp-server/sqlite_server.py"  # correct absolute path!

    server_params = StdioServerParameters(
        command="python",
        args=[server_script_path],
        env=None
    )

    async with AsyncExitStack() as stack:
        stdio_transport = await stack.enter_async_context(stdio_client(server_params))
        session = await stack.enter_async_context(ClientSession(*stdio_transport))

        await session.initialize()
        result = await session.call_tool("get_user_info", {"user_id": 2})

        # Correctly handle MCP content response
        content_item = result.content[0]
        if hasattr(content_item, 'data'):
            print(json.dumps(content_item.data, indent=4))
        elif hasattr(content_item, 'text'):
            print(content_item.text)
        else:
            print(str(content_item))

asyncio.run(main())
</CODE>
<ins>-Run SQLite MCP client:</ins>

cd ~/sqlite-mcp-client
python client.py</pre>

<hr/>
</details>
<details>
      <summary>SqLite-MCP-server si Client-MCP ... rezumat...video-YT...detalii...</summary>

<hr/>
<pre>
      Rezumat
În acest tutorial, Fahd-Mirza ghidează spectatorii/utilizatorii/programatorii prin procesul de creare a 
	- unui server și a 
	- uni client 
care utilizeaza pt comunicare/interogare protocolul: 
	 - Model Context Protocol (MCP). 
Videoclipul explică necesitatea MCP pentru a conecta/lega 
	- pe parte de client: modele mari de limbi la surse(LLM-ul) de 
	- pe parte de server: date externe 
în mod sigur și eficient. 
Tutorialul progresează/evolueaza 
	- de la un simplu server-MCP „Hello World” 
	- la un exemplu-mai-complex care implică o bază-de-date-SQLite, 
demonstrând ușurința integrării diferitelor surse de date folosind cadrul MCP.

Repere


0:02
	Introducere în videoclip, stabilirea așteptărilor pentru tutorial.

0:26
	Explicația Modelului Context Protocol (MCP) și importanța acestuia în accesarea datelor în timp real.

2:58
	Începutul demonstrației practice – crearea unui server MCP simplu „Hello World”.

7:22
	Explicație despre modul în care funcționează MCP pentru a conecta client și server în siguranță.

10:40
	Demonstrarea rulării clientului MCP și a primirii unui răspuns de la server.

12:11
	Introducerea unui exemplu mai complex folosind o bază de date SQLite cu serverul MCP.

13:45
	Crearea setării bazei de date SQLite și explicarea modului de integrare a acesteia cu MCP.

16:16
	Clientul preia și imprimă date din baza de date SQLite, prezentând funcționalitatea serverului MCP.

16:54
	Introducere în sponsorizarea AgentPot, o aplicație pentru implementarea botilor de cunoștințe pe platforme.

17:14
	Îndemn la acțiune încurajând spectatorii să se aboneze și să partajeze conținutul.</pre>

<hr/>

</details>

<hr/>

</details>

...

<hr/>

</details>

<details>
      <summary>La final, voi enumera inca o selectie-sumara de alte <b>proiecte</b>(sper eu...interesante!), prezentate fie de catre d-nul <b>Fahd-Mirza</b>, fie  de catre alti autori-activi pe YouTube(<b>YT</b>)...</summary>

<hr/>
      
Aici voi insira o selectie de proiecte [interesante](https://huggingface.co/fahdmirzac)(scurt-comentate, traduse cf. ***YT***: [**Fahd-Mirza**](https://www.youtube.com/@fahdmirza)) si nu numai...:

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

<details>   
<summary>   detalii videoclip...<b>NanoSage</b> - bazat pe server-ul de <b>LLM</b>-uri <i>Ollama</i>...</summary>

<hr/>

   
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
<hr/>

</details>

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
 - [Install **Perplexica** with **SearXNG** and **Ollama** and **Llama 3.1** for <ins>Local</ins> **AI** *Search-Engine* for *Free*](https://www.fahdmirza.com/2024/07/install-perplexica-with-searxng-and.html)
   <br/>Acest videoclip arată cum să instalați <ins>local</ins> [**Perplexica**](https://www.youtube.com/watch?v=LjTIy0FEkAQ&ab_channel=FahdMirza) cu modelul [**SearXNG**](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmluQkNzYV80NThsaHhveldkdU1PS0ZEQlhid3xBQ3Jtc0tuV0JvelVJOERkNGZrYVlGNm1JTDR1VTJLQkMtZzhSZmpIYktzc0ctSU1rRm1Ma0pIbDE1RmI0NEtoNWtmWFZWb1cydmtnRHdOZkNqc3JFMjZ5ZHQ5TEVRVUZXNm1jRldobzNOb0pYU3JYV213QUowMA&q=https%3A%2F%2Fwww.fahdmirza.com%2F2024%2F07%2Finstall-perplexica-with-searxng-and.html&v=LjTIy0FEkAQ) și **Ollama** ***Llama 3.1*** și să faceți căutare bazată pe inteligență artificială(**AI**).
 - [Install **LibreChat** with **Ollama** <ins>Locally</ins> to Chat with Any Model](https://www.youtube.com/watch?v=d9ZV3-YkX-8&ab_channel=FahdMirza)
 <br/>Acest videoclip arată cum să instalați <ins>local</ins> **LibreChat** și să îl integrați cu ***Ollama***.
 <br/>Puteți folosi **Llama 3** , **Mistral** sau <i>orice model</i> pentru a [discuta privat și local](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbXduLXdybkROMkFuc3JUdVRyUTBOdGlmblQ2QXxBQ3Jtc0treVBLZ04xZkxvOTExTjZiX1REV2I4blJtV3owTnNOS2hlY0JndF9pZm1UMGlpYzVsWlRVOXlYWFBWNlFyRlhmVHpXd0wyWmdZdzg4U0NDTzlfSmJHckVwQUpJWkVSemhYWTF5elJIblVxMDlYMk03aw&q=https%3A%2F%2Fwww.fahdmirza.com%2F2024%2F05%2Finstall-librechat-locally-with-ollama.html&v=d9ZV3-YkX-8) cu **GUI web**.
 - [Install **HuggingFace Models** Directly in **Open WebUI** with **Ollama** <ins>Locally</ins>](https://www.youtube.com/watch?v=yLAIWsb5-ls&ab_channel=FahdMirza)
 <br/>Acest videoclip oferă o demonstrație pas cu pas despre cum să rulați oricare dintre ***modelele 45K+ GGUF*** pe **Hugging Face Hub** direct cu **Ollama**(<ins>local</ins>) în [**Open WebUI**](https://openwebui.com/).
 - [Run Full **DeepSeek-R1** <ins>Locally</ins> in *FP8* on ***NVIDIA*** or ***AMD**](https://www.youtube.com/watch?v=0057csl3kaY&ab_channel=FahdMirza)
 <br/>Acest videoclip este un tutorial pas cu pas pentru a vă arăta cum să instalați și să rulați **DeepSeek-R1**(ca ***LLM***) cu **HF** **TGI** în ***FP8*** ca server.
 - [**Kotaemon** - Easy <ins>Local</ins> **RAG** ***UI*** - **GraphRAG** cu ***Ollama*** - Tutorial](https://www.youtube.com/watch?v=PDtGJ-OwvAM&ab_channel=FahdMirza)
<br/>Acest videoclip arată cum să instalați local[ kotaemon](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmFLSU5RWjJhSEx3X0VYWTVuaDgxWXpsejlRQXxBQ3Jtc0tuMEtMdmV0M1pTdkNxZWtGcGd2OGV4SUV4WEV2VllXLVhVVE1EU2xMOXpOV1lHeUdIMWhfNWx0a2ZQTzh3R1VsMUxSWWZWazlhRUpNSnZweWZUN2g4anNuU3BvbFRjTTRwZ3NCV3dnQW5xaFpCRGd4bw&q=https%3A%2F%2Fgithub.com%2FCinnamon%2Fkotaemon&v=PDtGJ-OwvAM), care este o interfață de utilizare *RAG*, cu sursă deschisă curată și personalizabilă, pentru conversația(chat/ a discuta) cu documentele dvs.
 - [**Qwen**-***Agent*** with **Ollama**: Plan, Tool-Use, Memory of **Qwen** - Install <ins>Locally</ins>](https://www.youtube.com/watch?v=EbxLmxjL8v4&ab_channel=FahdMirza)
   <br/>Acest videoclip arată cum să instalați <ins>local</ins> [**Qwen**-***Agent***](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa2hCWWRpZkxrbk9yMWpmeUVfY2JhTHBPUUZid3xBQ3Jtc0trQ1V5NlVLeFI0OTlJWnlkcnpha3Z5UkdnN25CN1EtOXc3Q0c1dnk1RmpaUmt3WFZvbEVCajJJbU9HUDViMzJxNDkwZWJQZ3FJeXU3RXh0Z3NTSnJmdVE1bEM1cUtqYXFHOG40NHoyVy13TEZKWGNlTQ&q=https%3A%2F%2Fgithub.com%2FQwenLM%2FQwen-Agent&v=EbxLmxjL8v4), care este un cadru pentru dezvoltarea aplicațiilor-**LLM** bazate pe instrucțiunile care urmează, utilizarea instrumentelor, planificarea și capacitățile de memorare ale **Qwen**.
 - [Voice-Chat with **LLM**s <ins>Locally</ins> with **Open WebUI**](https://www.youtube.com/watch?v=z9RaSZIXBBc&ab_channel=FahdMirza)
   <br/>Acest videoclip este un tutorial pas cu pas pentru a instala **Open WebUI**(la nivel <ins>local</ins>) și arată noi funcții precum <i>chatul-vocal</i> cu modele-AI(**LLM**-uri) la nivel <ins>local</ins> cu **Ollama**(server de **LLM**-uri).
 - [How-To Run **Llama 3** <ins>LOCALLY</ins> with ***RAG***!!! (***GPT4ALL*** <i>Tutorial</i>)](https://www.youtube.com/live/ZrqCm5jE_nQ)

<details>   
<summary>   detalii videoclip...<b>Llama-3</b> - oferit de <i>managerul de LLM</i>-uri <b>GPT4All</b>...</summary>

<hr/>

   
  <br/>În acest *tutorial* [**Llama 3**](https://ai.meta.com/blog/meta-llama-3/), veți învăța cum să rulați **Llama 3** la nivel <ins>local</ins>.
  <br/>Spre deosebire de majoritatea altor *tutoriale* <ins>locale</ins>, acest *tutorial* acoperă și construirea unui **RAG** <ins>local</ins> utilizand/cu ***LLM***-ul, instalat local, **Llama 3**.
  <br/>Vom folosi un instrument(manager de ***LLM***-uri...cum este si ***Ollama***-server) numit **GPT4All** pentru același lucru.
  <br/>**GPT4ALL** este *gratuit*, *open-source* și, prin urmare, începeți cu ***LLM***-ul **Llama 3** <ins>Local</ins>.
  <br/>Acest *tutorial* are, de asemenea, o abordare complet *fără-cod* pentru a rula **Llama 3** *fără-prompt-de-comandă* si *fara-terminal*.
  <br/>Pe scurt, este un *tutorial de instalare* **Llama 3** cu un singur clic!
  <br/><ins>Capitole</ins>:

   - 00:00 Introducere
   - 00:19 00:19 [Descărcați](https://gpt4all.io/index.html) Aplicatia-Desktop([managerul de LLM-uri](https://www.reddit.com/r/LocalLLM/comments/1bd9qqb/exploring_local_llm_managers_lmstudio_ollama/)...in loc de... ***Ollama***-server) [**GPT4ALL**](https://docs.gpt4all.io/)
   - 00:52 [Descărcați](https://huggingface.co/meta-llama/Meta-Llama-3-8B-Instruct) [**Llama 3-Instruct**](https://www.reddit.com/r/LocalLLaMA/comments/1ct5h16/llama_3_vs_llama_3_instruct/) Model(***LLM***) 
   - 01:42 Conversați/Discutați cu ***LLM***-ul **Llama 3** <ins>local</ins> 
   - 03:30 Descărcați *modelul de încorporare* pentru asimilarea/inglobarea datelor <ins>locale</ins>
   - 03:58 Adăugați *folderul documentelor* la *colecție*
   - 04:48 *Discutați* cu *PDF*-uri folosind 
     <br/>*Setări avansate* [**GPT4ALL**](https://www.youtube.com/live/ZrqCm5jE_nQ?t=354s): (*parametrii-modelului*, *șablonul de prompt*, *promptul de sistem*)
     <br/> 🔗*Link*-uri:
         <br/>Descărcați **GPT4ALL** [🔗aici](https://gpt4all.io/index.html).

<hr/>

</details>

 - [Step-by-Step Guide to Create **Free-Dataset** with **Ollama** and **Llama 3.1** <ins>Locally</ins>](https://www.fahdmirza.com/2024/07/step-by-step-guide-to-create-free.html)
   <br/>Acest [videoclip](https://youtu.be/o4InUVFKPI0) prezintă un ghid ușor pas cu pas pentru a genera un set-de-date(dataset/**ds**) de preferințe aliniate la nivel <ins>local</ins>, utilizând modelul/***LLM***-ul (asadar un **LLM** rulat in mediul privat/<ins>local</ins>) **Llama 3.1 70B**  și/oferit de catre server-ul/managerul de ***LLM***-uri, **Ollama**.
 - [*Self-Hosting* **LLM**s like a *DevOps* - **Ollama**](https://www.youtube.com/watch?v=jl9bfPsBBcM&ab_channel=JAlcocerTech)

<details>   
<summary>   detalii videoclip...<b>Ollama</b> - <i>dockerizat</i>...</summary>

<hr/>


   <br/>În acest videoclip arătă cum să utilizați **LLM**-urile la nivel <ins>local</ins>, așa cum ar face un *DevOps*.
   <br/>Vom folosi proiectul **Ollama** și îl vom găzdui prin Self-Host cu **Docker**.
   <br/>Apoi, vom alege un model de limbă mare(**LLM**) gratuit(**Orca mini**) și vom vedea cum să interacționăm cu acesta în diferite moduri:

   - Prin *terminalul* de *containere*-docker
   - Cu cerere *http*
   - Cu *Python* cu ajutorul integratorului/framework-ului **LLama-Index**

   <br/>Imaginea(*docker*) **Ollama** este gata să funcționeze atât pe dispozitivele ***x86***, cât și pe cele *ARM64*, astfel încât să putem aplica tot ceea ce învățăm astăzi pe ***laptopuri***, ***servere*** sau *SBC* obișnuite. 🔗 [Gist](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbU1lV0x6YVVWRWtGbWVaaXB1U0xBeWpXaWJQZ3xBQ3Jtc0ttNW4xQjZBbDVxQUd0UUU1Qm94OTJiRlg2LWw2T2VTWFNyYU14VjJIXzlQX1BGLURyb2t1Z0RtcUVpLVdCc29RUEEwd0RvdzdWZVFCS1BZM3dnaG9UQkpiRXprQ0lWSW50OVN5dnRrbl90Mk1SS0w4Yw&q=https%3A%2F%2Fgist.github.com%2FJAlcocerT%2F5c406a4f1d18a57469815fa0ef9d6a07&v=jl9bfPsBBcM) cu tot codul și comenzile utilizate în videoclip.

   <br/>💻 [Web](https://ollama.ai/)-ul oficial al proiectului: [https://ollama.ai/ ](https://ollama.ai/ )
   <br/>***LLM*** folosit: [https://ollama.ai/library/orca-mini ](https://ollama.ai/library/orca-mini)<br/>

   <br/>[Codul-sursă](https://github.com/jmamorganca) al proiectului: [https://github.com/jmamorganca ](https://github.com/jmamorganca)
   <br/>[Imaginea-Docker](https://hub.docker.com/r/ollama/ollama ) a  Proiectului: [https://hub.docker.com/r/ollama/ollama](https://hub.docker.com/r/ollama/ollama ) 

   <br/>🌟 Resurse care ar putea fi interesate 🌟

   - [fossengineer-tags: **gen-AI**](https://fossengineer.com/tags/gen-ai/)
   - [GH-jalcocert: **RPi**](https://jalcocert.github.io/RPi/)
   - [video](https://www.youtube.com/channel/UCPPMA8ZEusAe5dVH6PbjZFA) / @jalcocertech  

   <br/>Self-Host(autogazduire) **NGINX** pentru a furniza **https** lui ***Ollama***: [https://fossengineer.com/selfhosting](https://fossengineer.com/selfhosting)-...

   - **LLama-Index** (***PyPi***): [https://pypi.org/project/llama-index/](https://pypi.org/project/llama-index/)
   - **LogSec**: [https://github.com/logseq/logseq](https://github.com/logseq/logseq)
   - **Home Assistant**(***HA***): [https://github.com/home-assistant](https://github.com/home-assistant)

<hr/>

</details>

 - ...

<hr/>

</details>


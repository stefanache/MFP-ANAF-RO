Va propun sa urmariti [seria](https://www.youtube.com/@fahdmirza/videos) de [episoade](https://github.com/fahdmirza) Youtube([**YT**](https://www.linkedin.com/in/fahdmirza/?originalSubdomain=au)) elaborate de [**Fahd Mirza**](https://www.youtube.com/results?search_query=Fahd+Mirza+AI)([blog](https://www.fahdmirza.com/))

Mi-a atras in mod [deosebit](https://huggingface.co/fahdmirzac) atentia acest proiect [Web LLM Assistant](https://www.youtube.com/watch?v=txflvGG_hIc); 

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

Pentru cei care doresc sa genereze cod(**code generative-AI**), folosind modele conversationale(**LLM**), va recomand, din aceiasi serie **YT**, aplicatia-exemplu: [***Qwen2.5 Coder 32B Instruct***](https://www.youtube.com/watch?v=tMd0FcPSei4)
 sau  [***Qwen 2.5 Coder 32B***](https://www.youtube.com/watch?v=KYvVl0UT1Sk&ab_channel=PromptEngineering)
 
[Orizontul](https://www.marktechpost.com/2024/11/14/microsoft-released-llm2clip-a-new-ai-technique-in-which-a-llm-acts-as-a-teacher-for-clips-visual-encoder/) [cunoasterii](https://www.microsoft.com/en-us/research/project/llm2clip/) in domeniul [generative-AI](https://www.youtube.com/watch?v=mJ-wt79u0Ls), poate fi [largit](https://github.com/microsoft/LLM2CLIP) si prin studierea unor [lucrari](https://microsoft.github.io/LLM2CLIP/) precum cea intitulata  [LLM2CLIP](https://microsoft.github.io/LLM2CLIP/).

In domeniul ***generative-AI(NLP,NLU)***, mai precis in domeniul [**generarii/intelegerii-3D**](https://github.com/nv-tlabs/LLaMA-Mesh), a aparut pe Youtube(YT) un filmulet al unui [3D-Chatbot](https://www.youtube.com/watch?v=c-LbbZEkcBo) interesant, intitulat "**Nvidia [Llama-Mesh](https://huggingface.co/spaces/Zhengyi/LLaMA-Mesh) - Generate [3D](https://www.youtube.com/watch?v=PSU4wB8WkzA) [Mesh](https://huggingface.co/bartowski/LLaMA-Mesh-GGUF) and Shapes with Text - Install Locally**", cu privire la generarea in spatiu-tridimensional(3D) de retele/invelitori/suprafete([**3D-mesh/shape**](https://huggingface.co/spaces/Zhengyi/LLaMA-Mesh)), generandu-se daca doriti, inclusiv,  coordonatele varfurilor sau nodurilor retelei [3D](https://towardsdatascience.com/generate-3d-images-with-nvidias-llama-mesh-69a6929a4580)(date ca/spre exemplu), pt corpuri/obiecte/solide, obtinindu-se astfel modele unificate de suprafete 3D([geometrii-triangulate](https://ro.wikipedia.org/wiki/Triangularea_unei_suprafe%C8%9Be)), pornind de la interogari textuale livrate unui model-LLM specializat(in acest caz fiind [**Zhengyi/LLaMA-Mesh**](https://github.com/nv-tlabs/LLaMa-Mesh)). 
In acest [proiect](https://github.com/nv-tlabs/LLaMA-Mesh), pentru afisarea/construirea interfetei-web-utilizator(intrarea proiectului) s-a apelat la libraria/pachetul python [**gradio**.](https://www.gradio.app/). Pentru redarea/randarea 3D(iesirea grafica a proiectului **LLaMA-Mesh**) s-a folosit libraria [**trimesh**](https://trimesh.org/). Pe partea de procesare(coloana vertebrala a proiectului) s-a utilizat pachetul [**transformers**](https://huggingface.co/docs/transformers/index). 

Un alt proiect legat de subtitrarea sau transcrierea/descrierea unei imagini este proiectul local(windows) care utilizeaza ca LLM, modelul [Llama3.2-vision](https://www.youtube.com/watch?v=qc99ShiPAY8)(atentie la [licenta](https://www.reddit.com/r/ollama/comments/1gxwd1j/llama_32_vision_in_the_eu/?%24deep_link=true&correlation_id=a31d354b-4ba5-42d7-a450-375f98de2cb4&post_fullname=t3_1gxwd1j&post_index=0&ref=email_digest&ref_campaign=email_digest&ref_source=email&utm_content=post_title&%243p=e_as&_branch_match_id=1376944233253091740&utm_medium=Email%20Amazon%20SES&_branch_referrer=H4sIAAAAAAAAA22P207DMBBEvyZ9Sy%2B2QwGpQgjEb6yceJss%2BKa1Q%2FrEt7NpgSckWxqd8cyup1pzedztGJ2jurU5bz3Fj53OT40yOp8QbNmITEwjRethZn%2Ba1lSjnxv1JmdZlu1PfkhBAMtN3ttgRQgKGGsReRgvizu8i7qaoBV8UqEUgSLUCQHntVFLaaeMQ8ywLtPo18ozNupuSMzobb1GnHCrD053pm9Nb7vWKHdsren2rT5254d7h2rojeRyKhXOs%2FfRBlzrNPztcjMpOryIsxfAeBaFwZIHRyOWeoMw2JAtjfF%2Ft6SZB%2Fz1BM41wJBild8LvY6pVD1uvuQ5MlMcoee0FOTTy8Qp4DfMPtIgjgEAAA%3D%3D)) deservit de serverul dvs. **Ollama**. Desigur acesta se poate utiliza si pt filmulete/video-uri avand in vedere faptul ca un astfel de obiect este format dintr-o multime sau un intreg sir/serie de imagini captate succesiv in timp.

Tot in zona [media](https://www.youtube.com/@fahdmirza) puteti consulta si acest proiect [**OmniAudio-AI model 2.6B**](https://www.youtube.com/watch?v=CrTGp60KIOA).

Daca doriti sa testati un [**RAG multimodal(imagini si text)**](https://www.linkedin.com/in/fahdmirza/recent-activity/all/) atunci puteti consulta periodic activitatea pe [***Linkedin***](https://www.llamaindex.ai/blog/multimodal-rag-in-llamacloud) a d-lui [**Fahd Mirza**](https://www.youtube.com/watch?v=96p0-3dZTOs)(trebuie sa aveti cont pe [**LLamaCloud**](https://cloud.llamaindex.ai/login):)

Foarte interesant este si acest [model ASR|S2T](https://github.com/usefulsensors/moonshine?tab=readme-ov-file) de transcriere, rulabil local(nu necesita Ollama) pe CPU(nu necesita GPU) denumit [**Moonshine**](https://www.youtube.com/watch?v=xciiB9vmImY&t=101s).

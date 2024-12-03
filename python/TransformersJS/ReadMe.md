Am citit acest [post-HF](https://huggingface.co/posts/Xenova/648607043613090) postat de cei de la [***Xenova***](https://github.com/topics/xenova-transformers?l=javascript) si am gasit proiectul [***WebGPU***](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU)([succesor/inlocuitor](https://huggingface.co/blog/transformersjs-v3#webgpu-support) al renderului-2D/3D [WebGL](https://en.wikipedia.org/wiki/WebGL))

***Nota***: [Hugging Face(HF)](https://medium.com/@kenzic/run-models-in-the-browser-with-transformers-js-2d0983ba3ce9) este un fel de depozitar(un fel de CDN, asa cum este si Github, dar...) pt [ML](https://medium.com/@fareedkhandev/transformers-js-ai-in-the-browser-zero-server-costs-maximum-privacy-2cd8d28798b7)

Iata ce se spune(traducere cu mici ["intariri/comentarii"](https://huggingface.co/docs/hub/transformers-js) prin anumite/cateva locuri:) in aceasta [postare](https://huggingface.co/docs/transformers/index):

Tocmai s-a lansat [**Transformers.js v3.1**](https://github.com/huggingface/transformers.js/releases/tag/3.0.0)( a se vedea [***exemplele-demo***](https://github.com/huggingface/transformers.js-examples)) de la [**HF**](https://websim.ai/p/tzubbb91ul3tgj_fhzfz/13) și nu o să vă vină să credeți ce este posibil acum în [**browser**](https://medium.com/@kenzic/run-models-in-the-browser-with-transformers-js-2d0983ba3ce9) cu [acceleratorul](https://github.com/microsoft/Phi-3CookBook/blob/main/md/08.Update/Phi35/031.WebGPUWithPhi35Readme.md) de [redare grafica](https://developer.chrome.com/docs/web-platform/webgpu/troubleshooting-tips) [***WebGPU***](https://huggingface.co/docs/transformers.js/guides/webgpu)! <br/><br/>🤯 Să aruncăm o [privire](https://community.neptune-software.com/topics/neptune-dxp/blogs/running--transformers-in-the--browser-with--neptune--s):<br/>
 - 🔀 [**Janus**](https://huggingface.co/deepseek-ai/Janus-1.3B) de la [***Deepseek***](https://github.com/dzhng/deep-seek) - pentru înțelegerea și generarea multimodală unificată (Text-to(**2**)-Image și Image-Text-**2**-Text)<br/>
 - 👁️ [**Qwen2-VL**](https://huggingface.co/collections/Qwen/qwen2-vl-66cee7455501d7126940800d) de la [***Qwen***](https://github.com/QwenLM/Qwen)  - pentru înțelegerea imaginii cu rezoluție dinamică<br/>
 - 🔢 [**JinaCLIP**](https://huggingface.co/jinaai/jina-clip-v1) de la [***Jina AI***](https://github.com/jina-ai) - pentru general -înglobare multimodală multilingvă cu scop<br/>(cross-modal similarity...se compara un text cu alt text extras dintro imagine in vederea stabilirii similaritatii)<br/>
 - 🌋 [**LLaVA-OneVision**](https://huggingface.co/docs/transformers/main/model_doc/llava_onevision) de la [***ByteDance***](https://github.com/bytedance) - pentru generarea Image-Text-**2**-Text<br/>
 - 🤸‍♀️ [**ViTPose**](https://huggingface.co/qubvel-hf/vitpose-base) - pentru estimarea poziției<br/>
 - 📄 [**MGP-STR**](https://huggingface.co/docs/transformers/model_doc/mgp-str) - pentru recunoașterea optică a caracterelor (**OCR**)<br/>
 - 📈 [**PatchTST**](https://huggingface.co/docs/transformers/model_doc/patchtst) și [**PatchTSMixer**](https://huggingface.co/docs/transformers/model_doc/patchtsmixer) - pentru prognoza serii cronologice<br/><br/>

Așa este, totul se rulează [local](https://github.com/huggingface/transformers.js/tree/main), [100%](https://microsoft.github.io/onnxruntime-web-demo/#/) în  [**browser**](https://www.youtube.com/watch?v=yGVte5KubRQ) (niu sunt transmise date la/catre un server)! 🔥 Uriaș pentru confidențialitate!<br/><br/>

Consultați [notele de lansare](https://github.com/huggingface/transformers.js/releases/tag/3.0.0) pentru mai multe [informații](https://huggingface.co/docs/transformers.js/index). 👇<br/>
https://github.com/huggingface/transformers.js/releases/tag/3.1.0<br/>


Link [demonstrativ](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU) (+ [cod sursă](https://github.com/huggingface/transformers.js-examples/tree/main/janus-webgpu)):
[webml-community/Janus-1.3B-WebGPU](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU)

<br/><br/>In proiectul [***Janus-1.3B-WebGPU***](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU) am gasit urmatoarea descriere/prezentare:

Sunteți pe cale să încărcați [Janus-1.3B](https://huggingface.co/onnx-community/Janus-1.3B-ONNX), un [model](https://www.tensorflow.org/js/models)(**LLM**) multimodal de **viziune** - limbaj care este optimizat pentru inferență pe web. 

Totul rulează 100% local în [browser](https://github.com/whitphx/transformers.js.py)ul tău cu 🤗 [Transformers.js](https://huggingface.co/docs/transformers.js) și [ONNX Runtime Web](https://onnxruntime.ai/docs/tutorials/web/)(permite să rulați și să implementați [modele](https://www.tensorflow.org/js/models) de ML în aplicația dvs. web, folosind JS), ceea ce înseamnă că <u>nu sunt trimise date</u> către un server. 

Odată ce [modelul](https://towardsdatascience.com/nlp-transformers-pipelines-with-onnx-9b890d015723) s-a încărcat, acesta poate fi folosit chiar și [offline](https://github.com/m1ckc3b/object-detection-with-transformerjs). 

[Codul sursă](https://github.com/huggingface/transformers.js-examples/tree/main/janus-webgpu) pentru [demo](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU) poate fi găsit pe [GitHub](https://github.com/huggingface/transformers.js-examples/tree/main/janus-webgpu).

<hr/>

 Un alt [post/articol](https://do-me.github.io/SemanticFinder/) interesant este acesta legat de [**SemanticSearch**](https://www.reddit.com/r/ollama/comments/1b79c23/inbrowser_rag_feeding_ollama/).

Iata ce se spune in acest [articol](https://do-me.github.io/SemanticFinder/):

 **RAG în browser care hrănește/alimenteaza**(cu date contextuale salvate/recuperate [d]in memoria/BD-virtuala) **Ollama**<br/>
<br/>Bună, oameni buni,<br/><br/>
M-am gândit să împărtășesc integrarea **Ollama** în [**SemanticFinder**](https://github.com/do-me/SemanticFinder) , un [instrument](https://www.reddit.com/r/ollama/comments/1b79c23/inbrowser_rag_feeding_ollama/?tl=it) de [căutare semantică](https://do-me.github.io/SemanticFinder/) în **browser**(pe orice sau <br/>indiferent de [*dispozitiv*](https://github.com/modzy/hugging-face-raspberry-pi)).<br/>
[**Transformers.js**](https://github.com/huggingface/transformers.js) se ocupă de tokenizarea intrării și de rularea modelului.<br/>
S-a lucrat intens la instrumente de căutare semantică la nivelul clientului în ultimul an, pentru a le permite atât persoanelor neprofesioniste, cât și experților să folosească cele mai recente modele de încorporare fără a fi nevoie să instaleze nimic.

Folosind [**Transformers.js**](https://github.com/huggingface/transformers.js), este destul de nebunesc că (aproape) toate modelele/**LLM**(sub câțiva GB) pot rula în întregime în [**browser**](https://github.com/praeclarum/transformers-js)<br/> folosind [**ONNX**](https://www.reddit.com/r/MachineLearning/comments/rr17f9/p_45_times_faster_hugging_face_transformer/)!<br/>
La fel procedați și cu **LLM**-urile mici, cum ar fi cele din familia [**Qwen**](https://huggingface.co/Qwen) sau [**LaMini-Flan-T5**](https://huggingface.co/MBZUAI/LaMini-Flan-T5-783M).<br/>
Se descurcă grozav pentru dimensiunea lor, dar dacă doriți o calitate și mai bună, trebuie să rulați un server în afara **browser**ului dvs. deoarece: dimensiunea fișierului/utilizarea RAM este limitată și, prin urmare, dimensiunea și contextul modelului sunt reduse.<br/>
Sunt sigur că aceasta este o limitare care va dispărea în cele din urmă, dar pentru moment este necesar să rulați un server de inferență(cum este si **Ollama**) în afara **browser**ului dumneavoastră.<br/>

Aici intervine **Ollama**: completează [**SemanticFinder**](https://do-me.github.io/SemanticFinder/) și sunt rezultatele căutării semantice pentru a pune întrebări despre ele.<br/>

De exemplu, puteți căuta în întreaga [biblie](https://github.com/do-me/SemanticFinder?tab=readme-ov-file#catalogue)(a se vedea sub-tag-ul *Catalogue*) în **browser** <br/>„mâncăm mâncare gustoasă”<br/> și după ce cereți unui **LLM** să obtinem un rezumat, de exemplu, de forma <br/>„Pe baza următorului context, răspundeți la întrebarea: Ce fel de mâncare mănâncă? <br/>Context: **SEARCH_RESULTS** ".

Recuperarea în **RAG** este un fel de manuală în acest moment, așa că sunteți cam "spoonfeed"(hranire cu lingura-deci manuala nu automata) **LLM**, dar vreau să adaug un automatism pentru aceasta (de exemplu, întrebând **LLM**-ul însuși cum ar arăta o interogare **RAG** ideală, rulând-o și hrănind aceasta cu rezultatele).

Deoarece toate componentele sunt modificabile, ele funcționează frumos în multe limbi sau chiar înglobări de cod (de exemplu, folosind înglobarea codului [**Jina**](https://huggingface.co/jinaai/jina-embeddings-v2-base-code)).

Spune-mi ce crezi! :)

Dacă doriți să-l testați singur, asigurați-vă că permiteți [**CORS**](https://do-me.github.io/SemanticFinder/) setând variabila **env** în consecință:

- pe *Windows* , de sub *Powershell*: $env:**OLLAMA_ORIGINS**="[https://do-me.github.io](https://github.com/do-me/trending-huggingface-models/)"; **ollama serve**
- pe *Ubuntu*: **OLLAMA_ORIGINS**="[https://do-me.github.io](https://github.com/do-me/)" **ollama serve**




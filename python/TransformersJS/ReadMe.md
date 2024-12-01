Am citit acest [post-HF](https://huggingface.co/posts/Xenova/648607043613090) postat de cei de la [***Xenova***](https://github.com/topics/xenova-transformers?l=javascript) si am gasit proiectul [***WebGPU***](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU)(succesor/inlocuitor al renderului-2D/3D [WebGL](https://en.wikipedia.org/wiki/WebGL))

***Nota***: [Hugging Face(HF)](https://medium.com/@kenzic/run-models-in-the-browser-with-transformers-js-2d0983ba3ce9) este un fel de depozitar(un CDN, asa cum este si Github) pt ML

Iata ce se spune(traducere cu mici "intariri" prin anumite locuri:) in aceasta [postare](https://huggingface.co/docs/transformers/index):

Tocmai am lansat [**Transformers.js v3.1**](https://github.com/huggingface/transformers.js/releases/tag/3.0.0)( a se vedea [***exemplele-demo*** de la **HF**](https://github.com/huggingface/transformers.js-examples)) și nu o să vă vină să credeți ce este posibil acum în [**browser**](https://medium.com/@kenzic/run-models-in-the-browser-with-transformers-js-2d0983ba3ce9) cu acceleratorul 
[***WebGPU***](https://huggingface.co/docs/transformers.js/guides/webgpu)! <br/><br/>🤯 Să aruncăm o privire:<br/>
 - 🔀 [**Janus**](https://huggingface.co/deepseek-ai/Janus-1.3B) de la [***Deepseek***](https://github.com/dzhng/deep-seek) - pentru înțelegerea și generarea multimodală unificată (Text-to(**2**)-Image și Image-Text-**2**-Text)<br/>
 - 👁️ [**Qwen2-VL**](https://huggingface.co/collections/Qwen/qwen2-vl-66cee7455501d7126940800d) de la [***Qwen***](https://github.com/QwenLM/Qwen)  - pentru înțelegerea imaginii cu rezoluție dinamică<br/>
 - 🔢 [**JinaCLIP**](https://huggingface.co/jinaai/jina-clip-v1) de la [***Jina AI***](https://github.com/jina-ai) - pentru general -înglobare multimodală multilingvă cu scop<br/>
 - 🌋 [**LLaVA-OneVision**](https://huggingface.co/docs/transformers/main/model_doc/llava_onevision) de la [***ByteDance***](https://github.com/bytedance) - pentru generarea Image-Text-**2**-Text<br/>
 - 🤸‍♀️ [**ViTPose**](https://huggingface.co/qubvel-hf/vitpose-base) - pentru estimarea poziției<br/>
 - 📄 [**MGP-STR**](https://huggingface.co/docs/transformers/model_doc/mgp-str) - pentru recunoașterea optică a caracterelor (**OCR**)<br/>
 - 📈 [**PatchTST**](https://huggingface.co/docs/transformers/model_doc/patchtst) și [**PatchTSMixer**](https://huggingface.co/docs/transformers/model_doc/patchtsmixer) - pentru prognoza serii cronologice<br/><br/>

Așa este, totul rulează local în 100% [**browser**](https://www.youtube.com/watch?v=yGVte5KubRQ) (nicio date trimise la un server)! 🔥 Uriaș pentru confidențialitate!<br/><br/>

Consultați notele de lansare pentru mai multe [informații](https://huggingface.co/docs/transformers.js/index). 👇<br/>
https://github.com/huggingface/transformers.js/releases/tag/3.1.0<br/>


Link [demonstrativ](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU) (+ [cod sursă](https://github.com/huggingface/transformers.js-examples/tree/main/janus-webgpu)):
[webml-community/Janus-1.3B-WebGPU](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU)

<br/><br/>In proiectul [***Janus-1.3B-WebGPU***](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU) am gasit urmatoarea descriere/prezentare:

Sunteți pe cale să încărcați [Janus-1.3B](https://huggingface.co/onnx-community/Janus-1.3B-ONNX), un model(**LLM**) multimodal de **viziune** - limbaj care este optimizat pentru inferență pe web. 

Totul rulează 100% local în [browser](https://github.com/whitphx/transformers.js.py)ul tău cu 🤗 [Transformers.js](https://huggingface.co/docs/transformers.js) și [ONNX Runtime Web](https://onnxruntime.ai/docs/tutorials/web/)(permite să rulați și să implementați modele de ML în aplicația dvs. web, folosind JS), ceea ce înseamnă că <u>nu sunt trimise date</u> către un server. 

Odată ce modelul s-a încărcat, acesta poate fi folosit chiar și offline. 

[Codul sursă](https://github.com/huggingface/transformers.js-examples/tree/main/janus-webgpu) pentru [demo](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU) poate fi găsit pe [GitHub](https://github.com/huggingface/transformers.js-examples/tree/main/janus-webgpu).

<hr/>

 Un alt [post/articol](https://do-me.github.io/SemanticFinder/) interesant este acesta legat de [**SemanticSearch**](https://www.reddit.com/r/ollama/comments/1b79c23/inbrowser_rag_feeding_ollama/).

Iata ce se spune in acest [articol](https://do-me.github.io/SemanticFinder/):

 **RAG în browser care hrănește/alimenteaza**(cu date contextuale recuperate din memoria/BD-virtuala) **Ollama**<br/>
<br/>Bună, oameni buni,<br/><br/>
M-am gândit să împărtășesc integrarea **Ollama** în [**SemanticFinder**](https://github.com/do-me/SemanticFinder) , un [instrument](https://www.reddit.com/r/ollama/comments/1b79c23/inbrowser_rag_feeding_ollama/?tl=it) de [căutare semantică](https://do-me.github.io/SemanticFinder/) în **browser**(pe orice/indiferent de *dispozitiv*).<br/>
Am lucrat intens la instrumente de căutare semantică la nivelul clientului în ultimul an, pentru a le permite atât persoanelor neprofesioniste, cât și experților să folosească cele mai recente modele de încorporare fără a fi nevoie să instaleze nimic.

Folosind [**Transformers.js**](https://github.com/huggingface/transformers.js), este destul de nebunesc că (aproape) toate modelele/**LLM**(sub câțiva GB) pot rula în întregime în [**browser**](https://github.com/praeclarum/transformers-js)folosind **ONNX**!<br/>
La fel faceți și **LLM**-urile mici, cum ar fi familia [**Qwen**](https://huggingface.co/Qwen) sau [**LaMini-Flan-T5**](https://huggingface.co/MBZUAI/LaMini-Flan-T5-783M).<br/>
Se descurcă grozav pentru dimensiunea lor, dar dacă doriți o calitate și mai bună, trebuie să rulați un server în afara **browser**ului dvs. deoarece: dimensiunea fișierului/utilizarea RAM este limitată și, prin urmare, dimensiunea și contextul modelului sunt reduse.<br/>
Sunt sigur că aceasta este o limitare care va dispărea în cele din urmă, dar pentru moment este necesar să rulați un server de inferență în afara **browser**ului dumneavoastră.<br/>

Aici intervine **Ollama**: completează [**SemanticFinder**](https://do-me.github.io/SemanticFinder/) și sunt rezultatele căutării semantice pentru a pune întrebări despre ele.<br/>

De exemplu, puteți căuta în întreaga [biblie](https://github.com/do-me/SemanticFinder?tab=readme-ov-file#catalogue)(a se vedea sub-tag-ul *Catalogue*) în **browser** <br/>„mâncăm mâncare gustoasă”<br/> și după ce cereți unui **LLM** să obtinem un rezumat, de exemplu, de forma <br/>„Pe baza următorului context, răspundeți la întrebarea: Ce fel de mâncare mănâncă? <br/>Context: **SEARCH_RESULTS** ".

Recuperarea în **RAG** este un fel de manuală în acest moment, așa că sunteți cam "spoonfeed"(hranire cu lingura-deci manuala nu automata) **LLM**, dar vreau să adaug un automatism pentru aceasta (de exemplu, întrebând **LLM**-ul însuși cum ar arăta o interogare **RAG** ideală, rulând-o și hrănind aceasta cu rezultatele).

Deoarece toate componentele sunt modificabile, ele funcționează frumos în multe limbi sau chiar înglobări de cod (de exemplu, folosind înglobarea codului [**Jina**](https://huggingface.co/jinaai/jina-embeddings-v2-base-code)).

Spune-mi ce crezi! :)

Dacă doriți să-l testați singur, asigurați-vă că permiteți [**CORS**](https://do-me.github.io/SemanticFinder/) setând înv var în consecință:

- pe *Windows* , de sub *Powershell*: $env:**OLLAMA_ORIGINS**="[https://do-me.github.io](https://github.com/do-me/trending-huggingface-models/)"; **ollama serve**
- pe *Ubuntu*: **OLLAMA_ORIGINS**="[https://do-me.github.io](https://github.com/do-me/)" **ollama serve**




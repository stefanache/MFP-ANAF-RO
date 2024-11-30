Am citit acest [post](https://huggingface.co/posts/Xenova/648607043613090) HF postat de cei de la Xenova si am gasit proiectul [***WebGPU***](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU)

Iata ce se spune in aceasta postare:

Tocmai am lansat [**Transformers.js v3.1**](https://github.com/huggingface/transformers.js/releases/tag/3.0.0) și nu o să vă vină să credeți ce este posibil acum în **browser** cu ***WebGPU***! 🤯 Să aruncăm o privire:<br/>
🔀 [**Janus**](https://huggingface.co/deepseek-ai/Janus-1.3B) de la ***Deepseek*** - pentru înțelegerea și generarea multimodală unificată (Text-to-Image și Image-Text-to-Text)<br/>
👁️ [**Qwen2-VL**](https://huggingface.co/collections/Qwen/qwen2-vl-66cee7455501d7126940800d) de la ***Qwen***  - pentru înțelegerea imaginii cu rezoluție dinamică<br/>
🔢 **JinaCLIP** de la **Jina AI** - pentru general -înglobare multimodală multilingvă cu scop<br/>
🌋 [**LLaVA-OneVision**](https://huggingface.co/docs/transformers/main/model_doc/llava_onevision) de la ***ByteDance*** - pentru generarea Image-Text-to-Text<br/>
🤸‍♀️ [**ViTPose**](https://huggingface.co/qubvel-hf/vitpose-base) - pentru estimarea poziției<br/>
📄 [**MGP-STR**](https://huggingface.co/docs/transformers/model_doc/mgp-str) - pentru recunoașterea optică a caracterelor (OCR)<br/>
📈 [**PatchTST**](https://huggingface.co/docs/transformers/model_doc/patchtst) și [**PatchTSMixer**](https://huggingface.co/docs/transformers/model_doc/patchtsmixer) - pentru prognoza serii cronologice<br/><br/>

Așa este, totul rulează local în 100% browser (nicio date trimise la un server)! 🔥 Uriaș pentru confidențialitate!<br/><br/>

Consultați notele de lansare pentru mai multe informații. 👇<br/>
https://github.com/huggingface/transformers.js/releases/tag/3.1.0<br/>


Link demonstrativ (+ cod sursă):
[webml-community/Janus-1.3B-WebGPU](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU)

In proiectul [***Janus-1.3B-WebGPU***](https://huggingface.co/spaces/webml-community/Janus-1.3B-WebGPU) am gasit urmatoarea descriere/prezentare:

Sunteți pe cale să încărcați [Janus-1.3B](https://huggingface.co/onnx-community/Janus-1.3B-ONNX), un model multimodal de viziune-limbaj care este optimizat pentru inferență pe web. 

Totul rulează 100% local în browserul tău cu 🤗 [Transformers.js](https://huggingface.co/docs/transformers.js) și [ONNX Runtime Web](https://onnxruntime.ai/docs/tutorials/web/), ceea ce înseamnă că nu sunt trimise date către un server. 

Odată ce modelul s-a încărcat, acesta poate fi folosit chiar și offline. 

Codul sursă pentru demo poate fi găsit pe [GitHub](https://github.com/huggingface/transformers.js-examples/tree/main/janus-webgpu).

<hr/>

 Un alt post interesant este acesta legat de [SemanticSearch](https://www.reddit.com/r/ollama/comments/1b79c23/inbrowser_rag_feeding_ollama/).


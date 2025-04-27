Salut!

In legatura cu subiectul HuggingFace(HF) o sa plasez aici cateva link-uri utile:

 - [google-imgs: Huggingface  knowledge tree](https://www.google.com/search?sca_esv=56b93db8a3f00b44&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zpNe8Sl8YPllwyd926I_u_teYstNw:1742382590792&q=Huggingface++knowledge+tree&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGls0vqphpL9nGKy0PrLJqseLh0EQ6IW_YF9DHIKeRA2FImZJj7_nGLmr0IdZilOghZzrnAO3ptW2gTgwcz2n-eyuZaSgkymgIvpoNEBFutb14Z8ndRMHdEyydLXyZEjr-mhGDAb5XY3kDG47TtSIPC8tL1vj35ZNMSi1sU852mgj07SQkORlLEZ5dsJ6xH8rrYcCwIShA&sa=X&ved=2ahUKEwjE9ov7gJaMAxX2VfEDHURJBvwQtKgLegQIExAB&biw=1920&bih=911&dpr=1)
 - [google-imgs: Huggingface ontology knowledge tree](https://www.google.com/search?q=Huggingface++ontology+knowledge+tree&sca_esv=56b93db8a3f00b44&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AHTn8zok87BggrQiWWcdINOGYbhAoYwLwg%3A1742382594940&ei=AqbaZ4GNOceFxc8PsLjS-Qw&ved=0ahUKEwiBlon9gJaMAxXHQvEDHTCcNM8Q4dUDCBQ&uact=5&oq=Huggingface++ontology+knowledge+tree&gs_lp=EgNpbWciJEh1Z2dpbmdmYWNlICBvbnRvbG9neSBrbm93bGVkZ2UgdHJlZUiEIFCdC1icHnABeACQAQCYAaMBoAGPCKoBAzAuObgBA8gBAPgBAZgCAKACAJgDAIgGAZIHAKAHlQOyBwC4BwA&sclient=img)
 - [GH: HF](https://github.com/huggingface)
 - [GH-HF: HF-docs transformers](https://github.com/huggingface/transformers); [GH-HF: HF-docs diffusers](https://github.com/huggingface/diffusers); [GH-HF: HF-docs DSs](https://github.com/huggingface/datasets); <br/>[GH-HF: HF-docs PEFT](https://github.com/huggingface/peft); [GH-HF: HF-docs Accelerate](https://github.com/huggingface/accelerate); [GH-HF: HF-docs optium](https://github.com/huggingface/optimum); ...
 - [HF: docs](https://huggingface.co/docs/)
 - [HF-docs transformers glossary](https://huggingface.co/docs/transformers/glossary)
 - [HF-docs transformers DeepSeek](https://huggingface.co/docs/transformers/main_classes/deepspeed)
 - [HF: models](https://huggingface.co/models)
 - [HF: EmbeddedLLM(company)](https://huggingface.co/EmbeddedLLM)
 - [HF: collections](https://huggingface.co/collections)
 - [HF-collections: stereoPlegic](https://huggingface.co/stereoplegic)
 - [HF-collections-stereoPlegic-ontology: stereoplegic's Collections: Ontology](https://huggingface.co/collections/stereoplegic/ontology-655b0a00bf604a773282c8ce)
 - [YT: libraria **vLLM**](https://www.youtube.com/watch?v=tLEdDMeCe5U&ab_channel=FahdMirza)
   <br/>Acest videoClip arată cum să rulați modele bazate pe [*transformator* huggingface(HF)](https://docs.vllm.ai/en/latest/models/generative_models.html#generative-models), cu libraria [**vLLM**](https://github.com/vllm-project/vllm), pentru o implementare/dezvoltare pe [scară-largă](https://www.reddit.com/r/LocalLLaMA/comments/1jjl45h/compared_performance_of_vllm_vs_sglang_on_2/?tl=ro);
   <br/>Despre adaptoarele de tip [***LoRA***](https://docs.vllm.ai/en/latest/features/lora.html)([Low-Rank Adaption](https://www.nobleprog.md/cc/finetuninglora)) si despre utilizarea acestora cu ajutorul ***ConfyUI***, puteti afa cate ceva din acest [tutorial](https://www.unite.ai/ro/how-to-train-and-use-hunyuan-video-lora-models/);
   <br/>Adaptarea de rang scăzut=Low-Rank Adaptation([***LoRA***](https://medium.com/@shelikohan/low-rank-adapter-lora-explained-0d3677395639)) este o tehnică de ultimă oră/destul de recenta(concept antrenare/reglare fina=**FT** eficienta(a se citi si despe [SFT=Supervised Fine-Tuning](https://huggingface.co/docs/trl/sft_trainer)), lansat de [**MS**](https://github.com/microsoft/LoRA) in septembrie 2023) pentru ajustarea/reglarea/modificarea/fluctuatia/gradientul parametrilor eficientă(redusa) a modelelor la scară-largă prin...
   <br/>...reducerea cerințelor de calcul și de memorie ale metodelor tradiționale.
   <br/>Utilizarea [LoRA](https://docs.vllm.ai/en/stable/features/lora.html) pentru a adapta modelele pre-antrenate pentru [sarcini specifice](https://medium.com/@rajaravivarman/rag-vs-lora-for-efficient-language-model-tuning-c6f675e710c5) este o tehnica ideală pentru mediile cu resurse limitate(de GPU/CPU,...).
   <br/>
   <br/>**RAG** - minimizeaza cerinta dinamica de date
   <br/>și
   <br/>**LoRA** - reduce consumul de resurse inerente reglarii-fine specifice modelelor-mari(de-limbaj/LLM-urilor, de viziune/VLM-urilor...) pre-antrenate
   <br/>oferă [*instrumente*](https://www.reddit.com/r/deeplearning/comments/1b6g8ft/full_finetuning_vs_lora_finetuning_vs_rag/) valoroase

    - pentru ...
      
           - optimizarea performanței modelului

    - fără a [compromite](https://www.linkedin.com/posts/nour-albaarini_very-interesting-representation-of-the-difference-activity-7175449304415764480-mfbo/) ...
      
           - eficiența de calcul,
           - timpul sau
           - cerințele de date.

 - [Gemini2.5](https://blog.google/technology/google-deepmind/gemini-model-thinking-updates-march-2025/#gemini-2-5-thinking) - model performant de inferenta/deductie-logica/gandie/rationament pt clasificare si predictie, oferit de ***Google***.

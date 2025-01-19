Salut tuturor,

In acest mic post, as vrea sa va prezint/analizez, modelul multimodal de viziune computerizata([CV](https://en.wikipedia.org/wiki/Computer_vision)), [**MinMax-VL-01**](https://www.youtube.com/watch?v=mPA3z3jPXt4&ab_channel=FahdMirza)(multumiri d-lui [**Fahd-Mirza**](https://www.youtube.com/@fahdmirza)).

Modelul [**MiniMax-VL-01**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01) adoptă cadrul/pachetul/modul de lucru „[***ViT-MLP-LLM***](https://medium.com/@ikim1994914/advanced-modern-llm-part-2-understanding-the-universality-of-transformers-3c367ce5989d)”(unde avem: [***ViT***](https://www.researchgate.net/publication/383308743_Vintern-1B_An_Efficient_Multimodal_Large_Language_Model_for_Vietnamese) = i.e = **V**is**i**on-**T**ransformer, [**MLP**](https://en.wikipedia.org/wiki/Multilayer_perceptron) = i.e = **P**erceptron multistrat/**M**ulti**L**ayer, [**LLM**](https://en.wikipedia.org/wiki/Large_language_model)  = i.e. = **M**odele **L**argi/masive de **L**imbaj).

Modelul [**MiniMax-VL-01**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01) este inițiat/invatat și antrenat cu trei părți cheie/importante(conform framework-ului „[***ViT-MLP-LLM***](https://medium.com/@ikim1994914/advanced-modern-llm-part-2-understanding-the-universality-of-transformers-3c367ce5989d)”: 
 - un **Vision-Transformer** (**ViT**) cu 303 de milioane de parametri pentru codificare vizuală,
 - un proiector **MLP** cu două straturi inițializat aleatoriu pentru adaptarea imaginii și
 - **MiniMax-Text-01** ca ***LLM*** de bază. <br/>
   **MiniMax-VL-01** are o caracteristică notabilă de rezoluție dinamică.

Hai sa vedem cum functioneaza si cum se comporta modellul supus analizei nostre.
Imaginile de intrare sunt redimensionate pe o grilă prestabilită, cu rezoluții de la 336×336 la 2016×2016, păstrând o miniatură de(reducandu-se la) 336×336.<br/>
Imaginile redimensionate sunt împărțite în patch-uri(bucatele de puzzle/petice; impartirea in aceste bucatele permie o procesare mai eficienta) care nu se suprapun(se alipesc) de aceeași dimensiune.<br/>
Aceste patch-uri și miniatura(imaginea redusa... a se vedea algoritmii de reducere si frontul Pareto... cu 20% parte esentiala/utila/semnificativa de informatie si restul de 80% partea de balast/mai putin utila/nesemnificativa) sunt codificate separat și apoi combinate pentru o reprezentare completă a imaginii. <br/>
Datele de antrenament pentru **MiniMax-VL-01** constau din legendă(explicatii cu privire la simbolurile e reprezentare=meta-informatie), descriere(meta-informatie) și date cu privire la instrucțiuni. <br/>
**Vision Transformer** (**ViT**) este antrenat de la zero pe 694 de milioane de perechi de subtitrari de imagine: (subtitrări,imagine).<br/>
În patru etape distincte ale conductei de antrenament, sunt procesate un total de 512 miliarde de jetoane, valorificând această cantitate mare de date pentru a dota modelul cu capabilități puternice.<br/>
În cele din urmă, **MiniMax-VL-01** a atins performanță la cel mai înalt nivel(s-a masurat nivelul in % de acuratete) pe clasamentele multimodale(in *domenii*/**cunostinte**: *domenii* precum *intrebari si raspunsuri vizuale=visual Q&A*, *matematica si stiinta*,...,*experienta utilizatorului*... care contin/se refera la diverse standuri specializate de lucru/benchmark-uri de **cunostinte**, cum ar fi **MMMU**, **MMMU-Pro**/*evaluat după o setare* ***CoT [0-shot](https://en.wikipedia.org/wiki/Zero-shot_learning)***, **ChartQA**, **DocVQA**, **AI2D**, **MathVista**, ...**OCRBench**), demonstrându-și avantajul și fiabilitatea în sarcini multimodale complexe(sarcini specifice LLM-urilor, precum **GPT-4o**, **Claude-3.5-Sonet**, **Gemeni-1.5-Pro**,...,**LLama 3.2 90B**).

 

In afara de integrarea cu [**Transformers**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01?library=transformers)(pt. / care ofera algoritmul/tehnica de [difuzie](https://alexhost.com/ro/faq/cum-se-utilizeaza-reteaua-neurala-de-difuzie-stabila/)), acest [**model**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01) *masiv*( acest *LLM* are o dimenziune care se cifreaza la *456 miliarde* de paramatrii), mai se integreaza in - / lucreaza inpreuna cu - aplicatiile Python *locale*(pe computer-ul dvs fie desktop-PC/laptop...), prin intermediul/utilizand [**vLLM**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01?local-app=vllm).

Fiind expus pe hub-ul AI-CDN [**HuggingFace**(**HF**)](https://huggingface.co/MiniMaxAI/MiniMax-VL-01) aveti posibilitatea sa-l vedeti lucrand/testati direct pe [website](https://huggingface.co/spaces/MiniMaxAI/MiniMax-VL-01)-ul lor.


Daca doriti sa testati/porniti foarte rapid si sa vedeti cum lucreaza atunci sectiunea urmatoare va poate fi de folos:

<details>
 <summary>Presupunand ca dependentele au fost rezolvate deja/in prealabil, exemplul rapid de utilizare/testare a modelului analizat, ar trebui, sa functioneze din prima:</summary>

<hr/>

<code>
 
   from transformers import AutoModelForCausalLM, AutoProcessor, AutoConfig, QuantoConfig, GenerationConfig
   import torch
   import json
   import os
   from PIL import Image
   
   # load hf config
   hf_config = AutoConfig.from_pretrained("MiniMaxAI/MiniMax-VL-01", trust_remote_code=True)
   
   # quantization config, int8 is recommended
   quantization_config =  QuantoConfig(
               weights="int8",
               modules_to_not_convert=[
                   "vision_tower",
                   "image_newline",
                   "multi_modal_projector",
                   "lm_head",
                   "embed_tokens",
               ] + [f"model.layers.{i}.coefficient" for i in range(hf_config.text_config.num_hidden_layers)]
               + [f"model.layers.{i}.block_sparse_moe.gate" for i in range(hf_config.text_config.num_hidden_layers)]
           )
   
   # set device map
   model_safetensors_index_path = os.path.join("MiniMax-VL-01", "model.safetensors.index.json")
   with open(model_safetensors_index_path, "r") as f:
       model_safetensors_index = json.load(f)
   weight_map = model_safetensors_index['weight_map']
   vision_map = {}
   for key, value in weight_map.items():
       if 'vision_tower' in key or 'image_newline' in key or 'multi_modal_projector' in key:
           new_key = key.replace('.weight','').replace('.bias','')
           if new_key not in vision_map:
               vision_map[new_key] = value
   # assume 8 GPUs
   world_size = 8
   device_map = {
       'language_model.model.embed_tokens': 'cuda:0',
       'language_model.model.norm': f'cuda:{world_size - 1}',
       'language_model.lm_head': f'cuda:{world_size - 1}'
   }
   for key, value in vision_map.items():
       device_map[key] = f'cuda:0'
   device_map['vision_tower.vision_model.post_layernorm'] = f'cuda:0'
   layers_per_device = hf_config.text_config.num_hidden_layers // world_size
   for i in range(world_size):
       for j in range(layers_per_device):
           device_map[f'language_model.model.layers.{i * layers_per_device + j}'] = f'cuda:{i}'
   
   # load processor
   processor = AutoProcessor.from_pretrained("MiniMaxAI/MiniMax-VL-01", trust_remote_code=True)
   messages = [
       {"role": "system", "content": [{"type": "text", "text": "You are a helpful assistant created by MiniMax based on MiniMax-VL-01 model."}]},
       {"role": "user", "content": [{"type": "image", "image": "placeholder"},{"type": "text", "text": "Describe this image."}]},
   ]
   prompt = processor.tokenizer.apply_chat_template(
       messages, tokenize=False, add_generation_prompt=True
   )
   raw_image = Image.open("figures/image.jpg")
   # tokenize and move to device
   model_inputs = processor(images=[raw_image], text=prompt, return_tensors='pt').to('cuda').to(torch.bfloat16)
   
   # load bfloat16 model, move to device, and apply quantization
   quantized_model = AutoModelForCausalLM.from_pretrained(
       "MiniMaxAI/MiniMax-VL-01",
       torch_dtype="bfloat16",
       device_map=device_map,
       quantization_config=quantization_config,
       trust_remote_code=True,
       offload_buffers=True,
   )
   generation_config = GenerationConfig(
       max_new_tokens=100,
       eos_token_id=200020,
       use_cache=True,
   )
   
   # generate response
   generated_ids = quantized_model.generate(**model_inputs, generation_config=generation_config)
   print(f"generated_ids: {generated_ids}")
   generated_ids = [
       output_ids[len(input_ids):] for input_ids, output_ids in zip(model_inputs.input_ids, generated_ids)
   ]
   response = processor.tokenizer.batch_decode(generated_ids, skip_special_tokens=True)[0]

</code>

<hr/>

</details>

Am observat ca, pt partea de antrenament/invatare/reglare a acestui model, se recomanda :

 - *antrenamentul optimizat*, folosind serviciul online **SageMaker** de la **Amazon**
   
sau/si

 - *reglajul fin*(sau post-antrenamentul de precizie/specificitate), cu ajutorul produsului intitulat **AutoTrain**(fara a fi nevoit sa scrii cod)

Desigur ca, in cazul in care, nu aveti resursele GPU extrem de mari(pt a face inferenta locala, va trebuiesc 80GB VRAM pe GPU-uri de tip h100/a100, intr-un cluster multi-GPU), cerute de acest model masiv, atunci ...va trebui sa testati/exersati modelul direct in [spatiul-HF](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbEJ5QUxrM3dYTV9EN1l0a0Rwb1J3eVhZZHV6QXxBQ3Jtc0ttS0xpZkZwU2dleTRNWFlwNmYtSDh1T0R5SC01blQtRnZOc2k5M0I0WW5TVGlOck1PNDZUOGd1elVyeFp3bTY5eTlRMmJWUU9sQjJRaTk0UnJSaHRNbERoME1oOV9XblpGWmRTa3lJbUdDTUQ4ZFZPMA&q=https%3A%2F%2Fhuggingface.co%2Fspaces%2FMiniMaxAI%2FMiniMax-VL-01&v=mPA3z3jPXt4).

Salut tuturor,

In acest mic post, as vrea sa va prezint/analizez, modelul multimodal de viziune computerizata [**MinMax-VL-01**](https://www.youtube.com/watch?v=mPA3z3jPXt4&ab_channel=FahdMirza)(multumiri d-lui [**Fahd-Mirza**](https://www.youtube.com/@fahdmirza)).

Modelul [**MiniMax-VL-01**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01) adoptă cadrul/pachetul/modul de lucru „[***ViT-MLP-LLM***](https://medium.com/@ikim1994914/advanced-modern-llm-part-2-understanding-the-universality-of-transformers-3c367ce5989d)”(unde avem: [***ViT***](https://www.researchgate.net/publication/383308743_Vintern-1B_An_Efficient_Multimodal_Large_Language_Model_for_Vietnamese) = i.e = **V**is**i**on-**T**ransformer, [**MLP**](https://en.wikipedia.org/wiki/Multilayer_perceptron) = i.e = **P**erceptron multistrat/**M**ulti**L**ayer, [**LLM**](https://en.wikipedia.org/wiki/Large_language_model)  = i.e. = **M**odele **L**argi/masive de **L**imbaj).

Modelul [**MiniMax-VL-01**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01) este inițiat/invatat și antrenat cu trei părți cheie/importante(conform framework-ului „[***ViT-MLP-LLM***](https://medium.com/@ikim1994914/advanced-modern-llm-part-2-understanding-the-universality-of-transformers-3c367ce5989d)”: 
 - un **Vision Transformer** (**ViT**) cu 303 de milioane de parametri pentru codificare vizuală,
 - un proiector **MLP** cu două straturi inițializat aleatoriu pentru adaptarea imaginii și
 - **MiniMax-Text-01** ca ***LLM*** de bază. <br/>
   **MiniMax-VL-01** are o caracteristică notabilă de rezoluție dinamică.

Hai sa vedem cum functioneaza si cum se comporta modellul supus analizei nostre.
Imaginile de intrare sunt redimensionate pe o grilă prestabilită, cu rezoluții de la 336×336 la 2016×2016, păstrând o miniatură de(reducandu-se la) 336×336.<br/>
Imaginile redimensionate sunt împărțite în patch-uri(bucatele de puzzle/petice) care nu se suprapun(se alipesc) de aceeași dimensiune.<br/>
Aceste patch-uri și miniatura(imaginea redusa... a se vedea algoritmii de reducere si frontul Pareto... cu 20% parte esentiala/utila/semnificativa de informatie si restul de 80% partea de balast/mai putin utila/nesemnificativa) sunt codificate separat și apoi combinate pentru o reprezentare completă a imaginii. <br/>
Datele de antrenament pentru **MiniMax-VL-01** constau din legendă(explicatii cu privire la simbolurile e reprezentare=meta-informatie), descriere(meta-informatie) și date cu privire la instrucțiuni. <br/>
**Vision Transformer** (**ViT**) este antrenat de la zero pe 694 de milioane de perechi: (subtitrări,imagine).<br/>
În patru etape distincte ale conductei de antrenament, sunt procesate un total de 512 miliarde de jetoane, valorificând această cantitate mare de date pentru a dota modelul cu capabilități puternice.<br/>
În cele din urmă, **MiniMax-VL-01** a atins performanță la cel mai înalt nivel(s-a masurat nivelul in % de acuratete) pe clasamentele multimodale(in *domenii*/**cunostinte**: *domenii* precum *intrebari si raspunsuri vizuale=visual Q&A*, *matematica si stiinta*,...,*experienta utilizatorului*... care contin/se refera la diverse standuri specializate de lucru/benchmark-uri de **cunostinte**, cum ar fi **MMMU**, **MMMU-Pro**/*evaluat după o setare* ***CoT [0-shot](https://en.wikipedia.org/wiki/Zero-shot_learning)***, **ChartQA**, **DocVQA**, **AI2D**, **MathVista**, ...**OCRBench**), demonstrându-și avantajul și fiabilitatea în sarcini multimodale complexe(sarcini specifice LLM-urilor, precum **GPT-4o**, **Claude-3.5-Sonet**, **Gemeni-1.5-Pro**,...,**LLama 3.2 90B**).

 

In afara de integrarea cu [**Transformers**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01?library=transformers), acest [**model**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01) *masiv*( acest *LLM* are o dimenziune care se cifreaza la *456 miliarde* de paramatrii), mai se integreaza in - / lucreaza inpreuna cu - aplicatiile Python *locale*(pe computer-ul dvs fie desktop-PC/laptop...), prin intermediul/utilizand [**vLLM**](https://huggingface.co/MiniMaxAI/MiniMax-VL-01?local-app=vllm).

Fiind expus pe hub-ul AI-CDN [**HuggingFace**(**HF**)](https://huggingface.co/MiniMaxAI/MiniMax-VL-01) aveti posibilitatea sa-l vedeti lucrand/testati direct pe [website](https://huggingface.co/spaces/MiniMaxAI/MiniMax-VL-01)-ul lor.

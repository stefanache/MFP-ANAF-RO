Repository: [**Langchain_Ollama_llama3**](https://github.com/duncanodhis/Langchain_Ollama_llama3)

publicat in [Medium](https://medium.com/@ion.stefanache0/langchain-python-client-for-ollama-69f6c24078e2) **@ion.stefanache0**

Inainte de toate sa vorbim de protagonistii acestui [***workshop***](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/langchain_Ollama_llama3):

 - [**Langchain**](https://towardsdatascience.com/building-a-math-application-with-langchain-agents-23919d09a4d3) - [**Langchain**](https://en.wikipedia.org/wiki/LangChain) este un cadru de integrare(un instrument integrator) a modelelor lingvistice mari(**LLM**), oferind interfete generale/comune dar si interfete mai rafinate(de obicei inlantuite), fiind de mare ajutor in munca de dezvoltare de aplicatii-AI(in analiza și rezumarea documentelor , chatbot-uri și analiza codului)
   
 - [**Ollama**](https://ollama.com/) si [**llama3**](https://en.wikipedia.org/wiki/Llama_(language_model)) - [**Ollama**](https://github.com/TheR1D/shell_gpt/wiki/Ollama) este un server ce poate fi instalat pe mai toate sistemele de operare importante(cross-platform) si care are drept scop livrarea modelelor mari de limbaj(un exemplu de ***LLM***, ar putea fi chiar  [**llama**](https://en.wikipedia.org/wiki/Llama_(language_model)))
   
Pentru a implementa aceasta [***lucrare***](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/langchain_Ollama_llama3) , am creat un fisier de executie/shell/batch denumit [**_Run.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/langchain_Ollama_llama3/_Run.bat) pt a simplifica procesul de instalare si rulare

(liniile comentate cu **rem** se decomenteaza pt a fi rulate o singura data si apoi se recomentreaza!)

Daca nu doriti sau nu puteti sa-l utilizati, urmariti aceste indicatii pas cu pas:


Detalii despre sursa principala python: [LangChain-Ollama Application](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/langchain_Ollama_llama3/Langchain_Ollama_llama3.py) (`Langchain_Ollama_llama3.py`)


<details>
<summary><b>LangChain with Ollama Integration - prezentare, instalare si rulare </b></summary>

<hr/>

This application integrates [LangChain](https://python.langchain.com/v0.2/docs/concepts/) with the **Ollama** [LLM](https://www.comet.com/site/blog/decoding-the-significance-of-llm-chains-in-llmops/) to perform various operations, 

such as question-answering(**Q&A**) and other conversational tasks.

 - *Getting Started*

To run this application, ensure you have Python 3.10 or later installed, along with the required dependencies.

 - *Installing Dependencies*

To install the required Python packages, use the following command:

**pip install -r [requirements.txt](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/langchain_Ollama_llama3/requirements.txt)**

 - *Running the Application*

Before running, ensure that the Ollama server is up and running. 

This application interacts with Ollama to generate responses.

To start the LangChain-Ollama application, navigate to the directory containing [**Langchain_Ollama_llama3.py**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/langchain_Ollama_llama3/Langchain_Ollama_llama3.py) and run:

[**python Langchain_Ollama_llama3.py**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/langchain_Ollama_llama3/Langchain_Ollama_llama3.py)

***Remark about Langchain***: please consult that [**chart**](https://medium.com/@bijit211987/llm-driven-applications-with-langchain-abstraction-4907a32bdfb0)!

<hr/>

***Docker Setup***

If you'd prefer to run the application in a Docker container, follow these steps:

 - *Build the Docker Image:*
**docker build -t langchain_ollama -f Dockerfile .**

 - *Run the Docker Container:*
**docker run langchain_ollama**

<hr/>
</details>

***Observatie:***

Mie codul original nu mi-a functionat asa ca am folosit **ChatGPT** in mod repetat pana ce mi-a corectat codul!

Este totusi un proces plictisitor **:)** !!!!

Modelul LLM utilizat este [**llama3**](https://llama.meta.com/)

Asadar el trebuie incarcat o singura data in serverul [**Ollama**](https://ollama.com/download/windows) cu comanda urmatoare:

**ollama pull llama3** 

sau cu comanda

**ollama run llama3**

Pt a vedea daca modelul s-a incarcat sau este deja incarcat folositi comanda

**ollama list**

cand vreti sa porniti serverul folositi comanda :

**ollama serve**  

***OBS:*** 

*(nu este absolut necesar sa precizati un model LLM pe care sa-l incarce initial...
  serverul il va incarca in mod automat atunci cand in codul python il invocati)*


Pt a stii daca serverul lucreaza deschideti un browser(ex. Chrome) si vizualizati mesajul de la adresa:

[**http://localhost:11434**](http://localhost:11434)


Desigur toate aceste comenzi CLI/shell care se refera la serverul **Ollama** vor functiona doar dupa ce in prealabil ati 
descarcat si instalat local serverul **Olama** corespunzator sistemului dvs de operare(in cazul meu **Windows 10 Pro**)

Adresa de decarcare a acestui server care va furniza diversele modele LLM pe care le utilizati este urmatoarea:

[**https://ollama.com/download/windows**](https://ollama.com/download/windows)

O mostra de dialog cu acest [***Chatbot***](https://towardsdatascience.com/4-ways-of-question-answering-in-langchain-188c6707cc5a) este furnizat in fisierul ***exemplu_dialog.txt***.

Daca vreti sa folositi serverul local **Ollama** si un **LLM**(cum ar fi [**llama**](https://github.com/lawwu/awesome-llamas),...) intr-o *alta sarcina*(alta decat simplul dialog de tip *QA*), spre exemplu de [**incadrare pe categorii**](https://github.com/Sachin2495/langchain/tree/main) puteti folosi acest [repos](https://github.com/Sachin2495/langchain/tree/main), ori [**semantic-code-search** - in codebase](https://github.com/fynnfluegge/codeqai)(cda CLI/cmd.exe: **codeqai search**), sau [**financial advisor**](https://medium.com/@renjuhere/llama-3-as-your-financial-advisor-8904a2673f2c), [**AI-audit financiar**](https://auditfinanciar.cafr.ro/wp-content/uploads/2024/07/AF-3-2024-Site.pdf) si multe [altele](https://www.comet.com/site/blog/decoding-the-significance-of-llm-chains-in-llmops/)...

[**Ollama**](https://weaviate.io/developers/weaviate/modules/reader-generator-modules/generative-ollama) poate rula [local](https://www.kdnuggets.com/ollama-tutorial-running-llms-locally-made-super-simple), nu numai pe PC-uri sau laptop-uri ci si pe anumite ***mini-computere*** cum ar fi [**Raspberry**](https://www.kevsrobots.com/blog/ollama)

Uneori, cand construiti un [**RAG**](https://dev.to/dmuraco3/how-to-create-a-local-rag-agent-with-ollama-and-langchain-1m9a) si datele nu sunt diponibile [local](https://python.langchain.com/v0.2/docs/how_to/local_llms/) va trebui sa cautati datele necesare instruirii  pe diverse site-uri, folosind [**crawlere**](https://github.com/iliaschalkidis/LegalCrawler/tree/main)/[cautatori](https://help.oncrawl.com/en/articles/2121166-what-format-can-i-use-for-my-sitemaps) sau daca aveti, daca vreti,  un asa-anumit [**knowledgement-tree**](https://medium.com/@visrow/detect-ai-hallucinations-rag-routing-branching-chaining-a3ec16e42c48)/[**knowledgement-router**](https://www.scribd.com/doc/148944403/Mind-Map-1-Ifrs-10)(stocat intr-un fisier de tip ["map"](https://www.altova.com/mapforce/xml-mapping)/[harta](https://en.wikipedia.org/wiki/Sitemaps) de link-uri utilizata la [rutare](https://en.wikipedia.org/wiki/Site_map)/indrumare, cum ar fi [**.xml**](https://jackwhitworth.com/sitemap.xml) sau in alt tip de container) pt rutarea cautarii va trebui sa-l utilizati recursiv pentru a [parcurge](https://advertools.readthedocs.io/en/master/advertools.sitemaps.html)/naviga prin toate link-urile de acolo si a [colecta](https://jackwhitworth.com/blog/get-xml-sitemap-using-python/) date.

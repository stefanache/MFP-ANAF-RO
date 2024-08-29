Repository: [**Langchain_Ollama_llama3**](https://github.com/duncanodhis/Langchain_Ollama_llama3)

publicat in [Medium](https://medium.com/@ion.stefanache0/langchain-python-client-for-ollama-69f6c24078e2) **@ion.stefanache0**

Am creat un fisier de executie/shell denumit **_Run.bat** pt a simplifica procesul de instalare si rulare

(liniile comentate cu **rem** se decomenteaza pt a fi rulate o singura data si apoi se recomentreaza!)

Daca nu doriti sau nu puteti sa-l utilizati, urmariti aceste indicatii pas cu pas:


README for LangChain-Ollama Application (`Langchain_Ollama_llama3.py`)


***LangChain with Ollama Integration***

<hr/>

This application integrates LangChain with the Ollama LLM to perform various operations, 

such as question-answering(**Q&A**) and other conversational tasks.

 - *Getting Started*

To run this application, ensure you have Python 3.10 or later installed, along with the required dependencies.

 - *Installing Dependencies*

To install the required Python packages, use the following command:

**pip install -r requirements.txt**

 - *Running the Application*

Before running, ensure that the Ollama server is up and running. 

This application interacts with Ollama to generate responses.

To start the LangChain-Ollama application, navigate to the directory containing **Langchain_Ollama_llama3.py** and run:

**python Langchain_Ollama_llama3.py**

<hr/>

***Docker Setup***

If you'd prefer to run the application in a Docker container, follow these steps:

 - *Build the Docker Image:*
**docker build -t langchain_ollama -f Dockerfile .**

 - *Run the Docker Container:*
**docker run langchain_ollama**

<hr/>

***Observatie:***

Mie codul original nu mi-a functionat asa ca am folosit **ChatGPT** in mod repetat pana ce mi-a corectat codul!

Este totusi un proces plictisitor **:)** !!!!

Modelul LLM utilizat este **llama3**

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


Desigur toate aceste comenzi CLI/shell care se refera la serverul **Ollama** vor funciona doar dupa ce in prealabil ati 
descarcat si instalat local serverul **Olama** corespunzator sistemului dvs de operare(in cazul meu **Windows 10 Pro**)

Adresa de decarcare a acestui server care va furniza diversele modele LLM pe care le utilizati este urmatoarea:

[**https://ollama.com/download/windows**](https://ollama.com/download/windows)

O mostra de dialog cu acest ***Chatbot*** este furnizat in fisierul ***exemplu_dialog.txt***.

Daca vreti sa folositi serverul local **Ollama** si un **LLM**(cum ar fi [**llama**](https://github.com/lawwu/awesome-llamas),...) intr-o *alta sarcina*(alta decat simplul dialog de tip *QA*), spre exemplu de [**incadrare pe categorii**](https://github.com/Sachin2495/langchain/tree/main) puteti folosi acest [repos](https://github.com/Sachin2495/langchain/tree/main), ori [**semantic-code-search** - in codebase](https://github.com/fynnfluegge/codeqai)(cda CLI/cmd.exe: **codeqai search**), sau [**financial advisor**](https://medium.com/@renjuhere/llama-3-as-your-financial-advisor-8904a2673f2c), [**AI-audit financiar**](https://auditfinanciar.cafr.ro/wp-content/uploads/2024/07/AF-3-2024-Site.pdf) si multe altele...

[**Ollama**](https://weaviate.io/developers/weaviate/modules/reader-generator-modules/generative-ollama) poate rula [local](https://www.kdnuggets.com/ollama-tutorial-running-llms-locally-made-super-simple), nu numai pe PC-uri sau laptop-uri ci si pe anumite ***mini-computere*** cum ar fi [**Raspberry**](https://www.kevsrobots.com/blog/ollama)

Uneori, cand construiti un RAG si datele nu sunt diponibile local va trebui sa cautati datele necesare instruirii  pe diverse site-uri, folosind [**crawlere**](https://github.com/iliaschalkidis/LegalCrawler/tree/main) sau daca aveti un anumit tree/map(stocat intr-un fisier de tip "map"/harta de link-uri cum ar fi [**.xml**](https://jackwhitworth.com/sitemap.xml) sau in alt tip de container) pt rutarea cautarii va trebui sa-l utilizati recursiv pentru a [parcurge](https://advertools.readthedocs.io/en/master/advertools.sitemaps.html) toate link-urile de acolo si a [colecta](https://jackwhitworth.com/blog/get-xml-sitemap-using-python/) date.

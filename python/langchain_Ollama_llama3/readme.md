Repository: [**Langchain_Ollama_llama3**](https://github.com/duncanodhis/Langchain_Ollama_llama3)

publicat in [Medium](https://medium.com/@ion.stefanache0/langchain-python-client-for-ollama-69f6c24078e2) **@ion.stefanache0**

Am creat un fisier de executie/shell denumit **_Run.bat** pt a simplifica procesul de instalare si rulare

(liniile comentate cu **rem** se decomenteaza pt a fi rulate o singura data si apoi se recomentreaza!)

Daca nu doriti sau nu puteti sa-l utilizati, urmariti aceste indicatii pas cu pas:


README for LangChain-Ollama Application (`Langchain_Ollama_llama3.py`)


***LangChain with Ollama Integration***

<hr/>

This application integrates LangChain with the Ollama LLM to perform various operations, 

such as question-answering(Q&A) and other conversational tasks.

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

Daca vreti sa folositi serverul **Ollama** si un **LLM**(cum ar fi **llama3**) intr-o *alta sarcina*(alta decat simplul dialog de tip *QA*), spre exemplu de [**incadrare pe categorii**](https://github.com/Sachin2495/langchain/tree/main) puteti folosi acest [repos](https://github.com/Sachin2495/langchain/tree/main), ori [**semantic-code-search** - in codebase](https://github.com/fynnfluegge/codeqai)(cda CLI/cmd.exe: **codeqai search**),...

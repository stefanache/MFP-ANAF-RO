Repository: [**Langchain_Ollama_llama3**](https://github.com/duncanodhis/Langchain_Ollama_llama3)

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

Pt a stii daca serverul lucreaza deschideti un browser(ex. Chrome) si vizualizati mesajul de la adresa:

[http://localhost:11434](http://localhost:11434)

O mostra de dialog cu acest ***Chatbot*** este furnizat in fisierul ***exemplu_dialog.txt***.

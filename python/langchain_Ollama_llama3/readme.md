Repository: [**Langchain_Ollama_llama3**](https://github.com/duncanodhis/Langchain_Ollama_llama3)

README for LangChain-Ollama Application (`Langchain_Ollama_llama3.py`)


***LangChain with Ollama Integration***

This application integrates LangChain with the Ollama LLM to perform various operations, 

such as question-answering(Q&A) and other conversational tasks.

*Getting Started*

To run this application, ensure you have Python 3.10 or later installed, along with the required dependencies.

*Installing Dependencies*

To install the required Python packages, use the following command:

**pip install -r requirements.txt**

*Running the Application*

Before running, ensure that the Ollama server is up and running. 

This application interacts with Ollama to generate responses.

To start the LangChain-Ollama application, navigate to the directory containing **Langchain_Ollama_llama3.py** and run:

**python Langchain_Ollama_llama3.py**

*Docker Setup*
If you'd prefer to run the application in a Docker container, follow these steps:

*Build the Docker Image:*
**docker build -t langchain_ollama -f Dockerfile .**

Run the Docker Container:
**docker run langchain_ollama**

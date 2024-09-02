
#https://github.com/ThomasJay/SpeakLLM/blob/main/app.py

from flask import Flask, request
from langchain_community.llms import Ollama
import pyttsx3  # Import pentru TTS
import logging
from concurrent.futures import ThreadPoolExecutor

# Configurare logging Flask
logging.basicConfig(level=logging.DEBUG)

# Inițializare Flask app și LLM
app = Flask(__name__)

# Inițializare model LLaMA3 cu Ollama
cached_llm = Ollama(model="llama3", base_url="http://localhost:11434")

# Inițializare pyttsx3 pentru TTS
engine = pyttsx3.init()

# Executor pentru a rula task-uri în thread-uri separate
executor = ThreadPoolExecutor()

# Dicționar simplu pentru caching
cache = {}

def speak_text(text):
    """Funcție pentru redarea vocală a textului."""
    engine.say(text)
    engine.runAndWait()

@app.route("/llm", methods=["POST"])
def llmPost():
    """Endpoint pentru primirea cererilor POST și returnarea răspunsurilor generate de LLaMA."""
    print("Post /llm called", flush=True)
    json_content = request.json
    query = json_content.get("query")

    # Verifică dacă întrebarea este deja în cache
    if query in cache:
        response = cache[query]
        print("Returning cached response", flush=True)
    else:
        # Rulează inferența în thread separat pentru a nu bloca aplicația
        future = executor.submit(get_response_from_llm, query)
        response = future.result()

        # Cachează răspunsul pentru viitoare cereri similare
        cache[query] = response

    # Redă vocal întrebarea și răspunsul
    speak_text("You asked: " + query)
    speak_text(response)

    # Returnează răspunsul ca JSON
    response_answer = {"answer": response}
    return response_answer

def get_response_from_llm(query):
    """Funcție pentru a obține răspunsul de la LLM cu parametri optimizați."""
    print("Generating response for query: ", query, flush=True)
    
    # Setează parametri de inferență pentru a optimiza performanța
    response = cached_llm.predict(
        query,
        max_tokens=100,  # Limitează lungimea maximă a răspunsului
        temperature=0.7,  # Ajustează temperatura pentru răspunsuri mai rapide
        top_p=0.9,  # Folosește nucleus sampling pentru a accelera inferența
        top_k=40    # Limitează selecția de tokeni la fiecare pas pentru viteză
    )
    return response

def start_app():
    """Funcție pentru a porni aplicația Flask."""
    app.run(host="0.0.0.0", port=8080, debug=True)

if __name__ == "__main__":
    start_app()

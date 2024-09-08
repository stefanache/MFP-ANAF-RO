from langchain_community.llms.llamafile import Llamafile

# Configurarea modelului
llm = Llamafile(model="LLaMA_CPP",temperature=0.1, seed=0)

def get_response(query):
    try:
        response = llm.invoke(query)
        if response:
            print("Response:", response, flush=True)
        else:
            print("No response received.", flush=True)
    except Exception as e:
        print(f"An error occurred: {e}", flush=True)

def stream_response(query):
    try:
        print("Streaming response:")
        for chunks in llm.stream(query):
            print(chunks, end="", flush=True)
    except Exception as e:
        print(f"An error occurred during streaming: {e}", flush=True)
    
    print('end', flush=True)

# Interogări
print("Testing response:")
get_response("Who is Octavia Butler?")
print("Testing streaming:")
stream_response("Tell me a joke")

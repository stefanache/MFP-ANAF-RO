#  https://docs.llamaindex.ai/en/stable/api_reference/llms/ollama/

from llama_index.llms.ollama import Ollama

llm = Ollama(model="llama3", request_timeout=60.0)

response = llm.complete("What is the capital of France?")
print(response)

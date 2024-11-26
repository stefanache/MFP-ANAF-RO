import weaviate

client = weaviate.connect_to_local()


import weaviate.classes as wvc
from weaviate.classes.config import Property, DataType

# Create a new data collection
collection = client.collections.get(
    name = "docs", # Name of the data collection
)

# An example prompt
prompt = "What animals are llamas related to?"

import ollama

# Generate an embedding for the prompt and retrieve the most relevant doc
response = ollama.embeddings(
  model = "all-minilm",
  prompt = prompt,
)

results = collection.query.near_vector(near_vector = response["embedding"],
                                       limit = 1)

data = results.objects[0].properties['text']


prompt_template = f"Using this data: {data}. Respond to this prompt: {prompt}"

# Generate a response combining the prompt and data we retrieved in step 2
output = ollama.generate(
  model = "llama2",
  prompt = prompt_template,
)

print(output['response'])

client.close()
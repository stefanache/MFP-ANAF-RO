documents = [
  "Llamas are members of the camelid family meaning they're pretty closely related to vicuñas and camels",
  "Llamas were first domesticated and used as pack animals 4,000 to 5,000 years ago in the Peruvian highlands",
  "Llamas can grow as much as 6 feet tall though the average llama between 5 feet 6 inches and 5 feet 9 inches tall",
  "Llamas weigh between 280 and 450 pounds and can carry 25 to 30 percent of their body weight",
  "Llamas are vegetarians and have very efficient digestive systems",
  "Llamas live to be about 20 years old, though some only live for 15 years and others live to be 30 years old",
]
import weaviate

client = weaviate.connect_to_local()

import weaviate.classes as wvc
from weaviate.classes.config import Property, DataType

# Create a new data collection
collection = client.collections.create(
    name = "docs", # Name of the data collection
    properties=[
        Property(name="text", data_type=DataType.TEXT), # Name and data type of the property
    ],
)

import ollama

# Store each document in a vector embedding database
with collection.batch.dynamic() as batch:
  for i, d in enumerate(documents):
    # Generate embeddings
    response = ollama.embeddings(model = "all-minilm",
                                 prompt = d)

    # Add data object with text and embedding
    batch.add_object(
        properties = {"text" : d},
        vector = response["embedding"],
    )
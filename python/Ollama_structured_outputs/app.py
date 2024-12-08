print('======START======',flush=True)

from ollama import chat
from pydantic import BaseModel

class Country(BaseModel):
  name: str
  capital: str
  languages: list[str]

response = chat(
  messages=[
    {
      'role': 'user',
      'content': 'Tell me about It.',
    }
  ],
  model='llama3.2',
  format=Country.model_json_schema(),
)

country = Country.model_validate_json(response.message.content)
print(country,flush=True)

print('======1======',flush=True)

# from ollama import chat
# from pydantic import BaseModel

class Pet(BaseModel):
  name: str
  animal: str
  age: int
  color: str | None
  favorite_toy: str | None

class PetList(BaseModel):
  pets: list[Pet]

response = chat(
  messages=[
    {
      'role': 'user',
      'content': '''
        I have two pets.
        A cat named Luna who is 5 years old and loves playing with yarn. She has grey fur.
        I also have a 2 year old black cat named Loki who loves tennis balls.
      ''',
    }
  ],
  model='llama3.1',
  format=PetList.model_json_schema(),
)

pets = PetList.model_validate_json(response.message.content)
print(pets,flush=True)

print('======2======',flush=True)

# from ollama import chat
# from pydantic import BaseModel

# from datetime import datetime
from typing import List, Literal, Optional

class Object(BaseModel):
  name: str
  confidence: float
  attributes: str 

class ImageDescription(BaseModel):
  summary: str
  objects: List[Object]
  scene: str
  colors: List[str]
  time_of_day: Literal['Morning', 'Afternoon', 'Evening', 'Night']
  setting: Literal['Indoor', 'Outdoor', 'Unknown']
  text_content: Optional[str] = None

print('*** 3 - must to be more patient...!****', flush=True)

path = './imags/girl_outdoor_morning.jpeg'

response = chat(
  model='llama3.2-vision',
  format=ImageDescription.model_json_schema(),  # Pass in the schema for the response
  messages=[
    {
      'role': 'user',
      'content': 'Analyze this image and describe what you see, including any objects, the scene, colors and any text you can detect.',
      'images': [path],
    },
  ],
  options={'temperature': 0},  # Set temperature to 0 for more deterministic output
)
image_description = ImageDescription.model_validate_json(response.message.content)
print(image_description,flush=True)
print('======STOP======',flush=True)
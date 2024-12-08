Am testat acest video intitulat [**Structured Outputs with Ollama from Local AI Models - Hands-on Tutorial**](https://www.youtube.com/watch?v=jklzyaN514w) postat de [***Fahd Mirza***](https://www.youtube.com/@fahdmirza)

[**Codul python**](https://www.fahdmirza.com/2024/12/control-llms-output-with-ollama.html) l-am gasi [aici](https://ollama.com/blog/structured-outputs)

Informatii despre [**pydantic**](https://pypi.org/project/pydantic/) puteti gasi aici.

Am folosit Ollama unde am incarcat(*pull*) cele 3 modele necesare acestui proiect

La mine a functionat foarte bine pe PC-ul meu(**HW**: i7,32MB SSD,RTX4060 si **SW**: W1indows 10 Pro, Python 3.10, Ollama 0.5.1)...

Raspunsul ar putea arata astfel:

          https://www.youtube.com/watch?v=jklzyaN514w
          https://www.fahdmirza.com/2024/12/control-llms-output-with-ollama.html
          ======START======
          name='It' capital='I' languages=['English', 'Japanese']
          ======1======
          pets=[Pet(name='Luna', animal='cat', age=5, color='grey', favorite_toy='yarn'), Pet(name='Loki', animal='cat', age=2, color='black', favorite_toy='tennis balls')]
          ======2======
          *** 3 - must to be more patient...!****
          summary='A person with long hair is walking along a fence near a body of water.' objects=[Object(name='person', confidence=0.99, attributes='long hair'), Object(name='fence', confidence=1.0, attributes='metal bars')] scene='outdoors' colors=['red', 'black'] time_of_day='Morning' setting='Unknown' text_content='The image shows a person with long hair walking along a fence near a body of water. The person is wearing a red shirt and black pants, and they are holding onto the fence as they walk. In the background, there is a large body of water, possibly a lake or river, and some trees can be seen in the distance.'
          ======STOP======
          
          Press any key to continue . . .


...sper sa va fie util!

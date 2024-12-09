Am testat acest [video](https://www.fahdmirza.com/) intitulat [**Structured Outputs with Ollama from Local AI Models - Hands-on Tutorial**](https://www.youtube.com/watch?v=jklzyaN514w) postat de [***Fahd Mirza***](https://www.youtube.com/@fahdmirza)

[**Codul python**](https://www.fahdmirza.com/2024/12/control-llms-output-with-ollama.html) l-am gasi [aici](https://ollama.com/blog/structured-outputs)

Informatii despre [**pydantic**](https://pypi.org/project/pydantic/) puteti gasi [aici](https://python.langchain.com/v0.1/docs/modules/model_io/output_parsers/types/pydantic/).

Am folosit server-ul de LLM-uri, ***Ollama***,  unde am incarcat(*pull*) cele 3 modele necesare acestui [proiect](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/Ollama_structured_outputs/app.py):

                              C:\Users\user>ollama list
                              
                              NAME                      ID              SIZE      MODIFIED
                               llama3.2-vision:latest    38107a0cd119    7.9 GB    About an hour ago
                               llama3.1:latest           46e0c10c039e    4.9 GB    About an hour ago
                               llama3.2:latest
                              
                              C:\Users\user>
Modelele **llama3.1** si [**llama3.2**](https://www.fahdmirza.com/2024/11/create-free-local-ai-dungeon-game-with.html) sunt modele conversationale, in timp ce **llama3.2-vision** este un model pt Computer-Vision.(a se revedea [exemplele](https://www.youtube.com/@fahdmirza) postate de catre [**Fahd-Mirza**](https://www.fahdmirza.com/), care utilizeaza astfel de LLM-uri); Modelele *LLM* destinate *Computer Vision*, le veti putea intalni si sub titulatura ***Vison Language Model([VLM](https://www.youtube.com/watch?v=T_D_LFJFVvI))***.


Pentru modelul ***llama3.2-vision***(utilizat pt. extragerea descrierii-textuale dintr-o imagine: **img***2***txt**), am folosit ca imagine de analizat urmatoarea [imagine](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/Ollama_structured_outputs/imags/girl_outdoor_morning.jpeg)...dar, desigur voi puteti descarca oricare [alta](https://www.google.com/search?sca_esv=1b6df71c373af725&rlz=1C1CHBF_enRO1132RO1132&sxsrf=ADLYWILrF8cNj4vyqo3Phzz8_byQm7sLEw:1733664532356&q=morning+outdoor+activities&udm=2&fbs=AEQNm0AuaLfhdrtx2b9ODfK0pnmis1zS4enB7jefi_fubH5nz6ICWh5uGv91yDc_1gBPBe0FH0P0ZVfrH8X) [imagine](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/Ollama_structured_outputs/imags/beach.jpg).

[Proiectul](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/Ollama_structured_outputs/app.py) a [functionat](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/Ollama_structured_outputs/_RUN.bat) foarte bine pe PC-ul meu(**HW**: i7-8700 , CPU @ 3.2GHz, 6 COREs, 12 LPs; 32GB SSD; GPU=RTX4060/8GB si **SW**: Windows 10 Pro, Python 3.10, [Ollama](https://ollama.com/download/windows) 0.5.1)...

Raspunsul, in format *JSON*(de fapt sunt 3 tabele, usor aranjate de mine pt o mai buna/usoara vizibilitate/citire), ar putea arata astfel:

          https://www.youtube.com/watch?v=jklzyaN514w
          https://www.fahdmirza.com/2024/12/control-llms-output-with-ollama.html
          ======START======
          name='It' 
          capital='I' 
          languages=['English', 'Japanese']
          ======1======
          pets=[
            Pet(name='Luna', animal='cat', age=5, color='grey',  favorite_toy='yarn'), 
            Pet(name='Loki', animal='cat', age=2, color='black', favorite_toy='tennis balls')
            ]
          ======2======
          *** 3 - must to be more patient...!****
          summary='A person with long hair is walking along a fence near a body of water.' 
          objects=[
            Object(name='person', confidence=0.99, attributes='long hair'), 
            Object(name='fence',  confidence=1.0,  attributes='metal bars')
            ] 
          scene='outdoors' 
          colors=['red', 'black']
          time_of_day='Morning' 
          setting='Unknown' 
          text_content='The image shows a person with long hair walking along a fence near a body of water. 
                        The person is wearing a red shirt and black pants, and they are holding onto the fence as they walk. 
                        In the background, there is a large body of water, possibly a lake or river, and some trees can be seen i
                        n the distance.'
          ======STOP======
          
          Press any key to continue . . .


...sper sa va fie util!

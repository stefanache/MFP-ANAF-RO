Server-ul Ollama uneori s-a dovedit a fi prea lent. 

In plus as fi dorit ceva specializat in descrierea imaginilor. 

Asa ca am decis sa creez un workshop cu serverul llamafile sub sistemul de operare Windows 10(Pro).

Despre [descarcarea fisierului](https://github.com/Mozilla-Ocho/llamafile): 

  - [**llava-v1.5-7b-q4.llamafile?download=true**](https://huggingface.co/Mozilla/llava-v1.5-7b-llamafile/resolve/main/llava-v1.5-7b-q4.llamafile?download=true) 

puteti citi [aici](https://python.langchain.com/v0.2/docs/integrations/llms/llamafile/)

Dupa descarcare/download-are, modificati/redenumiti extensia fisierului din [**llava-v1.5-7b-q4.llamafile?download=true**](https://huggingface.co/Mozilla/llava-v1.5-7b-llamafile/resolve/main/llava-v1.5-7b-q4.llamafile?download=true) in **llava-v1.5-7b-q4llamfile.exe** pt a deveni/a fi recunoscut ca executabil de catre sistemul windows.

Rularea server-ului se va face cu dublu-click pe fisierul [**_1.RUN_server.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/_1.RUN_server.bat) care va rula [**app.py**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/app.py)

Asteptati finalizarea incarcarii si rularii serverului ca mai apoi sa puteti folosi din Browser adresa **http://localhost:8080/** unde veti putea transmite mesaje. Apoi minimizati fereastra in bara dar nu o inchideti pt ca serverul trebuie sa ramana in functiune.

Dupa ce aveti serverul llamafile in functiune puteti rula clientul dublu-clikand fisierul [**_2.RUN_client_request_image.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/_2.RUN_client_request_image.bat)



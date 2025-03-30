***Salut***!

As dori sa incercam sa intelegem urmatoarea [poveste](https://github.com/natthasath/demo-python-fastapi-uvicorn): [Preparing FastAPI for Production: A Comprehensive Guide](https://medium.com/@ramanbazhanau/preparing-fastapi-for-production-a-comprehensive-guide-d167e693aa2b)

Pentru inceput, hai sa privim imaginea urmatoare(care descrie o arhitectura-FastAPI reala/de productie):

<a href="https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2F%40ramanbazhanau%2Fpreparing-fastapi-for-production-a-comprehensive-guide-d167e693aa2b&psig=AOvVaw0hvbabf5cs3c0U36SjPkor&ust=1743351507867000&source=images&cd=vfe&opi=89978449&ved=0CBgQjhxqFwoTCMDsxc_Yr4wDFQAAAAAdAAAAABBL"><img src="https://miro.medium.com/v2/resize:fit:4800/format:webp/1*CY5GdTAj1xz85qKz3PRjDg.png"></img></a>

O prima observatie ar fi ca in imagine nu apare **GraphQL**, dar cu putin efort de imaginatie putem presupune ca acesta exista undeva in partea de livrare date sa spunem dintr-o baza de date(BD care apare in figura),

O a 2-a observatie ar fi ca in schema-arhitecturala apare pe fiecare segment-arhitectural o monitorizare a procesului de productie.
De aceasta parte de monitorizare vom face abstractie(nu ne vom ocupa) deoarece in acest topic doresc sa ma concentrez pe clarificarea conceptelor **FastAPI** si **GraphQL**.

Pana sa ajungem sa intelegem aceasta imagine as dori sa pregatim/explicam cativa termeni ai discutiei:

[wiki: **Reverse-Proxy**](https://en.wikipedia.org/wiki/Reverse_proxy)
<br/>Nginx poate juca mai multe roluri dar in imaginea de mai sus, acesta joaca rolul de / este un **Reverse-Proxy**(un proxy invers, sau un intermediar-invers).
Ratiunea existentei acestuia in aceasta arhitectura(expusa mai sus) este acea de a putea scala(de a distribui cererea-utilizator catre unul dintre webservere-le din pool-ul de servere-web pe care le utilizam/le avem la dispozitie  in procesul de productie)

**GraphQL** este un limbaj de interogare pentru *API*-ul dvs. care permite clienților să solicite exact datele de care au nevoie și nimic mai mult. 
<br/>A fost dezvoltat de ***Facebook*** și este folosit acum de multe companii populare, cum ar fi ***GitHub***, ***Airbnb*** și ***Twitter***.

[**FastAPI**](https://python3.info/fastapi/fastapi/about-architecture.html) este un cadru web modern, rapid (de înaltă performanță), pentru construirea de *API*-uri cu ***Python 3.6+*** bazat pe indicii standard de tip *Python*. 
<br/>Una dintre caracteristicile cheie/importante ale [**FastAPI**](https://medium.com/@ramanbazhanau/preparing-fastapi-for-production-a-comprehensive-guide-d167e693aa2b) este suportul pentru documentarea automată folosind *OpenAPI* și *Swagger-UI*.
 
 <br/>*Ce este [**Uvicorn**](https://www.geeksforgeeks.org/fastapi-uvicorn/)?*<br/>
**UVICORN** este o implementare de server-web/webserver [***ASGI***](https://mirror.xyz/0xA1d9f681B25C14C1eE7B87f1CF102E73cA3ad4d9/n0BdWSd_GdP_Vfeped02zBcNV5XbzITThILlRditoPk) (Asynchronous Server Gateway Interface) adaptată pentru Python . <br/>Înainte de ***ASGI***, lui Python îi lipsea o interfață minimă de server de nivel scăzut pentru cadrele asincrone(asa cum este *FastAPI*). <br/>Specificația ***ASGI*** acționează ca o punte(gateway), permițând crearea unui set comun de instrumente utilizabile în toate cadrele asincrone(asa cum este *FastAPI*). <br/>**UVICORN** oferă în prezent suport pentru *HTTP/1.1* și *WebSockets*.<br/>
**Uvicorn** este un server-web ***ASGI*** super rapid. 
<br/>**Uvicorn** rulează cod-Python asincron bazat pe [**uvloop**](https://mirror.xyz/0xA1d9f681B25C14C1eE7B87f1CF102E73cA3ad4d9/n0BdWSd_GdP_Vfeped02zBcNV5XbzITThILlRditoPk) într-un singur proces(**Uvicorn** si **uvloop** formeaza impreuna un singur proces).

[Asadar](https://github.com/natthasath/demo-python-fastapi-uvicorn), **FastAPI** și **Uvicorn** sunt instrumente pentru construirea de aplicații-web. 
<br/>**FastAPI** este un cadru-web pentru construirea de API-uri cu Python, în timp ce **Uvicorn** este un server-***ASGI*** pentru servirea acestor API-uri. 
<br/>Împreună, acestea oferă o modalitate puternică și eficientă de a construi și rula aplicații-web în Python.

In aceasta sectiune ne vom ocupa de [**FastAPI**](https://fastapi.tiangolo.com/) si [**GraphQL**](https://graphql.org/) si voi expune cateva [link](https://www.google.com/search?q=FastAPI+GraphQL&sca_esv=7bada7996407e364&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zpMdy_igG3Q1yx_vq9RrAQpc5Yplg%3A1743252620260&ei=jOznZ4fLD7yHxc8Ppva_-Q8&ved=0ahUKEwiHwbyJqq-MAxW8Q_EDHSb7L_8Q4dUDCBA&uact=5&oq=FastAPI+GraphQL&gs_lp=Egxnd3Mtd2l6LXNlcnAiD0Zhc3RBUEkgR3JhcGhRTDIKECMYgAQYJxiKBTIGEAAYBxgeMgYQABgHGB4yCBAAGIAEGMsBMggQABiABBjLATIIEAAYgAQYywEyBBAAGB4yBhAAGAoYHjIEEAAYHjIEEAAYHki-HVAAWJcUcAB4AZABAJgBkgGgAYMIqgEDMC44uAEDyAEA-AEBmAIIoAKbCMICBxAjGLACGCfCAgcQABiABBgNwgIIEAAYBxgKGB7CAggQABgTGAcYHsICChAAGBMYBxgKGB6YAwCSBwMwLjigB9Q3&sclient=gws-wiz-serp)-uri, legate de aceste 2 subiecte, pe care le-am [intalnit](https://fastapi.tiangolo.com/how-to/graphql/) si le-am considerat [interesante](https://medium.com/@ryk.kiel/graphql-and-fastapi-the-ultimate-combination-for-building-apis-with-python-f4391bf5505c):

 - [geeks4geeks: FastAPI using GraphQL](https://www.geeksforgeeks.org/fastapi-using-graphql/); [uvicorn](https://www.uvicorn.org/); [reddit: uvicorn rol](https://www.reddit.com/r/Python/comments/74rsi8/noob_question_what_is_the_role_of_uvloopuvicorn/?tl=ro); [reddit: FastAPI/uvicorn eroare](https://www.reddit.com/r/html5/comments/14n68fc/im_trying_to_access_an_api_i_built_with_python/?tl=ro)
   <br/>*Atentie*: In codul-Python, inlocuiti string-ul HTML ***&quot;***(*specific HTML!*) cu caracterul **"**, in toate aparitiile sale din sursele-scripturilor-Python!
 - [geeks4geeks: FastAPI+uvicorn](https://www.geeksforgeeks.org/fastapi-uvicorn/)(*UVICORN*, **ASGI** vs. ***WSGI***)
   <br/>compare: [**ASGI**](https://derlin.github.io/introduction-to-fastapi-and-celery/02-fastapi/) vs. ***WSGI*** :<br/>
**ASGI** reprezintă un progres semnificativ față de ***WSGI***(Web Server Gateway Interface). <br/>În timp ce ***WSGI*** este conceput pentru aplicații unice, sincrone, care gestionează o solicitare și returnează un răspuns, nu acceptă conexiuni de lungă durată, cum ar fi conexiunile WebSocket. <br/>În schimb, **ASGI** este asincron și acceptă trei argumente:
<br/>*Domeniu de aplicare* : un dicționar Python care conține detalii despre conexiunea specifică.
<br/>*Trimitere* : Permite aplicației să trimită mesaje de eveniment către client.
<br/>*Primire* : Permite aplicației să primească mesaje de eveniment de la client.
<br/>**ASGI** permite mai multe evenimente de intrare și de ieșire pentru fiecare aplicație simultan, permițând aplicației să rămână receptivă la intrarea utilizatorului în timp ce rutinele de fundal(background) rulează.<br/>
 - [geeks4geeks: install FastAPI and run your first FastAPI-server on Windows](https://www.geeksforgeeks.org/install-fastapi-and-run-your-first-fastapi-server-on-windows/):
   <br> *Q*uestion: *How really install and run **FastAPI**(ASGI-server) under Windows?*
   <br/>*A*nswer:
    - open powershell(PS): *C:\Users\{your_user}>* **powershell**
      <br/>or directly in *command-prompt(CLI-shell)*!
    - edit the ***main.py***: *C:\Users\{your_user}>* **notepad main.py**
    - for **ASGI**-server, must enter the python script-code content into ***main.py***:
      <pre><code>
          from fastapi import FastAPI
          
          app = FastAPI()
          
          @app.get("/")
          def read_root():
              return {"Hello World"}</code></pre>
    - save content into ***main.py*** file and exit
    - start Chrome client(in advance): *C:\Users\{your_user}>* **start Chrome  http://127.0.0.1:8000**
    - run main with command: *C:\Users\{your_user}>* **python -m uvicorn main:app --reload**
    - finally, refresh the Chrome-browser(***if need!***):  **http://127.0.0.1:8000**  or [**CTRL+click**](https://www.google.com/search?q=python+fastapi+asgi+uvicorn&sca_esv=494e1c439a30236c&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGlsodhGu4F1UEhEeTehlBu7020oMQ7aBpF-aNynCVlndtbfCZRhMFm3EMvvoT1HX4IciFaWA5nwCzTGM3J5Ops_Xs3Qsyy25b7oXKA6pwLn7v3BVIeFZNT4VQLrCm95iJdb7dujTNJ5GnMNaNfzjPvAKt0ZRu9K2iZ-Q6AMCXqjDwXwmZXdWHAjlIOmWPqCQX83g_bDPg&sxsrf=AHTn8zqFyWp9Uzf2gwsRAiWQr4r-78falQ%3A1743265069160&ei=LR3oZ4G5Cc6Qxc8P6KylkA0&ved=0ahUKEwjBg8m52K-MAxVOSPEDHWhWCdIQ4dUDCBE&uact=5&oq=python+fastapi+asgi+uvicorn&gs_lp=EgNpbWciG3B5dGhvbiBmYXN0YXBpIGFzZ2kgdXZpY29ybkirHlC1C1iUGnABeACQAQCYAX2gAa8GqgEDMC43uAEDyAEA-AEBmAIAoAIAmAMAiAYBkgcAoAe7Ag&sclient=img) on it/this link from/in above after-running-message!
    <br/><br/>***Note***: alternatively, for running the **ASGI**-webserver, you can download the files ***main.py*** and ***_RUN.bat*** and then, run that second file(***_RUN.bat***) under *command-prompt(CLI-shell)*! <br/>
 - [testDriven: FastAPI-GraphQL](https://testdriven.io/blog/fastapi-graphql/)
 - [getOrchestra: FastAPI with uvicorn -a comprehensive tutorial](https://www.getorchestra.io/guides/fastapi-with-uvicorn-a-comprehensive-tutorial); [uvicorn: deployment](https://www.uvicorn.org/deployment/)
 - [reddit: FastAPI+uvicorn on Windows](https://www.reddit.com/r/learnpython/comments/15yf538/fastapiuvicorn_on_windows/); [ChatGPT: from PowerShell(ps) you can call the **uvicorn** to run the ***main.py*** file](https://chatgpt.com/share/67e7f89e-ae6c-800b-b88b-72e03ea14582)
 - [tiangolo: FastAPI deployment-concepts](https://fastapi.tiangolo.com/deployment/concepts/)
 - [stackoverflow: FastAPI Gunicorn-Uvicorn for(4) production-deployment with Google-Cloud-Run(GCR) stress](https://stackoverflow.com/questions/66254371/fastapi-gunicorn-uvicorn-for-production-deployment-with-google-cloud-run-stress)
 - [GH-hamedasgari20: Python Django FastAPI - advanced topics](https://github.com/hamedasgari20/Python-Django-FastAPI-advanced-topics); [ex. ChatGPT](https://chatgpt.com/share/67e91cfd-e6f0-800b-8e47-fe6c4af9402f); [tailWindCSS](https://tailwindcss.com/docs/hover-focus-and-other-states); [Django: dynamic-filter](https://www.youtube.com/watch?v=n1_MQiSXyxw&ab_channel=JustDjango); [Django with uvicorn](https://docs.djangoproject.com/en/5.1/howto/deployment/asgi/uvicorn/); [djangoProject-docs-deployment-ASGI: Flask vs. Django vs. FastAPI](https://docs.djangoproject.com/en/5.1/howto/deployment/asgi/uvicorn/)
 - [dev.to-akarshan: converting any Python web-framework to FastAPI a comprehensive-guide](https://dev.to/akarshan/converting-any-python-web-framework-to-fastapi-a-comprehensive-guide-291b)
 - [Dockerizing FastAPI with Postgres, Uvicorn, and Traefik](https://testdriven.io/blog/fastapi-docker-traefik/)

***Salut***!

As dori sa incercam sa intelegem urmatoarea [poveste](https://github.com/natthasath/demo-python-fastapi-uvicorn): [Preparing FastAPI for Production: A Comprehensive Guide](https://medium.com/@ramanbazhanau/preparing-fastapi-for-production-a-comprehensive-guide-d167e693aa2b)

Pentru inceput, hai sa privim imaginea urmatoare(care descrie o arhitectura-**FastAPI** reala/de productie):

<details>
 <summary>arhitectura-FastAPI reala/de productie</summary>
 
<a href="https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2F%40ramanbazhanau%2Fpreparing-fastapi-for-production-a-comprehensive-guide-d167e693aa2b&psig=AOvVaw0hvbabf5cs3c0U36SjPkor&ust=1743351507867000&source=images&cd=vfe&opi=89978449&ved=0CBgQjhxqFwoTCMDsxc_Yr4wDFQAAAAAdAAAAABBL"><img src="https://miro.medium.com/v2/resize:fit:4800/format:webp/1*CY5GdTAj1xz85qKz3PRjDg.png"></img></a>

</details>


O prima observatie ar fi ca in imagine nu apare **GraphQL**, dar cu putin efort de imaginatie putem presupune ca acesta exista undeva in partea de livrare date sa spunem dintr-o baza de date(BD care apare in figura),

O a 2-a observatie ar fi ca in schema-arhitecturala apare pe fiecare segment-arhitectural o monitorizare a procesului de productie.
De aceasta parte de monitorizare vom face abstractie(nu ne vom ocupa) deoarece in acest topic doresc sa ma concentrez pe clarificarea conceptelor **FastAPI** si **GraphQL**.

Pana sa ajungem sa intelegem aceasta imagine as dori sa pregatim/explicam cativa termeni ai discutiei:

<details>
<summary>Termeni-pregatitori: detalii </summary>
 
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

</details>
 
In aceasta sectiune ne vom ocupa de [**FastAPI**](https://fastapi.tiangolo.com/) si [**GraphQL**](https://graphql.org/) si voi expune cateva [link](https://www.google.com/search?q=FastAPI+GraphQL&sca_esv=7bada7996407e364&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zpMdy_igG3Q1yx_vq9RrAQpc5Yplg%3A1743252620260&ei=jOznZ4fLD7yHxc8Ppva_-Q8&ved=0ahUKEwiHwbyJqq-MAxW8Q_EDHSb7L_8Q4dUDCBA&uact=5&oq=FastAPI+GraphQL&gs_lp=Egxnd3Mtd2l6LXNlcnAiD0Zhc3RBUEkgR3JhcGhRTDIKECMYgAQYJxiKBTIGEAAYBxgeMgYQABgHGB4yCBAAGIAEGMsBMggQABiABBjLATIIEAAYgAQYywEyBBAAGB4yBhAAGAoYHjIEEAAYHjIEEAAYHki-HVAAWJcUcAB4AZABAJgBkgGgAYMIqgEDMC44uAEDyAEA-AEBmAIIoAKbCMICBxAjGLACGCfCAgcQABiABBgNwgIIEAAYBxgKGB7CAggQABgTGAcYHsICChAAGBMYBxgKGB6YAwCSBwMwLjigB9Q3&sclient=gws-wiz-serp)-uri, legate de aceste 2 subiecte, pe care le-am [intalnit](https://fastapi.tiangolo.com/how-to/graphql/) si le-am considerat [interesante](https://medium.com/@ryk.kiel/graphql-and-fastapi-the-ultimate-combination-for-building-apis-with-python-f4391bf5505c):

<details>
 <summary>Link-uri interesante legate de <b>FastAPI</b> si/sau <b>GraphQL</b>...detalii</summary>
 - [geeks4geeks: **FastAPI** using ***GraphQL***](https://www.geeksforgeeks.org/fastapi-using-graphql/); [uvicorn](https://www.uvicorn.org/); [reddit: uvicorn rol](https://www.reddit.com/r/Python/comments/74rsi8/noob_question_what_is_the_role_of_uvloopuvicorn/?tl=ro); [reddit: FastAPI/uvicorn eroare](https://www.reddit.com/r/html5/comments/14n68fc/im_trying_to_access_an_api_i_built_with_python/?tl=ro)
   <br/>*Atentie*: In codul-Python, inlocuiti string-ul HTML ***&quot;***(*specific HTML!*) cu caracterul **"**, in toate aparitiile sale din sursele-scripturilor-Python!
 - [geeks4geeks: **FastAPI**+uvicorn](https://www.geeksforgeeks.org/fastapi-uvicorn/)(*UVICORN*, **ASGI** vs. ***WSGI***)
   <br/>compare: [**ASGI**](https://derlin.github.io/introduction-to-fastapi-and-celery/02-fastapi/) vs. ***WSGI*** :<br/>
**ASGI** reprezintă un progres semnificativ față de ***WSGI***(Web Server Gateway Interface). <br/>În timp ce ***WSGI*** este conceput pentru aplicații unice, sincrone, care gestionează o solicitare și returnează un răspuns, nu acceptă conexiuni de lungă durată, cum ar fi conexiunile WebSocket(WS). <br/>În schimb, **ASGI** este asincron și acceptă trei argumente:
<br/>*Domeniu de aplicare* : un dicționar Python care conține detalii despre conexiunea specifică.
<br/>*Trimitere* : Permite aplicației să trimită mesaje de eveniment către client.
<br/>*Primire* : Permite aplicației să primească mesaje de eveniment de la client.
<br/>**ASGI** permite mai multe evenimente de intrare și de ieșire pentru fiecare aplicație simultan, permițând aplicației să rămână receptivă la intrarea utilizatorului în timp ce rutinele de fundal(background) rulează.<br/>
 - [geeks4geeks: install **FastAPI** and run your first **FastAPI**-server on Windows](https://www.geeksforgeeks.org/install-fastapi-and-run-your-first-fastapi-server-on-windows/):
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

 - [testDriven: **FastAPI**-***GraphQL***](https://testdriven.io/blog/fastapi-graphql/)
 - [getOrchestra: **FastAPI** with uvicorn -a comprehensive tutorial](https://www.getorchestra.io/guides/fastapi-with-uvicorn-a-comprehensive-tutorial); [uvicorn: deployment](https://www.uvicorn.org/deployment/)
 - [redDit: **FastAPI**+uvicorn on Windows](https://www.reddit.com/r/learnpython/comments/15yf538/fastapiuvicorn_on_windows/); [ChatGPT: from PowerShell(ps) you can call the **uvicorn** to run the ***main.py*** file](https://chatgpt.com/share/67e7f89e-ae6c-800b-b88b-72e03ea14582)
 - [tiangolo: **FastAPI** deployment-concepts](https://fastapi.tiangolo.com/deployment/concepts/)
 - [stackOverflow: **FastAPI** Gunicorn-Uvicorn for(4) production-deployment with Google-Cloud-Run(GCR) stress](https://stackoverflow.com/questions/66254371/fastapi-gunicorn-uvicorn-for-production-deployment-with-google-cloud-run-stress)
 - [GH-hamedasgari20: Python Django **FastAPI** - advanced topics](https://github.com/hamedasgari20/Python-Django-FastAPI-advanced-topics); [ex. ChatGPT](https://chatgpt.com/share/67e91cfd-e6f0-800b-8e47-fe6c4af9402f); [tailWindCSS](https://tailwindcss.com/docs/hover-focus-and-other-states); [Django: dynamic-filter](https://www.youtube.com/watch?v=n1_MQiSXyxw&ab_channel=JustDjango); [Django with uvicorn](https://docs.djangoproject.com/en/5.1/howto/deployment/asgi/uvicorn/); [djangoProject-docs-deployment-ASGI: Flask vs. Django vs. **FastAPI**](https://docs.djangoproject.com/en/5.1/howto/deployment/asgi/uvicorn/)
 - [dev.to-akarshan: converting any Python web-framework to FastAPI a comprehensive-guide](https://dev.to/akarshan/converting-any-python-web-framework-to-fastapi-a-comprehensive-guide-291b)
 - [Dockerizing **FastAPI** with Postgres, Uvicorn, and Traefik](https://testdriven.io/blog/fastapi-docker-traefik/)
 - [Uvicorn & Gunicorn](https://mirror.xyz/0xA1d9f681B25C14C1eE7B87f1CF102E73cA3ad4d9/n0BdWSd_GdP_Vfeped02zBcNV5XbzITThILlRditoPk)
 - [whitePrompt-blog: Python APIs with **FastAPI** key-features and CRUD-example](https://blog.whiteprompt.com/python-apis-with-fastapi-key-features-and-crud-example-198a7530e368)
 - [daddYnKidsMaker-blogspot: **FastAPI** Open-API](https://daddynkidsmakers.blogspot.com/2024/04/fastapi-open-api.html)
   <br/>Acest articol ["**FastAPI** bigData-server example"](https://github.com/mac999/fastapi_bigdata_server_example/tree/main) prezintă cum să dezvoltați cu ușurință un server [Open-API](https://en.wikipedia.org/wiki/Open_API) bazat pe **FastAPI**, Uvicorn și Websocket(WS).
   <br/>Folosind **FastAPI**, puteți dezvolta un server [Open-API](https://en.wikipedia.org/wiki/OpenAPI_Specification)(a.k.a/previously known as/formerly *Swagger-Specification*) foarte ușor.

<details>

 <summary>Arhitectura acestui caz-de-utilizare <b>FastAPI</b></summary>

<a href = "https://daddynkidsmakers.blogspot.com/2024/04/fastapi-open-api.html"><img src="https://blogger.googleusercontent.com/img/a/AVvXsEgl-1NYO89p82JNrjYFUqHPVeS7mJlBixf-_l6CsOt506LaV08PkHMPyXvRIURtr0-m9vxeuJGsALhy7WdkQzLRKDwPnA3ueX0OXMuUo6JVBN8KTFSQqmx3DwAQ_CESjvo7DdFWlMBznhdzyRunD1f-sYJpwP_j_NLVy8GoI9UvmhnaFyEkLcRkftOXTLdU=w400-h225">Arhitectura acestui caz-de-utilizare **FastAPI**</img></a> 
 
 </details>
 
 [( Prof Ai | Devpost )](https://devpost.com/software/prof-ai)

   <br/>**FastAPI** acceptă servere API-asincrone și poate fi rulat folosind servere ASGI, cum ar fi uvicorn(ASGI-server).
   <br/>Acest lucru permite o performanță-rapidă și o procesare-asincronă.
   <br/>Documentația automată, interactivă API este, de asemenea, furnizată(cf specificatiei Open-API) pentru a ajuta dezvoltatorii să înțeleagă și să utilizeze cu ușurință API-ul.
   <br/>**FastAPI** funcționează bine cu următoarele cadre-de-aplicații web(web-apps-frameworks): Flask și Django.
   
  - [Daddy Makers: Cum să dezvoltați un server web simplu Flask, mysql, bazat pe Python Open API](https://daddynkidsmakers.blogspot.com/2020/09/django-flask-open-api.html)
  - [Daddy Makers: Dezvoltarea unei aplicații web de tablou de bord simplu folosind Django](https://daddynkidsmakers.blogspot.com/2024/02/django.html)
   
   <br/>Instalarea pachetului este după cum urmează: **pip install fastapi aiohttp uvicorn**

  - [Building APIs using **FastAPI** with Django](https://www.geeksforgeeks.org/building-apis-using-fastapi-with-django/)
  - [Building a Machine Learning(ML)-Web-Application Integrating **FastAPI** with GCP and Docker Python](https://wire.insiderfinance.io/building-a-machine-learning-web-application-integrating-fastapi-with-gcp-and-docker-python-5439aa27cc1b)

<details>
 
<summary>Deployment Pattern</summary>
  
<a href="https://miro.medium.com/v2/resize:fit:720/format:webp/1*5JMvIcBZhlJsny7s0NHbow.png" style="a img { display:none; }; a:hover img { display:block; }"><img src="https://miro.medium.com/v2/resize:fit:640/format:webp/1*hmn9gN0uxjE7cRQQ_d7qVw.png">Deployment Pattern</img></a>

</details>
 
  - [deadBear.io" easy **FastAPI**-setUp](https://www.deadbear.io/easy-fastapi-setup/)
  -[GH-jahoy: **FastAPI** backend demo](https://github.com/jahoy/fastapi-backend-demo)
  - [medium@upesh.jindal: SSE with **FastAPI**](https://medium.com/@upesh.jindal/server-sent-events-with-fastapi-ab9ed99ccac4)
  - [devOps-blog: Implementing Server-Sent-Events(SSE) with **FastAPI**, Nginx and CloudFlare(CF)](https://blog.devops.dev/implementing-server-sent-events-with-fastapi-nginx-and-cloudflare-10ede1dffc18)
  - [medium@nandagopal05: SSE with py-**FastAPI**](https://medium.com/@nandagopal05/server-sent-events-with-python-fastapi-f1960e0c8e4b)
  - [CF-blog: How we built it -  the technology(see **FastAPI**) behind CF Radar 2.0 Web-App](https://blog.cloudflare.com/technology-behind-radar2/)
  - [VScode: python tutorial **FastAPI**](https://code.visualstudio.com/docs/python/tutorial-fastapi)
  - [shakuro-blog: Choosing the Right Web Development Framework - **FastAPI**(are totul in aceiasi cutie: WS si SSE) vs. Flask](https://shakuro.com/blog/fastapi-vs-flask)
  - [turing: **FastAPI**-vs-Flask a detailed-comparison](https://www.turing.com/kb/fastapi-vs-flask-a-detailed-comparison)
  - [YT-Te3ch aith Tim: **FastAPI**, Flask or Django - Which Should You Use?](https://www.youtube.com/watch?v=cNlJCQHSmbE&ab_channel=TechWithTim)
  - [medium-princyprakash: Real-Time(RT)-communication with SSE in **FastAPI** <br> - enhancing task-processing efficiency(îmbunătățirea eficienței procesării sarcinilor)](https://princyprakash.medium.com/real-time-communication-with-sse-in-fastapi-enhancing-task-processing-efficiency-bc8ba9b3c29f)
  - [towardsAI-pub: **FastAPI**(REST-api backend) template for LLM-SaaS(Quivr) part-1  - Auth(Supabase+**FastAPI**) and File-upload(Supabase)](https://pub.towardsai.net/fastapi-template-for-llm-saas-part-1-auth-and-file-upload-6bada9778139)
   <br/>(Redis=PubSub message-Broker, serverul Celery pt long-time task running - Task-ex.: încorporarea unui document PDF mare , Supabase=DB-server) or [part-1](https://pub.towardsai.net/fastapi-template-for-llm-saas-part-1-auth-and-file-upload-6bada9778139); [part-2: celery-and-pg-vector](https://towardsai.net/p/l/fastapi-template-for-llm-saas-part-2-celery-and-pg-vector) or [part-2](https://euclideanai.substack.com/p/fastapi-supabase-template-for-llm-941); [part-3](https://medium.com/@euclideanai/nextjs-fastapi-template-for-saas-part3-38fdc3f72b31); [**FastAPI**-SaaS boilerplate-code](https://github.com/philipokiokio/FastAPI_SAAS_Template)
  - [YT-KrishNaik: 3-Langchain Series-Production Grade Deployment LLM As API With Langchain And **FastAPI**](https://www.youtube.com/watch?v=XWB5DXP-DO8&ab_channel=KrishNaik)
  - [medium@velocityTech: Build an event-driven architecture with **FastAPI**(event-server) and Redis(broker-PubSub) pub-sub deploy it in Kubernetes(K8s)](https://medium.com/@velocitytech/build-an-event-driven-architecture-with-fastapi-and-redis-pub-sub-deploy-it-in-kubernetes-54603ac35335)
  - [medium-dataDrivenInvestor: Part-1 managing lifeSpan events in **FastAPI** with Redis example](https://medium.datadriveninvestor.com/part-1-managing-lifespan-events-in-fastapi-with-redis-example-a63db39bc5eb)
  - [medium-@davidrp1996: Bulding a notifications-system with server-sent-events(SSE) using **FastAPI** and Redis](https://medium.com/@davidrp1996/bulding-a-notifications-system-wih-server-sent-events-sse-using-fastapi-and-redis-6eafdf7cf7fb)
  - [stackAdemic-blog: Building a ***GraphQL***-api with **FastAPI** - complete guide from installation to running the api](https://blog.stackademic.com/building-a-graphql-api-with-fastapi-complete-guide-from-installation-to-running-the-api-673e95614732)
  - [medium@nandagopal05: Server-Sent Events(SSE) with Python **FastAPI**](https://medium.com/@nandagopal05/server-sent-events-with-python-fastapi-f1960e0c8e4b)
  - [...](https://www.google.com/search?sca_esv=e8d80f20730efe45&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zrH1441tkETzrmbU4dqAEckC7ivBg:1743781077100&q=FastAPI+nginx+graphQL+SSE+Redis&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGlsodhGu4F1UEhEeTehlBu7054EL_QJMdNdFZCQTI4PnEhBMh4C_0EHSVUHxJLcclisNm4b4EldR9h-pvMPn6xw2y2G7sjuE9dhTjGAdCf-64t1-bdWmIq-Lt3WphpmsUQjNUmoTzATkh99SjBMl9gfohc5yMM211WIg2yZwLTCX72_HMe-vRp4eFhBfs-YXqvr3mHDkw&sa=X&ved=2ahUKEwj4oKrd2r6MAxX9Q_EDHQIOBx8QtKgLegQIEBAB&biw=1735&bih=721&dpr=1)

</details>

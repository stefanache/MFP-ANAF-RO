***Salut***!

Pentru lansarea in productie a unui [**Web-API**-*server*](https://fastapi.tiangolo.com/deployment/manually/#server-machine-and-server-program), inainte de orice, ai nevoie de un cadru-de lucru(asa cum este [***FastAPI***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/FastAPI_GraphQL/benchmarks.jpeg), server-**Web-API** care in mod obligatoriu trebuie sa fie acompaniat de un ***ASGI***-server, gen [*Uvicorn*](https://www.uvicorn.org/))... care sa *expuna* utilizatorilor-web dar mai ales sa *controleze* resursele *Aplicatiei* noastre(API-ul APP-ului fiind de fapt livratorul de resurse-locale catre utilizatorii sai, aflati la distanta/in internet!).

Resursele controlate/deservite de catre **Web-API**-ul *aplicatiei/proiectului* nostr[e/u] pot fi variate(in functie de specificul *Aplicatiei*):

 - *Baze-de-date*, gestionate/interogate prin cereri-[*SQL*](https://jacob-t-graham.com/2024/03/01/learning-fastapi-and-sqlmodel-for-api-development/) sau prin cereri-[*GraphQL*](https://thepythoncode.com/article/build-a-graphql-api-with-fastapi-strawberry-and-postgres-python)
 - *Fisiere*(upload and download de fisiere cu/fara server-de-fisiere=*fileServer*)
 - diverse alte *resurse-AI* expuse via unui *server-MCP*(deci [**FastAPI**](https://fastapi.tiangolo.com/deployment/manually/#use-the-fastapi-run-command) va  trebui sa includa un *client-MCP*),
   <br/>Baze de date vectoriale(*VDB*) dar si ...
   <br/>*resurse-ML/DL/DNN/CNN...*
 - [...](https://docs.bentoml.com/en/latest/build-with-bentoml/asgi.html)
 

Pentru inceput, as dori sa incercam sa intelegem urmatoarea [poveste](https://github.com/natthasath/demo-python-fastapi-uvicorn): [Preparing FastAPI for Production: A Comprehensive Guide](https://medium.com/@ramanbazhanau/preparing-fastapi-for-production-a-comprehensive-guide-d167e693aa2b)

Insa, inainte de toate, hai sa privim imaginea urmatoare(care descrie o arhitectura-[**FastAPI**](https://blog.stackademic.com/advanced-strategies-for-profiling-caching-and-optimizing-fastapi-performance-f23bb7f6dfc5) reala/de productie):

<details>
 <summary>...arhitectura-<b>FastAPI</b>(ex. serverul/serviciul <i>uvicorn</i>) reala/de productie...</summary>

<br/>
<hr/>

<a href="https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2F%40ramanbazhanau%2Fpreparing-fastapi-for-production-a-comprehensive-guide-d167e693aa2b&psig=AOvVaw0hvbabf5cs3c0U36SjPkor&ust=1743351507867000&source=images&cd=vfe&opi=89978449&ved=0CBgQjhxqFwoTCMDsxc_Yr4wDFQAAAAAdAAAAABBL"><img src="https://miro.medium.com/v2/resize:fit:4800/format:webp/1*CY5GdTAj1xz85qKz3PRjDg.png"></img></a>

<hr/>
<br/>
</details>


O prima observatie ar fi ca in imagine/figura *nu-apare* **GraphQL**, dar cu putin efort de imaginatie putem presupune ca acesta(ca parte integranta-***FastAPI***), [exista](https://pub.towardsai.net/fastapi-template-for-llm-saas-part-1-auth-and-file-upload-6bada9778139) [undeva](https://www.google.com/search?q=Cloud+SaaS+MySQL+PhP+Python+Ollama+NodeRAG+LLM+FastAPI+FastRTC+MCP&sca_esv=01250f61e108407c&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AE3TifNkrH_8GiMpT40QB-d96Uo6xCjuiQ%3A1750060619089&ei=S85PaMiNBa6Pxc8PiMq0sQw&ved=0ahUKEwiI36Tsu_WNAxWuR_EDHQglLcYQ4dUDCBE&uact=5&oq=Cloud+SaaS+MySQL+PhP+Python+Ollama+NodeRAG+LLM+FastAPI+FastRTC+MCP&gs_lp=EgNpbWciQkNsb3VkIFNhYVMgTXlTUUwgUGhQIFB5dGhvbiBPbGxhbWEgTm9kZVJBRyBMTE0gRmFzdEFQSSBGYXN0UlRDIE1DUEitFlDvCFjdE3ABeACQAQCYAXCgAbsDqgEDMC40uAEDyAEA-AEBmAIAoAIAmAMAiAYBkgcAoAe0AbIHALgHAMIHAMgHAA&sclient=img#vhid=FERljVhFTt5mUM&vssid=mosaic) inspre partea de livrare/gestionare date(sa spunem dintr-o baza-de-date=BD, BD care-*apare* in imagine/figura),

O a 2-a observatie ar fi ca in schema-arhitecturala apare pe fiecare segment-arhitectural o monitorizare a procesului-de-productie/lucru.
De aceasta parte de monitorizare vom face abstractie(nu ne vom ocupa) deoarece in acest topic doresc sa ma concentrez *doar* pe clarificarea conceptelor(*POC*) **FastAPI** si **GraphQL**.

Pana sa ajungem sa [intelegem](https://www.youtube.com/watch?v=cy6EAp4iNN4&ab_channel=TechWithTim) aceasta imagine-arhitectula(prezentata mai sus!), as dori ca mai intai sa pregatim/explicam cativa termeni ai discutiei:

<details>
<summary>...Termeni-pregatitori: ...<i>NGINX</i>(<i>Reverse-Proxy</i>), <i>NGINX</i>(<i>daemonul</i>-<i>manager-de-system-si-servicii</i> al <i>OS</i>-urilor din familia <i>Linux</i>), <b>GraphQL</b>, <b>FastAPI</b>(<i>uvicorn</i>, <i>ASGI</i>),...detalii </summary>

 <br/>
 <hr/>
 
 [wiki: **Reverse-Proxy**](https://en.wikipedia.org/wiki/Reverse_proxy)

***NGINX*** poate juca mai multe roluri dar in imaginea de mai sus, acesta joaca rolul de / este un **Reverse-Proxy**(un *proxy-invers*, sau un *intermediar-invers*).

***NGINX*** apare in arhitectura de productie **FastAPI**, ca intermediar-invers/web-server/distribuitor/scalator/inaintator/pasator=tranferator de mesaje catre serverul/serviciul-***ASGI***, prezentata mai sus.

Ratiunea existentei acestuia(**NGINX**-ului ca **Reverse-Proxy**) in aceasta arhitectura(expusa mai sus) este acea de a putea *scala/distribui*(de a distribui cererea-utilizator catre unul dintre *webServere*-le din pool-ul-de-*servere-web* pe care le utilizam/le avem la dispozitie  in procesul de productie)

[***systemd***](https://en.wikipedia.org/wiki/Systemd) este o suită-software care oferă o gamă largă de componente de sistem pentru sistemele-de-operare(OS) Linux

Scopul principal al ***systemd***(*system-[daemon](https://en.wikipedia.org/wiki/Daemon_(computing))*) este de a unifica configurația și comportamentul serviciilor în toate distribuțiile-*Linux* .

Componenta sa( ***systemd***) principală este un „manager de sistem și servicii” - un sistem-de-inițiere folosit pentru a porni-*spațiul-utilizatorului* și a gestiona-*procesele-utilizatorului* . 

De asemenea,  ***systemd*** oferă înlocuiri pentru diverse *daemon*-uri(component[a/e] ce lucreaza in fundal/background/fara a retine atentia-utilizatorului...utilizatorul nu prea "stie" de existenta lui/lor deoarece *daemonul* <u>nu-are-interactivitate</u> cu acesta/utilizatorul) și *utilități*, inclusiv :

 - gestionarea *dispozitivelor*(prin intermediul *driverelor-de-dispozitiv*),
 - gestionarea *conectării*(la internet),
 - gestionarea *conexiunilor-de-rețea* și
 - înregistrarea *evenimentelor*.

***systemd*** apare in arhitectura de productie **FastAPI**(ca manager al serverului/serviciului-de transport***ASGI***), prezentata mai sus.

**GraphQL** este un limbaj de interogare pentru *API*-ul dvs. care permite clienților să solicite exact datele de care au nevoie și nimic mai mult. 
<br/>A fost dezvoltat de ***Facebook*** și este folosit acum de multe companii populare, cum ar fi ***GitHub***, ***AirBnB*** și ***Twitter***.

[**FastAPI**](https://python3.info/fastapi/fastapi/about-architecture.html) este un cadru-web modern, rapid (de înaltă performanță), pentru construirea de *API*-uri folosind o anumita versiune de ***Python(de ex. cu Python 3.6+)***, deci este bazat pe indicii-standard-de tip-*Python*. 
<br/>Una dintre caracteristicile cheie/importante ale [**FastAPI**](https://medium.com/@ramanbazhanau/preparing-fastapi-for-production-a-comprehensive-guide-d167e693aa2b) este suportul pentru *documentarea-automată* folosind *OpenAPI* și/sau *Swagger-UI*.
 
*Ce este [**Uvicorn**](https://www.geeksforgeeks.org/fastapi-uvicorn/)?*<br/>
**UVICORN** este o implementare de *server-web*/*webServer* [***ASGI***](https://mirror.xyz/0xA1d9f681B25C14C1eE7B87f1CF102E73cA3ad4d9/n0BdWSd_GdP_Vfeped02zBcNV5XbzITThILlRditoPk) (Asynchronous Server Gateway Interface) adaptată pentru Python . <br/>Înainte de ***ASGI***, lui Python îi lipsea o *interfață-minimă-de-server*(de nivel scăzut) pentru *cadrele-de-lucru-asincrone*(asa cum este *FastAPI*). <br/>Specificația ***ASGI*** acționează ca o punte/poarta/zona-de-trecere/legatura(gateway), permițând crearea unui set comun de instrumente utilizabile în toate *cadrele-de-lucru-asincrone*(asa cum este *FastAPI*). <br/>**UVICORN** oferă în prezent suport pentru *HTTP/1.1* și *WebSockets*.<br/>
**Uvicorn** este un *server-web* ***ASGI*** *super-rapid*. 
<br/>**Uvicorn** rulează cod-Python asincron bazat pe [**uvloop**](worker/client de/pt ****ASGI***-server!) (https://mirror.xyz/0xA1d9f681B25C14C1eE7B87f1CF102E73cA3ad4d9/n0BdWSd_GdP_Vfeped02zBcNV5XbzITThILlRditoPk) într-un *singur-proces*(**Uvicorn** si **uvloop** formeaza impreuna un *singur-proces(unitar)*).

[Asadar](https://github.com/natthasath/demo-python-fastapi-uvicorn), **FastAPI** și **Uvicorn**(serverul ***ASGI***) sunt instrumente pentru construirea de aplicații-web. 
<br/>**FastAPI** este un cadru-web pentru construirea de API-uri cu Python, în timp ce **Uvicorn** este un server-***ASGI*** pentru servirea acestor API-uri. 
<br/>Împreună, acestea oferă o modalitate puternică și eficientă de a construi și rula aplicații-web în Python.

**FastAPI** folosește un standard pentru construirea de framework-uri și servere web Python numit ***ASGI*** . **FastAPI** este un framework web ***ASGI***.

Principalul lucru de care aveți nevoie pentru a rula o aplicație **FastAPI** (sau orice altă aplicație ***ASGI***) pe un server-la-distanță este un program de server-[***ASGI***](https://en.wikipedia.org/wiki/Asynchronous_Server_Gateway_Interface)(precum *Uvicorn*) , acesta este cel care vine implicit în comanda **FastAPI**.

Există mai multe alternative(de servere-***ASGI***=*manipulatorul de mesaje-care-contin-cererile-utilizatorilor*; *cererirle-utilizator* se refera de obicei/in general/adesea la cereri de interactiune cu o BD/SQL), inclusiv:

 - [*Uvicorn*](https://www.uvicorn.org/):       un server-***ASGI*** de înaltă performanță.
 - [*Hypercorn*](https://stackoverflow.com/questions/73730163/hypercorn-config-server-names):    server-***ASGI*** compatibil cu protocolul *HTTP/2* și *Trio*, printre alte caracteristici.
 - [*Dafne*](https://docs.djangoproject.com/en/5.2/howto/deployment/asgi/daphne/):          serverul-***ASGI*** construit pentru canalele-*Django*.
 - [*Granian*](https://news.ycombinator.com/item?id=34399125):        Un server *HTTP* *Rust* pentru aplicații-*Python*.
 - [*NGINX-Unit*](https://unit.nginx.org/configuration/): ***NGINX-Unit***(*Unitatea*-***NGINX***) este un run-time(RT) de aplicații-web ușor și versatil.

Aplicatia-**FastAPI** primeste mesajul-care-contine *cererea-utilizator* de la serverul-***ASGI***(manipulatorul de *cereri-utilizator*...ex. *uvicorn*) si o opereaza/executa/transforma intr-o executie-SQL de tip-[*CRUD*](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete): *query*/*update*, pentru [SGDB](https://ro.wikipedia.org/wiki/Sistem_de_gestiune_a_bazelor_de_date)(ex. *MySQL*-server).

*Concluzie*:
<br/>**FastAPI** și ***ASGI*** sunt concepte înrudite, dar distincte. 
<br/>**FastAPI** este un framework-web Python modern și de înaltă performanță pentru construirea de API-uri și utilizează ***ASGI***(Asynchronous Server Gateway Interface) pentru gestionarea *asincronă* a cererilor.
<br/>***ASGI*** este o specificație pentru *servere* și *aplicații* web(*webServere* si *webApps*) *asincrone*, care permite gestionarea eficientă a cererilor concurente, fiind utilă în special pentru funcții în *timp-real*(RT), cum ar fi *WebSockets*. 
<br/>**FastAPI** utilizează ***ASGI***, în special prin servere precum ***Uvicorn***, pentru a-și atinge *viteza* și *scalabilitatea*. 

Asadar, in arhitectura de mai sus, aplicatia-**FastAPI** are rolul de .../este de fapt... *operatorul/executorul* cererii-utilizator(ex. *cerere-SQL*).
<br/>Uneori aceasta cerere-utilizator poate fi o cerere-de-tip-**GraphQL**(un alt protocol de interogare de BD/SQL).

<hr/>
</details>
 
In aceasta sectiune-explicativa ne vom ocupa de [**FastAPI**](https://fastapi.tiangolo.com/) si [**GraphQL**](https://graphql.org/) si voi expune cateva [link](https://www.google.com/search?q=FastAPI+GraphQL&sca_esv=7bada7996407e364&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zpMdy_igG3Q1yx_vq9RrAQpc5Yplg%3A1743252620260&ei=jOznZ4fLD7yHxc8Ppva_-Q8&ved=0ahUKEwiHwbyJqq-MAxW8Q_EDHSb7L_8Q4dUDCBA&uact=5&oq=FastAPI+GraphQL&gs_lp=Egxnd3Mtd2l6LXNlcnAiD0Zhc3RBUEkgR3JhcGhRTDIKECMYgAQYJxiKBTIGEAAYBxgeMgYQABgHGB4yCBAAGIAEGMsBMggQABiABBjLATIIEAAYgAQYywEyBBAAGB4yBhAAGAoYHjIEEAAYHjIEEAAYHki-HVAAWJcUcAB4AZABAJgBkgGgAYMIqgEDMC44uAEDyAEA-AEBmAIIoAKbCMICBxAjGLACGCfCAgcQABiABBgNwgIIEAAYBxgKGB7CAggQABgTGAcYHsICChAAGBMYBxgKGB6YAwCSBwMwLjigB9Q3&sclient=gws-wiz-serp)-uri, legate de aceste 2 subiecte, pe care le-am [intalnit](https://fastapi.tiangolo.com/how-to/graphql/) si le-am considerat [interesante](https://medium.com/@ryk.kiel/graphql-and-fastapi-the-ultimate-combination-for-building-apis-with-python-f4391bf5505c):

<details>
 <summary>...Link-uri interesante legate de <b>FastAPI</b> si/sau <b>GraphQL</b>...dar/si nu numai(<i>FastStream</i>,<i>FastRTC</i>,<i>FastMCP</i>,<i>FastAgency</i>(multi-AI-Agents),...)</summary>

 <br/>
 <hr/>
 
 - [geeks4geeks: **FastAPI** using ***GraphQL***](https://www.geeksforgeeks.org/fastapi-using-graphql/); [uvicorn](https://www.uvicorn.org/); [reddit: uvicorn rol](https://www.reddit.com/r/Python/comments/74rsi8/noob_question_what_is_the_role_of_uvloopuvicorn/?tl=ro); [reddit: FastAPI/uvicorn eroare](https://www.reddit.com/r/html5/comments/14n68fc/im_trying_to_access_an_api_i_built_with_python/?tl=ro)
   <br/>*Atentie*: In codul-Python, inlocuiti string-ul HTML ***&quot;***(*specific HTML!*) cu caracterul **"**, in toate aparitiile sale din sursele-scripturilor-Python!
 - [geeks4geeks: **FastAPI**+uvicorn](https://www.geeksforgeeks.org/fastapi-uvicorn/)(*UVICORN*, **ASGI** vs. ***WSGI***)
   <br/>compare: [**ASGI**](https://derlin.github.io/introduction-to-fastapi-and-celery/02-fastapi/) vs. ***WSGI*** :<br/>
**ASGI** reprezintă un progres semnificativ față de ***WSGI***(Web Server Gateway Interface). <br/>În timp ce ***WSGI*** este conceput pentru aplicații unice, sincrone, care gestionează o solicitare și returnează un răspuns, nu acceptă conexiuni de lungă durată, cum ar fi conexiunile WebSocket(WS). <br/>În schimb, **ASGI** este asincron și acceptă trei argumente:
<br/>-1)*Domeniu de aplicare* : un dicționar Python care conține detalii despre conexiunea specifică.
<br/>-2)*Trimitere* : Permite aplicației să trimită mesaje de eveniment către client.
<br/>-3)*Primire* : Permite aplicației să primească mesaje de eveniment de la client.
<br/>**ASGI** permite mai multe evenimente de intrare și de ieșire pentru fiecare aplicație simultan, permițând aplicației să rămână receptivă la intrarea utilizatorului în timp ce rutinele de fundal(background) rulează.<br/>
 - [geeks4geeks: install **FastAPI** and run your first **FastAPI**-server on Windows](https://www.geeksforgeeks.org/install-fastapi-and-run-your-first-fastapi-server-on-windows/):

<details>
<summary> ...Q&A - <b>FastAPI(ASGI-server)</b> - instalation details...</summary>

<br/>

<hr/>

*Q*uestion: *How really install and run **FastAPI**(ASGI-server) under Windows?*

*A*nswer:

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


***Note***: 
<br/>alternatively, for running the **ASGI**-*webServer*, you can download the files ***main.py*** and ***_RUN.bat*** and then, run that second file(***_RUN.bat***) under *command-prompt(CLI-shell)*! 

<br/>

<hr/>

</details>

 - [testDriven: **FastAPI**-***GraphQL***](https://testdriven.io/blog/fastapi-graphql/)
 - [getOrchestra: **FastAPI** with uvicorn -a comprehensive tutorial](https://www.getorchestra.io/guides/fastapi-with-uvicorn-a-comprehensive-tutorial); [uvicorn: deployment](https://www.uvicorn.org/deployment/)
 - [redDit: **FastAPI**+uvicorn on Windows](https://www.reddit.com/r/learnpython/comments/15yf538/fastapiuvicorn_on_windows/); [ChatGPT: from PowerShell(ps) you can call the **uvicorn** to run the ***main.py*** file](https://chatgpt.com/share/67e7f89e-ae6c-800b-b88b-72e03ea14582)
 - [tiangolo: **FastAPI** deployment-concepts](https://fastapi.tiangolo.com/deployment/concepts/)
 - [stackOverflow: **FastAPI** Gunicorn-Uvicorn for(4) production-deployment with Google-Cloud-Run(GCR) stress](https://stackoverflow.com/questions/66254371/fastapi-gunicorn-uvicorn-for-production-deployment-with-google-cloud-run-stress)
 - [GH-hamedasgari20: Python Django **FastAPI** - advanced topics](https://github.com/hamedasgari20/Python-Django-FastAPI-advanced-topics); [ex. ChatGPT](https://chatgpt.com/share/67e91cfd-e6f0-800b-8e47-fe6c4af9402f); [tailWindCSS](https://tailwindcss.com/docs/hover-focus-and-other-states); [Django: dynamic-filter](https://www.youtube.com/watch?v=n1_MQiSXyxw&ab_channel=JustDjango); [Django with uvicorn](https://docs.djangoproject.com/en/5.1/howto/deployment/asgi/uvicorn/); [djangoProject-docs-deployment-ASGI: Flask vs. Django vs. **FastAPI**](https://docs.djangoproject.com/en/5.1/howto/deployment/asgi/uvicorn/)
 - [dev.to-akarshan: converting any Python web-framework to FastAPI a comprehensive-guide](https://dev.to/akarshan/converting-any-python-web-framework-to-fastapi-a-comprehensive-guide-291b)
 - [Dockerizing **FastAPI** with Postgres, Uvicorn, and Traefik](https://testdriven.io/blog/fastapi-docker-traefik/)
 - [Uvicorn(ASGI-server as worker) & Gunicorn(webserver WSGI)](https://mirror.xyz/0xA1d9f681B25C14C1eE7B87f1CF102E73cA3ad4d9/n0BdWSd_GdP_Vfeped02zBcNV5XbzITThILlRditoPk)
 - [whitePrompt-blog: Python APIs with **FastAPI** key-features and CRUD-example](https://blog.whiteprompt.com/python-apis-with-fastapi-key-features-and-crud-example-198a7530e368); [stackoverflow: How-can-I deploy **FastAPI** manually on a *Ubuntu*-Server?](https://stackoverflow.com/questions/65594905/how-can-i-deploy-fastapi-manually-on-a-ubuntu-server)
 - [daddYnKidsMaker-blogspot: **FastAPI** Open-API](https://daddynkidsmakers.blogspot.com/2024/04/fastapi-open-api.html)
   <br/>Acest articol ["**FastAPI** bigData-server example"](https://github.com/mac999/fastapi_bigdata_server_example/tree/main) prezintă cum să dezvoltați cu ușurință un server [Open-API](https://en.wikipedia.org/wiki/Open_API) bazat pe **FastAPI**, Uvicorn și Websocket(WS).
   <br/>Folosind **FastAPI**, puteți dezvolta un server [Open-API](https://en.wikipedia.org/wiki/OpenAPI_Specification)(a.k.a/previously known as/formerly *Swagger-Specification*) foarte ușor.

<details>

 <summary>...Arhitectura acestui caz-de-utilizare <b>FastAPI</b>...</summary>

<br/>
<hr/>

<a href = "https://daddynkidsmakers.blogspot.com/2024/04/fastapi-open-api.html"><img src="https://blogger.googleusercontent.com/img/a/AVvXsEgl-1NYO89p82JNrjYFUqHPVeS7mJlBixf-_l6CsOt506LaV08PkHMPyXvRIURtr0-m9vxeuJGsALhy7WdkQzLRKDwPnA3ueX0OXMuUo6JVBN8KTFSQqmx3DwAQ_CESjvo7DdFWlMBznhdzyRunD1f-sYJpwP_j_NLVy8GoI9UvmhnaFyEkLcRkftOXTLdU=w400-h225">Arhitectura acestui caz-de-utilizare **FastAPI**</img></a> 

  Caz-utilizare:  [daddYnKidsMaker-blogspot: **FastAPI** Open-API](https://daddynkidsmakers.blogspot.com/2024/04/fastapi-open-api.html))

  -  Folosind [**FastAPI**](https://en.wikipedia.org/wiki/FastAPI), puteți dezvolta foarte ușor un server *Open-API*.

  - [Langchain(LC)](https://en.wikipedia.org/wiki/LangChain)(*LLM-framework* = *LLM-extension*)
  - [aiohttp](https://docs.aiohttp.org/en/stable/)(*Client*/*Server*-*HTTP*-*asincron* pentru [*asyncio*](https://docs.python.org/3/library/asyncio.html) și *Python*)
  - [uvicorn](https://www.uvicorn.org/)(***ASGI***-server)
  - [Co:here/Cohere](https://en.wikipedia.org/wiki/Cohere);
    <br/>*Cohere Inc.* is a Canadian multinational technology company focused on artificial-intelligence(AI) for the enterprise,
    <br/>specializing in large-language-models(*LLM*s).
  - [Chroma](https://www.trychroma.com/)- Chroma este o *VDB*(Baza-de-Date Vectoriala=*VDB*)
  - [D-ID](https://www.d-id.com/about-us/)-Avatar-video-generator:
    <br/>*D-ID* se află în avangarda revoluționării interacțiunilor generative bazate pe inteligență-artificială(AI) și a creării de conținut.
    <br/>Specializată în tehnologiile de interfață naturală cu utilizatorul (NUI), platforma *D-ID* transformă perfect
    <br/>imagini, text, videoclipuri, audio și voce în persoane-digitale(*Avatars*) extrem de captivante, oferind o experiență unică și captivantă.
    <br/>*D-ID* combină sinteza facială și expertiza în învățare-profundă(DL) pentru a oferi experiențe interactive de inteligență-artificială(AI)
    <br/>în mai multe limbi, ridicând și scalând modul în care ne conectăm și creăm în lumea digitală.
    
  - [Marp](https://github.com/yhatt/marp/wiki)

 <br/>
 <hr/>
 
 </details>
 
 [( Prof Ai | Devpost )](https://devpost.com/software/prof-ai)

   <br/>**FastAPI** acceptă servere API-asincrone și poate fi rulat folosind [servere-*ASGI*](https://en.wikipedia.org/wiki/Asynchronous_Server_Gateway_Interface), cum ar fi *uvicorn*(care este un *ASGI*-server).
   <br/>Acest lucru(faptul ca ***FastAPI*** ruleaza in tandem cu *ASGI*-server=server-asynch) permite o inalta-performanță-de-*viteza*(*rapiditate*) și o procesare-*asincronă*(*fara retinerea atentiei* de catre un *singur-partener* de colaborare/conversatie!).
   <br/>Documentația automată, interactivă API este, de asemenea, furnizată(cf specificatiei Open-API) pentru a ajuta dezvoltatorii să înțeleagă și să utilizeze cu ușurință API-ul.
   <br/>**FastAPI** funcționează bine cu următoarele cadre-de-aplicații web(web-apps-frameworks): [*Flask*](https://en.wikipedia.org/wiki/Flask_(web_framework)) și [*Django*](https://en.wikipedia.org/wiki/Django_(web_framework)).
   
  - [Daddy Makers: Cum să dezvoltați un server web simplu Flask, mysql, bazat pe Python Open API](https://daddynkidsmakers.blogspot.com/2020/09/django-flask-open-api.html)
  - [Daddy Makers: Dezvoltarea unei aplicații web de tablou de bord simplu folosind Django](https://daddynkidsmakers.blogspot.com/2024/02/django.html)
   
   <br/>Instalarea pachetului este după cum urmează: **pip install fastapi aiohttp uvicorn**

  - [Building APIs using **FastAPI** with Django](https://www.geeksforgeeks.org/building-apis-using-fastapi-with-django/)
  - [Building a Machine Learning(ML)-Web-Application Integrating **FastAPI** with GCP and Docker Python](https://wire.insiderfinance.io/building-a-machine-learning-web-application-integrating-fastapi-with-gcp-and-docker-python-5439aa27cc1b)

<details>
 
<summary>...<i>Deployment-Pattern</i>...</summary>
  
<a href="https://miro.medium.com/v2/resize:fit:720/format:webp/1*5JMvIcBZhlJsny7s0NHbow.png" style="a img { display:none; }; a:hover img { display:block; }"><img src="https://miro.medium.com/v2/resize:fit:640/format:webp/1*hmn9gN0uxjE7cRQQ_d7qVw.png">Deployment Pattern</img></a>

</details>

  - [medium@rameshkannanyt0078: Generate Elegant PDFs with **FastAPI** ~ A Step-by-Step Guide](https://medium.com/@rameshkannanyt0078/generate-elegant-pdfs-with-fastapi-a-step-by-step-guide-7fa386f922bd)
    <br/>Transform HTML into Polished-PDF-Invoices Using **FastAPI** and *xhtml2pdf*
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
  - [towardsAI-pub: **FastAPI**(REST-api backend) template for LLM-SaaS(Quivr) - Part-1  - Auth(Supabase+**FastAPI**) and File-upload(Supabase)](https://pub.towardsai.net/fastapi-template-for-llm-saas-part-1-auth-and-file-upload-6bada9778139)
   <br/>(Redis=PubSub message-Broker, serverul Celery pt long-time task running - Task-ex.: încorporarea unui document PDF mare , [Supabase](https://supabase.com/)=[Postgres-DB-server](https://supabase.com/docs/guides/database/overview) ... utilizat pt Auth) or [part-1](https://pub.towardsai.net/fastapi-template-for-llm-saas-part-1-auth-and-file-upload-6bada9778139); [part-2: celery-and-pg-vector](https://towardsai.net/p/l/fastapi-template-for-llm-saas-part-2-celery-and-pg-vector) or [part-2](https://euclideanai.substack.com/p/fastapi-supabase-template-for-llm-941); [part-3](https://medium.com/@euclideanai/nextjs-fastapi-template-for-saas-part3-38fdc3f72b31); [**FastAPI**-SaaS boilerplate-code](https://github.com/philipokiokio/FastAPI_SAAS_Template)
  - [analyticsVidhya-blog-2022: Getting-Started with *REST*ful *API*s and **Fast API**](https://www.analyticsvidhya.com/blog/2022/08/getting-started-with-restful-apis-and-fast-api/)
  - [YT-KrishNaik: 3-Langchain Series-Production Grade Deployment LLM As API With Langchain And **FastAPI**](https://www.youtube.com/watch?v=XWB5DXP-DO8&ab_channel=KrishNaik)
  - [medium@velocityTech: Build an event-driven architecture with **FastAPI**(event-server) and Redis(broker-PubSub) pub-sub deploy it in Kubernetes(K8s)](https://medium.com/@velocitytech/build-an-event-driven-architecture-with-fastapi-and-redis-pub-sub-deploy-it-in-kubernetes-54603ac35335)
  - [medium-dataDrivenInvestor: Part-1 managing lifeSpan events in **FastAPI** with Redis example](https://medium.datadriveninvestor.com/part-1-managing-lifespan-events-in-fastapi-with-redis-example-a63db39bc5eb)
  - [medium-@davidrp1996: Bulding a notifications-system with server-sent-events(SSE) using **FastAPI** and Redis](https://medium.com/@davidrp1996/bulding-a-notifications-system-wih-server-sent-events-sse-using-fastapi-and-redis-6eafdf7cf7fb)
  - [stackAdemic-blog: Building a ***GraphQL***-api with **FastAPI** - complete guide from installation to running the api](https://blog.stackademic.com/building-a-graphql-api-with-fastapi-complete-guide-from-installation-to-running-the-api-673e95614732)
  - [medium@nandagopal05: Server-Sent Events(SSE) with Python **FastAPI**](https://medium.com/@nandagopal05/server-sent-events-with-python-fastapi-f1960e0c8e4b)
  - [medium@simeon.emanuilov: Ollama with ***FastAPI***](https://medium.com/@simeon.emanuilov/ollama-with-fastapi-7f43cf532c43)
  - [tiangolo-tutorial-bigger-applications: ***FastAPI*** ~ Bigger Applications - Multiple Files](https://fastapi.tiangolo.com/tutorial/bigger-applications/)
  - [LangDinNord@zhuanlan.zhihu: ***FastRTC***, stea în ascensiune open source | 30 de linii de cod pentru interacțiune vocală AI în timp real, metodă de implementare și testare a efectelor](https://zhuanlan.zhihu.com/p/27904999595)
 
<details>
<summary>...detalii despre ... <b><i>FastRTC</i></b> poate fi utilizat cu/in applicatiile bazate pe <b><i>FastAPI</i></b> ~ Caracteristicile principale ale <b><i>FastRTC</i></b> ...</summary> 

<br/>

<hr/>
 
Caracteristicile principale ale <b><i>FastRTC</i></b>: 

 - *Detectare și rotire automată a vocii* : 
    Cu funcțiile încorporate de detectare(**STT**) și rotire a vocii(**TTS**), dezvoltatorii trebuie să se concentreze doar pe 
    logica *răspunsului* către utilizatori.
    
 - *Interfață utilizator automată* :
   Interfață utilizator **Gradio** încorporată cu suport **WebRTC** , convenabilă pentru testare sau implementare directă în
   mediul de producție.
   
 - *Apeluri telefonice* : **fastphone()** Obțineți un număr de telefon gratuit, iar utilizatorii pot accesa fluxul audio prin
   telefon (este necesar un jeton de la îmbrățișare-facială(**HF**) , conturile PRO au limite mai mari).
   
 - ⚡️ *Suport pentru WebRTC și Websocket* :
   Acceptă **WebRTC** și **Websocket** pentru a asigura o comunicare *fluidă* în *timp-real(RT)*.
   
 - *Extrem de personalizabil* :
   Stream-urile pot fi montate/utilizate în orice aplicație **FastAPI**, permițând interfețe utilizator personalizate sau
   implementări dincolo de **Gradio**.
   
 - *Set bogat de instrumente* :
   
   Instrumente practice încorporate, cum ar fi:
   
    - conversia textului în vorbire(**TTS**),
    - conversia vorbirii în text(**STT**),
    - detectarea cuvintelor *neașteptate* etc.,
      
   pentru a ajuta dezvoltatorii să înceapă rapid.

Despre ***FastRTC*** puteti siti si acest [articol](https://www.ai-shift.co.jp/techblog/5680)
**FastRTC** este o bibliotecă pentru construirea de aplicații de *streaming vocal și video* în timp-real(RT) în Python.
Pentru a crea o aplicație de inteligență-artificială(AI) în timp-real(RT), precum un voicebot, aveți nevoie de tehnologii precum 
*WebRTC* și *websockets*. 
Cu toate acestea, aceste cunoștințe sunt răspândite în diverse surse, ceea ce le face dificil de învățat. 
În ultimii ani, a devenit posibilă utilizarea inteligenței-artificiale-generative(GenAI) pentru a genera cod, 
dar când vine vorba de cod-*Python* care utilizează *WebRTC* sau *websockets*, este încă dificil să se genereze cod corect.
**FastRTC** își propune să elimine barierele în calea dezvoltării aplicațiilor de inteligență-artificială(AI) în timp-real(RT) în 
*Python*, în special pentru inginerii nespecialiști în învățarea-automată(ML).

Un alt link interesant despre **FastRTC** este si aceasta [***FastRTC-galerie***](https://fastrtc.org/speech_to_text_gallery/) de/cu [exemple](https://note.com/tametaka1/n/nd5d5ff4a4010).

</pre>

<hr/> 

<br/>

</details>

 - [tiangolo-FastAPI-deployment-manually: Run a **FastAPI**-Server Manually](https://fastapi.tiangolo.com/deployment/manually/)
 - [medium@the-AI-forum: Building a Real-Time(RT) Voice-Assistant-Application with **FastAPI**, Groq and OpenAI-TTS-Api](https://medium.com/the-ai-forum/building-a-real-time-voice-assistant-application-with-fastapi-groq-and-openai-tts-api-a8a8fe38c315)
 - [GH@tadata-org: **FastAPI**-*MCP*](https://github.com/tadata-org/fastapi_mcp) ...
   <br/>...Expuneți punctele-finale(end-point-urile) **FastAPI** ca instrumente *MCP*(Model Context Protocol), cu *Auth*!
 - [useLessAI: Implementing MCP(FastMCP) in a **FastAPI**-Application](https://uselessai.in/implementing-mcp-architecture-in-a-fastapi-application-f513989b65d9)
 - [YT@TechWithTim: How To Build an ***Web-API*** with Python (*LLM*-Integration, **FastAPI**, *Ollama* = OL=local-LLM-server & More)](https://www.youtube.com/watch?v=cy6EAp4iNN4&ab_channel=TechWithTim)
 - [blog@marzeta: FastAPI - Hitting the Performance Jackpot. Part 1 - Asynchronicity(with *gunicorn*=*WSGI-server*)](https://blog.marzeta.pl/fastapi-hitting-the-performance-jackpot-part-1-asynchronicity/)
 - [python3-info: **FastAPI**-architecture](https://python3.info/fastapi/fastapi/about-architecture.html)
 - [medium@rsalgare95: Writing an ***ASGI***-server from scratch and using it with **FastAPI**](https://medium.com/@rsalgare95/writing-an-asgi-server-from-scratch-and-using-it-with-fastapi-21ec1191f3c7)
 - [dev-ceb10n: Understanding **FastAPI** | The Basics](https://dev.to/ceb10n/understanding-fastapi-the-basics-246j)
 - [breezyMind@Karl: Începând cu framework-ul web ***ASGI***-**FastAPI**](https://breezymind.com/start-asgi-framework/)
 - [dev-leapCell: **FastAPI**-Engine/Server: Inside **Uvicorn**, Building a Fast ***ASGI***-Server in Pure Python](https://dev.to/leapcell/fastapi-engine-inside-uvicorn-building-a-fast-asgi-server-in-pure-python-392n)
 - [plainEnglish-AI: *Django*-Async vs **FastAPI** vs *WSGI*-*Django* | Choice of ML/DL-Inference(predictie/deductie)-Servers — Answering some burning questions](https://ai.plainenglish.io/django-async-vs-fastapi-vs-wsgi-django-choice-of-ml-dl-inference-servers-answering-some-burning-e6a354bf272a)
 - [codeMentor@collinsonyemaobi: Deploy a Secure **FastAPI**-App on *Ubuntu-20.04* using *Python3.10* / *CertBot* / *Nginx* server-proxy-invers protejat cu certificate-SSL) and ***Gunicorn***(WSGI-server)](https://www.codementor.io/@collinsonyemaobi/deploy-a-secure-fastapi-app-on-ubuntu-20-04-using-python3-10-certbot-nginx-and-gunicorn-1spdjl4suw); [***Gunicorn***](https://en.wikipedia.org/wiki/Gunicorn); [*CertBot*](https://wiki.freephile.org/wiki/Certbot)
 - [mirror: serverele/motoarele ***Uvicorn(ASGI)*** & *Gunicorn(WSGI)*](https://mirror.xyz/0xA1d9f681B25C14C1eE7B87f1CF102E73cA3ad4d9/n0BdWSd_GdP_Vfeped02zBcNV5XbzITThILlRditoPk)
 - [GH@FastAPI: Choosing the Right ***ASGI***-Server for Deploying(instalare-gata-de-productie!) **FastAPI** #2062](https://github.com/fastapi/fastapi/issues/2062)
 - [devGenius-blog: Getting Started with **FAST API**](https://blog.devgenius.io/getting-started-with-fast-api-c7e52e68685f)
 - [dev@/kfir-g: Înțelegerea UploadFile-ului din **FastAPI** | Conexiunea *Starlette*](https://dev.to/kfir-g/think-you-know-fastapi-and-asgi-lets-dive-in-164i); [*Starlette*](https://www.starlette.io/)
 - [springer-link(SL): Introduction to FastAPI(uvicorn=***ASGI***,*Starlette*=*routing*, *pyDantic*=data-validator,...)](https://link.springer.com/chapter/10.1007/978-1-4842-9178-8_1); [*pyDantic*](https://docs.pydantic.dev/latest/);
 - [toptal-py: High-performing Apps With Python ~ A **FastAPI** Tutorial(CRUD-REST-API using **FastAPI**,*SQLAlchemy(ORM)*,*pyDantic(validation-schema)*,*JWT*-Auth](https://www.toptal.com/python/build-high-performing-apps-with-the-python-fastapi-framework)
 - [medium@krishnakatyal5121: **FastAPI** And Machine-Learning(ML)](https://medium.com/@krishnakatyal5121/fastapi-and-machine-learning-b75ac9c60412)
 - [camKode-posts: **FastAPI** ~ Building High-Performance *RESTful*-APIs with Python](https://camkode.com/posts/fastapi-building-high-performance-restful-apis-with-python)
 - [sunScrapers-blog: How To Fuse FastAPI with Django in an Elegant Way](https://sunscrapers.com/blog/fastapi-and-django-a-guide-to-elegant-integration/)
 - [vonage-developer-blog: How Python's *WSGI* vs. ***ASGI*** is Like 'Baking-a-Cake'](https://developer.vonage.com/cn/blog/how-wsgi-vs-asgi-is-like-baking-a-cake)
 - [christopherGS-py-2021: **FastAPI** vs *Flask* - The Complete Guide ](https://christophergs.com/python/2021/06/16/python-flask-fastapi/); [comparision](https://unfoldai.com/fastapi-vs-flask/)
 - [testDriven-blog: Moving from *Flask* to **FastAPI**](https://testdriven.io/blog/moving-from-flask-to-fastapi/)
 - [geeks4geeks-py: MultiProcessing(process=downloading) in **FastAPI**](https://www.geeksforgeeks.org/python/multiprocessing-in-fastapi/)
 - [goFastMCP-deployment-***ASGI***: Integrating *FastMCP* in ***ASGI***-*Applications*](https://gofastmcp.com/deployment/asgi)
 - [lucentInnovation-blogs-technologyPosts: *Flask* vs.**FastAPI** vs.*Django*](https://www.lucentinnovation.com/blogs/technology-posts/flask-vs-fastapi-vs-django)
 - [eliasBrange-posts: Deploy **FastAPI** on *AWS* Part.1 ~ *Lambda* & *API-Gateway(API-GW)*](https://www.eliasbrange.dev/posts/deploy-fastapi-on-aws-part-1-lambda-api-gateway/)
 - [MS-learn-samples-Azure_samples-FastAPI_on_Azure_functions:  Using **FastAPI**-Framework with *Azure*-Functions](https://learn.microsoft.com/en-us/samples/azure-samples/fastapi-on-azure-functions/fastapi-on-azure-functions/)
 - [AWS_amazon-blogs-ML: Optimize AWS-Inferenta(predict/deduct) utilization with **FastAPI** and *PyTorch*-models on *Amazon*-*EC2* *Inf1* & *Inf2* instances](https://aws.amazon.com/blogs/machine-learning/optimize-aws-inferentia-utilization-with-fastapi-and-pytorch-models-on-amazon-ec2-inf1-inf2-instances/)
 - [*FastAgency*-AI-latest-user~guide: Getting Started(see **FastAPI**-integration)](https://fastagency.ai/latest/user-guide/getting-started/)
 - [apiDog-blog: How to ***Log*** *API-Endpoints* Using Python **FastAPI**](https://apidog.com/blog/logging-endpoints-python-fastapi/)
 - [decodingML-subStack: Deploying AI-*(RAG-)Agents* as real-time(RT)-*API*s 101](https://decodingml.substack.com/p/deploying-agents-as-real-time-apis)
 - [hostMyCode-tutorials: Set Up a **FastAPI** App with a *NoSQL*-Database](https://www.hostmycode.in/tutorials/set-up-a-fastapi-app-with-a-nosql-database)
 - [FastStream.AI.RT-getting-started: *FastStream* is **FastAPI**-Plugin](https://faststream.airt.ai/0.1/getting-started/integrations/fastapi/)
 - [cisco-blogs-developer: *DevOps* in Action! – How We Built the *DevDash*-Demo](https://blogs.cisco.com/developer/devopsactiondevdashdemo01); [*DevOps*](https://en.wikipedia.org/wiki/DevOps)
 - [anyScale-blog: *Ray-Serve(AI-MLOps)* + *aiohttp*/**FastAPI**(as *webserver*!) ~ The best of both worlds](https://www.anyscale.com/blog/ray-serve-fastapi-the-best-of-both-worlds)
 - [medium@nachi-keta: **FastAPI** — An Intro | KEEP IN TOUCH](https://nachi-keta.medium.com/fastapi-an-intro-e057dc6be20f)
 - [ngrok-docs: Using *ngrok* with **FastAPI**](https://ngrok.com/docs/using-ngrok-with/fastAPI/)
   <br/>Puteți utiliza biblioteca *ngrok-python* pentru a încorpora agentul-*ngrok* în aplicațiile-**FastAPI**.
 - [dev@shuv1824: Implementați aplicația-**FastAPI** pe *Ubuntu18.04*(OS...poate fi instalat pe AWS-VPC-EC2 sau pe un VPS-DO...) cu *Nginx*, *Gunicorn* și *Uvicorn*(***ASGI***-server)](https://dev.to/shuv1824/deploy-fastapi-application-on-ubuntu-with-nginx-gunicorn-and-uvicorn-3mbl)
 - [medium@MazlunTosum-GCP: *Cloud-Run* Service with a *Python* module **FastAPI** and ***Uvicorn***(***ASGI***-server) ](https://medium.com/google-cloud/cloud-run-service-with-a-python-module-fastapi-and-uvicorn-24c94090a008)
 - [...](https://www.google.com/search?sca_esv=e8d80f20730efe45&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zrH1441tkETzrmbU4dqAEckC7ivBg:1743781077100&q=FastAPI+nginx+graphQL+SSE+Redis&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGlsodhGu4F1UEhEeTehlBu7054EL_QJMdNdFZCQTI4PnEhBMh4C_0EHSVUHxJLcclisNm4b4EldR9h-pvMPn6xw2y2G7sjuE9dhTjGAdCf-64t1-bdWmIq-Lt3WphpmsUQjNUmoTzATkh99SjBMl9gfohc5yMM211WIg2yZwLTCX72_HMe-vRp4eFhBfs-YXqvr3mHDkw&sa=X&ved=2ahUKEwj4oKrd2r6MAxX9Q_EDHQIOBx8QtKgLegQIEBAB&biw=1735&bih=721&dpr=1)

<br/>
<hr/>
</details>

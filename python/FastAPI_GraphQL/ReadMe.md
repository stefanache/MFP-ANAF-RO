***Salut***!

**GraphQL** este un limbaj de interogare pentru API-ul dvs. care permite clienților să solicite exact datele de care au nevoie și nimic mai mult. 
<br/>A fost dezvoltat de Facebook și este folosit acum de multe companii populare, cum ar fi GitHub, Airbnb și Twitter.

**FastAPI** este un cadru web modern, rapid (de înaltă performanță), pentru construirea de API-uri cu Python 3.6+ bazat pe indicii standard de tip Python. 
<br/>Una dintre caracteristicile cheie/importante ale **FastAPI** este suportul pentru documentarea automată folosind OpenAPI și Swagger UI.

In aceasta sectiune ne vom ocupa de [**FastAPI**](https://fastapi.tiangolo.com/) si [**GraphQL**](https://graphql.org/) si voi expune cateva [link](https://www.google.com/search?q=FastAPI+GraphQL&sca_esv=7bada7996407e364&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zpMdy_igG3Q1yx_vq9RrAQpc5Yplg%3A1743252620260&ei=jOznZ4fLD7yHxc8Ppva_-Q8&ved=0ahUKEwiHwbyJqq-MAxW8Q_EDHSb7L_8Q4dUDCBA&uact=5&oq=FastAPI+GraphQL&gs_lp=Egxnd3Mtd2l6LXNlcnAiD0Zhc3RBUEkgR3JhcGhRTDIKECMYgAQYJxiKBTIGEAAYBxgeMgYQABgHGB4yCBAAGIAEGMsBMggQABiABBjLATIIEAAYgAQYywEyBBAAGB4yBhAAGAoYHjIEEAAYHjIEEAAYHki-HVAAWJcUcAB4AZABAJgBkgGgAYMIqgEDMC44uAEDyAEA-AEBmAIIoAKbCMICBxAjGLACGCfCAgcQABiABBgNwgIIEAAYBxgKGB7CAggQABgTGAcYHsICChAAGBMYBxgKGB6YAwCSBwMwLjigB9Q3&sclient=gws-wiz-serp)-uri, legate de aceste 2 subiecte, pe care le-am [intalnit](https://fastapi.tiangolo.com/how-to/graphql/) si le-am considerat [interesante](https://medium.com/@ryk.kiel/graphql-and-fastapi-the-ultimate-combination-for-building-apis-with-python-f4391bf5505c):

 - [geeks4geeks: FastAPI using GraphQL](https://www.geeksforgeeks.org/fastapi-using-graphql/); [uvicorn](https://www.uvicorn.org/); [reddit: uvicorn rol](https://www.reddit.com/r/Python/comments/74rsi8/noob_question_what_is_the_role_of_uvloopuvicorn/?tl=ro); [reddit: FastAPI/uvicorn eroare](https://www.reddit.com/r/html5/comments/14n68fc/im_trying_to_access_an_api_i_built_with_python/?tl=ro)
 - [geeks4geeks: FastAPI+uvicorn](https://www.geeksforgeeks.org/fastapi-uvicorn/)
 - [[geeks4geeks: install FastAPI and run your first FastAPI-server on Windows](https://www.geeksforgeeks.org/install-fastapi-and-run-your-first-fastapi-server-on-windows/):
    - open powershell(PS): C:\Users\{your_user}> powershell
    - edit the main.py:    C:\Users\{your_user}> notepad main.py
    - enter the python script-code:
      <pre><code>
          from fastapi import FastAPI
          
          app = FastAPI()
          
          @app.get("/")
          def read_root():
              return {"Hello World"}</code></pre>
    - start Chrome client(in advance): C:\Users\{your_user}> start Chrome  http://127.0.0.1:8000
    - run main with command: C:\Users\{your_user}> python -m uvicorn main:app --reload
    - finally, refresh the Chrome-browser(if need!)
 - [testDriven: FastAPI-GraphQL](https://testdriven.io/blog/fastapi-graphql/)
 - [getOrchestra: FastAPI with uvicorn -a comprehensive tutorial](https://www.getorchestra.io/guides/fastapi-with-uvicorn-a-comprehensive-tutorial); [uvicorn: deployment](https://www.uvicorn.org/deployment/)
 - [reddit: FastAPI+uvicorn on Windows](https://www.reddit.com/r/learnpython/comments/15yf538/fastapiuvicorn_on_windows/); [ChatGPT: from PowerShell(ps) you can call the **uvicorn** to run the ***main.py*** file](https://chatgpt.com/share/67e7f89e-ae6c-800b-b88b-72e03ea14582)

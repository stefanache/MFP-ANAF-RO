Nomenclatorul **UAT**-urilor, cunoscut sub denumirea [**SIRUTA**](https://siruta.nxm.ro/) este intretinut si versionat la 6 luni de catre [**INS**](https://www.cpsa.nxm.ro/) dar poate fi descarcat ca dataset(uneori gasiti versiuni mai vechi ale acestuia deoarece propagarea dureaza!!!:) si de pe site-ul [***UE***](https://data.europa.eu/data/datasets/9f38f6fe-66a0-4e93-ae24-4272b91c9849?locale=ro); 

Am gasit si pe ***github*** acest nomenclator (My)SQL [**SIRUTA**](https://github.com/bandizsolt/romanian-counties-and-locations) si chiar si o [***biblioteca***](https://github.com/strainu/SIRUTA) scrisa in **python**.

Iata biblioteca Python pentru analizarea unui extras [**SIRUTA**](https://github.com/strainu/SIRUTA) în format [CSV](https://github.com/mgax/workshop-odss-vis/blob/master/rawdata/siruta-judete.csv) sau [json](https://github.com/mgax/harta-cim/blob/gh-pages/siruta.json).

Desigur puteti cauta acest nomenclator **SIRUTA** si pe [data.gov.ro](https://data.gov.ro/dataset?res_format=csv)

[**SIRUTA**](https://github.com/GeorgianStan/romania-uat-api?tab=readme-ov-file) poate fi folosit si pentru alte scopuri(altele decat cele legate de ANAF/MFP/GOV) cum ar fi [alegeri](https://github.com/alexaac/presidentials2019Data), [ANRE](https://github.com/posfgit/standard), [GIS](https://github.com/akaleeroy/romania-uat) / [GeoSpatial](https://github.com/geospatialorg/scripturi-actualizare-vectori/tree/master)...

[**SIRUTA**](https://ro.wikipedia.org/wiki/SIRUTA) are o ***granulatie*** sau o ***rezolutie*** pana la nivel de [***localitate***](https://github.com/andreifurrnica/localitati-romania)

[INS](https://bucuresti.insse.ro/produse-si-servicii/nomenclatoare-statistice/) se mai ocupa si de alte nomenclatore cum ar fi 
[**CAEN**, **CPSA**](https://www.anaf.ro/anaf/internet/ANAF/asistenta_contribuabili/declararea_obligatiilor_fiscale/coduri_caen)

Puteti afla mai multe depre aceste 2 nomenclatoare CAEN si CPSA folosind aceasta [cautare simpla google](https://www.google.com/search?q=caen+cpsa&rlz=1C1JJTC_enRO1087RO1087&oq=CAEN&gs_lcrp=EgZjaHJvbWUqCAgAEEUYJxg7MggIABBFGCcYOzIGCAEQRRg5Mg8IAhAuGEMYsQMYgAQYigUyBwgDEAAYgAQyBwgEEAAYgAQyBwgFEAAYgAQyBwgGEAAYgAQyBwgHEAAYgAQyBwgIEAAYgAQyBwgJEAAYgATSAQkzMTkxajBqMTWoAgiwAgE&sourceid=chrome&ie=UTF-8#ip=1)

Pentru cei care doresc sa caute date pe data.gov.ro(ckan) pot studia mai intai aceasta [pagina](https://data.gov.ro/pages/developers) dedicata comunitatii dezvoltatorilor

Exista si un [downloader](https://github.com/deathy/data-gov-ro-data-download) pt [data.gov.ro/CKAN](https://data.gov.ro/en/dataset?q=&tags=lista&res_format=xlsx&sort=metadata_modified+desc), script scris in python( si acest [repository](https://github.com/sanand0/data.gov.in) chiar daca este pentru India ci nu pt Romania, poate fi desigur un model pt voi in incercarea de a descarca datele de care aveti nevoie).

Iata aici am gasit un depozit care [listeaza primariile](https://github.com/vimishor/dataset-primarii) din Romania.

Puteti accesa acest [depozit](https://github.com/petre-renware/api_to_roefact) ce prezinta un sistem de facturare scris in pyton folosind excel,
pentru a va completa informatiile cu privire la sistemul eFactura.


Daca sunteti interesati sa folositi ***"AI generative"*** pt **facturi** puteti gasi un [exemplu](https://github.com/ronidas39/LLMtutorial/tree/main/tutorial91) bazat pe [langchain](https://www.langchain.com/)(un cadru AI-integrator extrem de popular).

Cititi in prealabil documentul powerpoint [tutorial91.pptx](https://github.com/ronidas39/LLMtutorial/blob/main/tutorial91/tutorial91.pptx) explicativ.

Si in general puteti posta pe google [imagini] "intrebari(a.k.a interogari)" gen ["python langchain invoice generator UBL2.1"](https://www.google.com/search?q=python+langchain+invoice+generator+UBL2.1&sca_esv=2a19a3414e05e997&rlz=1C1JJTC_enRO1087RO1087&udm=2&biw=1536&bih=762&sxsrf=ADLYWIJX2J6d2m2qJ7RgnKQp92zQTSSk7w%3A1721659370891&ei=6m-eZuWCNv-L7NYPj9SamAk&ved=0ahUKEwjln-f58LqHAxX_BdsEHQ-qBpMQ4dUDCBA&uact=5&oq=python+langchain+invoice+generator+UBL2.1&gs_lp=Egxnd3Mtd2l6LXNlcnAiKXB5dGhvbiBsYW5nY2hhaW4gaW52b2ljZSBnZW5lcmF0b3IgVUJMMi4xSL0eUKcHWPUbcAF4AJABAJgBdqABygKqAQMwLjO4AQPIAQD4AQGYAgCgAgCYAwDiAwUSATEgQIgGAZIHAKAHhwE&sclient=gws-wiz-serp)
pentru a gasi si alte oportunitati asemanatoare.

O alta IA-aplicatie intereseanta(ChatGPT-ul vostru in materie de facturi PDF) ar putea fi  sa zicem, una avand urmatorul scenariu:

-am un director plin de facturi generate PDF(obtinute chiar/poate din imaginile xml/UBL2.1)  si...

-as dori sa intreb(utilizand sa zicem vocea... necesita ASR pt voice2text) :  Ce total are factura cu numarul 999999?, iar...

-raspunsul ar putea sa sune(necesita conversie TTS text2voice) gen : 12.29 RON

restul tine doar de ...[imaginatia voastra creativa](https://www.analyticsvidhya.com/blog/2023/10/building-invoice-extraction-bot-using-langchain-and-llm/)...(in acest demers/aventura langchain va poate fi de ajutor:)

***OBS:*** 

daca nu doriti sa va incurcati cu Intrebare-Raspuns(QA) de tip vocal/sunet atunci puteti renunta la acest mod de interactiune cu utilizatorul si puteti lucra direct pe text ca orice alt chat(conventional) dar...
pastrand totusi  specificitatea 
 - datelor tale/proprii(cele preluate din directorul sursa ce contine fisierele PDF)  precum si ... a
 - limbajului romanesc utilizat atat la text de interogare cat si ca text de redare/valorificare/recuperare/raportare(Q&A in limba RO)

[Langchain](https://python.langchain.com/v0.2/docs/concepts/) este o librarie integratoare de alte instrumente.
Acest cadru-integrator(framework) are un foarte bun suport pt. o multime de alte produse-software(SW) cum ar fi : 
- LLM-uri tot felul (cel mai cunoscut fiind desigur OpenAI cu binecunoscutele sale modele GPT)
- ca reader de documente PDF la fel se poate lucra cu tot felul de librarii(ex. PyPDF dar si altele asemanatoare)
- ca si GUI puteti folosi tot asa o multime de instrumente cum ar fi streamlit, tkinter,...
- pe parte de bd relationale puteti folosi [SQLalchemy](https://github.com/langchain-ai/langchain/discussions/22340) dar nu numai...
- pentru intrarile de tip ***CSV*** se poate folosi spre exemplu sa zicem [pandas](https://www.analyticsvidhya.com/blog/2023/10/building-invoice-extraction-bot-using-langchain-and-llm/)
- se integreaza(direct sau indirect)cu tot felul de alte instrumente cum ar fi
  - docx2txt
  - python-dotenv
  - pdfplumber
  -  ...
- pentru partea de redare se poate folosi [reportlab](https://pythongeeks.org/invoice-generator-with-python/)

Dava va temeti ca datele voastre sunt prea ["intime"](https://www.reddit.com/r/LangChain/comments/1ayipqy/without_open_ai_or_gemini_api_key/) si nu doriti sa le expuneti LLM-urilor(care oricum sunt cam scumpe) 
si daca detineti suficienta putere de calcul,
poate ca ar fi util sa utilizati LLM-urile care ruleaza local(nu la distanta si care nu necesita internet, acestea functionand offline) de tip OpenSource(si de preferat gratuite, acestea avand codul expus in CDN-uri gen github), situatie in care api-key nu ar trebui sa mai fie necesara!
In acest ultim caz de utilizare nu uitati sa [re]vedeti  produsul [LM Studio](https://lmstudio.ai/)

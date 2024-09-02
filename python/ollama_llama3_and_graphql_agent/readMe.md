

Inspirat de acest exemplu de integrare a [agentului **GraphQL**](https://python.langchain.com/v0.2/docs/integrations/tools/graphql/)- componenta a pachetului **langchain**,

am creat un cod(asistat de [**ChatGPT**](https://chatgpt.com/c/3da6507c-193f-4af5-a162-b775cb780d0a)!) pt a extrage filme de pe site-ul **Netflix**;

De fapt acest site, nu este nimic altceva decat un site de prezentare a "produselor"(filmelor) sale care suporta protocolul **GraphQL**

Cei de la **Netflix** pun la dispozitie aceste informatii despre filmele ce ruleaza in reteaua sa folosind un serviciu [scalat/scalabil](https://www.geeksforgeeks.org/how-netflix-scales-its-api-with-graphql/) de livrare **GraphQL)**

Asa ca folosind **agentul GraphQL** din **Langchain**, am creat un client-**GraphQL** catre acest serviciu pentru a extrage aceste date.

Datele primite au fost livrate **chatbot-ului** bazat pe serverul **Ollama** care ne livreaza modelul LLM **llama3**

Astfel folosind acest cod de **Chatbot/RAG**, putem "vorbi", daca vreti, direct cu site-ul de filme **Netflix**

Trebuie sa va mai spun ca acest protocol [**GraphQL**](https://en.wikipedia.org/wiki/GraphQL) este un inlocuitor al-/adversar al-/o alternativa a- protocolulului **REST**.

Protocolul de comunicare [**GraphQL**](https://en.wikipedia.org/wiki/GraphQL) este utilizat, astazi, pe [scara larga](https://blog.postman.com/how-to-choose-between-rest-vs-graphql-vs-grpc-vs-soap/) pentru [calitatile sale deosebite](https://www.guru99.com/ro/graphql-vs-rest-apis.html), in comparatie cu predecesorul sau.

Datorita flexibilitatii/performantelor sale **GraphQL** este preferat, in a fi pus/plasat in fata bazelor de date(ex. MySQL,NoSQL...) si nu numai, pt a servi drept server-livrator de date, sau daca vreti, plasat la capatul sau marginea conductei(*pipeline*) de livrare/extragere/procesare.

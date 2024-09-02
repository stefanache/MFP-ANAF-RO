

Inspirat de acest exemplu de integrare a [agentului **GraphQL**](https://python.langchain.com/v0.2/docs/integrations/tools/graphql/)- componenta a pachetului **langchain**,

am creat un cod(asistat de [**ChatGPT**](https://chatgpt.com/c/3da6507c-193f-4af5-a162-b775cb780d0a)!) pt a extrage filme de pe *site/endpoint*-ul **Netflix**;

De fapt acest [graphql-endpoint](https://qlient-org.github.io/python-qlient/site/examples/), nu este nimic altceva decat un *site de prezentare* a "produselor"(filmelor) sale, care suporta protocolul [**GraphQL**](https://www.educative.io/collection/page/6630002/6428462352433152/6217186737127424)

Cei de la **Netflix** pun la dispozitie aceste informatii despre filmele ce ruleaza in reteaua sa, folosind un serviciu [scalat/scalabil](https://www.geeksforgeeks.org/how-netflix-scales-its-api-with-graphql/) de livrare **GraphQL)**

Asadar utilizand **agentul GraphQL** din [**Langchain**](https://python.langchain.com/v0.2/docs/integrations/tools/graphql/), am creat un [client-**GraphQL**](https://pypi.org/project/sqlalchemy-graphqlapi/) catre acest serviciu pentru a extrage aceste date.

Datele primite au fost livrate **chatbot-ului** bazat pe serverul **Ollama** care ne livreaza modelul LLM **llama3**(cel care ne permite de fapt chatting-ul/conversatia)

Astfel folosind acest **Chatbot/RAG**, putem "vorbi/conversa", daca vreti, direct cu site-ul de filme **Netflix**

Trebuie sa va mai spun ca acest protocol [**GraphQL**](https://en.wikipedia.org/wiki/GraphQL) este un inlocuitor al-/adversar al-/o alternativa a- protocolulului **REST**.

Protocolul de comunicare [**GraphQL**](https://en.wikipedia.org/wiki/GraphQL) este utilizat, astazi, pe [scara larga](https://blog.postman.com/how-to-choose-between-rest-vs-graphql-vs-grpc-vs-soap/) pentru [calitatile sale deosebite](https://www.guru99.com/ro/graphql-vs-rest-apis.html), in comparatie cu predecesorul sau.

Datorita flexibilitatii/performantelor sale **GraphQL** este preferat, in a fi pus/plasat in fata bazelor de date(ex. MySQL,NoSQL...) si nu numai, pt a servi drept server-livrator de date, sau daca vreti, plasat la capatul sau marginea conductei(*pipeline*) de livrare/extragere/procesare.

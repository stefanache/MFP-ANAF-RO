

Inspirat de acest exemplu de integrare a [agentului **GraphQL**](https://python.langchain.com/v0.2/docs/integrations/tools/graphql/)- componenta a pachetului **langchain**,

am creat un cod(asistat de [**ChatGPT**](https://chatgpt.com/c/3da6507c-193f-4af5-a162-b775cb780d0a)!) pt a extrage filme de pe site-ul **Netflix**;

Cei de la **Netflix** pun la dispozitie aceste informatii despre filmele ce ruleaza in reteaua sa folosind un serviciu(cluster de servere) de livrare **GraphQL)**

Asa ca folosind **agentul GraphQL** din **Langchain**, am creat un client-**GraphQL** catre acest serviciu pentru a extrage aceste date.

Datele primite au fost livrate **chatbot-ului** bazat pe serverul **Ollama** care ne livreaza modelul LLM **llama3**

Astfel folosind acest cod de **Chatbot/RAG** putem "vorbi", daca vreti, direct cu site-ul **Netflix**

Trebui sa va mai spun ca acest protocol [**GraphQL**](https://en.wikipedia.org/wiki/GraphQL) este un inlocuitor/adversar/o alternativa al protocolulului **REST**.

Protocolul de comunicare [**GraphQL**](https://en.wikipedia.org/wiki/GraphQL) este utilizat, astazi, pe scara larga fiind mai ***rapid*** decat predecesorul sau.

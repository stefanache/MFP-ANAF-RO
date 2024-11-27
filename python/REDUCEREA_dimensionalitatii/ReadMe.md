
Inglobarea/incorporarea(embedding)/vectorizarea este un proces de tranformare a unui text/corpus in numere =i.e= [txt2digits](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/)

Principiul [Pareto](https://ro.wikipedia.org/wiki/Principiul_Pareto) ne arata ca majoritatea informatiei utile se afla in numai 20% din intreg corpusul in timp ce cealalta parte de 80% de regula contine informatie redundanta/inutila/care se repeta daca vreti intr-o forma sau alta.

Asadar intuim ca exista un asa-zis [front-Pareto](https://en.wikipedia.org/wiki/Pareto_front) adica o granita intre esenta informatiei(20%) si restul grosier dar inutil al informatiei inglobate in corpusul analizat.

Plecand de la principiul Pareto(20 80), in cazul vectorilor(corpusului) se poate renunta la partea inutila(80%) ramanand cu partea utila(20%), operatie ce se cheama operatie de [reducere a dimensionalitatii](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/)

Ramanand cu 20% informatie practic pierdem ceva din informatie dar nu intrat de mult incat sa deformeze informatia(in sensul analizei semantice/a intelesului acesteia = NLU).

Practic daca vreti aceasta parte contine sai mult zgomot dar mai putina informatie utila fiind zona de balast a acelui corpus.

Un algoritm de [reducere a dimensionalitatii](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/) este si PCA(care separa componentele). 

Nu este singurul algoritm de reducerea dimensiopnalitatii(de pilda va puteti uita si pe familia algoritmilor [BSS](https://scikit-learn.org/1.5/auto_examples/decomposition/plot_ica_blind_source_separation.html), familie din care face parte si ICA cu varianta sa FastICA).


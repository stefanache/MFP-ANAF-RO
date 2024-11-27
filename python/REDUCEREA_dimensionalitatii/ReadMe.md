
Inglobarea/incorporarea(embedding)/vectorizarea este un proces de tranformare a unui text/corpus in numere =i.e= [txt2digits](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/)

Practic ca vorbim de text,imagine sau sunet atunci cand le reprezentam intr-un sistem de calcul va trebui sa fie transformate in numere(digitalizare/cuantizare/inglobare) pentru a putea fi "intelese" sau pt a putea vorbi cu acestea.

Asa ca, discutia noastra se refera la un [**semnal numeric**](https://en.wikipedia.org/wiki/Signal_separation), in general si nu neaparat la o forma particulara a sa(text,imagine sau sunet)

Principiul [Pareto](https://ro.wikipedia.org/wiki/Principiul_Pareto) ne arata(dpdv statistic daca vreti) ca majoritatea informatiei utile se afla in numai 20% din intreg corpusul in timp ce cealalta parte de 80% de regula contine informatie redundanta/inutila/care se repeta, daca vreti, intr-o forma sau alta.

Asadar intuim ca exista un asa-zis [front-Pareto](https://en.wikipedia.org/wiki/Pareto_front) adica o granita intre esenta informatiei(20%) si partea grosiera(80%), dar inutila care ramane din intreaga informatie(de inglobat) a corpusului nostru analizat.

Plecand de la principiul Pareto(20 80), in cazul vectorilor(corpusului) se poate renunta la partea inutila(80%) ramanand cu partea utila(20%), operatie ce se cheama operatie de [reducere a dimensionalitatii](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/)

Ramanand cu 20% informatie practic pierdem ceva din informatie dar nu intr-atat de mult incat sa deformeze informatia(in sensul analizei semantice/a intelesului acesteia = [NLU](https://en.wikipedia.org/wiki/Natural_language_understanding)).

Practic, daca vreti, aceasta parte(80% din intreg corpusul), contine si zgomot dar si informatie mai putin util,a fiind zona de balast a acelui corpus.

Un algoritm de [reducere a dimensionalitatii](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/) este si [PCA](https://users.utcluj.ro/~robert/srf/prs_lab_ro_PCA.pdf)(care separa componentele). 

Nu este singurul algoritm de reducerea dimensiopnalitatii(de pilda va puteti uita si pe familia algoritmilor [BSS](https://scikit-learn.org/1.5/auto_examples/decomposition/plot_ica_blind_source_separation.html), familie din care face parte si ICA cu varianta sa [FastICA](https://scikit-learn.org/dev/modules/generated/sklearn.decomposition.FastICA.html)).

In [algebra vectoriala](https://cismasemanuel.com/wp-content/uploads/2016/09/set-1-baze-vectoriale.pdf) se spune ca un anumit spatiu vectorial poate fi generat cu un numar redus de vectori independenti care practic pot genera intreg spatiul.

Spunem ca un set de vectori generatori(ex: x = [1,0,0], y=[0,1,0] si z=[0,0,1], unde 1 este norma [spatiului vectorial](https://ro.wikipedia.org/wiki/Dimensiune_(spa%C8%9Biu_vectorial)) al numerelor intregi naturale a.k.a N) alcatuiesc o baza a spatiului vectorial(in cazul exemplului nostru, spatiul tridimensional al numerelor naturale N = {x,y,z}); Asadar o baza va alcatui o matrice ale carui randuri pot fi vazuti ca vectori(apropo o matrice de astfel de matrici la randul sau alcatuiesc un asa-zis [tensor](https://ro.wikipedia.org/wiki/Tensor)]

Restul vectorilor(cei dependenti) pot fi scrisi ca o combinatie lineara de acesti vectori speciali(o combinatie lineara de acesti vectori  generatori).

Prin combinatie lineara intelegem de fapt operatii de amplificare(u = n * v = [2 10 14]) a vectorior(ex: v=[1 5 7]) cu scalari(numere intregi: ex n=2) si de adunare(+, vazuta aici ca translatare de vectori):

      z = 2 * v + 7 * u + ... 




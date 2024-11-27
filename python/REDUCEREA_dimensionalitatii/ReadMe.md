
Inglobarea/incorporarea(embedding)/vectorizarea este un proces de tranformare a unui text/corpus in numere =i.e= [txt2digits](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/)

Practic ca vorbim de text,imagine sau sunet atunci cand le reprezentam intr-un sistem de calcul va trebui sa fie transformate/memorate/codificate in numere(digitalizare/cuantizare/inglobare) pentru a putea fi "intelese" sau pt a putea vorbi cu acestea.

Asa ca, discutia noastra se refera la un [**semnal numeric**](https://en.wikipedia.org/wiki/Signal_separation), in general si nu neaparat la o forma particulara a sa(text,imagine sau sunet)

Principiul [Pareto](https://ro.wikipedia.org/wiki/Principiul_Pareto) ne arata(dpdv statistic daca vreti) ca majoritatea informatiei utile se afla in numai 20% din intreg corpusul in timp ce cealalta parte de 80% de regula contine informatie redundanta/inutila/care se repeta, daca vreti, intr-o forma sau alta.

Asadar intuim ca exista un asa-zis [front-Pareto](https://en.wikipedia.org/wiki/Pareto_front) adica o granita intre esenta informatiei(20%) si partea grosiera(80%), dar inutila care ramane din intreaga informatie(de inglobat) a corpusului nostru analizat.

Plecand de la principiul Pareto(20 80), in cazul vectorilor(corpusului) se poate renunta la partea inutila(80%) ramanand cu partea utila(20%, partea mai densa in informatie), operatie ce se cheama operatie de [reducere a dimensionalitatii](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/)

Ramanand cu 20% informatie practic pierdem ceva din informatie dar nu intr-atat de mult incat sa deformeze informatia(in sensul analizei semantice/a intelesului acesteia = [NLU](https://en.wikipedia.org/wiki/Natural_language_understanding)).

Practic, daca vreti, aceasta parte(80% din intreg corpusul, asa-zisa partea mai rara sau mai lipsita de informatie), contine si zgomot dar si informatie mai putin util,a fiind zona de balast a acelui corpus.

Un algoritm de [reducere a dimensionalitatii](https://nathanleclaire.com/blog/2024/03/11/creating-and-visualizing-embeddings-with-ollama-and-chatgpt/) este si [PCA](https://users.utcluj.ro/~robert/srf/prs_lab_ro_PCA.pdf)(care separa/descmpune componentele). 

Nu este singurul algoritm de reducerea dimensiopnalitatii(de pilda va puteti uita si pe familia algoritmilor [BSS](https://scikit-learn.org/1.5/auto_examples/decomposition/plot_ica_blind_source_separation.html), familie din care face parte si ICA cu varianta sa [FastICA](https://scikit-learn.org/dev/modules/generated/sklearn.decomposition.FastICA.html)).

In [algebra vectoriala](https://cismasemanuel.com/wp-content/uploads/2016/09/set-1-baze-vectoriale.pdf) se spune ca un anumit spatiu vectorial poate fi generat cu un numar redus de vectori independenti(rectangulari) care practic pot genera intreg [spatiul vectorial](https://www.math.uaic.ro/~mcrasm/depozit/Algebra_liniara_Fizica.pdf).

Spunem ca un set de [vectori generatori](https://www.ucv.ro/pdf/departamente_academice/dma/suporturi_curs/pp_curs.pdf)(ex de 3 vectori rectangulari: x = [1,0,0], y=[0,1,0] si z=[0,0,1], unde 1 este norma [spatiului vectorial](https://ro.wikipedia.org/wiki/Dimensiune_(spa%C8%9Biu_vectorial)) al numerelor intregi naturale a.k.a N) alcatuiesc o baza a spatiului vectorial(in cazul exemplului nostru, spatiul tridimensional al numerelor naturale N = {x,y,z}); Asadar o baza va alcatui o matrice ale carui coloane/randuri(dar de obicei coloanele sunt caracteristicile de reprezentare in timp ce randurile sunt exemple/mostre de observare) pot fi vazuti ca vectori(apropo o matrice-mare de astfel de matrici mai mici, la randul sau, alcatuiesc un asa-zis [tensor](https://ro.wikipedia.org/wiki/Tensor)]

Restul vectorilor(cei dependenti) pot fi scrisi ca o combinatie lineara de acesti vectori speciali(o combinatie lineara de acesti vectori  generatori).

Prin combinatie lineara intelegem de fapt operatii de amplificare(vazuta aici ca translatare, u = n * v = [2 10 14]) a vectorilor(ex: v=[1 5 7]) cu scalari(numere intregi: ex n=2) si de adunare(+, vazuta aici ca translatie+rotatie=RotoTranslatie de vectori):

      z = 2 * v + 7 * u + ... 

Asadar vedem o matrice de vectori oarecare ca o [matrice de vectori](https://en.wikipedia.org/wiki/Singular_value_decomposition)(care pot fi ***translatati***, ***rotiti*** sau ***amplificati***).

Daca luam ca exemplu, spatiul vectorial RxRxR adica spatiul tridimensional(3D) vom constata ca un vector reprezinta o linie sau o coloana a matricei.
un vector va fi reprezentat de 3 coordonate u = (x,y,z) adica este reprezentat de un punct din spatiul tridimensional de coordonate x,y, si z.

Aceste 3 numere definesc pozitia punctului, in spatiul 3D, prin 3 proiectii pe axele unui sistem cartezian.

Deci vom avea 3 marimi de segmente proiectate pe cele 3 axe ale unui sistem carteziaon **O**XYZ.

Asadar aceste 3 lungimi/marimi de segmente sunt masurtate fata de origine si atunci originea si punctul (x,y,z) definesc vectorul respectiv.

Asadar vectorul nostru **u** va avea originea in punctul O si varful in punctul de coordonate (**x**, **y**, **z**).

Din acest motiv putem spune ca directia(orientarea si sensul) vectorului nostru **u**, relativ la originea **O**,  este data de cuplul (**x**, **y**, **z**).

In aceste conditii intre spatiul cartezian si spatiul vectorilor este o asemanare perfecta(omonimie/echivalenta) care ne permite sa judecam lucrurile fiind folosind geomatria analitica peste spatiul cartezian fie sa folosim vectorii din spatii vectoriale(cei invatati la fizica)

Daca va amintiti la fizica cand adunam vectorial 2 vectori se forma acel paralelogram si diagonala mare reprezenta vectorul rezultant.

Vectorul rezultant, comparat cu cei 2 vectori originali participanti la adunare, are o marime mai mare(**amplificat**) si in plus este rotit(are alta **orientare** sau are o orientare rezultanta diferita) fata de acestia.

Stim de aici, ca daca vorbim de vectori liberi, acestia pot fi translatati si daca acestia se intersecteaza(nu sunt paraleli) atunci devin concurenti si putem sa-i adunam.

Judecata sau daca vreti, rationamentul din/in spatiul vectorilor liberi, din spatiul **fizic 3D**, are avantajul ca avem/ofera o reprezentare **vizuala**, mai concreta fata de/decat cea(reprezentarea) oferita de catre spatiul **geometric euclidian***(de dimensiune 3), cel din urma oferind un rationament mai abstract.

Trebuie deci sa retinem ca adunarea vectorilor scoate un vector care are un anumit unghi de rotatie(este ***rotit***) in spatiul 3D.

In cazul vectorilor liberi paraleli, avem nevoie de o ***translatie***(deplasare) pentru a putea sa-i punem unul peste celalt sau si mai convenabil,  pentru a-i pune unul in continuarea celuilalt pt a-i putea aduna.

Translatia poate fi si ea o translatie cu pastrarea directiei initiale deci o translatie fata de vectorul insusi(de-a lungul directiei sale proprii) sau o translatie care mentine unghiul si directia dar se deplaseaza fata de pozitia initiala pastrandu-se paralelismul de rigoare.

Aceste transformari(evidentiate de coeficienti si operatii + si *) pot fi combinate(adica pot coexista in acelasi timp in combinatii lineare) si sunt evidentiate prin matrici de **roto-translatie**.

Am apelat la un spatiu de dimensiune **n**=3 (3D, deci cu 3 grade de libertate) pt ca este mai intuitiv dar daca va ganditi la [mecanismele/articulatiile fizice/mecanice](https://sim.tuiasi.ro/wp-content/uploads/2019/11/CURS-OMM1-Mecanisme.pdf) veti afla ca aceste grade de libertate pot fi mai multe si deci, extrapoland, fireste/in consecinta, vom putea vorbi(ne putem imagina) de o dimensionalitate **n** mai mare( mai mult de 3): **u** = (X1,X2,X3,X4,X5,....X**n**).

Am incercat, pana aici, sa va ofer o "imagine" cat mai aproapiata de algebra lineara asupra vectorilor.

Oricum sau cel putin putem fi de acord sau putem conveni, pana aici, macar/cel putin ca,  [**algebra lineara**](http://adrianabirlutiu.uab.ro/cursuri/MIRF/note_curs_lab_2.pdf) ofera un suport/instrument bine-venit in zona noastra de interes([**invatare automata**](https://www.scribd.com/document/613960535/curs7IntroML))

Am vrut sa va amintesc doar ca [PCA](https://dspace.upt.ro/jspui/bitstream/123456789/615/2/BUPT_TD_Robu%20Claudiu.pdf) nu este singura metoda/tehnica/algoritm de [reducere a dimensionalitatii](https://medium.com/nerd-for-tech/dimensionality-reduction-techniques-pca-lca-and-svd-f2a56b097f7c). 

Trebuie sa va (re)amintesc, ca si bine cunoscuta metoda de descompunere [**SVD**](https://cismasemanuel.com/wp-content/uploads/2019/11/descompunerea-svd.pdf),  ne poate ajuta in atingerea acestui scop(de [reducere a dimensionalitatii](https://dspace.upt.ro/jspui/bitstream/123456789/615/2/BUPT_TD_Robu%20Claudiu.pdf)). 

Sigur discutia noastra poate continua privind metodele/tehnicile/algoritmii de/implicati in reducerea dimensiunii dar/precum si [eficienta](https://spotintelligence.com/2023/08/27/dimensionality-reduction/) acestora dar prefer sa ma opresc aici...:)




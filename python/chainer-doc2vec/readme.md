In acest [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/chainer-doc2vec) vom antrena un model **doc2vec** utilizand [chainer](https://docs.chainer.org/en/stable/).

[***Chainer***](https://docs.chainer.org/en/stable/) este un cadru **AI**(artificial inteligence)-**ML**(machine learning)-**DL**(deep leraning) foarte puternic.

la baza acestui [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/chainer-doc2vec) a stat depozitul ghithub [chainer-doc2vec](https://github.com/monthly-hack/chainer-doc2vec)

Acest depozit implementeaza un [**trainer-doc2vec**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/train_doc2vec.py) pornind de la un articol-PDF publicat de editura [**arxiv**](https://arxiv.org/pdf/1405.4053v2)

<details><summary>Iata cateva consideratii, plasate in paragraful de debut al publicatiei, intitulat <b>Abstract</b>(<i>generalitati</b>):</summary>

Mulți algoritmi de învățare automată(**ML**) necesită ca intrarea sa fie reprezentată ca o caracteristică vectoriala de lungime fixă. 

Când vine vorba de texte, una dintre cele mai comune caracteristici de lungime fixă sunt bag-ul(punga/sac) de cuvinte(eng.**BoW**).

În ciuda popularității lor, caracteristicile sacului de cuvinte(**BoW**), au două slăbiciuni/dezavantaje majore: 
 - pierd ordinea cuvintelor, si de asemenea, 
 - ignoră semantica cuvintelor. 

<br/>De exemplu, "puternic", "puternic"
și "Paris" sunt la fel de îndepărtate ca importanta(ma refer aici la ...distantele din spatiul vectorial al caracteristicilor). 
<br/>În această lucrare, se propune <b>Paragraf-Vector</b>, un algoritm nesupravegheat
care învață o caracteristică de lungime fixă<br/>(caracteristica, reprezentata 
de, bucăți de text cu lungime variabilă, cum ar fi:<br/>

    - propoziții, 
    - paragrafe și 
    - documente

   ).
       
<br/>Acest algoritm reprezintă fiecare document, printr-un vector care este antrenat să prezică 
cuvintele din document. <br/>Construcția sa, conferă acestui algoritm,
potențialul de a depăși punctele slabe ale modele de cuvinte(**BoW**). 
<br/>Rezultatele empirice arată că <b>Paragraf-Vectorii</b>(a se vedea graficele de performanta) depășesc, modelele de sac de cuvinte(**BoW**)
precum și alte tehnici de reprezentare a textului <br/>În cele din urmă, se pot realiza noi rezultate, pe mai multe sarcini de analiză a textului, cum ar fi

   - clasificări și
   - analiza sentimentelor(SA).

</details>

<details><summary>De asemenea, iata cateva alte consideratii, publicate in zona rezervata <b>Discutiei</b> finale(capitolul <i>5.</i>) ale aceluiasi articol:</summary>

Am vazut in PDF-ul ***arxiv*** cum învățarea nesupravegheată, <b>Paragraf-Vector</b>, algoritm care învață(reprezentări vectoriale) din
bucăți de text de o lungime variabila, cum ar fi propoziții și documente.

Reprezentările vectoriale sunt învățate pentru a prezice cuvintele(aproximativ corect) în contexte eșantionate din paragraf.

Experimentele noastre pe mai multe sarcini de clasificare a textului, cum ar fi
***Analiză a sentimentelor*** pe seturile de date:

  - [***Stanford Treebank***](https://www.kaggle.com/datasets/atulanandjha/stanford-sentiment-treebank-v2-sst2) și 
  - [***IMDB***](https://developer.imdb.com/non-commercial-datasets/)

demonstrează că metoda este competitivă cu cele mai avansate metode. 
<br/>Performanța bună demonstrează meritele
de Paragraf Vector în captarea semanticii para-
Grafice. De fapt, vectorii de paragraf au potențialul de a
depășește multe puncte slabe ale modelelor de sac de cuvinte.
Deși obiectivul acestei lucrări este de a reprezenta texte,
poate fi aplicată pentru a învăța reprezentări pentru
date țiale. În domeniile non-text în care analizarea nu este disponibilă-
capabil, ne așteptăm ca Paragraph Vector să fie o alternativă puternică
la modelele

</details>

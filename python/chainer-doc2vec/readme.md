In acest [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/chainer-doc2vec) vom antrena un model **doc2vec** utilizand [chainer](https://docs.chainer.org/en/stable/).

[***Chainer***](https://docs.chainer.org/en/stable/) este un cadru **AI**(artificial inteligence)-**ML**(machine learning)-**DL**(deep leraning) foarte puternic.

la baza acestui [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/chainer-doc2vec) a stat depozitul ghithub [chainer-doc2vec](https://github.com/monthly-hack/chainer-doc2vec)

Acest depozit implementeaza un trainer doc2vec pornind de la un articol-PDF publicat de editura [**arxiv**](https://arxiv.org/pdf/1405.4053v2)

<details><summary>Iata cateva consideratii publicate in paragraful Abstract:</summary>

Mulți algoritmi de învățare automată(ML) necesită ca intrarea sa fie reprezentată ca o caracteristică vectoriala de lungime fixă. 

Când vine vorba de texte, una dintre cele mai comune caracteristici de lungime fixă sunt bag-ul(punga/sac) de cuvinte(eng.BoW).

În ciuda popularității lor, caracteristicile sacului de cuvinte
au două slăbiciuni majore: 
 - pierd ordinea cuvintelor, si de asemenea, 
 - ignoră semantica cuvintelor. 
De exemplu, "puternic", "puternic"
și "Paris" sunt la fel de îndepărtate ca importanta. 
În această lucrare, se propune Paragraf-Vector, un algoritm nesupravegheat
care învață o caracteristică de lungime fixă reprezentata-
din bucăți de text cu lungime variabilă, cum ar fi
 - propoziții, 
 - paragrafe și 
 - documente. 
Algoritmul nostru reprezintă fiecare document, printr-un vector care este antrenat să prezică 
cuvintele din document. Construcția sa conferă algoritmului nostru
potențialul de a depăși punctele slabe ale modele de cuvinte. 
Rezultatele empirice arată că Paragraf-Vectorii grafici depășesc modelele de sac de cuvinte
precum și alte tehnici de reprezentare a textului În cele din urmă, realizăm noi re-
rezultate pe mai multe sarcini de analiză a textului, cum ar fi clasificări și naliza sentimentelor
.
</details>

<details><summary>De asemena iata cateva consideratii publicate in zona de concluzii ace aceluiasi articol:</summary>

Am vazut in PDF-ul ***arxiv*** cum Paragraf-Vector, o învățare nesupravegheată
algoritm care învață reprezentări vectoriale pentru variabile
bucăți de text de o anumita lungime, cum ar fi propoziții și documente.

Reprezentările vectoriale sunt învățate pentru a prezice sur-
rotunjirea cuvintelor în contexte eșantionate din paragraf.

Experimentele noastre pe mai multe sarcini de clasificare a textului, cum ar fi
 - Seturi de date de analiză a sentimentelor Stanford Treebank și 
 - IMDB

demonstrează că metoda este competitivă cu cele mai avansate
Metode. Performanța bună demonstrează meritele
de Paragraf Vector în captarea semanticii para-
Grafice. De fapt, vectorii de paragraf au potențialul de a
depășește multe puncte slabe ale modelelor de sac de cuvinte.
Deși obiectivul acestei lucrări este de a reprezenta texte,
poate fi aplicată pentru a învăța reprezentări pentru
date țiale. În domeniile non-text în care analizarea nu este disponibilă-
capabil, ne așteptăm ca Paragraph Vector să fie o alternativă puternică
la modelele

</details>
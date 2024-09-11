 In acest [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/chainer-doc2vec) vom antrena un model **doc2vec** utilizand [chainer](https://docs.chainer.org/en/stable/).

[***Chainer***](https://docs.chainer.org/en/stable/) este un cadru **AI**(artificial inteligence)->**ML**(machine learning)->**DL**(deep leraning) foarte puternic.

la baza acestui [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/chainer-doc2vec) a stat depozitul ghithub [chainer-doc2vec](https://github.com/monthly-hack/chainer-doc2vec)

Acest depozit implementeaza un [**trainer-doc2vec**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/train_doc2vec.py) pornind de la un articol-PDF publicat de editura online [**arxiv**](https://arxiv.org/pdf/1405.4053v2)

<details><summary>Iata cateva consideratii, plasate in paragraful de debut al publicatiei, intitulat <b>Abstract</b>(<i>generalitati</i>):</summary>

<br/>Mulți algoritmi de învățare automată(**ML**) necesită ca intrarea sa fie reprezentată ca o caracteristică vectoriala de lungime fixă(preprezentare prin caracteristici ale/extrase din portiuni[-lor] de **text**). 

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

<details><summary>De asemenea, iata cateva alte consideratii, publicate in zona rezervata <b>Discutiei</b> finale(capitolul <i>5.</i>), ale aceluiasi articol:</summary>

<br/>Am vazut in PDF-ul ***arxiv*** cum învățarea nesupravegheată, <b>Paragraf-Vector</b>, algoritm care învață(reprezentări vectoriale) din
bucăți de text de o lungime variabila, cum ar fi propoziții și documente.

Reprezentările vectoriale sunt învățate pentru a prezice cuvintele(aproximativ corect) în contexte eșantionate din paragraf.

Experimentele noastre pe mai multe sarcini de clasificare a textului, cum ar fi
***Analiză a sentimentelor*** pe seturile de date:

  - [***Stanford Treebank***](https://www.kaggle.com/datasets/atulanandjha/stanford-sentiment-treebank-v2-sst2) și 
  - [***IMDB***](https://developer.imdb.com/non-commercial-datasets/)

demonstrează că metoda este competitivă cu cele mai avansate metode. 
<br/>Performanța bună, demonstrează meritele
algoritmului **Paragraf-Vector** în captarea semanticii paragrafelor. 
<br/>De fapt, **vectorii-paragraf** au potențialul de a
depăși multe puncte slabe ale modelelor de tip sac de cuvinte(**BoW**).
<br/>Deși obiectivul acestei lucrări este de a reprezenta **texte**,
totusi ea poate fi aplicată si pentru a învăța reprezentări pentru
terte-date. <br/>În domeniile ***non-text***(ex. imagini ce pot contine text-grafic dar nu numai), în care capabilitatea-analizarii nu este disponibilă, este de  așteptat ca modelele **Paragraph-Vector** să fie o alternativă puternică.

</details>

Acest [**trainer**](https://github.com/monthly-hack/chainer-doc2vec)(<i>[antrenor](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/train_doc2vec.py)/invatator</i>) ce inglobeaza document/cuvinte[-e/-ul]([***document/paragraph/words embedding***](https://radimrehurek.com/gensim/models/doc2vec.html)), poate fi privit ca implementand modelul [**doc2vec**](https://markroxor.github.io/gensim/static/notebooks/doc2vec-wikipedia.html)([**DRSD**](https://en.wikipedia.org/wiki/Sentence_embedding), <small><i>Distributed Representations of Sentences and Documents</i></small>) si poate rula atat pe **CPU** cat si pe ***GPU***(in acest din urma caz, puteti obtine viteze de rulare semnificativ imbunatatite)<br/>

Daca rulati batch-ul [***_RUN.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/_RUN.bat), veti putea obtine  urmatoarele ...
<details><summary>...mesaje in consola:</summary>
 
 <br/>https://github.com/monthly-hack/chainer-doc2vec/tree/master

must be patient...if have not more resources like GPU....

<pre>
GPU: -1

# unit: 200

Window: 10

Minibatch-size: 1000

# epoch: 20

Training model: **dm-dbow**

Output type: hsm


n_vocab: 11088

n_docs: 10

data length: 72216

epoch       main/loss

1           144392
     total [###...............................................]  6.87%
this epoch [##################................................] 37.40%
       100 iter, 1 epoch / 20 epochs
       inf iters/sec. Estimated time to finish: 0:00:00.

2           129403
     total [######............................................] 13.74%
this epoch [#####################################.............] 74.80%
       200 iter, 2 epoch / 20 epochs
   0.92129 iters/sec. Estimated time to finish: 0:22:42.895942.

3           145010

4           133155
     total [##########........................................] 20.55%
this epoch [#####.............................................] 11.08%
       300 iter, 4 epoch / 20 epochs
    0.9105 iters/sec. Estimated time to finish: 0:21:15.278315.

5           130605
     total [#############.....................................] 27.42%
this epoch [########################..........................] 48.48%
       400 iter, 5 epoch / 20 epochs
   0.89849 iters/sec. Estimated time to finish: 0:19:38.967753.

6           135578
     total [#################.................................] 34.29%
this epoch [##########################################........] 85.88%
       500 iter, 6 epoch / 20 epochs
   0.89046 iters/sec. Estimated time to finish: 0:17:56.276151.

7           134106

8           134070
     total [####################..............................] 41.11%
this epoch [###########.......................................] 22.16%
       600 iter, 8 epoch / 20 epochs
   0.89715 iters/sec. Estimated time to finish: 0:15:58.631317.

9           128852
     total [#######################...........................] 47.98%
this epoch [#############################.....................] 59.56%
       700 iter, 9 epoch / 20 epochs
   0.89715 iters/sec. Estimated time to finish: 0:14:06.341340.

10          127140
     total [###########################.......................] 54.85%
this epoch [################################################..] 96.96%
       800 iter, 10 epoch / 20 epochs
   0.86712 iters/sec. Estimated time to finish: 0:12:39.723066.

11          152377

12          137933
     total [##############################....................] 61.66%
this epoch [################..................................] 33.24%
       900 iter, 12 epoch / 20 epochs
   0.85851 iters/sec. Estimated time to finish: 0:10:52.005972.

13          138708
     total [##################################................] 68.53%
this epoch [###################################...............] 70.64%
      1000 iter, 13 epoch / 20 epochs
   0.86378 iters/sec. Estimated time to finish: 0:08:51.726453.

14          135309

15          143965
     total [#####################################.............] 75.35%
this epoch [###...............................................]  6.93%
      1100 iter, 15 epoch / 20 epochs
    0.8594 iters/sec. Estimated time to finish: 0:06:58.933495.

16          133493
     total [#########################################.........] 82.22%
this epoch [######################............................] 44.32%
      1200 iter, 16 epoch / 20 epochs
   0.86015 iters/sec. Estimated time to finish: 0:05:01.844459.

17          138828
     total [############################################......] 89.09%
this epoch [########################################..........] 81.72%
      1300 iter, 17 epoch / 20 epochs
   0.85934 iters/sec. Estimated time to finish: 0:03:05.369836.

18          124601

19          125711
     total [###############################################...] 95.90%
this epoch [#########.........................................] 18.01%
      1400 iter, 19 epoch / 20 epochs
   0.86159 iters/sec. Estimated time to finish: 0:01:09.478896.

20          139796

Press any key to continue . . .
</pre>
<br/>
</details>

In [penultima](https://dexonline.ro/definitie/penultima) linie de comanda(**python train_doc2vec.py --model dm-dbow**), din acest fisier-batch(lot de lucrari) [***_RUN.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/_RUN.bat), puteti utiliza/substitui/suporta 3 tipuri de **model**:

 - **Distributed Memory** (**dm**)
 - **Distributed Bag of Words(BoW)** (**dbow**) x
 - **Distributed Memory** & **Distributed Bag of Words(BoW)** (**dm-dbow**) - <i>cel utilizat de mine in acest batch [***_RUN.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/_RUN.bat)</i>




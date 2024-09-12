<details><summary><h3><b></b><a href="https://ridgeant-com.translate.goog/blogs/langchain-embedding/?_x_tr_sl=en&_x_tr_tl=ro&_x_tr_hl=ro&_x_tr_pto=sc">Doc2Vec</a></b>(Paragraph-Vector) - extensie a <b></b><a href="https://ridgeant-com.translate.goog/blogs/langchain-embedding/?_x_tr_sl=en&_x_tr_tl=ro&_x_tr_hl=ro&_x_tr_pto=sc">Word2Vec</a></b></h3></summary>
<br/><hr/><pre>Încorporarea LangChain: o scufundare în proces | ML și AI , inteligență artificială , învățare automată | 6 februarie 2024 | Ridgeant
<br/> 
<b>Încorporarea LangChain</b>
Procesarea limbajului natural (NLP) este arta și știința de a permite mașinilor să înțeleagă și să interacționeze cu limbajul uman.
În domeniul procesării limbajului natural (NLP), încorporarea textului este un proces crucial.
Încorporarea textului se referă la procesul de conversie a cuvintelor sau expresiilor în vectori numerici, permițând mașinilor să 
înțeleagă și să proceseze limbajul într-o formă matematică.
Această transformare facilitează diverse sarcini NLP, cum ar fi <br/> - <a href="https://ridgeant-com.translate.goog/our-work/abstract-based-sentiment-analysis-system-for-the-hospitality-industry/?_x_tr_sl=en&_x_tr_tl=ro&_x_tr_hl=ro&_x_tr_pto=sc">analiza sentimentelor</a> ,<br/> - traducerea automată și<br/> - gruparea documentelor, prin captarea relațiilor semantice și a contextului în datele textuale.
În acest articol, vom vorbi despre procesul de încorporare LangChain și despre cum este gata să transforme viitorul NLP.

<b>Ce este mai exact LangChain?</b>
LangChain este un cadru open-source pentru dezvoltarea de aplicații bazate pe modele de limbaj.
LangChain, funcționând ca un cadru pentru integrarea modelelor de limbaj, împărtășește o mare parte în comun cu aplicațiile de 
model de limbaj general. 
Aceste aplicații includ analiza și rezumarea documentelor, <a href="https://ridgeant-com.translate.goog/blogs/llm-for-chatbot-design/?_x_tr_sl=en&_x_tr_tl=ro&_x_tr_hl=ro&_x_tr_pto=sc">dezvoltarea chatbot</a> , precum și analiza codului.
LangChain oferă toate instrumentele și integrările pentru construirea de aplicații LLM, inclusiv încărcarea, încorporarea și 
stocarea documentelor. 
Oferă o interfață standard pentru lanțuri, o mulțime de integrări cu alte instrumente și lanțuri end-to-end pentru aplicații comune.

<b>Cum eficientizează LangChain înglobările?</b>
LangChain eficientizează procesul de încorporare, permițând utilizatorilor să se implice cu modele de încorporare a textului prin 
intermediul prompturilor. 
Aceste solicitări servesc ca interogări în limbaj natural, spunând acțiunile dorite pe care doriți să le efectueze modelul.
Are o varietate de modele de încorporare a textului, fiecare cu avantajele și dezavantajele sale. 
Acestea includ OpenAI, Cohere și Hugging Face. 
Acești furnizori oferă o gamă de modele pre-instruite care pot fi utilizate pentru diferite sarcini NLP.
De exemplu, GPT-3 de la OpenAI este un model de limbaj de ultimă generație, antrenat pe o cantitate masivă de date text. 
Modelele de încorporare Cohere sunt concepute pentru a fi extrem de precise și eficiente, cu accent pe reducerea cantității de date 
necesare pentru antrenament. 
Hugging Face oferă o gamă largă de modele pre-antrenate, inclusiv BERT, RoBERTa și GPT-2, care pot fi reglate fin pentru sarcini 
specifice NLP.
În LangChain, aceste modele au capacitatea de a produce încorporare atât pentru interogări, cât și pentru documente. 
Când o interogare este supusă încorporarii, șirul de text este convertit într-o matrice de valori numerice, fiecare valoare 
reprezentând o dimensiune în spațiul de încorporare. 
Pentru documente, funcția embedDocuments acceptă o matrice de șiruri de text și returnează o matrice a înglobărilor respective.
Să vedem cum funcționează:<br/>
Pasul 1: <b>Preprocesarea datelor</b>
-Pentru PDF-uri:
Extrageți text din PDF-uri folosind PyPDF2, biblioteca PyMuPDF.
-Pentru CSV-uri:
Citiți fișiere CSV folosind Pandas.

prelucrarea datelor LongChain Embedding
<img src="https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/data-processing-LongChain-Embedding-768x426.png"/>

Pasul 2: <b>Procesarea textului</b>
Tokenizați textul folosind biblioteci precum NLTK sau
Efectuați curățarea și normalizarea textului.<br/>
Pasul 3: <b>Încorporarea generației</b>
Utilizați modelul RAG pentru a genera înglobări. 
(Modelul RAG este un tip de model de limbaj care combină elemente atât de <b>regăsire</b>, cât și de <b>generare</b> în sarcinile de procesare a 
limbajului natural)
Acest proces de regăsire ajută la identificarea și colectarea informațiilor pertinente legate de contextul dat.
Aici, „generare” se referă la procesul de creare a unui text sau a unui conținut asemănător omului folosind modele de 
învățare automată. 
Acestea includ propoziții, paragrafe sau fragmente mai lungi de text care imită limbajul uman.

Acum, ne vom îndrepta către abordări pentru formarea LLM:
<b>Abordări pentru formarea LLM:</b>
Există două abordări prin care putem ajusta LLM-urile cu propriile noastre date pentru o anumită sarcină (cum ar fi 
întrebare-răspuns, rezumare etc.). 
Putem folosi <a href="https://ridgeant-com.translate.goog/blogs/retrieval-augmented-generation/?_x_tr_sl=en&_x_tr_tl=ro&_x_tr_hl=ro&_x_tr_pto=sc">RAG</a> care oferă cum să încorporați datele dvs. de afaceri cu LLM-urile în timp ce executăm interogări ale clienților 
asupra datelor de afaceri.
Reglajul fin este o alegere excelentă atunci când avem o cantitate mare de date etichetate specifice sarcinii.
RAG oferă clienților o modalitate de a se angaja în conversații cu aceste documente și de a obține răspunsuri la întrebările lor din 
documente folosind LLM.

Acum, să discutăm despre diferite tipuri de modele de încorporare.
<h5>Explorarea peisajului divers al modelelor de încorporare</h5>
Există o gamă diversă de modele de încorporare care joacă un rol esențial în transformarea datelor textuale într-un format numeric. 
Aceste modele formează coloana vertebrală a aplicațiilor NLP și permit mașinilor să le înțeleagă și să le proceseze eficient. 
În această parte, explorăm diverse modele de încorporare, fiecare oferind metode și capabilități distincte.

<b>Înglobare de cuvinte</b>
-<b>Word2Vec</b>: Utilizează încorporarea cuvintelor, captând semnificațiile semantice ale cuvintelor într-un spațiu vectorial.
-<b>GloVe</b> (Global Vectors for Word Representation): Învață vectorii de cuvinte prin factorizarea logaritmului matricei de
  co-ocurență a cuvintelor.

<b>Modele lingvistice pre-instruite</b>
-<b>BERT</b> (Bidirectional Encoder Representations from Transformers): extrage înglobări contextualizate pentru cuvinte sau propoziții.
-<b>GPT</b> (Generative Pre-Trained Transformer): generează înglobări folosind învățarea nesupravegheată pe un corpus mare.
-<b>XLNet</b>: Un model bazat pe transformator care utilizează modelarea limbajului bazat pe permutare.

<b>Modele de încorporare personalizate</b>
-<b>Doc2Vec</b>: Învață încorporarea la nivel de document.
-<b>Sentence Transformers</b>: se concentrează pe încorporarea propozițiilor, utilizând modele de transformatoare pre-antrenate,
   cum ar fi <b>BERT</b> sau <b>RoBERTa</b>, pentru încorporarea propozițiilor.

<b>biblioteca FAISS</b>
FAISS, care înseamnă Facebook AI Similarity Search, este o bibliotecă open-source dezvoltată de Facebook AI Research. 
Este conceput pentru a efectua eficient căutarea de similaritate și gruparea seturi de date la scară mare, în special în 
contextul vectorilor cu dimensiuni mari.

<b>LangChain Embeddings: un pilon fundamental al cadrului AI</b>
LangChain Embeddings se mândrește cu o serie de caracteristici cheie care îmbunătățesc experiența generală a utilizatorului. 
Versatilitatea platformei strălucește prin compatibilitatea cu diverși furnizori de modele, oferind utilizatorilor libertatea de
a-l selecta pe cel care se aliniază cerințelor lor specifice.
Asigurând eficiența, LangChain încorporează caracteristici precum setările de timeout și gestionarea limitelor de rată, 
garantând o utilizare fără întreruperi a API-ului. 
Mai mult, platforma acordă prioritate fiabilității cu mecanisme de gestionare a erorilor încorporate, permițându-i să reîncerce 
automat o solicitare de până la 6 ori în cazul unei erori API, consolidându-și performanța robustă.
De la analize complexe de date la chatbot-uri captivante, AI a revoluționat diverse domenii. 
Servind drept coloană vertebrală pentru numeroase <a href="https://ridgeant-com.translate.goog/services/machine-learning-services/?_x_tr_sl=en&_x_tr_tl=ro&_x_tr_hl=ro&_x_tr_pto=sc">soluții de inteligență artificială</a> , modelele lingvistice mari (LLM) permit 
interacțiunile umane, cu ușurință în utilizare și intuitivitate.</pre><br/><hr/>
</details>

 In acest [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/chainer-doc2vec) vom antrena un model **doc2vec** utilizand [chainer](https://docs.chainer.org/en/stable/).

[***Chainer***](https://docs.chainer.org/en/stable/) este un cadru **AI**(artificial inteligence)->**ML**(machine learning)->**DL**(deep leraning) foarte puternic.

la baza acestui [**workshop**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/python/chainer-doc2vec) a stat depozitul ghithub [chainer-doc2vec](https://github.com/monthly-hack/chainer-doc2vec)

[**Doc2Vec**](https://medium.com/kinomoto-mag/developing-enhanced-chatbots-with-langchain-and-document-embeddings-an-extensive-manual-and-6ad4b4844dc8) este o extensie a modelulului **Word2Vec** care generează vectori pentru propoziție/paragraf/document, permițând reprezentarea unor blocuri mai mari de text.


[**Doc2Vec** (**Paragraph Vector**)](https://medium.com/kinomoto-mag/developing-enhanced-chatbots-with-langchain-and-document-embeddings-an-extensive-manual-and-6ad4b4844dc8) - O extensie a modelului **Word2Vec** este conceput special pentru a crea înglobări pentru blocuri mai mari de text, cum ar fi propoziții, paragrafe sau documente întregi. <br/>**Doc2Vec**, introduce un vector ***„ID document”*** care este antrenat, alături de ceilalti vectori de cuvinte, captând direct ***unicitatea*** contextului documentului.

Acest depozit implementeaza un [**trainer-doc2vec**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/train_doc2vec.py) pornind de la un articol-PDF publicat de editura online [**arxiv**](https://arxiv.org/pdf/1405.4053v2)

<details><summary>Iata cateva consideratii, plasate in paragraful de debut al publicatiei, intitulat <b>Abstract</b>(<i>generalitati</i>):</summary>
<hr/>
<br/>Mulți algoritmi de învățare automată(**ML**) necesită ca intrarea sa fie reprezentată ca(sau daca vreti, codificata/rezumata/eticheta/redusa la-) o caracteristică vectoriala de lungime fixă(reprezentare prin caracteristici ale/extrase din portiuni[-lor] de **text**). 

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
   - analiza sentimentelor(SA).<hr/>
</details>

<details><summary>De asemenea, iata cateva alte consideratii, publicate in zona rezervata <b>Discutiei</b> finale(capitolul <i>5.</i>), ale aceluiasi articol:</summary>
<hr/>
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
<hr/>
</details>

Acest [**trainer**](https://github.com/monthly-hack/chainer-doc2vec)(<i>[antrenor](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/train_doc2vec.py)/invatator</i>) ce inglobeaza document/cuvinte[-e/-ul]([***document/paragraph/words***](https://radimrehurek.com/gensim/models/doc2vec.html) [***embeddings***](https://python.langchain.com/v0.1/docs/modules/data_connection/text_embedding/)), poate fi privit ca implementand modelul [**doc2vec**](https://markroxor.github.io/gensim/static/notebooks/doc2vec-wikipedia.html)([**DRSD**](https://en.wikipedia.org/wiki/Sentence_embedding), <small><i>Distributed Representations of Sentences and Documents</i></small>) si poate rula atat pe **CPU** cat si pe ***GPU***(in acest din urma caz, puteti obtine viteze de rulare semnificativ imbunatatite)<br/>

Daca rulati batch-ul [***_RUN.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/_RUN.bat), veti putea obtine  urmatoarele ...
<details><summary>...mesaje-consola:</summary>
<hr/> 
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
<hr/>
<br/>
</details>

In [penultima](https://dexonline.ro/definitie/penultima) linie de comanda(**python train_doc2vec.py --model dm-dbow**), din acest fisier-batch(lot de lucrari) [***_RUN.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/_RUN.bat), puteti [utiliza](https://medium.com/kinomoto-mag/developing-enhanced-chatbots-with-langchain-and-document-embeddings-an-extensive-manual-and-6ad4b4844dc8)/substitui/suporta 3 tipuri de **model**:

 - **Distributed Memory** (**dm**)
 - **Distributed Bag of Words(BoW)** (**dbow**) x
 - **Distributed Memory** & **Distributed Bag of Words(BoW)** (**dm-dbow**) - <i>cel utilizat de mine in acest batch [***_RUN.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/_RUN.bat)</i>

Desigur, odata ce ati antrenat un astfel de model, il puteti salva local, intr-un fisier(de tip [**word2vec.model**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/word2vec.model) sau [**doc2vec.model**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/doc2vec.model)) si opoi, il puteti testa sau, il puteti [utiliza](https://medium.com/kinomoto-mag/developing-enhanced-chatbots-with-langchain-and-document-embeddings-an-extensive-manual-and-6ad4b4844dc8) ori de cate ori veti avea nevoie de acesta, in predictie(ca si model [**generative-AI**](https://spotintelligence.com/2023/09/06/doc2vec/)).

O astfel de utilizare/folosire a modelului generat/antrenat anterior de tip [**doc2vec.model**](https://medium.com/wisio/a-gentle-introduction-to-doc2vec-db3e8c0cce5e), o gasiti in fisierul [**search.py**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/search.py); 
<br/>Acest test poate fi rulat prin executia batch-ului [**_Test.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/_Test.bat) si face o regasire a intrarii(dupa similaritate) utilizand modelul [**doc2vec.model**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/chainer-doc2vec/doc2vec.model).

Pentru textul de intrare stocat in fisierul input.txt]() ar trebui sa obtineti urmatorul... 
<details><summary>...raspuns in consola</summary>
  <br/><hr/>
    https://github.com/monthly-hack/chainer-doc2vec/tree/master
    TEST: must be patient...if have not more resources like GPU....
    >> query: An American in Paris
    Aristotle: 0.16381007432937622
    A: 0.10739149153232574
    Albedo: 0.10110612213611603
    Achilles: 0.08995915949344635
    Abraham Lincoln: 0.0801846906542778
    >>
    Press any key to continue . . .
  <hr/><br/>
</details>
O incercare similara(**train_doc2vec.py**,**train_word2vec.py** =sau=  orice alta reprezentare **"data"2vec**) poate fi descarcata/gasita [d]in acest depozit-github [@***dkaterenchuk***/**py_anything2vec**](https://github.com/dkaterenchuk/py_anything2vec), dar in acest caz este libraria-[**NLP**](https://dokumen.pub/practical-natural-language-processing-a-comprehensive-guide-to-building-real-world-nlp-systems-1492054054-9781492054054-h-1409126.html)folosita  sau instrumentul-[**NLP**](https://www.netinfo.click/books/prog/The%20Handbook%20of%20NLP%20with%20Gensim.pdf) folosit pentru crearea/antrenarea/generarea modelelor(**word2vec.model** si **doc2vec.model**) este [**gensim**](https://radimrehurek.com/gensim/)

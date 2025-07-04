Salut!

[**Transformers(T)**](https://en.wikipedia.org/wiki/Transformer_(deep_learning_architecture)#Subsequent_work) este(fara doar si poate) [arhitectura](https://poloclub.github.io/transformer-explainer/) cea mai utilizata astazi in taskurile-AI(ML/[DL](https://ai-romania.ro/revolutionarea-ia-prin-transformer-si-llm-o-explicatie-detaliata/)) moderne(spre ex. traducerea unui text foarte lung al unei carti din lb. engleza in lb. romana sau spre ex. pt obtinerea unui rezumat al unei carti foarte stufoase si complexe...).

[Transformatoarele](https://medium.com/@sujankarki269/understanding-transformer-by-step-by-step-math-9ba09bb4ac88) au avantajul că NU au unități recurente, necesitând astfel mai puțin timp de antrenament decât arhitecturile neuronale recurente anterioare (R[NN](https://www.youtube.com/watch?v=KphmOJnLAdI&ab_channel=StatQuestwithJoshStarmer), cum ar fi memoria pe termen scurt ([LSTM](https://en.wikipedia.org/wiki/Long_short-term_memory)).

[Variații](https://e2eml.school/transformers.html) ulterioare(de/ale **Transformers**) au fost adoptate pe scară largă pentru antrenarea modelelor lingvistice mari ([LLM](https://en.wikipedia.org/wiki/Large_language_model)) pe seturi de date (lingvistice) mari .

[**Atentia**](https://en.wikipedia.org/wiki/Attention_(machine_learning)) este o metodă de învățare automată(ML) care determină importanța fiecărei componente dintr-o secvență în raport cu celelalte componente din acea secvență( a se re-vedea sistemul [QKV](https://medium.com/@mucun.gaoxin/understanding-the-key-equation-in-transformer-b72d36edd9b9) al atentiei si notiunile [algebrei lineare](https://medium.com/@ambika199820/basic-concepts-of-linear-algebra-for-data-science-and-machine-learning-1e2ebdc56521) aferente!). 
<br/>În procesarea limbajului natural(NLP), importanța este reprezentată de ponderi „soft” atribuite fiecărui cuvânt dintr-o propoziție. 
<br/>Mai general, atenția codifică vectori numiți încorporări de token-uri pe o secvență cu lățime fixă , care poate varia de la zeci la milioane de token-uri în dimensiune.
<br/>Spre deosebire de ponderile „hard”, care sunt calculate în timpul trecerii de antrenament invers, ponderile „soft” există doar în trecerea înainte și, prin urmare, se schimbă cu fiecare pas al inputului(intrarii). 
<br/>Proiectele anterioare au implementat mecanismul de **atenție** într-un sistem de traducere a limbajului de tip rețea neuronală recurentă serială (RNN), dar un design mai recent, și anume [**Transformatorul(T)**](https://towardsdatascience.com/the-map-of-transformers-e14952226398/) , a eliminat RNN secvențial mai lent și s-a bazat mai mult pe schema de atenție paralelă mai rapidă.
<br/>Inspirat de ideile despre ***atenția** la oameni* , mecanismul atenției a fost dezvoltat pentru a aborda punctele slabe ale valorificării informațiilor din straturile ascunse ale rețelelor neuronale recurente. 
<br/>Rețelele neuronale recurente(RNN) favorizează informațiile mai recente conținute în cuvintele de la sfârșitul unei propoziții, în timp ce informațiile anterioare în propoziție tind să fie atenuate(uitate). 
<br/>**Atenția** permite unui simbol, acces egal, la orice parte a unei propoziții, in mod direct, mai degrabă decât doar prin starea anterioară.

Mecanismul [**(auto)atentiei**](https://www.geeksforgeeks.org/cross-attention-mechanism-in-transformers/)(utilizat in [**Transformers**](https://medium.com/analytics-vidhya/understanding-q-k-v-in-transformer-self-attention-9a5eddaa5960)!) este implementat/calculat/procesat prin (invocarea) functiei-de-[activare](https://poloclub.github.io/transformer-explainer/) [**softmax**](https://dev.to/jliciagasilva/differential-transformers-explained-3h2j?signin=true#_=_)(functie care normalizeaza scorul de atentie pt a determina importanta fiecarui element al intrarii/de intrare).

Problema acestuia([T](https://medium.com/@sujankarki269/understanding-transformer-by-step-by-step-math-9ba09bb4ac88)) este ca in cazul contextelor(ferestrelor de context) lungi/mari isi foloseste mecanismul [Atentiei/ML](https://en.wikipedia.org/wiki/Attention_(machine_learning)) defectuos,
alocand o "atentie(hai sa spunem ...suplimentara/excesiva/inutila/redundanta)", continutului irelevant(zgomotos), ducand la o **dispresie** importanta a (auto)atentiei acestuia(asadar este nevoie de o reducere a complexitatii!).

In aceste conditii a aparut conceptul de [**Differential(DIFF)-Transformers(DT)**](https://medium.com/@jagadeesan.ganesh/differential-transformers-an-advanced-approach-to-efficient-attention-in-nlp-8b9ffd931df5), concept ma straduiesc sa-l acoper prin cateva link-uri/referente (sper eu...)interesante:

 - [medium@jagadeesan.ganesh: DT-an-advanced-approach-to-efficient-attention-in-NLP](https://medium.com/@jagadeesan.ganesh/differential-transformers-an-advanced-approach-to-efficient-attention-in-nlp-8b9ffd931df5)
 - [medium@sahin.samia: DT-explained-what-is-it-and-how-does-it-work](https://medium.com/@sahin.samia/differential-transformer-explained-what-is-it-and-how-does-it-work-437d91bd8724)
 - [medium@isaakmwangi2018: intro-to-DT-a-new-attention-mechanisms-for(4)-LLMs](https://medium.com/@isaakmwangi2018/intro-to-differential-transformers-a-new-attention-mechanisms-for-large-language-models-llms-9d977b5857ae)
 - [medium@machine-learning-made-simple: an-introduction-to-the-DT](https://machine-learning-made-simple.medium.com/an-introduction-to-the-differential-transformer-ecaa86b1b6a7)
 - [YT@FahdMirza: DT Explained in Simple Words](https://www.youtube.com/watch?v=9aS4334WX0o&ab_channel=FahdMirza)
 - [medium@artgor: Paper review DT](https://artgor.medium.com/paper-review-differential-transformer-89a47bbb9700)
 - [medium@AykutCayir34: lets-implement-DT-paper](https://medium.com/@AykutCayir34/lets-implement-differential-transformer-paper-0e4499659604)
 - [GH@paulilioaica: DT](https://github.com/paulilioaica/Differential-Transformer)
 - [theAIsummer: Transfomers in CV](https://theaisummer.com/transformers-computer-vision/)
 - [arxiv: Understanding Differential Transformer Unchains Pretrained Self-Attentions](https://arxiv.org/html/2505.16333v1)
 - [linkden-pulse@andrey-lukyanenko: paper-review-DT](https://www.linkedin.com/pulse/paper-review-differential-transformer-andrey-lukyanenko-dbizf/)
 - [ro-electronica-azi: amplificatoarele-sunt-esentiale-pentru-precizia(eliminarea zgomotului-aditiv prin scadere si odata cu acesta eliminam acest tip de eroare)-unui-electrocardiograf-ecg](https://electronica-azi.ro/amplificatoarele-sunt-esentiale-pentru-precizia-unui-electrocardiograf-ecg/); [AO DIFF](https://eprofu.ro/docs/electronica/analogica/circuite/3amplificatoare-operationale.pdf)
 - [...](https://www.google.com/search?q=AI+differential+transformers&sca_esv=696a4842670b0588&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AE3TifO-3zWJVnMVH2_r__rjWgEZriebVQ%3A1748159812639&ei=RM0yaMDfJsqsxc8Ps9rfgA8&ved=0ahUKEwjAkZLlkr6NAxVKVvEDHTPtF_AQ4dUDCBE&uact=5&oq=AI+differential+transformers&gs_lp=EgNpbWciHEFJIGRpZmZlcmVudGlhbCB0cmFuc2Zvcm1lcnMyBxAjGCcYyQJItRBQngtYngtwAXgAkAEAmAFvoAFvqgEDMC4xuAEDyAEA-AEBmAIBoAJymAMAiAYBkgcDMC4xoAfMArIHAzAuMbgHcsIHAzAuMcgHAg&sclient=img)


***Transformatorul DIFF(TD)*** introduce un mecanism de **atenție-diferențială** care in esenta compară(prin diferenta) două hărți [softmax](https://en.wikipedia.org/wiki/Softmax_function)(scorul de atentie provine din mecanismul de atentie care permite modelului sa se concentreze pe o parte specifica a secventei de intrare atunci cand genereaza iesirea, deoarece daca ne gandim la o RN, modelul are 70 miliarde de parametrii diferiti apoi sunt ponderile, sunt biti si deci se intampla multe lucruri in straturile modelului...incat in loc sa acopere totul, modelul isi concentreaza atentia asupra unei parti specifice ale acelei intrari si apoi genereaza iesirea cu ajutorul functiei [softMax](https://medium.com/@ppbhatt500/differential-transformers-bit-by-bit-b1-d96ed0bbd748) si asta duce la cateva beneficii importante). 

Diferența dintre aceste hărți permite modelului să:

 - Sa se Concentreze pe informațiile esențiale , ignorând contextul irelevant.
 - Sa-si Îmbunătățeasca robustețea atunci când abordeaza sarcini complexe, cu mai mulți pași.
 - Sa-si Îmbunătățeasca performanța la procesarea datelor de intrare cu context lung , cum ar fi text de lungimea unei cărți sau date din mai multe documente .

Acest design(***TD***) asigură că modelul(**LLM**) oferă rezultate mai precise, stabile și eficiente , chiar și în scenarii dificile care implică intrări la scară largă sau date zgomotoase.

Asadar ***TD*** introduce invatarea bazata pe [atentia](https://www.3blue1brown.com/lessons/attention)/concentrarea indreptata asupra zonelor <ins>esentiale/diferentiate</ins> ale textelor mari.

[Inovația cheie](https://medium.com/@ppbhatt500/differential-transformers-bit-by-bit-b1-d96ed0bbd748)(a ***TD***-ului) constă în faptul că modelul calculează diferența dintre două matrici SoftMax , generate după etapele de identificare a mai multor elemente și de autoatenție, unde fiecare matrice accentuează aspecte diferite ale propoziției. 
<br/>Prin scăderea acestor matrici, se creează o matrice nouă, mai rafinată, oferind o înțelegere mai clară a relațiilor dintre elemente. 
<br/>Gradul de scădere este controlat de un parametru numit Lambda - cu cât Lambda este mai mare, cu atât este mai mare magnitudinea diferenței. 
<br/>Acest proces permite modelului să se concentreze nu doar pe ***importanța*** elementelor, ci și pe [***diferențele***](https://medium.com/analytics-vidhya/solving-differential-equations-with-transformers-21648d3a1695) și ***dependențele*** acestora, ceea ce duce la o mai bună *înțelegere(NLU) contextuală*.

Un alt proiect interesant este si [***K-Transformers***](https://www.youtube.com/watch?v=k9FGiK5Fu0M&ab_channel=FahdMirza)

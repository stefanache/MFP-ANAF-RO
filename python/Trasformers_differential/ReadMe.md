Salut!

[**Transformers**](https://en.wikipedia.org/wiki/Transformer_(deep_learning_architecture)#Subsequent_work) este fara doar si poate arhitectura cea mai utilizata astazi in taskurile-AI(ML/DL) moderne.

Transformatoarele au avantajul că NU au unități recurente, necesitând astfel mai puțin timp de antrenament decât arhitecturile neuronale recurente anterioare (RNN), cum ar fi memoria pe termen scurt (LSTM).

Variații ulterioare au fost adoptate pe scară largă pentru antrenarea modelelor lingvistice mari (LLM) pe seturi de date (lingvistice) mari .

Problema lui este ca in cazul contextelor(ferestrelor de context) lungi isi foloseste mecanismul [Atentiei/ML](https://en.wikipedia.org/wiki/Attention_(machine_learning)) defectuos,
alocand o "atentie  excesiva", continutului irelevant(zgomotos), ducand la o **dispresie** importanta a (auto)atentiei acestuia.

In aceste conditii a aparut conceptul de [**Differential-Transformers(DT)**](https://medium.com/@jagadeesan.ganesh/differential-transformers-an-advanced-approach-to-efficient-attention-in-nlp-8b9ffd931df5) prin cateva link-uri/referente interesante:

 - [medium@jagadeesan.ganesh: DT-an-advanced-approach-to-efficient-attention-in-NLP](https://medium.com/@jagadeesan.ganesh/differential-transformers-an-advanced-approach-to-efficient-attention-in-nlp-8b9ffd931df5)
 - [medium@sahin.samia: DT-explained-what-is-it-and-how-does-it-work](https://medium.com/@sahin.samia/differential-transformer-explained-what-is-it-and-how-does-it-work-437d91bd8724)
 - [medium@isaakmwangi2018: intro-to-DT-a-new-attention-mechanisms-for(4)-LLMs](https://medium.com/@isaakmwangi2018/intro-to-differential-transformers-a-new-attention-mechanisms-for-large-language-models-llms-9d977b5857ae)
 - [medium@machine-learning-made-simple: an-introduction-to-the-DT](https://machine-learning-made-simple.medium.com/an-introduction-to-the-differential-transformer-ecaa86b1b6a7)
 - [medium@artgor: Paper review DT](https://artgor.medium.com/paper-review-differential-transformer-89a47bbb9700)
 - [medium@AykutCayir34: lets-implement-DT-paper](https://medium.com/@AykutCayir34/lets-implement-differential-transformer-paper-0e4499659604)
 - [GH@paulilioaica: DT](https://github.com/paulilioaica/Differential-Transformer)

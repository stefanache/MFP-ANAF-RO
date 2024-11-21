<a href="https://arxiv.org/pdf/2310.11453"><b>Abstract / Rezumat:</b></a>
<hr/>
    <pre>
        Dimensiunea tot mai mare a modelelor lingvistice mari(LLM) a impus/adus noi provocări pentru implementarea acestora și 
    au fost exprimate îngrijorări cu privire la impactul/amprenta asupra mediului din cauza consumului ridicat de energie 
    consumata pt procesare.
        În această lucrare, se prezintă <b>BitNet</b>, o noua arhitectură <b>Transformer(convertor)</b> scalabilă și stabilă pe/de 1 bit, 
    concepută pentru modele de limbaj mari(LLM). 
        Mai exact, prezentăm(din zbor/succint)<b>BitLinear</b> ca o înlocuire drop-in a stratului <b>nn.Linear</b> pentru a antrena/invata 
    greutăți(<b>W</b>eights adica parametrii) de/stocati pe 1 bit(de fapt au <a href="https://pub.towardsai.net/understanding-1-58-bit-large-language-models-88373010974a">3 valori:-1,0,1</a> si deci se vor stoca pe 
    2^<b>1.58b</b>iti = aproximativ/~ 3 valori binare);
        Mai succint, când reprezentăm un sistem cu 3 valori în binar, numărul de biți de care avem nevoie este 
                                        <b>(log 3) / (log 2) = 1,58</b>.
        Rezultatele experimentale privind modelarea lingvistică arată că <b>BitNet</b> reușește  o performanță competitivă, reducând 
    în același timp substanțial  amprenta memoriei și consumul de energie, în comparație cu metodele de cuantizare de ultimă 
    generație pe 8 biți(<b>8b</b>) și FP<b>16</b> - Liniile de bază ale transformatorului(convertorului). 
        În plus, <b>BitNet</b> prezintă o lege/regula de scalare asemănătoare <b>Transformatorilor de precizie completă</b>, 
    sugerând potențialul său de scalare eficientă la egalitate cu modele de limbaj mai mari(LLM), menținând în același timp
    beneficiile de eficiență și performanță. 
        ...
    </pre>
<hr/>
            
Pornind de la acest [studiu](https://arxiv.org/pdf/2310.11453) intitulat **BitNet: Scaling 1-bit Transformers for Large Language Models**, va propun sa incercati/lucrati cu libraria-github [**bitnet**](https://github.com/kyegomez/BitNet/tree/main)

Inainte de toate descarcati continutul depozitului [bitnet](https://github.com/kyegomez/BitNet/tree/main);

Eu aici(in [acest depozit](python/BitNet)) am incercat sa incarc tot/intreg proiectul [**bitnet**](https://github.com/kyegomez/BitNet/tree/main)
 dar din pacate directorul [**data**](https://github.com/kyegomez/BitNet/tree/main/data) este gol, pt ca nu am putut incarca si fisierul [**enwik8.GZ**](https://github.com/kyegomez/BitNet/tree/main/data/enwik8.gz)(34.9 MB) - care este mai mare decat ***25 MB***(limita maxima prevazuta de cei de la Github)

De asemenea, va recomand sa cititi si acest [README](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/BitNet/README_1st.md) al proiectului original(pe care eu l-am redenumit ***README_1st.md***!!!)

Fisierul de rulare al exemplelor acestui proiect [**bitnet**](https://github.com/kyegomez/BitNet/tree/main) este [_RUN.bat]()

Observatii:
- decomentati(stergeti REM din fata liniilor de comanda) rand pe rand, pentru a rula fiecare exemplu in parte
- puteti aprofunda daca doriti si acest subiect al cuantizarii prezentat in finalul lucrarii [RAG_local_website](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_local_website)
- un [exemplu de utilizare BitNet(BitLinear)](https://huggingface.co/blog/smollm) poate fi gasit in acest proiect intitulat [Bitnet-SmolLM-135M](https://huggingface.co/ighoshsubho/Bitnet-SmolLM-135M);
  Modelele **SmolLM** sunt concepute pentru a fi mici și pot rula local pe diverse configurații hardware(spre exemplu pot rula pe un ***iPhone 15***-care are 6 GB de DRAM sau pe un ***iPhone 15 Pro***-care are 8 GB).

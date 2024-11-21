<a href="https://arxiv.org/pdf/2310.11453"><b>Abstract / Rezumat:</b></a>
<hr/>
    <pre>
        Dimensiunea tot mai mare a modelelor lingvistice mari(LLM) a impus/adus noi provocări pentru implementarea acestora și 
    au fost exprimate îngrijorări cu privire la impactul/amprenta asupra mediului din cauza consumului ridicat de energie 
    consumata pt procesare.
        În această lucrare, se prezintă <b>BitNet</b>, o arhitectură Transformer scalabilă și stabilă pe/de 1 bit, concepută pentru 
    modele de limbaj mari(LLM). 
        Mai exact, prezentăm(din zbor/succint)<b>BitLinear</b> ca  o înlocuire drop-in a stratului <b>nn.Linear</b> pentru a antrena/invata 
    greutăți(<b>W</b>eights) de 1 bit(<b>1.58b</b>). 
        Rezultatele experimentale privind modelarea lingvistică arată că BitNet reușește  o performanță competitivă, reducând 
    în același timp substanțial  amprenta memoriei și consumul de energie, în comparație cu metodele de cuantizare de ultimă 
    generație pe 8 biți(<b>8b</b>) și FP<b>16</b> - Liniile de bază ale transformatorului. 
        În plus, BitNet prezintă o lege/regula de scalare asemănătoare Transformatorilor de precizie completă, 
    sugerând potențialul său de scalare eficientă la egalitate modele de limbaj mai mari(LLM), menținând în același timp
    beneficiile de eficiență și performanță. 
        ...
    </pre>
<hr/>
            
Pornind de la acest [studiu](https://arxiv.org/pdf/2310.11453), va propun sa incercati/lucrati cu libraria-github [**bitnet**](https://github.com/kyegomez/BitNet/tree/main)

Inainte de toate descarcati continutul depozitului [bitnet](https://github.com/kyegomez/BitNet/tree/main);

Eu aici(in [acest depozit](python/BitNet)) am incercat sa descarc tot/intreg proiectul [**bitnet**](https://github.com/kyegomez/BitNet/tree/main)
 dar din pacate directorul [**data**](https://github.com/kyegomez/BitNet/tree/main/data) este gol, pt ca nu am putut incarca si fisierul [**enwik8.GZ**](https://github.com/kyegomez/BitNet/tree/main/data/enwik8.gz)(34.9 MB) - care este mai mare decat ***25 MB***(limita maxima prevazuta de cei de la Github)

De asemenea, va recomand sa cititi si acest [README](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/BitNet/README_1st.md) al proiectului original(pe care eu l-am redenumit !!!)

Fisierul de rulare al exemplelor acestui proiect [**bitnet**](https://github.com/kyegomez/BitNet/tree/main) este [_RUN.bat]()

Nota:
- decomentati(stergeti REM din fata liniilor de comanda) rand pe rand, pentru a rula fiecare exemplu in parte
- puteti aprofunda daca doriti si acest subiect al cuantizarii prezentat in finalul lucrarii [RAG_local_website](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_local_website)

<b>Abstract / Rezumat:</b>
<hr/>
    <pre>
        Dimensiunea tot mai mare a modelelor lingvistice mari a impus provocări pentru implementarea acestora și 
    a exprimat îngrijorări cu privire la impactul/amprenta asupra mediului din cauza consumului ridicat de energie.
        În această lucrare, se prezintă <b>BitNet</b>, o arhitectură Transformer scalabilă și stabilă pe 1 bit, concepută pentru 
    modele de limbaj mari(LLM). 
        Mai exact, prezentăm <(din zbor/succint)b>BitLinear</b> ca  o înlocuire drop-in a stratului <b>nn.Linear</b> pentru a antrena 
    greutăți de 1 bit. 
        Rezultatele experimentale privind modelarea lingvistică arată că BitNet reușește  o performanță competitivă, reducând 
    în același timp substanțial  amprenta memoriei și consumul de energie, în comparație cu metodele de cuantizare de ultimă 
    generație pe 8 biți și FP16 - Liniile de bază ale transformatorului. 
        În plus, BitNet prezintă o lege/regula de scalare asemănătoare Transformatorilor de precizie completă, 
    sugerând potențialul său de scalare eficientă la egalitate modele de limbaj mai mari(LLM), menținând în același timp
    beneficiile de eficiență și performanță. 
        ...
    </pre>
<hr/>
            
Pornind de la acest [studiu](https://arxiv.org/pdf/2310.11453), va propun sa incercati/lucrati cu libraria [**bitnet**](https://github.com/kyegomez/BitNet/tree/main)

Inainte de toate descarcati continutul depozitului [bitnet](https://github.com/kyegomez/BitNet/tree/main);

De asemenea, va recomand sa cititi si  [README](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/BitNet/README_1st.md)-ul proiectuilui(pe care eu l-am redenumit !!!)

Eu aici am descarcat tot dar din pacate directorul data este gol pt ca nu am putut descarca fisierul **enwik8.GZ** care este mai mare decat 25kB(limita maxima prevazuta de cei de la Github)

Fisierul de rulare este [_RUN.bat]()

Nota:
- decomentati(stergeti REM din fata liniilor de comanda) rand pe rand, pentru a rula fiecare exemplu in parte
- puteti aprofunda daca doriti si acest subiect al cuantizarii prezentat in finalul lucrarii [RAG_local_website](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/RAG_local_website)

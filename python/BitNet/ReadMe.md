<b>Abstract:</b>
<hr/>
    <pre>
    Dimensiunea tot mai mare a modelelor lingvistice mari a pus provocări pentru implementare
    și a exprimat îngrijorări cu privire la impactul asupra mediului din cauza consumului ridicat de energie.
    În această lucrare, prezentăm BitNet, o arhitectură Transformer scalabilă și stabilă pe 1 bit.
    tură concepută pentru modele de limbaj mari. Mai exact, prezentăm BitLinear ca
    o înlocuire drop-in a stratului nn.Linear pentru a antrena greutăți de 1 bit din
    zgâria. Rezultatele experimentale privind modelarea lingvistică arată că BitNet reușește
    performanță competitivă, reducând în același timp substanțial amprenta memoriei și
    consumul de energie, în comparație cu metodele de cuantizare de ultimă generație pe 8 biți și
    FP16 Liniile de bază ale transformatorului. În plus, BitNet prezintă o lege de scalare asemănătoare
    Transformatori de precizie completă, sugerând potențialul său de scalare eficientă la egalitate
    modele de limbaj mai mari, menținând în același timp beneficiile de eficiență și performanță. Antrenament de la zero
    </pre>
<hr/>
Pornind de la acest [studiu](https://arxiv.org/pdf/2310.11453), va propun sa incercati/lucrat cu libraria [**bitnet**](https://github.com/kyegomez/BitNet/tree/main)

Inainte de toate descarcati continutul depozitului [bitnet](https://github.com/kyegomez/BitNet/tree/main);

De asemenea, va recomand sa cititi si  [README](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/BitNet/README_1st.md)-ul proiectuilui(pe care eu l-am redenumit !!!)

Eu aici am descarcat tot dar din pacate directorul data este gol pt ca nu am putut descarca fisierul **enwik8.GZ** care este mai mare decat 25kB(limita maxima prevazuta de cei de la Github)

Fisierul de rulare este [_RUN.bat]()

Nota:
- decomentati(stergeti REM din fata liniilor de comanda) rand pe rand fiecare exemplu in parte

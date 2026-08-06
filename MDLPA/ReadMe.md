Un exemplu CAD de transformare **.jpg**(desen tehnic fundatie/sapatura/ground-level) transformat in **IFC** (standard **3D** al **BIM**):

Am un ***GPU*** **Nvidia RTX 4060 8GB VRAM**

Am instalat [**Ollama**](https://www.thomas-krenn.com/en/wiki/Installation_of_Ollama) pe **Ubuntu 24.04 LTS**:

Si apoi am instalat 2 modele(**VLM**-uri)

 - qwen2.5vl:7b                           5ced39dfa4ba    6.0 GB    29 hours ago    
 - **qwen2.5vl:3b**                           fb90415cde1e    3.2 GB    29 hours ago  (modelul VLM folosit in cele din urma- a SE VEDEA  **Modelfile** !!!) 

bash:

**ollama run qwen2.5vl:3b**

Pentru a gestiona corect dependențele, variabilele de mediu și pentru a izola acest proiect ca un profesionist, este recomandat să folosești un mediu virtual Python (.venv) și 

un fișier de configurare .env.Iată cum configurezi proiectul pas cu pas folosind această structură curată:

1. Structura finală a folderelor

Creează un dosar numit ProiectBIM pe calculatorul tău. 

Structura lui trebuie să arate așa:

<pre>
ProiectBIM/
   ├── <b>.venv/</b>               # Folderul cu mediul virtual (se generează automat)
   ├── <b>qcad/</b>
   │      └── plan_fundație.jpg # Imaginea ta cu planul de structură
   ├── .env                 # Fișierul cu variabilele de mediu
   ├── Modelfile
   ├── .gitignore           # (Opțional) Pentru a nu urca fișierele inutile pe GitHub
   └── procesare_ifc_nativ.py
</pre>

2. Crearea și activarea mediului virtual (env)Deschide terminalul în folderul ProiectBIM și rulează comenzile corespunzătoare sistemului tău de operare:

Pe Windows:

bash:

python -m venv .venv
.venv\Scripts\activate

Pe macOS / **Linux:**

bash:

<b><pre>
python3 -m venv .venv
source .venv/bin/activate
</pre></b>
(După activare, vei vedea (**.venv**) scris la începutul liniei din terminal).

3. Instalarea librăriilor în mediuCu mediul virtual activat, instalează pachetele necesare, inclusiv python-dotenv pentru a putea citi fișierul .env:

   bash:

   **pip install ifcopenshell ollama python-dotenv**

5. Configurarea fișierului .envCreează un fișier text simplu în folderul principal, numește-l exact .env și adaugă în el configurările
   (astfel poți schimba imaginea sau modelul AI fără să modifici codul python):

.env
<pre>
MODEL_AI=qwen2.5vl:3b
CALE_IMAGINE=qcad/plan_fundație.jpg
CALE_IESIRE_IFC=qcad/proiect_fundatie_inteligent.ifc
</pre>


6. Rularea proiectului
7.
8. Ori de câte ori vrei să lucrezi la proiect, deschizi terminalul în acest folder și te asiguri că pornești mediul virtual (

   .venv\Scripts\activate sau

   **source .venv/bin/activate**),

   apoi rulezi:

   bash:

   **python procesare_ifc_nativ.py**

   Apoi inchixi mediul cu

   bash:

   **deactivate**

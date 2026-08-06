Un exemplu CAD de transformare jpg(desen tehnic fundatie/sapatura/ground-level) transformat in IFC(standard 3d al BIM):

Am un GPU Nvidia RTX 4060 8GB VRAM

Am instalat Ollama pe Ubuntu 24.04 LTS:
Si apoi am instalat 2 modele 

 - qwen2.5vl:7b                           5ced39dfa4ba    6.0 GB    29 hours ago    
 - qwen2.5vl:3b                           fb90415cde1e    3.2 GB    29 hours ago   

Pentru a gestiona corect dependențele, variabilele de mediu și pentru a izola acest proiect ca un profesionist, este recomandat să folosești un mediu virtual Python (.venv) și un fișier de configurare .env.Iată cum configurezi proiectul pas cu pas folosind această structură curată:1. Structura finală a folderelorCreează un dosar numit ProiectBIM pe calculatorul tău. 
Structura lui trebuie să arate așa:

ProiectBIM/
   ├── .venv/               # Folderul cu mediul virtual (se generează automat)
   ├── qcad/
   │      └── plan_fundație.jpg # Imaginea ta cu planul de structură
   ├── .env                 # Fișierul cu variabilele de mediu
   ├── .gitignore           # (Opțional) Pentru a nu urca fișierele inutile pe GitHub
   └── procesare_ifc_nativ.py
2. Crearea și activarea mediului virtual (env)Deschide terminalul în folderul ProiectBIM și rulează comenzile corespunzătoare sistemului tău de operare:

Pe Windows:
bash:
python -m venv .venv
.venv\Scripts\activate

Pe macOS / Linux:
bash:
python3 -m venv .venv
source .venv/bin/activate

(După activare, vei vedea (.venv) scris la începutul liniei din terminal).

3. Instalarea librăriilor în mediuCu mediul virtual activat, instalează pachetele necesare, inclusiv python-dotenv pentru a putea citi fișierul .env:
   bash:

   pip install ifcopenshell ollama python-dotenv

4. Configurarea fișierului .envCreează un fișier text simplu în folderul principal, numește-l exact .env și adaugă în el configurările
   (astfel poți schimba imaginea sau modelul AI fără să modifici codul python):
env

MODEL_AI=qwen2.5-vision
CALE_IMAGINE=qcad/plan_fundație.jpg
CALE_IESIRE_IFC=qcad/proiect_fundatie_inteligent.ifc
Folosește codul cu precauție.   

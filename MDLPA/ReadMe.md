Un [exemplu](https://www.google.com/search?q=in+html+care+este+eticheta+pt+text+asa+cum+se+vede&gs_lcrp=EgZjaHJvbWUyBggAEEUYOdIBCjIyNTU3ajBqMTWoAgiwAgHxBSmikMB__UBo8QUpopDAf_1AaA&sourceid=chrome&ie=UTF-8&udm=50&fbs=ABfTbFWfH4wlW6n2_hxvp9wb2ZU9vOI7RSRt7FUzXBlQT0_UgT5SPy7rpZO1forRzdUsSLhS7hsjmUMlvLAYMy6Y5VNma6n3u-bM2-bAWWFn8xZ98uE9rBL1q6ZAQnZLhD4bqV345Ygu0INqesNeQ4oAOyxMgWoihQ7vcjrsIkNm9kcraY6Bc8hx12pvR2FqG6mfH2pWPhxm5vWMxCggVNTtBOoouK4-bw&aep=10&ntc=1&mstk=AUtExfDHT-AzfV7Hxv1DG2XpuVLSvHK_fEq6ehjbZazrmuS34P8XRxXA2UYDbBK3Rltbz4KtLSIBDNgYHJdQKkRutowxkGJaOe5JYQuTYoucpCVa0ghvPutC5HYHFff5iBQWXOcV7vghOJMv1G4glOxJw35iuSnIpBnYotU2P8tDPQ_WxHvYbY7d6sNatjwvVaNz48KalFKrgk32zwOcK-vlowi2AVqWZkYMUVCl43CMtHAF1R360aFaItAMoz0RSC00OZ3DaDtjkIofFlAnUDHvjCTGq89Sgpcuf8Y&aioh=3&csuir=1&cs=1&atvm=2&mtid=5Yh0aoGzKMyCxc8PnpODsQ8) (AUTO)CAD de transformare **.jpg**(desen tehnic fundatie/sapatura/ground-level fotografiat cu telefonul mobil) care va fi transformat in [**IFC**](https://buildingsmartromania.org/ro/domeniu)(un standard utilizat in domeniul **Constructiilor/MDLPA**  **3D** al [standardului](https://www.google.com/search?q=asro+IfcProject+-%3E+IfcSite+-%3E+IfcBuilding+-%3E+IfcBuildingStorey&lr=lang_ro&sa=X&sca_esv=8b7e6ad4158f78fa&sxsrf=APpeQnuSWqHh6DBH7F-yHznrtHR7QBfJlA%3A1786028040627&udm=50&source=lnt&fbs=ABfTbFWfH4wlW6n2_hxvp9wb2ZU9t6DZUU3cr83ivhVjHIOPzyllWyTxtWvJeeH-omJJ2LsjjMRKm15MiE-elsQTOc_HoKqxAWuRCtrZTgfKl3rh4MP6oQRE1od4_YQteaZkwdRtMFItSlFxO5N-5SCvYoKTtLFmBIzzCWSekFzwEd7iPsD7Mi6Q6wRq8TEdyNQ7shfR0Sgxm55CWPgFBKHpro94Tzg-qQ&aep=1&ntc=1&cs=1&ved=2ahUKEwidjK73oIyWAxUkKhAIHdw0J2IQ2J8OegQIDhAD&biw=1854&bih=961&dpr=1&atvm=2&mstk=AUtExfDgk7C4wyD3MOkYJCCWvzsnDVGYOf99FHmb417a0BqcnP4s5SdxznQKzKHLAUL7XGUM-R8gp7LcuFTNRAdhP0uvH-ZClokjpY-JVVELbeGVlo3cjfHL3B03PsN9pvTrHcFE8U6JgXEXstGI7vFHRKV2WdRHTmCeF0_2VVDtEKJZNbUcZWePIOrxbbVgUMETvTK8AlrDPL1cD7loS2C-ynP4rmjWjavqYlfQ6X-NWYp_9F3seZ5Qkccj9cz3zWtQgzZ-J58aygjynUzXpdlhBXriz0oR_RL2f9Qyt62B2HnI8cRSIQuc8RRoowPqlWAxyHJ3RwyXYqpivro_z3RkmNF45OtdRxwmKw&csuir=1&mtid=C6B0ar_7LamHxc8PxbPvmA0) adoptat [**ASRO**](https://github.com/stefanache/MFP-ANAF-RO/tree/main/ASRO)(SR EN [ISO](https://www.iso.org/standard/68078.html))/[CT 355](https://www.asro.ro/asro-ct-335-bim-si-sustenabilitatea-mediului-construit/): [**BIM**](https://www.scribd.com/document/891930812/SR-en-ISO-19650-1-2019color-Romana-pdf)):

Pt acest convertor(***JPG*** 2 **IFC** sau ***JPG*** @ **IFC** ori ***JPG*** to **IFC**), am folosit un DeskTop-PC dotat cu un ***GPU*** **Nvidia RTX 4060 8GB VRAM** pe care  am instalat [**Ollama**](https://www.thomas-krenn.com/en/wiki/Installation_of_Ollama) pe **Ubuntu 24.04 LTS**:

Si apoi am instalat 2 modele(**VLM**-uri) : **ollama pull qwen2.5-vision** sau direct **ollama run qwen2.5-vision**

 - qwen2.5vl:7b                           5ced39dfa4ba    6.0 GB    29 hours ago    
 - **qwen2.5vl:3b**                           fb90415cde1e    3.2 GB    29 hours ago  (modelul VLM folosit in cele din urma- a SE VEDEA  **Modelfile** !!!) 

bash:

  **ollama -v**
  
  **ollama run qwen2.5vl:3b**    

  Iesire din model dupa utilizare, cu **/bye**

  **olama list**

  **ollama ls**

Daca vreti sa umblati la parametrii veti crea fisierul **Modelfile**.

Un simplu ***exemplu*** de **Modelfile** poate arata asa:

<pre>
 # Specificăm modelul de bază cu capabilități vizuale
FROM qwen2.5-vision

# Setăm parametrii optimi pentru generarea de date structurate (JSON/IFC)
PARAMETER temperature 0.1
PARAMETER num_predict 4096

# Adăugăm un System Prompt pentru a ghida modelul să gândească ca un inginer constructor
SYSTEM """
Ești un inginer structurist expert în BIM și automatizare IFC. 
Analizezi planuri de fundație și profile structurale. 
Răspunzi strict în formatul structurat solicitat (JSON), fără text explicativ suplimentar în afara blocurilor de cod.
"""

</pre>

Eu insa am folosit ceva mai simplu: [Modelfile](https://github.com/stefanache/MFP-ANAF-RO/edit/main/MDLPA/Modelfile) 

si apoi veti rula:

  **ollama create qwen-inginerie -f ./Modelfile**

El poate fi folosit acum ca un model obisnuit cu  cda 

bash:

 **ollama run qwen-inginerie:latest**


Pentru a gestiona corect dependențele, variabilele de mediu și pentru a izola acest proiect ca un profesionist, este recomandat să folosești un mediu virtual Python (**.venv**) și 

un fișier de configurare **.env**.

Iată cum configurezi proiectul pas cu pas folosind această structură curată:

<ins>1. Structura finală a folderelor</ins>

Creează un dosar numit ProiectBIM pe calculatorul tău. 

Structura lui trebuie să arate așa:

<pre>

 <b>ProiectBIM/</b>
   ├── <b>.venv/</b>               # Folderul cu mediul virtual (se generează automat)
   ├── <b>qcad/</b>
   │      └── plan_fundație.jpg # Imaginea ta cu planul de structură
   ├── .env                 # Fișierul cu variabilele de mediu
   ├── Modelfile
   ├── .gitignore           # (Opțional) Pentru a nu urca fișierele inutile pe GitHub
   └── procesare_ifc_nativ.py

</pre>

<ins>2. Crearea și activarea mediului virtual (env)Deschide terminalul în folderul ProiectBIM și rulează comenzile corespunzătoare sistemului tău de operare:</ins>

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

<ins>3. Instalarea librăriilor în mediuCu mediul virtual activat, instalează pachetele necesare, inclusiv python-dotenv pentru a putea citi fișierul **.env**:</ins>

   bash:

**pip install ifcopenshell ollama python-dotenv**

<ins>4. Configurarea fișierului **.env**</ins>

   Creează un fișier text simplu în folderul principal, numește-l exact **.env** și adaugă în el configurările
   (astfel poți schimba imaginea sau modelul AI fără să modifici codul python):

**.env**

<pre>
  MODEL_AI=qwen-inginerie:latest 
  CALE_IMAGINE=qcad/plan_fundație.jpg
  CALE_IESIRE_IFC=qcad/proiect_fundatie_inteligent.ifc
</pre>


<u>5. Rularea proiectului</U>

Ori de câte ori vrei să lucrezi la proiect, deschizi terminalul în acest folder și te asiguri că pornești mediul virtual (

.venv\Scripts\activate sau

<B>source .venv/bin/activate</B>

),

   apoi rulezi:

bash:

<B>python procesare_ifc_nativ.py</B>

   Apoi inchizi mediul cu comanda shell din terminalul-fereastra(deschis cu combinatia de cchei: **Ctrl+Alt+T**)

bash:

<B>deactivate</B>


<ins>6. Vizualizare/Consultare/Inspectare model **IFC**(***BIM(3D)***)</ins>

Fisierul rezultat([***proiect_fundatie_inteligent.ifc***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/MDLPA/qcad/proiect_fundatie_inteligent.ifc)) poate fi apoi incarcat(***Copy & Paste*** + **Load_in_BIMviewer/Open IFC File**) spre vizualizare intr-un **free IFC viewer/inspector online** asa cum este [**BIMviewer**](https://bimviewer.org/).

Vor fi afisare **locurile**/plotii(**extrudate 3D**, in mod artificial pt a le face vizibile in **3D**) in conformitate cu imaginea originala([***qcad*/Screenshot_20260731_092127_com_dropbox_android_PreviewActivity.jpg**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/MDLPA/qcad/Screenshot_20260731_092127_com_dropbox_android_PreviewActivity.jpg)).

Acest [**BIMviewer**](https://bimviewer.org/) afiseaza structura generata in fisierul [**IFC**](https://www.revistaconstructiilor.eu/index.php/2023/09/12/asro-industry-foundation-classes-ifc-standardul-ce-transforma-modul-in-care-partajam-date-in-constructii/)(structurat astfel: **IfcProject** -> **IfcSite** -> **IfcBuilding** -> **IfcBuildingStorey**)/[***BIM***](https://www.revistaconstructiilor.eu/index.php/2021/08/01/asro-standardele-bim-optimizeaza-procesul-de-proiectare-a-cladirilor/).

A se vedea si [**Ghidurile nationale MDLPA**](https://www.mdlpa.ro/uploads/articole/attachments/64d0e746b4055671677104.pdf) dar si [***POCA: GHID PRIVIND UTILIZAREA INSTRUMENTELOR DE GENERARE ȘI GESTIONARE A DATELOR DIGITALE AFERENTE CONSTRUCȚIILOR***](https://www.mdlpa.ro/uploads/articole/attachments/64d0e746b4055671677104.pdf), pentru a va obisnui cu termenii utilizati in standardele elaborate sub egida aociatiei **ASRO**(SR EN ISO) din domeniul [**Constructiilor**](https://buildingsmartromania.org/ro/programare?tip=strategica).

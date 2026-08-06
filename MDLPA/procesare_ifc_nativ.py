import ollama
import json
import re
import ifcopenshell
import ifcopenshell.template
import ifcopenshell.api

# Căi fișiere
cale_imagine = "qcad/Screenshot_20260731_092127_com_dropbox_android_PreviewActivity.jpg"
cale_iesire_ifc = "qcad/proiect_fundatie_inteligent.ifc"

# Prompt BIM definit pentru modelul LLM
prompt_bim = """
You are an expert BIM Manager specializing in buildingSMART IFC4 models.
Analyze this foundation plan image. Extract all distinct concrete footings (IfcFooting) and structural columns (IfcColumn).

Return the data STRICTLY as a raw JSON array of objects. Do not include markdown ```json or conversations.
Schema:
[
  {
    "id": "FD1",
    "ifc_class": "IfcFooting",
    "label_ro": "Fundație Izolată Stâlp",
    "description_en": "Isolated concrete footing",
    "material": "C16/20",
    "geometrie": {
      "cota_nivel_m": -1.0,
      "grosime_mm": 400,
      "latime_mm": 1000,
      "lungime_mm": 1200
    }
  }
]
"""

print("Rulăm modelul Qwen-Inginerie pentru generare structură nativă IFC4...")

try:
    # 1. Apelare model Ollama multimodal
    response = ollama.chat(
        model='qwen-inginerie',
        messages=[{
            'role': 'user',
            'content': prompt_bim,
            'images': [cale_imagine]
        }],
        options={"temperature": 0.1, "num_predict": 4096}
    )
    
    output_text = response['message']['content'].strip()
    
    # 2. Curățare și izolare structură JSON din textul generat
    if "[" in output_text:
        text_parsare = output_text[output_text.find("["):]
    else:
        text_parsare = output_text
        
    pozitie_ultima_acolada = text_parsare.rfind("}")
    if pozitie_ultima_acolada != -1:
        text_parsare = text_parsare[:pozitie_ultima_acolada + 1]
        
    if not text_parsare.endswith("]"): 
        text_parsare += "]"
        
    # Normalizare sintaxă pentru siguranță
    text_parsare = text_parsare.replace("None", "null").replace("True", "true").replace("False", "false")
    text_parsare = re.sub(r',\s*([\]}])', r'\1', text_parsare)
    
    # Conversie în listă Python de dicționare
    date_structura = json.loads(text_parsare)

    # 3. Inițializare fișier IFC4 standardizat
    model_ifc = ifcopenshell.template.create(
        schema_identifier="IFC4",
        filename="proiect_fundatie_inteligent.ifc"
    )

    # Structura ierarhică obligatorie din BIM (Spatial Structure)
    proiect_lista = model_ifc.by_type("IfcProject")
    proiect = proiect_lista[0]
    
    site = model_ifc.create_entity("IfcSite", GlobalId=ifcopenshell.guid.new(), Name="Teren Proiect")
    cladire = model_ifc.create_entity("IfcBuilding", GlobalId=ifcopenshell.guid.new(), Name="Clădire Nelu")
    etaj = model_ifc.create_entity("IfcBuildingStorey", GlobalId=ifcopenshell.guid.new(), Name="Nivel Fundații", Elevation=-1.0)

    # Agregarea ierarhiei spațiale prin API-ul oficial ifcopenshell
    ifcopenshell.api.run("aggregate.assign_object", model_ifc, products=[site], relating_object=proiect)
    ifcopenshell.api.run("aggregate.assign_object", model_ifc, products=[cladire], relating_object=site)
    ifcopenshell.api.run("aggregate.assign_object", model_ifc, products=[etaj], relating_object=cladire)

    context_geometric_lista = model_ifc.by_type("IfcGeometricRepresentationContext")
    context_geometric = context_geometric_lista[0]

    nr_elemente = 0
    
    # 4. Iterare prin elementele identificate de AI și generare geometrică
    for idx, elem in enumerate(date_structura):
        if not isinstance(elem, dict): 
            continue
        
        # Citire atribute extrase de AI
        id_elem = elem.get("id", f"E_{idx}")
        clasa_ifc = elem.get("ifc_class", "IfcFooting")
        label_ro = elem.get("label_ro", "Element")
        desc_en = elem.get("description_en", "")
        material = elem.get("material", "C16/20")
        
        geom = elem.get("geometrie", {})
        lungime = float(geom.get("lungime_mm", 1200)) / 1000.0  # Conversie mm în metri
        latime = float(geom.get("latime_mm", 800)) / 1000.0
        grosime = float(geom.get("grosime_mm", 400)) / 1000.0
        cota_z = float(geom.get("cota_nivel_m", -1.0))

        # Distribuire elemente într-o matrice regulată de 6 coloane pentru a preveni suprapunerile
        coloane_maxime = 6
        rand = idx // coloane_maxime
        coloana = idx % coloane_maxime
        
        pos_x = coloana * 4.0  # Pas de 4 metri pe axa X
        pos_y = rand * 4.0     # Pas de 4 metri pe axa Y

        # Generare plasament și coordonate 3D
        punct_origine = model_ifc.create_entity("IfcCartesianPoint", Coordinates=(pos_x, pos_y, cota_z))
        plasare_locala = model_ifc.create_entity("IfcAxis2Placement3D", Location=punct_origine)
        forma_plasare = model_ifc.create_entity("IfcLocalPlacement", RelativePlacement=plasare_locala)

        # Creare geometrie extrudată (Solid 3D)
        profil_2d = model_ifc.create_entity("IfcRectangleProfileDef", ProfileType="AREA", XDim=lungime, YDim=latime)
        directie_extrudare = model_ifc.create_entity("IfcDirection", DirectionRatios=(0.0, 0.0, 1.0))
        solid_3d = model_ifc.create_entity("IfcExtrudedAreaSolid", SweptArea=profil_2d, ExtrudedDirection=directie_extrudare, Depth=grosime)

        # Mapare reprezentare vizuală pentru obiect
        reprezentare_forma = model_ifc.create_entity("IfcShapeRepresentation", ContextOfItems=context_geometric, RepresentationIdentifier="Body", RepresentationType="SweptSolid", Items=[solid_3d])
        geometrie_finala = model_ifc.create_entity("IfcProductDefinitionShape", Representations=[reprezentare_forma])

        # Instanțiere obiect fizic în funcție de clasa IFC detectată
        if clasa_ifc == "IfcColumn":
            entitate_bim = model_ifc.create_entity("IfcColumn", GlobalId=ifcopenshell.guid.new(), Name=id_elem, Description=f"{label_ro} | {desc_en}", ObjectType=material, ObjectPlacement=forma_plasare, Representation=geometrie_finala)
        else:
            entitate_bim = model_ifc.create_entity("IfcFooting", GlobalId=ifcopenshell.guid.new(), Name=id_elem, Description=f"{label_ro} | {desc_en}", ObjectType=material, ObjectPlacement=forma_furnizare, Representation=geometrie_finala) if 'forma_furnizare' in locals() else model_ifc.create_entity("IfcFooting", GlobalId=ifcopenshell.guid.new(), Name=id_elem, Description=f"{label_ro} | {desc_en}", ObjectType=material, ObjectPlacement=forma_plasare, Representation=geometrie_finala)

        # Alocare obiect la nivelul de etaj corespunzător
        ifcopenshell.api.run("spatial.assign_container", model_ifc, products=[entitate_bim], relating_structure=etaj)

        # Adăugare set de proprietăți personalizate (Pset) pentru BlenderBIM / OpenBIM viewers
        prop_material = model_ifc.create_entity("IfcPropertySingleValue", Name="ClasaBeton", NominalValue=model_ifc.create_entity("IfcLabel", material))
        prop_ro = model_ifc.create_entity("IfcPropertySingleValue", Name="DenumireRomana", NominalValue=model_ifc.create_entity("IfcText", label_ro))
        prop_cota = model_ifc.create_entity("IfcPropertySingleValue", Name="CotaNivel", NominalValue=model_ifc.create_entity("IfcLengthMeasure", cota_z))
        
        set_proprietati = model_ifc.create_entity("IfcPropertySet", GlobalId=ifcopenshell.guid.new(), Name="Pset_AdnotariInginerieAI", HasProperties=[prop_material, prop_ro, prop_cota])
        model_ifc.create_entity("IfcRelDefinesByProperties", GlobalId=ifcopenshell.guid.new(), RelatedObjects=[entitate_bim], RelatingPropertyDefinition=set_proprietati)
        
        nr_elemente += 1

    # 5. Salvare fișier pe disc
    model_ifc.write(cale_iesire_ifc)
    print(f"\n[BIM Nativ Reușit] Fișierul model inteligent a fost creat cu succes: {cale_iesire_ifc}")
    print(f"Au fost generate {nr_elemente} elemente dispuse în matrice geometrică deschisă.")
    print("Acum încarcă proiectul în Blender (Add-on Bonsai / BlenderBIM) și dă click pe elemente!")

except Exception as e:
    print(f"\nEroare critică la asamblarea modelului IFC: {e}")

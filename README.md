[ANAF](https://www.anaf.ro/) pune la dispozitie acesasta pagina despre serviciile sale web: [servicii web ANAF](https://www.anaf.ro/anaf/internet/ANAF/servicii_online/servicii_web_anaf)

Puteti avea date de bilant ale unei persoane juridice(PJ) folosind link-ul urmator: [servicii web ANAF- Bilant](https://static.anaf.ro/static/10/Anaf/Informatii_R/doc_WS_Bilant_V1.txt)

Apoi prezinta un deosebit interes relativ la facturarea electronica aceasta [prezentare ANAF a sistemului eFactura](https://mfinante.gov.ro/static/10/eFactura/PrezentareE-factura.pdf)

[Informatii MFP  privind eFactura](https://etransport.mfinante.gov.ro/informatii-tehnice?p_p_id=com_liferay_portal_search_web_portlet_SearchPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&_com_liferay_portal_search_web_portlet_SearchPortlet_mvcPath=%2Fview_content.jsp&_com_liferay_portal_search_web_portlet_SearchPortlet_assetEntryId=7050688&_com_liferay_portal_search_web_portlet_SearchPortlet_type=content&p_l_back_url=https%3A%2F%2Fetransport.mfinante.gov.ro%2Finformatii-tehnice%3Fp_p_id%3Dcom_liferay_portal_search_web_portlet_SearchPortlet%26p_p_lifecycle%3D0%26p_p_state%3Dmaximized%26p_p_mode%3Dview%26_com_liferay_portal_search_web_portlet_SearchPortlet_cur%3D1%26_com_liferay_portal_search_web_portlet_SearchPortlet_mvcPath%3D%252Fsearch.jsp%26_com_liferay_portal_search_web_portlet_SearchPortlet_keywords%3Dfactura%26_com_liferay_portal_search_web_portlet_SearchPortlet_entryClassName%3D%26_com_liferay_portal_search_web_portlet_SearchPortlet_searchPrimaryKeys%3D%26_com_liferay_portal_search_web_portlet_SearchPortlet_formDate%3D1702972022328%26_com_liferay_portal_search_web_portlet_SearchPortlet_groupId%3D7052601%26_com_liferay_portal_search_web_portlet_SearchPortlet_format%3D%26_com_liferay_portal_search_web_portlet_SearchPortlet_modifiedfrom%3D18.12.2023%26_com_liferay_portal_search_web_portlet_SearchPortlet_userName%3D%26_com_liferay_portal_search_web_portlet_SearchPortlet_folderId%3D%26_com_liferay_portal_search_web_portlet_SearchPortlet_assetTagNames.raw%3D%26_com_liferay_portal_search_web_portlet_SearchPortlet_assetCategoryIds%3D%26_com_liferay_portal_search_web_portlet_SearchPortlet_scope%3Dthis-site%26_com_liferay_portal_search_web_portlet_SearchPortlet_modifiedselection%3D0%26_com_liferay_portal_search_web_portlet_SearchPortlet_modified%3D%26_com_liferay_portal_search_web_portlet_SearchPortlet_modifiedto%3D19.12.2023%26_com_liferay_portal_search_web_portlet_SearchPortlet_useAdvancedSearchSyntax%3Dfalse) puteti gasi pe site-ul MFP 

[Informatii ANAF despre eFactura](https://static.anaf.ro/static/10/Anaf/Informatii_R/e_factura.htm) gasiti pe site-ul ANAF

Conform acestui [comunicat de presa al MFP](https://mfinante.gov.ro/ro/despre-minister/-/asset_publisher/uwgr/content/ghidul-e-factura.-ce-trebuie-s-c4-83-c8-99tie-contribuabilii-pentru-a-emite-c8-99i-prelua-facturi-electronice?_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_uwgr_assetEntryId=10883804&_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_uwgr_redirect=https%3A%2F%2Fmfinante.gov.ro%2Fro%2Fdespre-minister%3Fp_p_id%3Dcom_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_uwgr%26p_p_lifecycle%3D0%26p_p_state%3Dnormal%26p_p_mode%3Dview%26_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_uwgr_cur%3D0%26p_r_p_resetCur%3Dfalse%26_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_uwgr_assetEntryId%3D10883804) este util sa consultati si acest [ghid eFactura editat de ANAF](https://mfinante.gov.ro/static/10/Mfp/ghidE-FACTURA.pdf)

Puteti de asemenea consulta si aceste [clarificari ANAF privind eFactura](https://static.anaf.ro/static/10/Anaf/Informatii_R/ClarificareRO_eFactura.pdf)

Daca folositi o factura mai simpla atunci o puteti genera folosind acest [generator XML{sintaxa UBL2.1} ANAF e-Factura](https://www.anaf.ro/CompletareFactura/faces/factura/informatiigenerale.xhtml)

Acest generator eFactura-XML utilizeaza un [pre-validator DOM](https://www.anaf.ro/CompletareFactura/faces/factura/validare.js) pentru interfatarea cu utilizatorul(GUI/front-end), care trebuie armonizat cu regulile(BR) ale CIUS_RO.
Desigur restul validarilor ce acopera cerintele standardului [EN-16931](https://github.com/ConnectingEurope/eInvoicing-EN16931) aferent eFacturii [RO_CIUS](https://mfinante.gov.ro/documents/35673/1120722/ordin1366_MO10658112021.pdf) revine partii de back-office(back-end)

Regulile de validare(RO_CIUS) ale eFacturii, pot suferi modificari/actualizari cum sunt cele  din ORDIN-ul nr. 4.092 din 14 noiembrie 2022: [O4092/14.11.2022](https://legislatie.just.ro/Public/DetaliiDocument/261755)

Pentru validarea unei facturi stocata in format xml(UBL2.1 sau CII 16B) puteti apela la urmatorul link: [verificare factura xml](https://www.anaf.ro/uploadxmi/)

Dar cel mai important punct de plecare ramane pagina oficiala MFP ce cuprinde [informatii tehnice MFP privind eFactura]( https://mfinante.gov.ro/ro/web/efactura/informatii-tehnice).

O colectie de Intrebari si Raspunsuri legate de facturare gasiti si pe site-ul [MFP(FAQ)](https://mfinante.gov.ro/documents/4398723/5002737/E-facturaFAQ.pdf)

Folosind [magazinul ASRO](https://magazin.asro.ro/ro/colectie-standarde/819) putem procura documente referitoare la standardele implicate in raportarea fiscala si nu numai.


La comanda, putem sa cream in acest depozit-static, aplicatii informatice specifice oricarei persoane fizice [PF](https://www.anaf.ro/anaf/internet/ANAF/servicii_online/declaratii_electronice/descarcare_declaratii) sau

juridice [PJ](https://www.anaf.ro/anaf/internet/ANAF/servicii_online/declaratii_electronice/descarcare_declaratii) din RO si din afara, urmarind [calenadarul obligatiilor de raportare fiscala ANAF](https://www.anaf.ro/anaf/internet/ANAF/asistenta_contribuabili/info_obligatii_fiscale/calendar_obligatii_fiscale/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOI9DD3MPIwsjLwMPAINDAJNnTyDTN0DDAwCjIEKIvEoMDAjTr8BDuBoQEh_uH4UfiVGBBRYGhNQAPIDWAEeRxbkhkYYZHqmAwBDragw/dl5/) 

legate de toate formularele ANAF (eFactura,eTransport,SAF-T(D406),D112,...etc) [formulare ANAF](https://www.anaf.ro/anaf/internet/ANAF/asistenta_contribuabili/declararea_obligatiilor_fiscale/toate_formularele/)

[Guvernul](https://data.gov.ro/dataset?q=nomenclator&sort=score+desc%2C+metadata_modified+desc), [MFP](https://mfinante.gov.ro/nomenclatoare-geografice-mfp?_com_liferay_portal_search_web_portlet_SearchPortlet_formDate=1703000414729&p_p_id=com_liferay_portal_search_web_portlet_SearchPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&_com_liferay_portal_search_web_portlet_SearchPortlet_mvcPath=%2Fsearch.jsp&_com_liferay_portal_search_web_portlet_SearchPortlet_redirect=https%3A%2F%2Fmfinante.gov.ro%2Fnomenclatoare-geografice-mfp%3Fp_p_id%3Dcom_liferay_portal_search_web_portlet_SearchPortlet%26p_p_lifecycle%3D0%26p_p_state%3Dnormal%26p_p_mode%3Dview&_com_liferay_portal_search_web_portlet_SearchPortlet_keywords=nomenclat&_com_liferay_portal_search_web_portlet_SearchPortlet_scope=this-site) si [ANAF](https://www.anaf.ro/anaf/internet/ANAF/cautare/!ut/p/a1/jY_LDoIwEEW_pltm0IDEXU3UQowRjBG6McWUh8FCSpXfF1xh4mtWMzfnzswFDjFwJe5lLkxZK1ENM3dPzGYum3iTwAvpEsPNfrH0bYbryO6BZAwgCxFDZ-FHznqHiO5_fvxQFH_5j8BfkTcfPIEvJwLgeVWnz7gJVenUy4FrmUkttXXTvVwY07RzggS7rrOEEpmla4JDQ7BURmolDUG6patePYtWvFtV1K2BeLQBkj797GO8mQvN9RDjxanum8x_AFkXo2o!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/pw/Z7_H1H6H282J8QAE0QLSBEI1H0G76/act/id=0/p=spf_ActionName=spf_ActionListener/p=spf_strutsAction=QCB2fcautare.do/564255798319/=/#Z7_H1H6H282J8QAE0QLSBEI1H0G76) pun la dispozitie o serie de nomenclatoare pentru :

- [forme juridice si de proprietate](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Nomenclator_forme_juridice.htm)
- [geografice](https://mfinante.gov.ro/nomenclatoare-geografice-mfp)
- etc.
  
De asemenea, puteti cauta o serie de informatii provind [facturarea electronica pe site-ul ASRO](https://magazin.asro.ro/Search?q=factura+electronica)



Daca este sa ne referim spre exemplu la SAF-T(D406) reprezentativ este acest link: [SAF-T(D406)](https://www.anaf.ro/anaf/internet/ANAF/despre_anaf/strategii_anaf/proiecte_digitalizare/saf_t/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOI9DD3MPIwsjLws3AKdDQKDDH1cHb0NDAwszIAKIpEVGHgEGhgEmjp5Bpm6BxgYGBpQpt_EkDL9BmbE6TfAARwJuj9cPwqvEndzdAVYggivAlAY4FUA8iRYAR5fFOSG)

avand urmatoarea [schema de validare .xsd pt SAF-T(D406)](https://stefanache.github.io/MFP-ANAF-RO/Ro_SAFT_Schema_v248_20231121.xsd)

Un document util este si acest [document de asistenta pt pregatirea D406/SAF-T](https://www.ceccarbusinessmagazine.ro/public/store/imagini/filemanager/source/pdf/SAFT_intrebari_frecv_raspunsuri_v1_1_071021.pdf)

Despre D406/SAF-T gasim o prezentare pe site-ul [fiscalitatea.ro](https://www.fiscalitatea.ro/saf-t-in-2023-anaf-a-pus-la-dispozitia-contribuabililor-22-de-teste-pentru-a-verifica-daca-d406-este-depusa-in-mod-corect-22514/)
precum si pe [contabilul.manager.ro](https://contabilul.manager.ro/a/26360/obligatia-de-transmitere-a-declaratiei-informative-d406-saf-t-termene-categorii-vizate-si-exceptii.html)

O [schema excel de definire+cod a SAF-T](https://static.anaf.ro/static/10/Anaf/Informatii_R/RO_SAFT_SchemaDefCod_20230731.xlsx) vine in sprijinul declaratiei [D406](https://static.anaf.ro/static/10/Anaf/Declaratii_R/406.html) 

In general pentru informare ANAF(RO-CIUS, XSD-uri,formulare,...) puteti folosi [motorul de cautare ANAF](https://www.anaf.ro/anaf/internet/ANAF/cautare/)

Spre exemplu, daca folosim cautatorul website-ului ANAF putem gasi pe site-ul ANAF: [informatii ANAF eTransport](https://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/Ro_e_Transport.pdf)

ori pe site-ul MFP [informatii tehnice MFP eTransport](https://etransport.mfinante.gov.ro/informatii-tehnice)

Un link MFP va poate indruma catre [informatii MFP despre formularele F11xx](https://mfinante.gov.ro/web/forexepublic/informatii-publice)

Daca aveti intrebari/nelamuriri sau doriti sa sustineti ori sa colaboram in vederea dezvoltarii unei aplicatii specifice ANAF/MFP, 

va rog, nu ezitati sa ma contactati via email:  ion.stefanache@yahoo.com


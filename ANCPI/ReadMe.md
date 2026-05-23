[**ANCPI**](https://www.ancpi.ro/) = ***Agentia Nationala de*** **Cadastru** ***si Publicitate-Imobiliara*** din cadrul [**Ministerului Dezvoltarii, Lucrarilor Publice si Administratiei(MDLPA)**](https://data.gov.ro/dataset?organization=mdrap&res_format=xlsx&tags=ANCPI&_res_format_limit=0&license_id=CC-BY-4.0) - Guvernul Romaniei


[API-uri bazate pe date ANCPI](https://www.reddit.com/r/programare/comments/1s1h2lm/cine_stie_apiurile_de_la_ancpi/) [MinSide.ro](https://minside.ro/docs/api/get-data-points); a se vedea si [API-ul](https://minside.ro/docs/api/introduction) [MinSide.ro](https://minside.ro/)

[ANCPI](https://github.com/geospatialorg/ingestie-date) - [ingestie date](https://www.google.com/search?q=github+ancpi+ingestie+date&sca_esv=080e5c4976d32afe&biw=1920&bih=961&sxsrf=ANbL-n6-HTL2ZtGbABThZYkXNrsmiaycQg%3A1779559355920&ei=u-sRaqPkN8ON-d8P1vPGoAM&ved=0ahUKEwjjrZCa_8-UAxXDRv4FHda5ETQQ4dUDCBA&uact=5&oq=github+ancpi+ingestie+date&gs_lp=Egxnd3Mtd2l6LXNlcnAiGmdpdGh1YiBhbmNwaSBpbmdlc3RpZSBkYXRlMgUQIRigATIFECEYoAEyBRAhGKABSLNBUABY6z9wAHgBkAEAmAGXAaABuRaqAQUxMC4xNrgBA8gBAPgBAZgCGqAC8hjCAgQQIxgnwgIKECMYgAQYigUYJ8ICEBAuGIAEGIoFGEMYxwEY0QPCAgoQABiABBiKBRhDwgIQEAAYgAQYigUYQxixAxiDAcICERAuGIAEGLEDGIMBGMcBGNEDwgILEAAYgAQYsQMYgwHCAggQABiABBixA8ICFhAuGIAEGIoFGEMYsQMYgwEYxwEY0QPCAgsQLhiABBixAxiDAcICCBAuGIAEGLEDwgIFEC4YgATCAhEQLhiDARjHARixAxjRAxiABMICBRAAGIAEwgIIEAAYgAQYywHCAgYQABgWGB7CAgUQABjvBcICCBAAGIAEGKIEwgIIEAAYiQUYogTCAgcQIRgKGKABwgIEECEYFZgDAJIHBDAuMjagB_-oAbIHBDAuMja4B_IYwgcKMC4zLjEzLjkuMcgH2wGACAE&sclient=gws-wiz-serp)  pentru :

[QTempo](https://github.com/alecsandrei/QTempo): A **QGIS** plugin that integrates statistical data with administrative boundaries sourced via **ANCPI *ArcGIS* MapServices** and **GISCO APIs**.

About - [QTempo](https://github.com/alecsandrei/QTempo) - A QGIS plugin for accessing data from the TEMPO-Online statistical database

<hr/>

Sa luam ca exemplu acest **API**(Mii de multumiri!!!):

**Introducere** in  **Tranzactii-Imobiliare** - [***API-MinSide.ro***](https://minside.ro/docs/api/introduction) ( a se vedea [**Get-Data-Points**](https://minside.ro/docs/api/get-data-points) endpoint!)

Get data points
Returnează o listă de data points lunare pentru o metrică și o regiune specifică.

GET
/data-points
Get data points
cURL
curl --request GET \
  --url "https://minside.ro/api/data-points" \
  --header "x-api-key:[{api_key}](https://minside.ro/dashboard/organization/settings)" \
  --data-urlencode "region=[{region}](https://minside.ro/docs/resources/regions)" \
  --data-urlencode "metric=[{metric}](https://minside.ro/docs/resources/metrics)" \
  --data-urlencode "date_start={date_start}" \
  --data-urlencode "date_end={date_end}"
200
response
[
  {
    "value": <number>,
    "date": <string>
  }
]
Headers
x-api-key
string
required
Headerul x-api-key este necesar pentru autentificare și trebuie să conțină api key-ul organizației.
Query Params
region
region
required
Slug-ul regiunii pentru care se dorește obținerea datelor. Regiunile sunt listate în secțiunea Regiuni.

Exemplu: sibiu
metric
metric
required
Slug-ul metricii pentru care se dorește obținerea datelor. Metricile sunt listate în secțiunea Metrici.

Exemplu: price_sqm_residential_new
date_start
string
required
Data de început pentru care se dorește obținerea datelor. Trebuie să fie în format YYYY-MM

Exemplu: 2025-01
date_end
string
required
Data de sfârșit pentru care se dorește obținerea datelor. Trebuie să fie în format YYYY-MM

Exemplu: 2025-12
Real estate. Real data.

Companie
Politica de confidențialitate
Politica cookies
Termeni și condiții
LLMs.txt
ANPC
Resurse
Documentație API
Blog
Petiție
Contact
hello@minside.ro
©2026 Minside

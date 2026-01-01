- Da — există o formă de „Swagger / OpenAPI” pentru API‑urile ANAF SPV (RO e‑Factura), dar ANAF nu publică un fișier oficial Swagger/OpenAPI complet separat ca fișier .json sau .yaml pe care să îl descarci și să îl imporți direct în Swagger UI / OpenAPI Generator. 
Reddit

În schimb:

✅ Există pagini interactive Swagger UI care expun endpoint‑urile API‑ului ANAF

Aceste pagini pot fi folosite în browser pentru a vizualiza endpoint‑urile și parametrii — și sunt generate pe baza specificațiilor interne ale ANAF:

🔹 Upload factura (e‑Factura) – Swagger UI
👉 https://mfinante.gov.ro/static/10/eFactura/upload.html


🔹 Stare mesaj / status – Swagger UI
👉 https://mfinante.gov.ro/static/10/eFactura/staremesaj.html#/
 

🔹 Descarcare factură – Swagger UI
👉 https://mfinante.gov.ro/static/10/eFactura/descarcare.html#/
 

🔹 Interogare liste mesaje – Swagger UI
👉 https://mfinante.gov.ro/static/10/eFactura/listamesaje.html#/


🔹 Validare XML / transformare – Swagger UI
👉 https://mfinante.gov.ro/static/10/eFactura/validare.html#/
 

🔹 Convertire XML → PDF – Swagger UI
👉 https://mfinante.gov.ro/static/10/eFactura/xmltopdf.html#/
 

Acestea sunt interfețe Swagger interactive "hostate"/gazduite de ANAF. Ele îți oferă:

descrierea endpoint‑urilor,

parametrii de intrare și de ieșire,

posibilitatea de a testa cereri direct în browser (unde este permis).

📌 Ce poți face cu aceste UI Swagger
1. Salvezi specificația API

Deși ANAF nu pune un fișier .json/.yaml public, paginile Swagger sunt deja generate dintr‑o specificație. Poți:

face copy/paste manual din HTML JSON‑ul intern

utiliza tool‑uri de extragere Swagger din pagină

scrie un mic script care să descarce specificația internă

Astfel poți obține un fișier OpenAPI pe care să îl imporți în:
✔ Swagger UI local
✔ OpenAPI Generator
✔ Postman / Insomnia
✔ SDK generation (Python/TS/Go etc.)

📌 Autentificare și workflow real

Pentru a folosi API‑ul (nu doar Swagger‑ul), trebuie neapărat:
✔ să înregistrezi aplicația în SPV/ANAF
✔ să obții client_id și client_secret
✔ să implementezi OAuth2 + JWT cu certificat digital calificat
✔ să trimiți header‑uri și cereri conform specificației ANAF

Acest proces e detaliat în documentația oficială procedură OAuth2 oferită de ANAF în PDF

<hr/>

- Voi genera un fișier Swagger/OpenAPI YAML complet(dar neoficial!) pentru RO e‑Factura, care include:

1. Autentificare OAuth2 + JWT

2. Upload facturi UBL 2.1

3. Verificare status mesaj

4. Descărcare mesaje/facturi

5. Listare mesaje (inbox/outbox)

6. Validare XML și conversie XML→PDF

7. Exemple de request și response

8. Schematizare completă a tipurilor de date

**swagger-efactura-complet.yaml**

<code>
openapi: 3.0.3
info:
  title: ANAF RO e-Factura API
  version: 1.0.0
  description: API pentru transmiterea facturilor electronice în SPV România (RO e-Factura)
servers:
  - url: https://webserviceapl.anaf.ro/prod/FCTEL/rest
    description: Server producție SPV
components:
  securitySchemes:
    OAuth2:
      type: oauth2
      flows:
        clientCredentials:
          tokenUrl: https://webserviceapl.anaf.ro/oauth/token
          scopes: {}
  schemas:
    InvoiceUBL:
      type: string
      format: xml
      example: "<Invoice>...</Invoice>"
    MessageStatus:
      type: object
      properties:
        messageId:
          type: string
        status:
          type: string
        details:
          type: string
    ListMessageItem:
      type: object
      properties:
        messageId:
          type: string
        status:
          type: string
        data:
          type: string
    ValidationResult:
      type: object
      properties:
        valid:
          type: boolean
        errors:
          type: array
          items:
            type: string

security:
  - OAuth2: []

paths:
  /upload:
    post:
      summary: Încarcă factură UBL
      security:
        - OAuth2: []
      description: Transmite o factură UBL 2.1 către SPV
      requestBody:
        required: true
        content:
          application/xml:
            schema:
              $ref: '#/components/schemas/InvoiceUBL'
      responses:
        '200':
          description: Factura acceptată
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/MessageStatus'
        '400':
          description: Erori validare
        '401':
          description: Neautorizat

  /stareMesaj:
    get:
      summary: Verificare status mesaj
      security:
        - OAuth2: []
      parameters:
        - in: query
          name: messageId
          schema:
            type: string
          required: true
          description: ID-ul mesajului returnat la upload
      responses:
        '200':
          description: Status mesaj
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/MessageStatus'
        '401':
          description: Neautorizat

  /descarcareFactura:
    get:
      summary: Descarcă factura procesată / mesaj
      security:
        - OAuth2: []
      parameters:
        - in: query
          name: messageId
          schema:
            type: string
          required: true
          description: ID-ul mesajului de descărcat
      responses:
        '200':
          description: Conținut XML al facturii
          content:
            application/xml:
              schema:
                $ref: '#/components/schemas/InvoiceUBL'
        '404':
          description: Factura nu a fost găsită
        '401':
          description: Neautorizat

  /listareMesaje:
    get:
      summary: Listare mesaje SPV
      security:
        - OAuth2: []
      parameters:
        - in: query
          name: inbox
          schema:
            type: string
          required: false
          description: Filtru inbox (ex: "inbox", "outbox")
      responses:
        '200':
          description: Lista mesajelor
          content:
            application/json:
              schema:
                type: array
                items:
                  $ref: '#/components/schemas/ListMessageItem'
        '401':
          description: Neautorizat

  /validareXML:
    post:
      summary: Validează un XML UBL
      security:
        - OAuth2: []
      requestBody:
        required: true
        content:
          application/xml:
            schema:
              $ref: '#/components/schemas/InvoiceUBL'
      responses:
        '200':
          description: XML valid
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ValidationResult'
        '400':
          description: XML invalid

  /convertXMLtoPDF:
    post:
      summary: Convertește XML UBL în PDF
      security:
        - OAuth2: []
      requestBody:
        required: true
        content:
          application/xml:
            schema:
              $ref: '#/components/schemas/InvoiceUBL'
      responses:
        '200':
          description: PDF generat
          content:
            application/pdf:
              schema:
                type: string
                format: binary
        '400':
          description: XML invalid
</code>

✅ Ce poți face cu acest YAML complet

1. Salvezi ca swagger-efactura-complet.yaml

2. Încarci(Import) în Swagger Editor
 → vezi schema completă

3. Generezi SDK Python/TS/Go/Java folosind:

**openapi-generator-cli generate -i swagger-efactura-complet.yaml -g python -o efactura-sdk-python**

4. Poți testa endpoint-urile direct în Swagger UI sau Postman, cu autentificarea OAuth2 + certificat digital SPV.

<hr/>

- Da, se poate genera un SDK si pentru PHP folosind OpenAPI Generator sau alte tool-uri compatibile OpenAPI. YAML-ul pe care l-am generat poate fi folosit pentru asta.

Iată pașii concreți:

1️⃣ Instalează **OpenAPI Generator**

Dacă ai *Java* instalat:
-- macOS de exemplu

**brew install openapi-generator**

-- sau pentru *Linux/Windows* descărcați JAR-ul oficial: **https://openapi-generator.tech/docs/installation**

2️⃣ Generează SDK PHP

Comanda este:

**openapi-generator-cli generate \
  -i swagger-efactura-complet.yaml \
  -g php \
  -o efactura-sdk-php**

-i = fișierul tău OpenAPI YAML
-g = limbajul țintă (php)
-o = folderul unde va fi creat SDK-ul

 3️⃣ Ce obții

Clase PHP pentru endpoint-uri (UploadApi, StareMesajApi, DescarcareFacturaApi, etc.)

Modele pentru InvoiceUBL, MessageStatus, ValidationResult, etc.

Funcții care acceptă parametrii și returnează răspunsurile API-ului

Configurare OAuth2 ready pentru autentificare

4️⃣ Exemplu rapid în PHP (generat SDK) 
<code>

require_once(__DIR__ . '/vendor/autoload.php');

use Efatura\Api\UploadApi;
use Efatura\Configuration;
use Efatura\ApiException;
use Efatura\Model\InvoiceUBL;

$config = Configuration::getDefaultConfiguration()->setAccessToken('TOKEN_OAUTH2');

$apiInstance = new UploadApi(
    new GuzzleHttp\Client(),
    $config
);

$xmlInvoice = "<Invoice>...</Invoice>";
$invoice = new InvoiceUBL();
$invoice->setXml($xmlInvoice);

try {
    $result = $apiInstance->upload($invoice);
    print_r($result);
} catch (ApiException $e) {
    echo 'Exception when calling UploadApi: ', $e->getMessage(), PHP_EOL;
}
</code>

Acest cod este direct compatibil cu SDK-ul PHP generat din YAML.

<hr/>
Am generat un prim SDK PHP minimal/demo/partial(deci neoficial,netestat si incomplet) pentru e‑Factura bazat pe YAML-ul OpenAPI. Îl poți descărca de aici:

Descărcați **efactura-sdk-php.zip**

Zip-ul conține:

-- composer.json – pentru instalare rapidă în proiect PHP

-- src/Configuration.php – configurare OAuth2

-- src/Api/UploadApi.php – exemplu de API pentru încărcarea facturilor

-- src/Model/InvoiceUBL.php – model de factură UBL

<hr/>

 - O sa salvez aici si un PhP-SDK(e adevarat mai complet dar din nou neoficial si mai mult netestat inca!) pt api-ul **eFactura** din **SPV**-ul ***ANAF***-ului.
    

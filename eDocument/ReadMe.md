Aici o sa vorbesc despre impachetarea in PDF a unui document compus din
-formular gol sau semi-umplut sablon PDF
-date xml convertite pt semantica/intelegere in 2 formate uzuale UBL2.1 si CII care se vor atasa formularului de deasupra

Pt asta imi trebuie 
- datele unui document oarecare(orice tipizat nu numai cele pregatite in prealabil): scrise/culese de la un UI si impachetate in XML si receptionate intr-un PhP
  (aici poate ar fi mai bun JSON decat XML pt ca are si tipuri de date)
- si apoi 2 [convertoare](https://www.google.com/search?q=php+nota+xml+to+ubl2.1&oq=php+nota+xml+to+ubl2.1&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQABjvBTIHCAIQABjvBTIKCAMQABiABBiiBDIKCAQQABiABBiiBDIHCAUQABjvBdIBCjI5MTkzajBqMTWoAgCwAgA&sourceid=chrome&source=chrome.rb&ie=UTF-8&mstk=AUtExfCZwKXT5Sa-ouWl7tRh-ZjcR9qhnNrwNiTfyiloC6epqTWvG96KqliIKlmPpRNSO-RYYXBLKeFGtmAB-gc1wp-qmUcB0cDJI_rMM4rw0Jwy--Ysu5hGUQTn-BbRcV3N_qlA4Gh2F2jPXIF8kjRNDJXrpwp3FCX2W88YxbJqTHkT9mprr_LR114scoyDh3dYWrif8Zt3qLshu6JR8f0I9Hmon9Q8K1g2rO7HdRVwzuVs3VGEDA&csuir=1&aioh=3&mtid=_Zr5aqyKOti8zMsPi7bK6Ao&udm=50#aof=1) :
 -- XML to UBL
 -- XML to CII
-si apoi sablonul template cu text si grafica fixa gen formular gol asociat cu aceste date(UBL si CII).

Ansamblam sablonul vizual PDF cu ce 2 XML-uri atasate UBL2 si respectiv CII.

Exista pt documentele comune sau standard deja formulare UBL si CII de-a gata, 
- definite date/deja-generate de catre cei care intretin versiunile celor 2 standarde semantice de date(UBL,CII) 
- dar exista si documente tipizate exprimate in UBL sau CII(ambele bazate pe XML),
   imbogatit cu reguli particulare(CIUS avand validatoare XSD/XSL) 
   cum este formatul UBL2.1 de la eFactura(elaborat si cerut de la ANAF).


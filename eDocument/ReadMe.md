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

[Ansamblam](https://www.google.com/search?q=php+nota+xml+to+ubl2.1&oq=php+nota+xml+to+ubl2.1&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQABjvBTIHCAIQABjvBTIKCAMQABiABBiiBDIKCAQQABiABBiiBDIHCAUQABjvBdIBCjI5MTkzajBqMTWoAgCwAgA&sourceid=chrome&source=chrome.rb&ie=UTF-8&mstk=AUtExfAsLUsZPlHIc5Ijk4BTiE5TTfrTW1QAPPQgSlq6eRyNqSs-enUAzolJ6Y8VZb0WmvuDmSZA8yPXfSh4lmsVV8XihwjyEJtse1dD9WoxJPbhEFr2w_dRTPPgFItLyhAOmN97YGzQjuUj4a_stdZiP0SnqYBxg6d-G9Lwu6-6ete4Woq5nyswrDQ9Qhd_KURA_RFcuEuOmvi2rP8vw7b5z6SnITJbLMCVuzYLiJObyyvMUKRI0A&csuir=1&aioh=3&mtid=_Zr5aqyKOti8zMsPi7bK6Ao&udm=50#aof=1) sablonul vizual PDF cu ce 2 XML-uri atasate(prin incapsulare/inglobare ca metadate) UBL2 si respectiv CII( a se vedea [tcPDF+FPDI](https://www.google.com/search?q=github+php+google+tcFPDF%2BFPDI+attach+xml%28UBL2.1%2CCII%29&sca_esv=27e18109783ebaaf&sxsrf=AKL5yDhalBWDpfS2vjsex_lIEld7Ve8oyw%3A1794745021801&udm=50&source=chrome.rb&fbs=ACAhTvyrw_GCB48gji1KbyaDhwlBOcfYIBnmd30wZrXk7Dwl-yqwQItM-8Q0eV2ddRaHeLrhZ2nU5d-etlWVMuj9d2CJ8SD7yal9DDEJWExP4ANzSpUMh-pocjT8bHQN8zoIifJbbdJkHUdRgVWa1BA0lmmvjl_ywXGhFWBSxlQbWWc4YcWSkpdT8sR59gMk63r2KlYBwvUA9VIXn5D3aP8UQKiQ9GbWrQ&vsint=&aep=1&ntc=1&cs=1&sa=X&ved=2ahUKEwiOkfKb-omYAxVtBdsEHWQTFHAQ2J8OegQIFRAD&biw=1483&bih=742&dpr=1.25&mstk=AUtExfD4dnbKCX2CHMNlzboSaHXydmDOsrsyka4FhHcGpJnd4kbX6vJHXLj3RpBeEH6LZADWxbMOrsi3-y_OeDENvd3pLbqoM4x8nLd7ImHSMWUBY2T2SU7KygCVQeX53-mitpFSWm_Ss5cXqLViSjnikQVNEhkNUGnrcqvOXkV3aLPW56CV1vvge2nJcKzBlNNhEa2Gavmm-vw1A--GYV5xp-YNAoP3_yADcCluVEQR4ix-YHAxXTTKtsYYDkORJnbt0EiRRJpsBrN4M2ptlpdoDHd7NP4zscJB-2pfuskpOy-K2tZfI9Vvl6lLNlsxNNYA6xg5T2MvOiUnYg&csuir=1&mtid=xKL5aofsGL6Xxc8Po5rFgA4)).

Exista pt documentele comune sau standard deja formulare UBL si CII de-a gata, 
- definite date/deja-generate de catre cei care intretin versiunile celor 2 standarde semantice de date(UBL,CII) 
- dar exista si documente tipizate exprimate in UBL sau CII(ambele bazate pe XML),
   imbogatit cu reguli particulare(CIUS avand validatoare XSD/XSL) 
   cum este formatul UBL2.1 de la eFactura(elaborat si cerut de la ANAF).


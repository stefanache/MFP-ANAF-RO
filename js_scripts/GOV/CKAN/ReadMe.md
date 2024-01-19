## [**ReadMe.1st**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/js_scripts/GOV/CKAN/ReadMe.md)

a se vedea si portalul ameican [api.data.gov - Agency Manual](https://api.data.gov/docs/agency-manual/)

[exemplu javascript **CKAN** pt **data.gov.ro**](https://data.gov.ro/ro/api/1/util/snippet/api_info.html?resource_id=57abf39a-82e7-422b-b2ec-a7bfb39d67f5)

Il puteti incerca folosind acest link: [https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN/index.html) in browser-ul 
dumneavoastra.

Puteti citi mai multe in sub-sectiunea "[Nomenclatoare](https://github.com/stefanache/MFP-ANAF-RO/tree/main?tab=readme-ov-file#nomenclatoare)" a primei sectiuni(cea cu [Introducerea](https://github.com/stefanache/MFP-ANAF-RO/tree/main#anaf-autoritate-fiscala-introducere-nomenclatoare)).

Pentru mai multe detalii(privind AJAX si nu numai?!) consultati bine-cunoscutul site [w3schools](https://www.w3schools.com/js/js_ajax_examples.asp)

** Remarca: **
- am folosit [jquery](https://www3.ntu.edu.sg/home/ehchua/programming/webprogramming/jQuery_Basics.html) pentru a nu denatura exemplul CKAN oferit de portalul data.gov.ro dar
  poate fi folosit si cod scris pur/direct in javascript
- pentru a descarca libraria [JQuery](https://www.w3schools.com/jquery/tryit.asp?filename=tryjquery_ajax_ajax) am folosit [CDN-ul Google] (https://www3.ntu.edu.sg/home/ehchua/programming/webprogramming/jQuery_Basics.html) desi sunt o multime de alte variante(ex. [CDN-ul Cloudflare](https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js)
- [Atentie](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN): Github blocheaza cererile AJAX pentru exemplul 1(cel cu butonul); puteti testa asta, in browser-ul dvs pe linkul-remote-github https://govro.github.io/example-jsonp/index.html(apoi deschideti in browser developer's-menu "More tools"  si apoi Console si veti vedea mesajul de eroare); dar il puteti descarca  local pe computerul dumneavoastra, apoi dezarhiva si in final apela... dand dublu|simplu-click direct pe fisier pentru a fi deschis in browser dvs folosind protocolul file://...); in schimb exemplul 2(cel cu interogarea punctuala) va functiona mai mereu fara probleme. Link-urile insa functioneaza desigur fara probleme.
- daca va veti uita pe portalul [DATA.GOV.RO](https://data.gov.ro/en/) veti vedea ca exista o sectiune special destinata Nomenclatoarelor;
  Nu uitati ca aceasta sectiune poate fi o foarte buna [sursa de date](https://github.com/govro/) si de nu de [informare](https://github.com/govro/example-jsonp/tree/gh-pages) pentru proiectele dumneavoastra!!!
-puteti folosi motorul de cautare Google(cu parametrii setati corespunzator/doriti) pentru a vedea [ce s-a mai incarcat recent pe acest portal?](https://www.google.com/search?q=data.gov.ro+ckan&lr=lang_ro&sca_esv=599800748&rlz=1C1JJTC_enRO1087RO1087&tbs=lr:lang_1ro,qdr:d&sxsrf=ACQVn0_dUxkY5iAFLJVL6P_oU77sa6RPNw:1705675047182&source=lnt&sa=X&ved=2ahUKEwiJlqja1umDAxXxJhAIHQ_OBO4QpwV6BAgCEA0&biw=1850&bih=875&dpr=1)
  Sistemul balansat de servere CKAN [data.gov.ro](https://gov.palcu.ro/2016/07/14/ultima-zi.html) necesita o activitate intensa de [administrare](https://gov.palcu.ro/2016/07/14/ultima-zi.html).

  Subiectul [Datelor deschise](https://sites.google.com/upg-ploiesti.ro/resurse-se/alte-resurse/surse-de-date) nu este un subiect strict specific datelor de eGuvernare.; Acest este un subiect amplu/de mare anvergura.

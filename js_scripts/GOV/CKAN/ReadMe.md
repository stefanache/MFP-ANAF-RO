## [**ReadMe.1st**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/js_scripts/GOV/CKAN/ReadMe.md)

**Nota**
- Inainte de utiliza un anumit set de date(dataset) incercati sa-l descarcati local in aplicatia dumneavoastra pe calculatorul sau hosting-ul dvs si sa nu-l utilizati accesand-ul direct din internet pt ca s-ar putea ca lucrurile sa se schimbe brusc si nu-l mai puteti accesa din varii motive(vorba proverbului: "ce-i in mana nu-i minciuna")
- Util si ideal ar fi(daca nu ar fi prea complicat) sa creati sau sa aveti un soft de monitorizare a legaturii catre diversele surse de date de pe internet pentru a vedea cand apar modificari in difuzarea lor(in speta cand apare o noua versiune publicata... sa puteti sa o descarcati pe cea noua si sa o inlocuiti cu ea pe cea veche)
- Incercati sa reduceti dimensiunea datelor prin folosirea numai a ceea ce va trebuie la un moment dat in aplicatiile dvs ... astfel veti putea avea probabil un castig in privinta vitezei de procesare si implicit veti avea o aplicatie [agila](https://www.dex.ro/agil).

[*Scop*](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN): **extragerea programatica-AJAX de date** din portalul **data.gov.ro**

[CKAN](https://data.gov.ro/en/organization)(Comprehensive Knowledge Archive Network) este [conectorul/clientul-web](https://data.gov.ro/pages/developers) utilizat catre [datele deschise](https://data.gov.ro/ro/api/1/util/snippet/api_info.html?resource_id=57abf39a-82e7-422b-b2ec-a7bfb39d67f5) gazduite de [data.gov.ro](https://data.gov.ro/en/)


( n.r. a se vedea si portalul ameican [api.data.gov - Agency Manual](https://api.data.gov/docs/agency-manual/) )

[exemplu javascript **CKAN** pt **data.gov.ro**](https://data.gov.ro/ro/api/1/util/snippet/api_info.html?resource_id=57abf39a-82e7-422b-b2ec-a7bfb39d67f5)

Il puteti incerca folosind acest link: [https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN/index.html) in browser-ul 
dumneavoastra.

Puteti citi mai multe in sub-sectiunea "[Nomenclatoare](https://github.com/stefanache/MFP-ANAF-RO/tree/main?tab=readme-ov-file#nomenclatoare)" a primei sectiuni(cea cu [Introducerea](https://github.com/stefanache/MFP-ANAF-RO/tree/main#anaf-autoritate-fiscala-introducere-nomenclatoare)).

Pentru mai multe detalii(privind AJAX si nu numai?!) consultati bine-cunoscutul site [w3schools](https://www.w3schools.com/js/js_ajax_examples.asp)

** Note: **
- am folosit [jquery](https://www3.ntu.edu.sg/home/ehchua/programming/webprogramming/jQuery_Basics.html) pentru a nu denatura exemplul CKAN oferit de portalul data.gov.ro dar
  poate fi folosit si cod scris pur/direct in javascript
- pentru a descarca libraria [JQuery](https://www.w3schools.com/jquery/tryit.asp?filename=tryjquery_ajax_ajax) am folosit [CDN-ul Google] (https://www3.ntu.edu.sg/home/ehchua/programming/webprogramming/jQuery_Basics.html) desi sunt o multime de alte variante(ex. [CDN-ul Cloudflare](https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js) )
- [Atentie](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/GOV/CKAN): Github a **blocat** cererile AJAX http pentru **exemplul 1**(cel cu butonul);

  - puteti testa asta si dvs., in browser-ul Chrome pt linkul-remote-github [https://govro.github.io/example-jsonp/index.html](https://govro.github.io/example-jsonp/index.html)(apoi deschideti in browser developer's-menu "More tools"  si apoi Console si veti vedea mesajul de eroare); dar il puteti descarca  local pe computerul dumneavoastra, apoi dezarhiva si in final apela... dand dublu|simplu-click direct pe fisier pentru a fi deschis in browser dvs folosind protocolul file://...index.html);
  - in schimb **exemplul 2**(cel cu interogarea punctuala) **a/va functiona[t]** mereu fara probleme.

  **Solutia pt exemplul 1 a fost sa inlocuiesc http cu https in fisierul original script.js**;

  In schimb, **link-urile(ancorele) functioneaza** desigur fara probleme si constituie pentru exemplele 1 si 2 daca vreti **solutia alternativa/de rezerva** in atingerea scopului nostru.
- daca va veti uita pe portalul [DATA.GOV.RO](https://data.gov.ro/en/) veti vedea ca exista o sectiune special destinata [Nomenclatoarelor](https://data.gov.ro/group/nomenclatoare);
- de asemenea puteti cauta dupa [organizatii/institutii](https://data.gov.ro/en/organization): ex. [GOV](https://data.gov.ro/en/organization/guvernul-romaniei), [MFP](https://data.gov.ro/en/organization/mfp), [ANAF](https://data.gov.ro/en/organization/agentia-nationala-de-administrare-fiscala), ... dar si[.DF.L. Tg. Mures](https://data.gov.ro/organization/directia-fiscala-locala-targu-mures),...
- sau puteti cauta pe acelasi portal CKAN al [guvernului]((https://data.gov.ro/) dupa [utilizatori](https://data.gov.ro/user/): ex. [Bogdan Grunevici](https://data.gov.ro/en/user/?q=bogdan)...
  
  Nu uitati ca aceasta sectiune poate fi o foarte buna [sursa de date](https://github.com/govro/) si de ce nu de [informare](https://github.com/govro/example-jsonp/tree/gh-pages) pentru proiectele dumneavoastra!!!
- puteti folosi motorul de cautare Google(cu parametrii setati corespunzator/doriti) pentru a vedea [ce s-a mai incarcat recent pe acest portal?](https://www.google.com/search?q=data.gov.ro+ckan&lr=lang_ro&sca_esv=599800748&rlz=1C1JJTC_enRO1087RO1087&tbs=lr:lang_1ro,qdr:d&sxsrf=ACQVn0_dUxkY5iAFLJVL6P_oU77sa6RPNw:1705675047182&source=lnt&sa=X&ved=2ahUKEwiJlqja1umDAxXxJhAIHQ_OBO4QpwV6BAgCEA0&biw=1850&bih=875&dpr=1)
  
- sistemul balansat de servere CKAN [data.gov.ro](https://gov.palcu.ro/2016/07/14/ultima-zi.html) necesita o activitate intensa de [administrare](https://gov.palcu.ro/2016/07/14/ultima-zi.html).
  
- o metodologie [CKAN](https://profs.info.uaic.ro/~busaco/teach/courses/wade/presentations/web07ArhitecturaAplicatiilorRDF-LinkedData.pdf) pentru [publicarea](https://data.gov.ro/pages/publish)  datelor deschise sub egida [POCA](https://www.poca.ro/) o puteti gasi pe site-ul [INS](https://insse.ro/cms/files/opendata/2020-09-14-105456.958150Metodologie-date-deschisefeb2019.pdf)
- 
  Subiectul [Datelor deschise](https://sites.google.com/upg-ploiesti.ro/resurse-se/alte-resurse/surse-de-date) nu este un subiect strict specific datelor de eGuvernare.; Acest este un subiect amplu/de mare anvergura ce se refera desigur la [sursele de date](https://fme.globema.ro/2021/03/25/fme-2021-0-o-noua-versiune-disponibila/).

  Despre [Tehnologiile Web ](https://www.academia.edu/17274310/Tema_1_Tehnologii_WEB) puteti afla mai multe pe portalul [academia.edu](https://www.academia.edu/)...

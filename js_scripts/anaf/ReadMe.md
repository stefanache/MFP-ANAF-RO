- aici gasiti informatii in format xml despre [versiunile CI/CD ale ANAF](https://static.anaf.ro/static/10/Anaf/update5/versiuni.xml)

- pe forumul DevForum puteti gasi un subiect foarte interesant: [generare PDF inteligent](https://devforum.ro/t/generare-pdf-inteligent-pentru-anaf/19005/2)
  - instalarea [XML Notepad](https://github.com/microsoft/XmlNotepad?tab=readme-ov-file) din ghithub este simpla:
    eu am optat pentru varianta "1. Programul de instalare ClickOnce® - acesta este cel mai convenabil, instalați-l direct din browserul web.";
    am descarcat in downloads "[XmlNotepad.application](https://lovettsoftwarestorage.blob.core.windows.net/downloads/XmlNotepad/XmlNotepad.application)" si am dat un simplu dublu click si l-am instalat!!!
  - declaratia [D230](https://static.anaf.ro/static/10/Anaf/Declaratii_R/AplicatiiDec/D230_v1.0.8_14012024.pdf) se descarca de la [ANAF](https://static.anaf.ro/static/10/Anaf/Declaratii_R/230.html)
 
- despre [PDF-Inteligent](https://devforum.ro/t/generare-pdf-inteligent-pentru-anaf/19005) gasiti cate ceva pe [DevForum](https://devforum.ro/t/utilizare-certificat-in-adobe-reader-cu-trans-sped/17419) sau pe... [stackoverflow](https://stackoverflow.com/questions/76736428/programatically-fill-government-pdf-xfa-dynamic) gasiti despre PDF XFA dinamic.

- despre validarea si semnatura digitala folosind Acrobat puteti gasi procedura la [Adobe](https://helpx.adobe.com/ro/acrobat/using/validating-digital-signatures.html)

- mozzila are pe github un subiect interesant despre [pdf.js](https://github.com/mozilla/pdf.js/issues/2373) ... iata aici cateva probleme legate desuportul [XFA(XML Forms Architecture)](https://github.com/chromium/pdfium/tree/master/xfa)

  - iata si acest [Firefox viewer](https://blog.mozilla.org/attack-and-defense/2021/10/14/implementing-form-filling-and-accessibility-in-the-firefox-pdf-viewer/) - Implementarea completării formularelor și a accesibilității în vizualizatorul PDF Firefox

  - o problema legata tot de pdf.js se poate gasi pe [stackoverflow](https://stackoverflow.com/questions/76895019/how-to-use-pdf-js-lib-to-fill-xfa-pdf-forms)... si [aici o problema](https://github.com/mozilla/pdf.js/issues/14249)

  - chiar [Adobe LiveCycle](https://experienceleaguecommunities.adobe.com/t5/adobe-livecycle-questions/pdf-js-adds-basic-xfa-support/m-p/404238) are un anunt legat de suportul [XFA](https://en.wikipedia.org/wiki/XFA) oferit de catre pdf.js

  - iata si cateva exemple simple de [utilizare pdf.js](https://mozilla.github.io/pdf.js/examples/)

  - sunt si unele probleme la formulare mai [complexe](https://lightrun.com/answers/mozilla-pdf-js-complex-xfa-forms-fail-to-render-properly-or-at-all-with-xfa-enabled) pt combinatia pdf.js+XFA

  - wiki mozilla prezentare pdf.js( a se vedea suportul [XFA](https://wiki.mozilla.org/PDF.js?title=Template:Warning) pt crearea de formulare PDF pt achizitie date XML
    
  - pe github aveti detalii despre modulu [pdfjsLib](https://mozilla.github.io/pdf.js/api/draft/module-pdfjsLib.html)
  - cateva cuvinte pt pdf.js+XFA pt utilizatorii de [Linux](https://fortintam.com/blog/please-adapt-pdfjs-xfa-forms-for-linux-pdf-readers/)
  - puteti folosi motorul [caut si gasesc](https://www.cautsigasesc.net/web?q=pdf+js+viewer+demo&gclid=Cj0KCQiA-62tBhDSARIsAO7twbZIDdBENFb_kmmLVZnuBzIh1oxzvEhfjcVZRXziihUp-ZpsXHMoDL4aAuUtEALw_wcB&qo=semQuery&an=google_s&tt=rmd&ad=semD&ag=fw81&am=broad&akid=66e0af33-5528-41f0-b758-dc2c2279a92a-0-cg_gsb) pt demo-uri ale aceastei speta
  - [Adobe](https://helpx.adobe.com/livecycle/kb/xfa-forms-firefox-chrome.html) are un articol foarte interesant si simplu in care se arata cum se deschid in browserele FireFox si Chrome fisierele PDF bazate pe XFA
  - bugZilla semnaleaza aici un [bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1717668) legat de acest subiect pdf.js+XFA si multe intrebari pe [stackowerflow](https://stackoverflow.com/questions/tagged/pdf.js?sort=active)
  - cineva semnaleaza pe github ca desi pdf.js viewer, plugin-ul/extensia Adobe-Reader pt browser-ul Chrome are suport XFA nu reuseste sa afiseze corect PDF-ul(soft A) al [DU/D112](https://github.com/mozilla/pdf.js/issues/17510)
  - [aici](https://chromewebstore.google.com/detail/xfa-pdf-to-normal-pdf-xfa/glgjhoiegfmmjoojodcbilmcahhidmal?hl=ro) arata cum se trece de la XFA PDF la un PDF normal/aplatizat(XFA Form Flatten)
  - aici avem un [document/articol](https://helpx.adobe.com/ro/acrobat/kb/edit-xfa-form.html) care explica - cum se editează formularele XFA create în LiveCycle Designer  

  - conversiile pot duce la [pierderi de functionalitati](https://support.pdfarchitect.org/hc/en-us/articles/14229068450196-XFA-is-not-supported-How-do-I-open-the-PDF-file-)
   
- aici aveti o discutie interesanta despre utilizarea certificatului digital de la [Trans-Sped](https://devforum.ro/t/utilizare-certificat-in-adobe-reader-cu-trans-sped/17419)
- o [evaluare JS cu pdfHTML](https://kb.itextpdf.com/itext/evaluating-js-with-pdfhtml) in Java si C#
  
- despre puncte de lucru puteti sa cititi [aici](https://facturis.ro/blog/e-factura/punctele-de-lucru-ale-clientului-si-informatiile-necesare-pe-factura-si-in-e-factura/) pe site-ul [Facturis](https://facturis-online.ro/e-factura/intrebari-despre-e-factura-in-facturis-online.html)
  
- configurarea eFactura in SPV este descrisa [aici](https://facturis-online.ro/e-factura/configurarea-aplicatiei-de-facturare-pentru-ro-e-factura.html); despre Identificatorul schemei UBL ***STI*** si ***PSP*** puteti citi [aici](static.anaf.ro/static/10/Anaf/Informatii_R/Comunicat_e-factura_aprilie2022_v2_050422.pdf);

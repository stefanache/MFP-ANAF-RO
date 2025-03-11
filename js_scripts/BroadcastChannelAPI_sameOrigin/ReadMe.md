Salut,

Mi-a atras in mod deosebit acest [API](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API) astfel incat am decis sa deschid acest nou post intitulat ["Broadcast Channel API"](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API).

API -ul Broadcast Channel permite comunicarea de bază între [contexte de navigare](https://developer.mozilla.org/en-US/docs/Glossary/Browsing_context) (adică ferestre , file , cadre sau iframes ) și lucrători(workers) de pe aceeași [origine](https://developer.mozilla.org/en-US/docs/Glossary/Origin).

***Notă***: 
<br/>pentru a fi mai exact, comunicarea este permisă între contextele de navigare folosind aceeași partiție de stocare . 
<br/>Spațiul de stocare este mai întâi împărțit în funcție de site-uri de nivel superior, deci, de exemplu, dacă aveți o pagină deschisă a.comcare încorporează un iframe din b.com, și o altă pagină deschisă către b.com, atunci iframe-ul nu poate comunica cu a doua pagină, deși din punct de vedere tehnic sunt de aceeași origine. <br/>Cu toate acestea, dacă prima pagină este și pe b.com, atunci iframe-ul poate comunica cu a doua pagină.

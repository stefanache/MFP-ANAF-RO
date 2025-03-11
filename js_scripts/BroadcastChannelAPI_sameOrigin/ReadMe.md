<script>
 @use "sass:meta";
@use "~@mdn/minimalist/sass/mixins/utils" as *;
@use "../../../ui/vars" as *;

// Style for mobile *and* desktop.

.bc-table {
  border: 1px solid var(--border-primary);
  border-collapse: separate;
  border-radius: var(--elem-radius);
  border-spacing: 0;
  margin: 1rem 0;
  width: 100%;

  td,
  th {
    border: 1px solid var(--border-secondary);
    border-width: 0 0 1px 1px;
    font-weight: 500;
    padding: 0;

    @media (min-width: $screen-md) {
      font-size: var(--type-smaller-font-size);
      padding: 0.4rem;

      code {
        font-size: var(--type-smaller-font-size);
      }
    }
  }

  th {
    background: var(--background-primary);
    padding: 0.4rem;
    vertical-align: bottom;
  }

  // these props allow us to add border-radius to the table.
  // border-collapse: separate gets in the way of this
  // being easy.
  tbody {
    tr {
      height: 3rem;

      @media (min-width: $screen-md) {
        &:last-child {
          th,
          td {
            border-bottom-width: 0;
          }
        }
      }

      th {
        border-left-width: 0;
        vertical-align: middle;
      }
    }

    .bc-support {
      vertical-align: top;

      button {
        cursor: pointer;
        width: 100%;
      }

      &.bc-supports-no > button > span {
        color: var(--text-primary-red);
      }

      &.bc-supports-partial > button > span {
        color: var(--text-primary-yellow);
      }

      &.bc-supports-preview > button > span {
        color: var(--text-primary-blue);
      }

      &.bc-supports-yes > button > span {
        color: var(--text-primary-green);
      }
    }

    .bc-history {
      td {
        border-left-width: 0;
      }

      .icon.icon-removed-partial {
        // override icon
        mask-image: url("../../../assets/icons/partial.svg");
      }
    }
  }

  .bc-supports {
    margin-bottom: 1rem;

    .icon-wrap {
      background: var(--background-primary);
    }
  }

  .bc-supports.bc-supports-removed-partial {
    .bcd-cell-text-copy {
      color: var(--text-primary-yellow);
    }
  }

  .icon-wrap {
    .bc-support-level {
      @include visually-hidden;
    }
  }

  .bc-support {
    > button > .icon-wrap {
      display: block;
    }

    .icon.icon-removed-partial {
      background-color: var(--icon-critical);
      // override icon
      mask-image: url("../../../assets/icons/no.svg");
    }
  }

  .bc-support.bc-supports-removed-partial {
    .bcd-cell-text-copy {
      color: var(--text-primary-red);
    }
  }

  .bc-feature-depth-2 {
    border-left-width: 8px;
  }

  .bc-feature-depth-3 {
    border-left-width: 16px;
  }
}

.bc-head-txt-label {
  left: calc(50% - 0.5rem);
  line-height: 1;
  padding-top: 0.5rem;
  position: relative;
  text-orientation: sideways;
  transform: rotate(180deg);
  white-space: nowrap;
  -ms-writing-mode: tb-rl;
  -webkit-writing-mode: vertical-rl;
  writing-mode: vertical-rl;
}

.bc-head-icon-symbol {
  margin-bottom: 0.3rem;
}

.bc-support {
  text-align: center;
  vertical-align: middle;
}

.bc-level-no {
  background-color: var(--icon-critical);
}

.bc-level-preview {
  background-color: var(--icon-information);
}

.bc-legend-items-container {
  display: flex;
  flex-wrap: wrap;
  font-size: var(--type-smaller-font-size);
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.bc-legend-tip {
  font-size: var(--type-smaller-font-size);
  font-style: italic;
  font-variation-settings: "slnt" -10;
  margin-bottom: 1rem;
  margin-top: 0;
}

.bc-legend-item {
  align-items: center;
  display: flex;
  gap: 0.5rem;
}

.bc-legend-item-dt {
  display: flex;

  .icon {
    background-color: var(--icon-primary);
  }
}

// Row with desktop / mobile icons.
.bc-platforms {
  height: 2rem;

  th {
    text-align: center;
  }

  td {
    border: none;
  }
}

// Row with browser names.
.bc-browsers {
  th {
    text-align: center;
  }

  td {
    border-width: 0 0 1px;
  }
}

.bc-notes-list {
  margin: 0.5rem 0;
  position: relative;
  text-align: left;
  width: 100%;

  &:before {
    background: var(--border-primary);
    content: "";
    height: calc(100% - 0.25rem);
    left: 7px;
    margin-top: 0.25rem;
    position: absolute;
    width: 2px;
    z-index: -1;
  }

  // complicated selector to cover the last bit of the grey line above.
  .bc-notes-wrapper:last-child dd:last-child {
    position: relative;

    &:before {
      background: var(--background-primary);
      bottom: 0;
      content: "";
      height: calc(100% - 6px);
      left: 7px;
      position: absolute;
      width: 2px;
      z-index: -1;
    }
  }

  .bc-level-yes.icon.icon-yes {
    // override icon
    background-color: var(--icon-success);
    mask-image: url("../../../assets/icons/yes-circle.svg");
  }

  .bc-supports-dd {
    .icon {
      background: var(--border-primary);
      border: 3px solid var(--background-primary);
      border-radius: 50%;
      mask-image: none;
    }
  }

  .bc-version-label {
    display: inline;
  }

  abbr {
    margin-right: 4px;
  }

  dd {
    margin-bottom: 1rem;
    padding-left: 1.5rem;
    text-indent: -1.5rem;

    &:last-child {
      margin-bottom: 2rem;
    }
  }
}

.bc-notes-wrapper {
  color: var(--text-primary);
  margin-bottom: 1rem;

  &:last-child {
    margin-bottom: 0;
  }
}

dl.bc-notes-list {
  dt.bc-supports {
    margin-top: 1rem;

    &:first-child {
      margin-top: 0;
    }
  }

  dd.bc-supports-dd {
    margin-bottom: 1rem;

    &:last-child {
      margin-bottom: 0;
    }
  }
}

.offscreen,
.only-icon span {
  @include visually-hidden();
}

.bc-table-row-header {
  align-items: baseline;
  display: inline-flex;
  width: 100%;

  code {
    overflow: hidden;
  }

  .left-side,
  .right-side {
    overflow: hidden;
    white-space: pre;
  }

  /* Can only flex-shrink and not flex-grow
  ie the "slider" in a sliding glass door */
  .left-side {
    flex: 0 1 auto;
    text-overflow: ellipsis;
  }
  /* Can flex-grow and not flex-shrink as
  its the stationary portion */
  .right-side {
    flex: 1 0 auto;
  }

  .bc-icons {
    display: flex;
    gap: 0.5rem;
    margin-top: 0.25rem;

    .icon {
      background-color: var(--icon-secondary);

      &:hover {
        background-color: var(--icon-primary);
      }
    }
  }
}

.bc-github-link {
  font: var(--type-smaller-font-size);
}

.main-page-content {
  .bc-legend {
    dd,
    dt {
      margin-bottom: 0;
      margin-left: 0;
      margin-top: 0;
    }
  }

  .bc-supports-dd {
    margin: 0;
  }
}

@include meta.load-css("index-mobile");
@include meta.load-css("index-desktop");
@include meta.load-css("index-desktop-md");
@include meta.load-css("index-desktop-xl");

.bcd-cell-text-wrapper {
  display: flex;
  flex-direction: row;
  gap: 0.5rem;

  @media (min-width: $screen-md) {
    align-items: center;
    flex-direction: column;
  }
}

.bcd-timeline-cell-text-wrapper {
  display: flex;
  flex-direction: row;
  gap: 0.5rem;
}

.bcd-cell-text-copy {
  color: var(--text-primary);
  display: flex;
  gap: 0.5rem;
}

.bc-supports-yes {
  .bcd-cell-text-copy {
    color: var(--text-primary-green);
  }
}

.bc-supports-no {
  .bcd-cell-text-copy {
    color: var(--text-primary-red);
  }
}

.bc-supports-partial {
  .bcd-cell-text-copy {
    color: var(--text-primary-yellow);
  }
}

.bcd-cell-icons {
  display: flex;
  gap: 0.5rem;

  @media (min-width: $screen-md) {
    display: block;
  }
}

@media (min-width: $screen-md) {
  .bc-table {
    td {
      height: 2rem;
    }

    td.bc-support > button {
      padding: 0.5rem 0.25rem;
    }
  }
}

</script>
Salut,

Mi-a atras in mod deosebit, un [**mozilla.org** - *developer* - Web API: *articol*](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API), astfel incat am decis, sa deschid acest nou post, intitulat ["***Broadcast Channel API***"](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API).

Api-ul permite comunicarea(chatting-ul) intre fisiere-locale *.html*(care poate include desigur portiuni de cod/snippet JS) aflate local pe ace[l]asi(local nu remote/la distanta) PC/desktop/tableta/dispozitive-mobile.
<br>Acest api/protocol seamana foarte mult cu/implementeaza protocolul(client-server) **MQTT**(sau cu protocolul(client-server) ***WebSocket*** care sta la baza **MQTT**), doar ca totul(protocolul client-server) se petrece pe acelasi device local(PC/desktop/tabela/mobil) deci pe aceiasi(*same*) origine(*origin*) locala.
<br/>Noutatea consta in faptul ca, dezvoltatorul nu trebuie/nu este necesar sa se preocupe de implementarea si/sau folosirea unui server anume sau de anumite operatii neintuitive, precum serializarea datelor in vederea transportului ori alte astfel de micro-operatiuni de tipul negocierii legaturii intre participantii canalului de comunicatie, operatiuni care sunt ascunse acestuia(utilizatorului/dezvoltatorului), care in mare masura este/se va preocupa[t] doar de utilizarea/fructificarea acestui mecanism(ascuns), permitandu-i acestuia sa se poata concentra mai mult asupra aplicatiei/proiectului sale/sau pe care doreste sa-l finalizeze/proiecteze/dezvolte.

 - ***API-ul Broadcast Channel***

API -ul Broadcast Channel permite comunicarea de bază între [contexte de navigare](https://developer.mozilla.org/en-US/docs/Glossary/Browsing_context) (adică ferestre , file , cadre sau iframes ) și lucrători(workers) de pe aceeași [origine](https://developer.mozilla.org/en-US/docs/Glossary/Origin).

***Notă***: 
<br/>Pentru a fi mai exact, comunicarea este permisă între contextele de navigare folosind aceeași [partiție de stocare](https://developer.mozilla.org/en-US/docs/Web/Privacy/Guides/State_Partitioning). 
<br/>Spațiul de stocare este mai întâi împărțit în funcție de site-urile de nivel superior, deci, de exemplu, dacă aveți o pagină deschisă **a.com** care încorporează un iframe din **b.com**, și o altă pagină deschisă către **b.com**, atunci iframe-ul nu poate comunica cu a doua pagină, deși din punct de vedere tehnic sunt de aceeași origine. <br/>Cu toate acestea, dacă prima pagină este și pe **b.com**, atunci iframe-ul poate comunica cu a doua pagină.

Prin crearea unui [***BroadcastChannelobiect***](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel), puteți primi orice mesaje postate pe acesta. 
<br/>Nu trebuie să mențineți o referință la cadrele(frames) sau lucrătorii(workers) cu care doriți să comunicați: aceștia se pot „abona” la un anumit canal construindu-și propriul canal [***BroadcastChannel***](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel) cu același nume și au o comunicare
bidirecțională între toți.

<br/><a href="https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API" width="95%" height="auto"><img src="https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API/broadcastchannel.png">BroadcastChannel<img></a><br/>

 - ***Interfață Broadcast Channel***

   - **Crearea sau alăturarea unui(atasarea/alipirea/conectarea la un) canal**
     <br/>Un client se alătură unui canal de difuzare creând un [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel) obiect.
     <br/>[Constructorul](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/BroadcastChannel) său preia un singur parametru: numele canalului(ex: "*test_channel*").
     <br/>Dacă acest cod-JS este primul care se conectează la acel nume("*test_channel*") de canal de difuzare, canalul de bază este creat(in acest caz: *bc*).
     <br/><pre><code>// Connection to a broadcast channel
const bc = new BroadcastChannel("test_channel");</code></pre>
     <br/>Primul snippet-JS care executa instructiunea de mai sus va *crea*(in mod automat) canalul si se si va *atasa*(in mod automat) la acesta iar urmatoarele snippet-uri care ruleaza fix aceiasi instructiune, doar(fara a mai crea unul cu acelasi nume:"*test_channel*") se vor *atasa*(efectiv) la acest canal(*bc*) anterior/deja creat/existent.
     <br/>Cu alte cuvinte aceiasi linie-de-cod(*const bc = new BroadcastChannel("test_channel");*), mai intai/initial *creaza* si *ataseaza* iar apoi cand...sau... ori de cate ori(repetitiv), o utilizezi(din nou/repetitiv), fix in aceiasi forma/linie de cod(*const bc = new BroadcastChannel("test_channel");*), doar *ataseaza* html-ul respectiv.<br/><br/>
   - **Trimiterea unui mesaj**
     <br/>Este suficient să apelați metoda [postMessage()](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/postMessage) pe obiectul creat [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/BroadcastChannel), care ia ca argument orice obiect.
     <br/>Un exemplu de mesaj șir:
     <br/><pre><code>// Example of sending of a very simple message
bc.postMessage("This is a test message.");</code></pre>
<br/>Datele trimise către canal sunt serializate folosind [algoritmul de clonare structurată](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm).
<br/>Aceasta înseamnă că puteți trimite o mare varietate de obiecte de date în siguranță, fără a fi nevoie să le serializați singur.<br/>
<br/>API-ul nu asociază nicio semantică mesajelor, așa că depinde de cod să știe la ce fel de mesaje să se aștepte și ce să facă cu ele.

   - **Primirea unui mesaj**
     <br/>Când un mesaj este postat, un eveniment [message](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/message_event)  este trimis fiecărui obiect [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel)  conectat la acest canal(*bc*).
     <br/>O funcție poate fi rulată pentru acest eveniment folosind handler-ul(manipulatorul)  de evenimente intitulat [onmessage](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/message_event):
     <br/><pre><code>// A handler that only logs the event to the console:
bc.onmessage = (event) => {
                              console.log(event);
                          };</code></pre><br/>
<br/>*Nota*: <br/>dupa cum se poate lesne/usor observa acest handler cand primeste un eveniment(event) acesta il/se afiseaza(efectueaza/face un *log*/se *logs*) in consola(console) browser-ului.<br/>
   - **Deconectarea unui canal**
   <br/>Pentru a părăsi un canal, apelați close()metoda pe obiect.
   <br/>Acest lucru deconectează [obiectul]https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/BroadcastChannel(*bc*) de la [canalul](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/BroadcastChannel) de bază("*test_channel*"), permițând colectarea gunoiului(memoria referita de acest obiect/canal care din acest moment devine inutilizabila si pe cale de consecinta/deci inutila, fapt ce determina colectorul de gunoi, desemnat de catre managerul/browserul sau, sa-si faca "treaba"/sa proceseze task-ul incredintat si sa colecteze/adune "gunoiul" rezultat).
   <br/><pre><code>// Disconnect the channel
bc.close();
</code></pre><br/>
   
 - ***Concluzie***
   <br/>Interfața autonomă a API-ului Broadcast Channel permite comunicarea în context încrucișat.
   <br/>Poate fi folosit pentru a detecta acțiunile utilizatorului în alte fisiere(.html) din aceeași origine, cum ar fi... atunci când utilizatorul se conectează sau se deconectează.<br/>
   <br/>Protocolul de mesagerie nu este definit și diferitele contexte de navigare trebuie să-l implementeze singure; nu există nicio negociere și nici o cerință din caietul de sarcini.

 - ***Interfete***
 <br/>[BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel)<br/>
  <br/>Reprezintă un canal numit la care se poate abona orice [context de navigare](https://developer.mozilla.org/en-US/docs/Glossary/Browsing_context) dintr-o anumită [origine](https://developer.mozilla.org/en-US/docs/Glossary/Origin) .<br/>br/> 
 - ***Specificatii***
   - **Caietul de sarcini**
     <br/>[HTML # broadcasting-to-altre-browsing-contextes])https://html.spec.whatwg.org/multipage/web-messaging.html#broadcasting-to-other-browsing-contexts
 - ***Compatibilitate browser***
 - <br/>[Raportați probleme cu aceste date de compatibilitate pe GitHub](https://github.com/mdn/browser-compat-data/issues/new?mdn-url=https%3A%2F%2Fdeveloper.mozilla.org%2Fen-US%2Fdocs%2FWeb%2FAPI%2FBroadcast_Channel_API&metadata=%3C%21--+Do+not+make+changes+below+this+line+--%3E%0A%3Cdetails%3E%0A%3Csummary%3EMDN+page+report+details%3C%2Fsummary%3E%0A%0A*+Query%3A+%60api.BroadcastChannel%60%0A*+Report+started%3A+2025-03-11T09%3A38%3A14.006Z%0A%0A%3C%2Fdetails%3E&title=api.BroadcastChannel+-+%3CSUMMARIZE+THE+PROBLEM%3E&template=data-problem.yml)<br/>
 <figure class="table-container"><figure class="table-container-inner"><table class="bc-table bc-table-web"><thead><tr class="bc-platforms"><td></td><th class="bc-platform bc-platform-desktop" colspan="5" title="desktop"><span class="icon icon-desktop"></span><span class="visually-hidden"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">desktop</font></font></span></th><th class="bc-platform bc-platform-mobile" colspan="7" title="mobil"><span class="icon icon-mobile"></span><span class="visually-hidden"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">mobil</font></font></span></th><th class="bc-platform bc-platform-server" colspan="2" title="server"><span class="icon icon-server"></span><span class="visually-hidden"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">server</font></font></span></th></tr><tr class="bc-browsers"><td></td><th class="bc-browser bc-browser-chrome"><div class="bc-head-txt-label bc-head-icon-chrome"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome</font></font></div><div class="bc-head-icon-symbol icon icon-chrome"></div></th><th class="bc-browser bc-browser-edge"><div class="bc-head-txt-label bc-head-icon-edge"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Margine</font></font></div><div class="bc-head-icon-symbol icon icon-edge"></div></th><th class="bc-browser bc-browser-firefox"><div class="bc-head-txt-label bc-head-icon-firefox"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox</font></font></div><div class="bc-head-icon-symbol icon icon-simple-firefox"></div></th><th class="bc-browser bc-browser-opera"><div class="bc-head-txt-label bc-head-icon-opera"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></div><div class="bc-head-icon-symbol icon icon-opera"></div></th><th class="bc-browser bc-browser-safari"><div class="bc-head-txt-label bc-head-icon-safari"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari</font></font></div><div class="bc-head-icon-symbol icon icon-safari"></div></th><th class="bc-browser bc-browser-chrome_android"><div class="bc-head-txt-label bc-head-icon-chrome_android"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android</font></font></div><div class="bc-head-icon-symbol icon icon-chrome"></div></th><th class="bc-browser bc-browser-firefox_android"><div class="bc-head-txt-label bc-head-icon-firefox_android"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android</font></font></div><div class="bc-head-icon-symbol icon icon-simple-firefox"></div></th><th class="bc-browser bc-browser-opera_android"><div class="bc-head-txt-label bc-head-icon-opera_android"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android</font></font></div><div class="bc-head-icon-symbol icon icon-opera"></div></th><th class="bc-browser bc-browser-safari_ios"><div class="bc-head-txt-label bc-head-icon-safari_ios"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS</font></font></div><div class="bc-head-icon-symbol icon icon-safari"></div></th><th class="bc-browser bc-browser-samsunginternet_android"><div class="bc-head-txt-label bc-head-icon-samsunginternet_android"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet</font></font></div><div class="bc-head-icon-symbol icon icon-samsunginternet"></div></th><th class="bc-browser bc-browser-webview_android"><div class="bc-head-txt-label bc-head-icon-webview_android"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android</font></font></div><div class="bc-head-icon-symbol icon icon-webview"></div></th><th class="bc-browser bc-browser-webview_ios"><div class="bc-head-txt-label bc-head-icon-webview_ios"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS</font></font></div><div class="bc-head-icon-symbol icon icon-safari"></div></th><th class="bc-browser bc-browser-deno"><div class="bc-head-txt-label bc-head-icon-deno"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno</font></font></div><div class="bc-head-icon-symbol icon icon-deno"></div></th><th class="bc-browser bc-browser-nodejs"><div class="bc-head-txt-label bc-head-icon-nodejs"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js</font></font></div><div class="bc-head-icon-symbol icon icon-nodejs"></div></th></tr></thead><tbody><tr><th class="bc-feature bc-feature-depth-0" scope="row"><div class="bc-table-row-header"><code>BroadcastChannel</code></div></th><td class="bc-support bc-browser-chrome bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome</font></font></span><span class="bc-version-label" title="Chrome 54 – Lansat 2016-10-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-edge bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Edge – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Edge – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Margine</font></font></span><span class="bc-version-label" title="Edge 79 – Lansat 2020-01-15"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">79</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox</font></font></span><span class="bc-version-label" title="Firefox 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera bc-supports-yes bc-has-history" aria-expanded="true"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></span><span class="bc-version-label" title="Opera 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><dl class="bc-notes-list bc-history bc-history-mobile"><div class="bc-notes-wrapper"><dt class="bc-supports-yes bc-supports"><div class="bcd-timeline-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Full support"><span class="bc-support-level">Opera – Full support</span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name">Opera</span><span class="bc-version-label">41 (Released 2016-10-25)</span></div></div></dt><dd class="bc-supports-dd"><abbr class="only-icon" title="See implementation notes."><span>footnote</span><i class="icon icon-footnote"></i></abbr> <span>Full support</span></dd></div></dl><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari</font></font></span><span class="bc-version-label" title="Safari 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-chrome_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android</font></font></span><span class="bc-version-label" title="Chrome Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox pentru Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android</font></font></span><span class="bc-version-label" title="Firefox pentru Android 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android</font></font></span><span class="bc-version-label" title="Opera Android 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS</font></font></span><span class="bc-version-label" title="Safari pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-samsunginternet_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Samsung Internet – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet</font></font></span><span class="bc-version-label" title="Samsung Internet 6.0 – Lansat 2017-08-23"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android</font></font></span><span class="bc-version-label" title="WebView Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS</font></font></span><span class="bc-version-label" title="WebView pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-deno bc-supports-no bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-no
              icon
              icon-no" title="Deno – Fără suport"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno – Fără suport</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno</font></font></span><span class="bc-version-label" title="Deno 1.11 – Lansat 2021-06-08"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1.11</font></font></span></div><div class="bc-icons"><abbr class="only-icon" title="Utilizatorul trebuie să activeze în mod explicit această funcție."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dezactivat</font></font></span><i class="icon icon-disabled"></i></abbr></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-nodejs bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Node.js – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js</font></font></span><span class="bc-version-label" title="Node.js 18.0.0 – Lansat 2022-04-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">18.0.0</font></font></span></div><div class="bc-icons"><abbr class="only-icon" title="Are mai multe informații de compatibilitate."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Mai mult</font></font></span><i class="icon icon-more"></i></abbr></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td></tr><tr class="bc-history bc-history-desktop"><td colspan="15"><dl class="bc-notes-list"><div class="bc-notes-wrapper"><dt class="bc-supports-yes bc-supports"><div class="bcd-timeline-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></span><span class="bc-version-label"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41 </font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(Eliberat 2016-10-25)</font></font></span></div></div></dt><dd class="bc-supports-dd"><abbr class="only-icon" title="Vezi notele de implementare."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">notă de subsol</font></font></span><i class="icon icon-footnote"></i></abbr> <span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Sprijin deplin</font></font></span></dd></div></dl></td></tr><tr><th class="bc-feature bc-feature-depth-1" scope="row"><a href="/en-US/docs/Web/API/BroadcastChannel/BroadcastChannel" class="bc-table-row-header" data-glean="bcd: link -> /en-US/docs/Web/API/BroadcastChannel/BroadcastChannel"><span><code>BroadcastChannel()</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">constructor</font></font></span></a></th><td class="bc-support bc-browser-chrome bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome</font></font></span><span class="bc-version-label" title="Chrome 54 – Lansat 2016-10-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-edge bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Edge – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Edge – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Margine</font></font></span><span class="bc-version-label" title="Edge 79 – Lansat 2020-01-15"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">79</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox</font></font></span><span class="bc-version-label" title="Firefox 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></span><span class="bc-version-label" title="Opera 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari</font></font></span><span class="bc-version-label" title="Safari 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-chrome_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android</font></font></span><span class="bc-version-label" title="Chrome Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox pentru Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android</font></font></span><span class="bc-version-label" title="Firefox pentru Android 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android</font></font></span><span class="bc-version-label" title="Opera Android 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS</font></font></span><span class="bc-version-label" title="Safari pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-samsunginternet_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Samsung Internet – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet</font></font></span><span class="bc-version-label" title="Samsung Internet 6.0 – Lansat 2017-08-23"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android</font></font></span><span class="bc-version-label" title="WebView Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS</font></font></span><span class="bc-version-label" title="WebView pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-deno bc-supports-no bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-no
              icon
              icon-no" title="Deno – Fără suport"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno – Fără suport</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno</font></font></span><span class="bc-version-label" title="Deno 1.11 – Lansat 2021-06-08"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1.11</font></font></span></div><div class="bc-icons"><abbr class="only-icon" title="Utilizatorul trebuie să activeze în mod explicit această funcție."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dezactivat</font></font></span><i class="icon icon-disabled"></i></abbr></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-nodejs bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Node.js – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js</font></font></span><span class="bc-version-label" title="Node.js 15.4.0 – Lansat 2020-12-09"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td></tr><tr><th class="bc-feature bc-feature-depth-1" scope="row"><a href="/en-US/docs/Web/API/BroadcastChannel/close" class="bc-table-row-header" data-glean="bcd: link -> /en-US/docs/Web/API/BroadcastChannel/close"><code>close</code></a></th><td class="bc-support bc-browser-chrome bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome</font></font></span><span class="bc-version-label" title="Chrome 54 – Lansat 2016-10-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-edge bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Edge – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Edge – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Margine</font></font></span><span class="bc-version-label" title="Edge 79 – Lansat 2020-01-15"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">79</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox</font></font></span><span class="bc-version-label" title="Firefox 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></span><span class="bc-version-label" title="Opera 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari</font></font></span><span class="bc-version-label" title="Safari 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-chrome_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android</font></font></span><span class="bc-version-label" title="Chrome Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox pentru Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android</font></font></span><span class="bc-version-label" title="Firefox pentru Android 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android</font></font></span><span class="bc-version-label" title="Opera Android 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS</font></font></span><span class="bc-version-label" title="Safari pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-samsunginternet_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Samsung Internet – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet</font></font></span><span class="bc-version-label" title="Samsung Internet 6.0 – Lansat 2017-08-23"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android</font></font></span><span class="bc-version-label" title="WebView Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS</font></font></span><span class="bc-version-label" title="WebView pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-deno bc-supports-no bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-no
              icon
              icon-no" title="Deno – Fără suport"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno – Fără suport</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno</font></font></span><span class="bc-version-label" title="Deno 1.11 – Lansat 2021-06-08"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1.11</font></font></span></div><div class="bc-icons"><abbr class="only-icon" title="Utilizatorul trebuie să activeze în mod explicit această funcție."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dezactivat</font></font></span><i class="icon icon-disabled"></i></abbr></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-nodejs bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Node.js – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js</font></font></span><span class="bc-version-label" title="Node.js 15.4.0 – Lansat 2020-12-09"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td></tr><tr><th class="bc-feature bc-feature-depth-1" scope="row"><a href="/en-US/docs/Web/API/BroadcastChannel/message_event" class="bc-table-row-header" data-glean="bcd: link -> /en-US/docs/Web/API/BroadcastChannel/message_event"><span><code>message</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">eveniment</font></font></span></a></th><td class="bc-support bc-browser-chrome bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome</font></font></span><span class="bc-version-label" title="Chrome 54 – Lansat 2016-10-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-edge bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Edge – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Edge – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Margine</font></font></span><span class="bc-version-label" title="Edge 79 – Lansat 2020-01-15"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">79</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox</font></font></span><span class="bc-version-label" title="Firefox 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></span><span class="bc-version-label" title="Opera 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari</font></font></span><span class="bc-version-label" title="Safari 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-chrome_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android</font></font></span><span class="bc-version-label" title="Chrome Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox pentru Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android</font></font></span><span class="bc-version-label" title="Firefox pentru Android 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android</font></font></span><span class="bc-version-label" title="Opera Android 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS</font></font></span><span class="bc-version-label" title="Safari pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-samsunginternet_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Samsung Internet – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet</font></font></span><span class="bc-version-label" title="Samsung Internet 6.0 – Lansat 2017-08-23"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android</font></font></span><span class="bc-version-label" title="WebView Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS</font></font></span><span class="bc-version-label" title="WebView pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-deno bc-supports-no bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-no
              icon
              icon-no" title="Deno – Fără suport"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno – Fără suport</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno</font></font></span><span class="bc-version-label" title="Deno 1.11 – Lansat 2021-06-08"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1.11</font></font></span></div><div class="bc-icons"><abbr class="only-icon" title="Utilizatorul trebuie să activeze în mod explicit această funcție."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dezactivat</font></font></span><i class="icon icon-disabled"></i></abbr></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-nodejs bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Node.js – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js</font></font></span><span class="bc-version-label" title="Node.js 15.4.0 – Lansat 2020-12-09"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td></tr><tr><th class="bc-feature bc-feature-depth-1" scope="row"><a href="/en-US/docs/Web/API/BroadcastChannel/messageerror_event" class="bc-table-row-header" data-glean="bcd: link -> /en-US/docs/Web/API/BroadcastChannel/messageerror_event"><span><code>messageerror</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">eveniment</font></font></span></a></th><td class="bc-support bc-browser-chrome bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome</font></font></span><span class="bc-version-label" title="Chrome 60 – Lansat 2017-07-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">60</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-edge bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Edge – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Edge – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Margine</font></font></span><span class="bc-version-label" title="Edge 79 – Lansat 2020-01-15"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">79</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox</font></font></span><span class="bc-version-label" title="Firefox 57 – Lansat 2017-11-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">57</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></span><span class="bc-version-label" title="Opera 47 – Lansat 2017-08-09"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">47</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari</font></font></span><span class="bc-version-label" title="Safari 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-chrome_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android</font></font></span><span class="bc-version-label" title="Chrome Android 60 – Lansat 2017-08-01"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">60</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox pentru Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android</font></font></span><span class="bc-version-label" title="Firefox pentru Android 57 – Lansat 2017-11-28"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">57</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android</font></font></span><span class="bc-version-label" title="Opera Android 47 – Lansat 2018-07-23"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">47</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS</font></font></span><span class="bc-version-label" title="Safari pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-samsunginternet_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Samsung Internet – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet</font></font></span><span class="bc-version-label" title="Samsung Internet 8.0 – Lansat 2018-07-18"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android</font></font></span><span class="bc-version-label" title="WebView Android 60 – Lansat 2017-08-01"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">60</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS</font></font></span><span class="bc-version-label" title="WebView pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-deno bc-supports-no bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-no
              icon
              icon-no" title="Deno – Fără suport"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno – Fără suport</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno</font></font></span><span class="bc-version-label" title="Deno 1.11 – Lansat 2021-06-08"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1.11</font></font></span></div><div class="bc-icons"><abbr class="only-icon" title="Utilizatorul trebuie să activeze în mod explicit această funcție."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dezactivat</font></font></span><i class="icon icon-disabled"></i></abbr></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-nodejs bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Node.js – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js</font></font></span><span class="bc-version-label" title="Node.js 15.4.0 – Lansat 2020-12-09"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td></tr><tr><th class="bc-feature bc-feature-depth-1" scope="row"><a href="/en-US/docs/Web/API/BroadcastChannel/name" class="bc-table-row-header" data-glean="bcd: link -> /en-US/docs/Web/API/BroadcastChannel/name"><code>name</code></a></th><td class="bc-support bc-browser-chrome bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome</font></font></span><span class="bc-version-label" title="Chrome 54 – Lansat 2016-10-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-edge bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Edge – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Edge – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Margine</font></font></span><span class="bc-version-label" title="Edge 79 – Lansat 2020-01-15"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">79</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox</font></font></span><span class="bc-version-label" title="Firefox 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></span><span class="bc-version-label" title="Opera 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari</font></font></span><span class="bc-version-label" title="Safari 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-chrome_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android</font></font></span><span class="bc-version-label" title="Chrome Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox pentru Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android</font></font></span><span class="bc-version-label" title="Firefox pentru Android 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android</font></font></span><span class="bc-version-label" title="Opera Android 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS</font></font></span><span class="bc-version-label" title="Safari pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-samsunginternet_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Samsung Internet – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet</font></font></span><span class="bc-version-label" title="Samsung Internet 6.0 – Lansat 2017-08-23"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android</font></font></span><span class="bc-version-label" title="WebView Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS</font></font></span><span class="bc-version-label" title="WebView pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-deno bc-supports-no bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-no
              icon
              icon-no" title="Deno – Fără suport"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno – Fără suport</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno</font></font></span><span class="bc-version-label" title="Deno 1.11 – Lansat 2021-06-08"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1.11</font></font></span></div><div class="bc-icons"><abbr class="only-icon" title="Utilizatorul trebuie să activeze în mod explicit această funcție."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dezactivat</font></font></span><i class="icon icon-disabled"></i></abbr></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-nodejs bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Node.js – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js</font></font></span><span class="bc-version-label" title="Node.js 15.4.0 – Lansat 2020-12-09"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td></tr><tr><th class="bc-feature bc-feature-depth-1" scope="row"><a href="/en-US/docs/Web/API/BroadcastChannel/postMessage" class="bc-table-row-header" data-glean="bcd: link -> /en-US/docs/Web/API/BroadcastChannel/postMessage"><code>postMessage</code></a></th><td class="bc-support bc-browser-chrome bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome</font></font></span><span class="bc-version-label" title="Chrome 54 – Lansat 2016-10-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-edge bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Edge – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Edge – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Margine</font></font></span><span class="bc-version-label" title="Edge 79 – Lansat 2020-01-15"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">79</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox</font></font></span><span class="bc-version-label" title="Firefox 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Operă</font></font></span><span class="bc-version-label" title="Opera 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari</font></font></span><span class="bc-version-label" title="Safari 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-chrome_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Chrome Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Chrome Android</font></font></span><span class="bc-version-label" title="Chrome Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-firefox_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Firefox pentru Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Firefox pentru Android</font></font></span><span class="bc-version-label" title="Firefox pentru Android 38 – Lansat 2015-05-12"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">38</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-opera_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Opera Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opera Android</font></font></span><span class="bc-version-label" title="Opera Android 41 – Lansat 2016-10-25"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">41</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-safari_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Safari pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Safari pe iOS</font></font></span><span class="bc-version-label" title="Safari pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-samsunginternet_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Samsung Internet – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Samsung Internet</font></font></span><span class="bc-version-label" title="Samsung Internet 6.0 – Lansat 2017-08-23"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_android bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView Android – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView Android</font></font></span><span class="bc-version-label" title="WebView Android 54 – Lansat 2016-10-19"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">54</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-webview_ios bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="WebView pe iOS – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">WebView pe iOS</font></font></span><span class="bc-version-label" title="WebView pe iOS 15.4 – Lansat 2022-03-14"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-deno bc-supports-no bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-no
              icon
              icon-no" title="Deno – Fără suport"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno – Fără suport</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Deno</font></font></span><span class="bc-version-label" title="Deno 1.11 – Lansat 2021-06-08"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1.11</font></font></span></div><div class="bc-icons"><abbr class="only-icon" title="Utilizatorul trebuie să activeze în mod explicit această funcție."><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dezactivat</font></font></span><i class="icon icon-disabled"></i></abbr></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td><td class="bc-support bc-browser-nodejs bc-supports-yes bc-has-history" aria-expanded="false"><button type="button" title="Comutați istoricul"><div class="bcd-cell-text-wrapper"><div class="bcd-cell-icons"><span class="icon-wrap"><abbr class="
              bc-level-yes
              icon
              icon-yes" title="Node.js – Suport complet"><span class="bc-support-level"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js – Suport complet</font></font></span></abbr></span></div><div class="bcd-cell-text-copy"><span class="bc-browser-name"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Node.js</font></font></span><span class="bc-version-label" title="Node.js 15.4.0 – Lansat 2020-12-09"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15.4.0</font></font></span></div></div><span class="offscreen"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comutați istoricul</font></font></span></button></td></tr></tbody></table></figure></figure>
 - ***Vezi de asemenea***

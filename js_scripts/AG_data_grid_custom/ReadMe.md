Salut,

Aici vom vorbi putin despre [utilizarea](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/AG_data_grid_custom/ag_grid_example.html) librariei [**AG-grid**](https://www.ag-grid.com/javascript-data-grid/getting-started/) din Javascript(pur)

Exemplul aceast [**ag_grid_example.html**](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/AG_data_grid_custom/ag_grid_example.html) a fost preluat din acest tutorial [AG-grid: ***Simple Example***](https://plnkr.co/edit/yqQ68TqxF5KPjwH6PXS7?preview)(multumiri [**plnkr.co**](https://www.google.com/search?q=plnkr+unpkg+ag-grid-community&sca_esv=813765718ccf2407&rlz=1C1CHBF_enRO1132RO1132&biw=1920&bih=911&sxsrf=AE3TifN-8-dl_byq9IfUaVk2hAeeupVxEw%3A1749550886624&ei=JgdIaI7tJaSJ7NYPz8f1KQ&ved=0ahUKEwiOmPT40OaNAxWkBNsEHc9jPQUQ4dUDCBA&uact=5&oq=plnkr+unpkg+ag-grid-community&gs_lp=Egxnd3Mtd2l6LXNlcnAiHXBsbmtyIHVucGtnIGFnLWdyaWQtY29tbXVuaXR5MgUQABjvBTIFEAAY7wUyBRAAGO8FMgUQABjvBTIFEAAY7wVInT5QAFjGO3AAeACQAQCYAa8BoAHmDqoBBDAuMTS4AQPIAQD4AQH4AQKYAg6gAoYPwgIEECMYJ8ICCBAAGIAEGKIEwgIFECEYoAGYAwCSBwQwLjE0oAeUKrIHBDAuMTS4B4YPwgcEMS4xM8gHFg&sclient=gws-wiz-serp)!!!!)

Pentru a rula acest exemplu, fie dintr-un folder fie din XAMPP(Apache webserver...htdocs!) ori fie dintr-un shared-hosting trebuie sa *descarcati* cele 2 fisiere

 - [**ag_grid_example.html**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/js_scripts/AG_data_grid_custom/ag_grid_example.html)
 - [*example-js.js*](https://github.com/stefanache/MFP-ANAF-RO/blob/main/js_scripts/AG_data_grid_custom/example-js.js)

si apoi sa-l *chemati* in browser(daca l-ati instalat sub webserver) sau/ori pur si simplu *click*-ati pe primul fisier/cel principal([**ag_grid_example.html**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/js_scripts/AG_data_grid_custom/ag_grid_example.html))...in cazul in care doriti sa-l rulati local(fara a avea propriul webserver!).

Dupa cum vedeti, acest exemplu [**ag_grid_example.html**](https://stefanache.github.io/MFP-ANAF-RO/js_scripts/AG_data_grid_custom/ag_grid_example.html)  ruleaza chiar si aici(gazduit de/pe **Github**... ca si continut STATIC!) ... daca datele sunt incarcate in codul-js (hard-codate!)

[**Nota**](https://feathericons.com/): 

 - De mentionat este faptul ca atunci cand doriti sa utilizati libraria din JS-pur(direct din browser!!!) va trebui sa utilizati link-urile care au ca si CDN bine-cunoscutul [UNPKG](https://unpkg.com/) sau/ori sa descarcati local librariile pe care le utilizati.
<br/>Oricum acest subiect merita [aprofundat](https://www.google.com/search?q=ag-grid+unpkg&rlz=1C1CHBF_enRO1132RO1132&oq=ag-grid+unpkg&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRhAMggIAhAAGBYYHjIICAMQABgWGB4yCggEEAAYgAQYogQyBwgFEAAY7wUyCggGEAAYgAQYogQyBggHEEUYPNIBCTg1NTZqMGoxNagCCLACAfEF9qoap44L5Eo&sourceid=chrome&ie=UTF-8) in [detaliu](https://www.google.com/search?q=unpkg+ag-grid-community%2Fdist%2Fag-grid-community.min.js&rlz=1C1CHBF_enRO1132RO1132&oq=unpkg+ag-grid-community%2Fdist%2Fag-grid-community.min.js&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQABjvBTIKCAIQABiABBiiBDIHCAMQABjvBTIHCAQQABjvBdIBCTY5MDhqMGoxNagCCLACAfEFWJIPOWNtYdzxBViSDzljbWHc&sourceid=chrome&ie=UTF-8)...!

- Bineinteles ca biblioteca poate fi folosita in conjunctie cu PhP,Python,NodeJS...!

- Trebuie sa mai amintesc si faptul  ca ***doar*** varianta/distributia(***dist***) [**ag-grid-community**](https://app.unpkg.com/ag-grid-community@27.0.0/files/README.md) este ***gratuita***(desigur ca anumite *limitari* inevitabile!)

Sunt cateva link-uri utile legate de acest subiect(**AG-grid**):

- [AG-grid Demo](https://www.ag-grid.com/example/)
- [GH@ag-grid: AG-grid](https://github.com/ag-grid/ag-grid?tab=readme-ov-file)
- [AG-grid Showcase](https://blog.ag-grid.com/showcase/)
- [AG-grid@js-data-grid: server-side model](https://www.ag-grid.com/javascript-data-grid/server-side-model/)
- [AG-grid: Simple Example](https://plnkr.co/edit/yqQ68TqxF5KPjwH6PXS7?preview)
- [GH@ag-grid: JS Data-Grid](https://github.com/ag-grid/javascript-data-grid) (a se vedea cum se folosesc [stilurile cu UNPKG](https://www.google.com/search?sca_esv=813765718ccf2407&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AE3TifMz05_Omxf3LZXCJPHwVazA1RNCAQ:1749549651641&q=unpkg+ag-grid-community/dist/ag-grid-community.min.js&udm=2&fbs=AIIjpHxX5k-tONtMCu8aDeA7E5WMgPpqESqQJ8D8h14C0qlfgYiXp5Upp642AwoN0y0DsUelfswrc8HsWAkbr59S7oGq2DFzpOi2W3YRR9VW_VuqVHzX3wgnVtSmlkc6hly8y-g3rC5FpG3ypRDv72_YGwR1TG1S_L4ZIFNMsp2d5_s98rcuf_uK7PpbYZO6i62sevDEa6J1t-pLb2A9ODOX2HEyZ16ieA&sa=X&ved=2ahUKEwi_5IKszOaNAxVUSvEDHbLfGMIQtKgLegQIEhAB&biw=1920&bih=911&dpr=1)!!!)
- [freeCodeCamp-news: Convert html-table to dynamic-JS-data-grid](https://www.freecodecamp.org/news/convert-html-table-to-dynamic-javascript-data-grid/)
- [dev.to@kirkovg: Writing a complex ag-grid popup-cell-editor](https://dev.to/kirkovg/writing-a-complex-ag-grid-popup-cell-editor-50i)
- [firSemisphere@blogspot-2018-09: AG-grid example](https://firsemisphere.blogspot.com/2018/09/ag-grid.html)
- [iDiTect@program-example: JS ag-grid skip-column on export-to-csv](https://www.iditect.com/program-example/javascript--aggrid-skip-column-on-export-to-csv.html)
- [plnkr.co-embed-plunk: Angular example](https://embed.plnkr.co/plunk/wh6ZMS8id1lhMDeK)
  <br/>***Remarca***: AG-grid se poate folosi in combinatie cu alte librarii bine-cunoscute([Angular](https://embed.plnkr.co/plunk/wh6ZMS8id1lhMDeK),React,[Vue](https://www.jsdelivr.com/package/npm/@ag-grid-community/vue)...) sau poate fi chiar/pur-si-simplu inlocuit!
- [climbTheLadder: 10 Q&A AG-grid](https://climbtheladder.com/ag-grid-interview-questions/)
- [nuGet-packages: AG-grid Blazor](https://www.nuget.org/packages/AgGrid.Blazor) ... see [examples](https://www.nuget.org/packages/AgGrid.Blazor), [public-demo](https://blog.bkkr.us/blazor-ag-grid/), [Blazor-WASM](https://blog.bkkr.us/blazor-ag-grid), [Blazor-wrapped](https://github.com/ag-grid/ag-grid), ...
- [...](https://www.google.com/search?q=plnkr+unpkg+ag-grid-community&sca_esv=813765718ccf2407&rlz=1C1CHBF_enRO1132RO1132&biw=1920&bih=911&sxsrf=AE3TifN-8-dl_byq9IfUaVk2hAeeupVxEw%3A1749550886624&ei=JgdIaI7tJaSJ7NYPz8f1KQ&ved=0ahUKEwiOmPT40OaNAxWkBNsEHc9jPQUQ4dUDCBA&uact=5&oq=plnkr+unpkg+ag-grid-community&gs_lp=Egxnd3Mtd2l6LXNlcnAiHXBsbmtyIHVucGtnIGFnLWdyaWQtY29tbXVuaXR5MgUQABjvBTIFEAAY7wUyBRAAGO8FMgUQABjvBTIFEAAY7wVInT5QAFjGO3AAeACQAQCYAa8BoAHmDqoBBDAuMTS4AQPIAQD4AQH4AQKYAg6gAoYPwgIEECMYJ8ICCBAAGIAEGKIEwgIFECEYoAGYAwCSBwQwLjE0oAeUKrIHBDAuMTS4B4YPwgcEMS4xM8gHFg&sclient=gws-wiz-serp)


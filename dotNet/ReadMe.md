Un client ***.Net*** pt **ANAF** poate fi gasit in acest depozit [***Anaf.Net***](https://github.com/sibies/Anaf.Net)

[***Reinprospatarea jeton***](https://code-maze.com/using-refresh-tokens-in-asp-net-core-authentication/)/[token](https://code-maze.com/using-refresh-tokens-in-asp-net-core-authentication/)-ului [OAuth 2.0](https://www.techmeet360.com/blog/refresh-token-in-web-api/) in [**ASP(C#) / .NET6.0 Core**](https://github.com/CodeMazeBlog/aspnetcore-jwt-auth/tree/aspnetcore-jwt-auth-refresh-tokens)

Nu uitati informatii oficiale despre serviciile web **ANAF** gasiti in articolul intitulat [***Prezentare servicii web pentru Sistemul national privind factura electronica RO e-Factura***](https://mfinante.gov.ro/static/10/eFactura/prezentare%20apeluri%20API%20E-factura.pdf);

Am gasit acest repository [RomaniaOpenData](https://github.com/ignatandrei/RomaniaOpenData/tree/master), de altfel extrem de util, dar nu stiu in ce masura este intretinut/actualizat/mentinut in viata!

Poate fi de folos insa acest [github-repository](https://github.com/GSA/data.gov?tab=readme-ov-file) care se refera la site/portalul-ul guvernului(serverul [CKAN](https://demo.ckan.org/ro/about)): **dataset.gov.ro**; 

Pentru coderi/codificatori/programatori: API-ul CKAN([**Action API**](https://docs.ckan.org/en/2.9/api/)) comunica in stil [RPC](https://en.wikipedia.org/wiki/Remote_procedure_call)

- a se consulta [actiunile/activitatea](https://data.gov.ro/ro/api/1/util/snippet/api_info.html?resource_id=8f43aa12-3bf9-4c14-b13f-dc0e490a92c5) privind acest portal!!!

- exemplu-CKAN-action(api): [cere top5 rezultate](https://data.gov.ro/ro/api/3/action/datastore_search?resource_id=8f43aa12-3bf9-4c14-b13f-dc0e490a92c5&limit=5)
- exemplu-CKAN-action(api): [contains](https://data.gov.ro/ro/api/3/action/datastore_search?q=jones&resource_id=8f43aa12-3bf9-4c14-b13f-dc0e490a92c5)
- exemplu-CKAN-action(api): [via/utilizand SQL](https://data.gov.ro/ro/api/3/action/datastore_search_sql?sql=SELECT * from "8f43aa12-3bf9-4c14-b13f-dc0e490a92c5" WHERE title LIKE 'jones')

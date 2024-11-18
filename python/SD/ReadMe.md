Aici va propun instalarea server-ului [***Stable-Diffusion(SD)***](https://github.com/AUTOMATIC1111/stable-diffusion-webui/) denumit [**AUTOMATIC-1111**](https://github.com/AUTOMATIC1111/stable-diffusion-webui/) si utilizarea/exploatarea sa(pe parte de client-web).

Probabil ca ati auzit ca puteti genera imagini plecand/pornind de la un text descriptiv dat(de fapt o conversie **text to image** sau pe scurt/prescurtat **txt2Img**).

De pilda as dori ca sa generez o imagine, folosind SD, pornind de la un text descriptiv de forma:

   ***a portal into a mythical forest on the wall of my small messy bedroom***

Nimic mai simplu!

Pentru aceasta instalati(comenzile comentate/prefixate cu ***REM***) o singura data(inainte de instalre decomentati si instalare recomentati la loc) aceasta aplicatie-SD folosind fisierul-batch: [_RUN_server_and_cli.bat](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/SD/_RUN_server_and_cli.bat)

la momentul instalarii se va crea directorul aplicatiei: ***stable-diffusion-webui***

Puteti rula oricand clientul-web al  aplicatiei-SD (avand deja/**pre-startat** serverul ***AUTOMATIC-1111***) deschizand in browser-ul Chrome URL-ul urmator:

  [**http://127.0.0.1:7860/**](http://127.0.0.1:7860/)

Odata ce ati deschis site-ul aferent clientului-web SD accesti primul tab **txt2img** si introduceti o descriere de imagine in promptul cerererii dumneavoastra.

O astfel de cerere de conversie **txt2img**  poate fi, spre exemplu si cea de mai sus(***a portal into a mythical forest on the wall of my small messy bedroom***)

Pentru a citi documentatia acestui client puteti deschide aun alt tab cu URL-ul:

  [**http://127.0.0.1:7860/docs**](http://127.0.0.1:7860/docs)

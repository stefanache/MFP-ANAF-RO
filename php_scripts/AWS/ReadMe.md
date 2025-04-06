Salut!

Aici vom incerca sa discutam despre o stiva LAMP/LEMP utilizand infrastructura AWS.

 - [clickITtech-software-development: High-scalability-architecture-PhP](https://www.clickittech.com/software-development/high-scalability-architecture-php/)
<details>
 <summary>arhitecturile AWS cu scalabilitate ridicată...detalii... </summary>
 <a href="https://www.clickittech.com/software-development/high-scalability-architecture-php/"><img src="https://images.clickittech.com/wp-content/uploads/2018/05/03153635/php-applications.jpg">arhitecturile cu scalabilitate ridicată</img></a>
</details>

Procesul este simplu.

 - 1- Creați-vă serverul principal pe AWS folosind fie stiva LAMP, fie LEMP, după cum doriți.
 - 2- Includeți și configurați stocarea în cache Varnish pe serverul dvs. AWS.
 - 3- Creați-vă serverul RDS pentru găzduirea bazei de date.
 - 4- Creați-vă  compartimentele S3  pentru stocarea întregului conținut static al aplicației sau site-ului dvs. web.
 - 5- Configurați memorarea în cache AWS Cloudfront pentru conținutul S3.
 - 6- Creați și conectați depozitul dvs. GitHub la infrastructura dvs. AWS deja creată.
<br/>*Notă*: trebuie să vă asigurați că conectați tot conținutul static la S3 din cod.
 - 7- Creați și configurați serverul dvs. Redis pe AWS după cum doriți.
Notă: trebuie să vă asigurați că includeți și Redis în codul dvs.
 - 8- Creați și configurați serverul dvs. Jenkins, care va fi responsabil de procesarea proceselor de Integrare continuă.
 - 9- Creați un grup Auto Scaling și reguli de echilibrare a încărcăturii pentru infrastructura dvs. AWS. Această funcție va crea sau distruge servere în funcție de nivelurile de cerere de pe aplicație/site-ul web.
 - 10- Conectați-vă depozitul și compartimentele S3 la Jenkins și creați-vă joburile Jenkins pentru construirea, testarea, împachetarea și implementarea modificărilor pe cod.
 - 11- Configurați regulile CodeDeploy pe AWS și conectați-le cu Jenkins. Regulile CodeDeploy vor include modul în care va implementa modificările în instanțele conținute în grupurile Auto Scaling.
 - 12- Testați-vă infrastructura aplicând modificări în codul dvs. și asigurându-vă că acestea sunt implementate automat și corect în toate instanțele.
 - 13- Optimizați-vă și asigurați-vă infrastructura urmând cele mai bune practici. Pentru aceasta, puteți arunca o privire pe blogul  AWS Security Best Practices.
 - 14- Configurați backup-uri automate pentru infrastructura și codul dvs. pentru a fi pregătit în cazul unor eșecuri neașteptate.
IMPORTANT: Trebuie să includeți un proces de rollback pentru implementările eșuate.

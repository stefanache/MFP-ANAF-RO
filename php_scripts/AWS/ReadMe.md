Salut!

Aici vom incerca sa discutam despre o stiva LAMP/LEMP pt un site/app-web, utilizand infrastructura AWS.

 - [clickITtech-software-development: High-scalability-architecture-PhP](https://www.clickittech.com/software-development/high-scalability-architecture-php/)
<details>
 <summary>arhitecturile <b>AWS-cloud</b> cu scalabilitate ridicată...detalii... </summary>
 <a href="https://www.clickittech.com/software-development/high-scalability-architecture-php/"><img src="https://images.clickittech.com/wp-content/uploads/2018/05/03153635/php-applications.jpg">arhitecturile cu scalabilitate ridicată</img></a>
</details>

Procesul este simplu:

 - 1-(**Developers**)- Creați-vă **serverul principal** pe ***AWS*** folosind fie stiva **LAMP**, fie **LEMP**, după cum doriți.
 - 2-(**VARNISH**)- Includeți și configurați *stocarea*-în-*cache*-**Varnish** pe serverul dvs. ***AWS***(pas 1.).
 - 3-(**Amazon/RDS**)- Creați-vă *serverul* **RDS** pentru găzduirea *bazei de date(BD)*.
 - 4-(**S3/bucket**)- Creați-vă  compartimentele/*buckets* **S3**  pentru stocarea întregului conținut *static* al *aplicației* sau *site*-ului dvs. *web*.
 - 5-(**Amazon/CloudFront**)- Configurați memorarea în *cache* ***AWS***-**Cloudfront** pentru conținutul *S3*(pas 4.).
 - 6-(**Code/repository**)- Creați și conectați *depozitul* dvs. **GitHub** la infrastructura dvs. ***AWS*** deja creată(pasi 1.-5.).
<br/>*Notă*: trebuie să vă asigurați că conectați tot conținutul-*static*(din *cod*) la *S3*(pas 4.).
 - 7-(**Redis/server**)- Creați și configurați *serverul* dvs. **Redis** pe ***AWS*** după cum doriți.
<br/>*Notă*: trebuie să vă asigurați că includeți și *Redis* în codul dvs.
 - 8-(**Jenkins/server**)- Creați și configurați *serverul* dvs. **Jenkins**, care va fi responsabil de procesarea proceselor de *Integrare-Continuă*(*CI*).
 - 9-(**Auto-Scaling group: Master/instance+Slave/instance**)- Creați un *grup* **Auto-Scaling** și *reguli* de **echilibrare**-a-*încărcăturii*-(**Classic/Load/Balancer**)- pentru infrastructura dvs. ***AWS***.
 <br/>Această funcție va *crea* sau *distruge* (*instante* de ) *servere* în funcție de nivelurile de cerere de pe **aplicație/site**-ul *web*.
 - 10- Conectați-vă *depozitul*-**Github** și compartimentele/*buckets*-**S3** la **Jenkins** și creați-vă *joburile-Jenkins* pentru *construirea*, *testarea*, *împachetarea* și *implementarea* modificărilor/actualizarilor pe *cod*.
 - 11-(**AWS/CodeDeploy**)- Configurați *regulile* **CodeDeploy** pe ***AWS*** și conectați-le cu **Jenkins**.
<br/>Regulile *CodeDeploy* vor include modul în care va implementa modificările în instanțele conținute în grupurile *Auto-Scaling*.
 - 12- Testați-vă infrastructura aplicând modificări în codul dvs. și asigurându-vă că acestea sunt implementate automat și corect în toate instanțele.
 - 13- Optimizați-vă și asigurați-vă infrastructura urmând cele mai bune practici.
   <br/>Pentru aceasta, puteți arunca o privire pe [*blog*ul-***AWS***](https://aws.amazon.com/blogs/?awsf.blog-master-category=*all&awsf.blog-master-learning-levels=*all&awsf.blog-master-industry=*all&awsf.blog-master-analytics-products=*all&awsf.blog-master-artificial-intelligence=*all&awsf.blog-master-aws-cloud-financial-management=*all&awsf.blog-master-blockchain=*all&awsf.blog-master-business-applications=*all&awsf.blog-master-compute=*all&awsf.blog-master-customer-enablement=*all&awsf.blog-master-customer-engagement=*all&awsf.blog-master-database=*all&awsf.blog-master-developer-tools=*all&awsf.blog-master-devops=*all&awsf.blog-master-end-user-computing=*all&awsf.blog-master-mobile=*all&awsf.blog-master-iot=*all&awsf.blog-master-management-governance=*all&awsf.blog-master-media-services=*all&awsf.blog-master-migration-transfer=*all&awsf.blog-master-migration-solutions=*all&awsf.blog-master-networking-content-delivery=*all&awsf.blog-master-programming-language=*all&awsf.blog-master-sector=*all&awsf.blog-master-security=*all&awsf.blog-master-storage=*all) [*Security Best Practices*](https://aws.amazon.com/blogs/security/category/post-types/best-practices/).
 - 14- Configurați backup-uri automate pentru infrastructura și codul dvs. pentru a fi pregătit în cazul unor eșecuri neașteptate.
<br/>IMPORTANT: Trebuie să includeți un proces de rollback pentru implementările eșuate.

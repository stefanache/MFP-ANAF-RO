Salut!

Aici vom incerca sa discutam despre o stiva LAMP/LEMP pt un site/app-web, utilizand infrastructura AWS.

 - [clickITtech-software-development: High-scalability-architecture-PhP](https://www.clickittech.com/software-development/high-scalability-architecture-php/)
   
<details>
 <summary>arhitecturile <b>AWS-cloud</b> cu <b>scalabilitate ridicată</b>...<i>detalii</i>... </summary>
 <a href="https://www.clickittech.com/software-development/high-scalability-architecture-php/"><img src="https://images.clickittech.com/wp-content/uploads/2018/05/03153635/php-applications.jpg">arhitecturile cu scalabilitate ridicată</img></a>
</details>

Procesul implementarii(de catre dvs in calitate de **Developers**) arhitecturii <b>AWS-cloud</b> cu <b>scalabilitate ridicată</b> pt. deservirea(pe parte de server) *site*-ului/*aplicatiei*(*web*)-(**End/user**)-(pe parte de client)... este unul simplu:

  - ***01.***-(**Developers**)- <ins>Creați</ins>-vă **serverul-principal**(de deservire)-pe-***AWS*** <ins>folosind</ins>
     - *fie* stiva **LAMP**,
     - *fie* **LEMP**, după cum doriți.
  - ***02.***-(**VARNISH**)- <ins>Includeți</ins> și <ins>configurați</ins> *stocarea*-în-*cache*-**Varnish** <ins>pe</ins> serverul-dvs.-***AWS***creat in (creat in pasul ***01.***).
  - ***03.***-(**Amazon/RDS**)- <ins>Creați</ins>-vă *serverul*-**RDS**(pe parte de server-deservire) <ins>pentru</ins> găzduirea-*bazei-de-date(BD)*(daca nu folositi ca BD ***RDS***-ul atunci va trebui sa schimbati acest proces, pt a fi valabil/in corcondanta cu cazul SG*BD*-ul dvs, hai sa spunem **MySQL**!).
  - ***04.***-(**S3/bucket**)- <ins>Creați</ins>-vă  compartimentele/*buckets*-**<ins>S</ins>3** <ins>pentru</ins> stocarea-întregului-conținut-<ins>*Static*</ins>-al (sau pe parte de deservire-client)...
     - *aplicației* - *web* sau
     - *site*-ului dvs. *web*.
  - ***05.***-(**Amazon/CloudFront**)- <ins>Configurați</ins> memorarea-în-*cache*-***AWS***-**Cloudfront** <ins>pentru</ins> conținutul-*static*-*S3*(creat in pasul ***04.***)...(aceast[a] parte/[pas], de fapt, asigura... internetul-pe-parte-de-deservire-client!).
  - ***06.***-(**Code/repository**)- <ins>Creați</ins> și <ins>conectați</ins> *depozitul*-dvs.-**GitHub**(creat in acest pas ***06.***) <ins>la</ins> infrastructura-dvs.-***AWS***-deja-creată(a se vedea pasii ***01.***-***05.***).
<br/>*Notă*: trebuie să vă asigurați că veti <ins>conecta</ins> tot/intreg-conținutul-*static*(din *cod-Github* - creat la pasul ***06.***) <ins>la</ins> *S3*(creat la pasul ***04.***).
  - ***07.***-(**Redis/server**)- <ins>Creați</ins> și <ins>configurați</ins> *serverul*-dvs.-**Redis**-pe-***AWS***, după cum doriți.
<br/>*Notă*: trebuie să vă asigurați că <ins>includeți</ins> și *Redis*(creat in pasul ***07.***) în codul dvs.
  - ***08.***-(**Jenkins/server**)- <ins>Creați</ins> și <ins>configurați</ins> *serverul*-dvs.-**Jenkins**, care va fi <ins>responsabil de</ins> procesarea proceselor-de-*Integrare-Continuă*(*CI*).
  - ***09***-(**Auto-Scaling group: Master/instance+Slave/instance**)- <ins>Creați</ins> un *grup* **Auto-Scaling(AS)** <ins>și</ins> *reguli* de **echilibrare**-a-*încărcăturii*(**LB**)-(**Classic/Load/Balancer**)- <ins>pentru</ins> infrastructura-dvs.-***AWS***(construita in pasii ***01.***-***08./09.***).
 <br/>Această funcție(pas ***09.***: ***AS***+***LB***) va <ins>*crea*</ins>(cf. pasului ***01.+02.***) sau va <ins>*distruge*</ins> (*instante*-de-)*servere* <ins>în funcție de</ins> nivelurile-de-cerere(**End/user**) de-pe **aplicație/site**-ul *web*.
  - ***10.***- <ins>Conectați</ins>-vă *depozitul*-*Github*(creat in pasul ***06.***) <ins>și</ins> compartimentele/*buckets*-*S3* la *Jenkins*(creat in/la pasul ***08.***) <ins>și apoi creați</ins>-vă *joburile-Jenkins*(adaugat la pasul de creere ***08.***) <ins>pentru</ins> *construirea*, *testarea*, *împachetarea* și *implementarea* - modificărilor/actualizarilor pe/de *cod*.
  - ***11.***-(**AWS/CodeDeploy**)- <ins>Configurați</ins> *regulile*-**CodeDeploy**-pe0***AWS*** <ins>și conectați</ins>-le cu *Jenkins*(pasii ***08.*** si ***10.***).
<br/>Regulile-*CodeDeploy*(configurate in pasul ***11.***) vor <ins>include</ins> *modul-în-care-va-implementa* modificările-în *instanțele*-conținute-în-grupurile:*Auto-Scaling*(creat in pasul ***09.****).
  - 12- <ins>Testați-vă</ins> infrastructura(pasii ***01.***-***11.***) <ins>aplicând</ins> modificări-în-codul-dvs.(creat in pasul ***06.***) <ins>și asigurându-vă că</ins> acestea(modificarile-de-cod) <ins>sunt implementate</ins> *automat* și *corect* <ins>în-toate-instanțele-server</ins>(create in pasul ***09.***).
  - 13- Optimizați-vă și asigurați-vă infrastructura urmând cele mai bune practici.
   <br/>Pentru aceasta, puteți arunca o privire pe [*blog*ul-***AWS***](https://aws.amazon.com/blogs/?awsf.blog-master-category=*all&awsf.blog-master-learning-levels=*all&awsf.blog-master-industry=*all&awsf.blog-master-analytics-products=*all&awsf.blog-master-artificial-intelligence=*all&awsf.blog-master-aws-cloud-financial-management=*all&awsf.blog-master-blockchain=*all&awsf.blog-master-business-applications=*all&awsf.blog-master-compute=*all&awsf.blog-master-customer-enablement=*all&awsf.blog-master-customer-engagement=*all&awsf.blog-master-database=*all&awsf.blog-master-developer-tools=*all&awsf.blog-master-devops=*all&awsf.blog-master-end-user-computing=*all&awsf.blog-master-mobile=*all&awsf.blog-master-iot=*all&awsf.blog-master-management-governance=*all&awsf.blog-master-media-services=*all&awsf.blog-master-migration-transfer=*all&awsf.blog-master-migration-solutions=*all&awsf.blog-master-networking-content-delivery=*all&awsf.blog-master-programming-language=*all&awsf.blog-master-sector=*all&awsf.blog-master-security=*all&awsf.blog-master-storage=*all) [*Security Best Practices*](https://aws.amazon.com/blogs/security/category/post-types/best-practices/).
  - 14- Configurați backup-uri automate pentru infrastructura și codul dvs. pentru a fi pregătit în cazul unor eșecuri neașteptate.
<br/>IMPORTANT: Trebuie să includeți un proces de rollback pentru implementările eșuate.

 - [...](https://www.google.com/search?sca_esv=3a77a2976db962de&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zqx3bo0UZARSELvI-Irzujl9vVJbg:1743923412570&q=cloud+VPS+scalable+php+mysql&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGlsodhGu4F1UEhEeTehlBu7020oMQ7aBpF-aNynCVlndtbrl-4J-rajucdRXcWuI2dKH9PAaK3ysaU0BSsPt4nUY4EZl4pQxjpqLuZGQzUZySehMvVjaJ3Bxy74VZrnX-0smoeGVgFzGy7Gy2h1xwXsOFqYUxTQcpUHP4c3ATzoLKGOommA4XUSo-KvA7GVwM0AIULGJw&sa=X&ved=2ahUKEwj0hZb87MKMAxUpSPEDHcPEMmwQtKgLegQIDhAB&biw=1735&bih=721&dpr=1)

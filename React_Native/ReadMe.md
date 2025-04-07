Salut,

Aici as dori sa impartasesc cu voi cateva link-uri legate de [**React-Native**](https://reactnative.dev/)( a nu se confunda cu [react.dev: ***React***](https://react.dev/) desi... putem spune ca [fac](https://ocw.cs.pub.ro/courses/pw/laboratoare/08) parte din [aceiasi](https://ocw.cs.pub.ro/courses/pw/laboratoare/04) [familie](https://ro.wikipedia.org/wiki/React.js)!):

 - [tutorialsPoint: **React-Native**](https://www.tutorialspoint.com/react_native/index.htm)
 - [oBytes-blog: Cum să structurați un proiect **React-Native(RN)**](https://www.obytes.com/blog/how-to-structure-your-react-native-project);
   <br/>[-**Q**: how-to install **yarn**? **A**: eu prefer cda-DOS_CLI-shell(cmd.exe): ... C:\Users\ {your_userName} > **npm install --global yarn**)](https://www.liquidweb.com/blog/how-to-install-yarn/)
   <br/>[-Iata aici un ***template-oByte***( un sablon/kit/boiler-plate de... pornire/inceput) pt.**RN)**](https://github.com/obytes/react-native-template-obytes)
<details>
 <summary>...hai sa vorbim( mai in detaliu...!) despre <ins>hook/carlig</ins>-ul utilizat la etapa/stagiul de validare, in constructia(<i>setUp</i>-ul) unui nou proiect-<b>RN</b>, folosind <i>template</i>/sablon/format-ul, oferit de catre cei de la <b><i>oByte</i></b>...</summary>
 <hr/>
 
<pre><b>Husky</b> ne permite să rulăm comenzi sau scripturi înainte de a <ins>comite</ins> <i>sau</i> de a <ins>împinge</ins> codul nostru în <b>git</b>. 
Este benefic să configurați cu ușurință un <ins>cârlig/ancora/hook</ins> de pre-<ins>commit</ins>. 
De obicei, folosim <b>Husky</b> pentru a rula <b>Eslint</b> și <b>Prettier</b> pentru a <ins>valida tastarea/introducerea</ins>... 
...fișierelor-modificate, înainte de <ins>comitere</ins>.
<i>Explicatie:</i> 
 Daca ai deja pre-instalate,  <b>Husky</b> si <b>Eslint</b>, atunci cand ai modificat, anumite fisiere din foderele proiectului tau,
 si atunci cand(la finalul modificarilor) dai comanda <i>"C:\Users\{user}> <b>git add ...</b>"</i>, pt a le salva in depozitul proiectului tau
 <b><i>GitHub(GH)</i></b>..., inainte(<ins>pre-</ins>) de a le salva(pre-salvare/commit), va aparea un eveniment(pre-<ins>commit</ins>), in cadrul caruia, 
 <b>Husky</b> va apela(va rula efectiv carligul/<ins>hook</ins>-ul, declarat in prealabil, pt acest eveniment,... de catre <b>Husky</b>), 
 la ajutorul sau(specializat in validari!), validatorul-<b>ESLit</b>, pt a valida  toate fisierele modificate...;
 Dupa rularea acestui carlig(o intrerupere de prindere/captare/validare ... in acest caz... a erorilor nedorite), 
 avem 2 situatii posibile:
 - daca se vor inregistra erori(care desigur ca trebuiesc reparate... si deci...in caz de esec...), nu are sens sa se continue...
 ... cu cursul normal de salvare in <b><i>GitHub(GH)</i></b>
 - in caz contrar(deci in caz de reusita/victorie...adica atunci cand modificarile sunt corecte/valide/fara erori), ...
 ... se va reveni la cursul normal si .... se vor finaliza/efectua(in sfarsit!), salvarile <b>git</b>-ului respectiv, in <b><i>GitHub(GH)</i></b>!

 <b>Prettier</b> este un asistent de pre-<ins>commit</ins>are/pre-salvare al <b>ESLit</b>-ului, care "ajuta" la (re)formatarea/stagierea fisierelor,...
 ... adica la... "respectarea(in proiectare) a formatul convențional de <ins>commit</ins>/salv-are"!
</pre>

<hr/>

<br/>[setUp a new project(folosirea acestui *template/sablon-oByte*!)](https://handbook.obytes.com/docs/mobile/new-project/); 
<br/>[***Husky***](https://typicode.github.io/husky/); [***Prettier***](https://prettier.io/docs/precommit); [***ESlint***](https://eslint.org/docs/latest/use/getting-started); [*deps/dependencies*](https://www.dependencies.io/);
<br/>[**Expo**](https://expo.dev/); [**Expo-Router**](https://docs.expo.dev/versions/latest/sdk/router/); [**EAS**](https://expo.dev/eas);
<br/> [**TailWindCSS**](https://tailwindcss.com/); 
<br/>[***GH-actions***](https://github.com/features/actions)

<hr/>
</details>

 - [reactnative.dev-docs: **React-Native** - getting-started without a framework(sdk)](https://reactnative.dev/docs/getting-started-without-a-framework)
 - [expo.dev-docs-tutorial: Using **React Native** and ***Expo***(*SDK*)](https://docs.expo.dev/tutorial/introduction/)
 - [back4app-blog: How to make a ToDo ***List App*** with **React-Native(RN)**, **Expo**(RN SDK) and **Back4App**](https://blog.back4app.com/expo-react-native/); [back4app - web development platform(*see prices*!)](https://www.back4app.com/web-deployment-platform)
 - [reactnative.dev-docs: **React-Native**](https://reactnative.dev/docs/environment-setup)
 - [reactNative.dev: **React Native** - Learn once, write anywhere.](https://reactnative.dev/)
 - [simpliLearn: **React-Native** tutorial-article](https://www.simplilearn.com/react-native-tutorial-article)
 - [wiki: **React-Native**](https://en.wikipedia.org/wiki/React_Native)
 - [GH-FB: **React-Native**](https://github.com/facebook/react-native)
 - [netGuru-glossary: **React-Native**](https://www.netguru.com/glossary/react-native)
 - [scriBD-doc-PDF: ](https://www.scribd.com/document/682155102/React-Native)
<details>
    <summary>scriBD-<b>RN</b>: <i>core concepts</i> and <i>components</i> - details...</summary>

   <hr/>
   
   This document outlines *core concepts* and *components* for developing <ins>mobile-apps</ins> with **React Native**, including:
   
    - setting up the environment,
    - building basic apps,
    - state,
    - props,
    - styling,
    - ListView,
    - ScrollView,
    - images,
    - HTTP,
    - buttons,
    - animations,
    - debugging, and
    - running apps on iOS and Android.
   
   It also lists *specific* **React Native** *components* like:

    - View,
    - WebView,
    - Modal,
    - ActivityIndicator,
    - Picker,
    - StatusBar,
    - Switch,
    - Text,
    - Alert, and
    - Geolocation.
   
   The document mentions using the ***Redux*** library and ***Firebase*** platform for **React Native** ***apps***.

<hr/>

</details>
     
 - [GH-MS: **React-Native for(4) Windows + macOS**](https://microsoft.github.io/react-native-windows/)
 - [reactNativePaper: **React-Native Paper**(design-library)](https://reactnativepaper.com/)
 - [rnFirebase: **React-Native Firebase**](https://rnfirebase.io/)
 - [GH-ReactNative-ReactNativeNews: **React-Native**-***Apps*** ](https://github.com/ReactNativeNews/React-Native-Apps)
 - [hygraph-blog: ***React*** vs. **React-Native**](https://hygraph.com/blog/react-vs-react-native)
 - [todaySoftMag.ro(TSM)-article: De la ***React*** la **React Native**, un exemplu practic](https://www.todaysoftmag.ro/article/3041/de-la-react-la-react-native-un-exemplu-practic)
 - [TSM-article: **React-Native** o alternativa viabila sau o risipa de timp](https://www.todaysoftmag.ro/article/4145/react-native-o-alternativa-viabila-sau-o-risipa-de-timp)
 - [jestJS-ro-docs-tutorial_RN:  Testarea aplicațiilor **React-Native**](https://jestjs.io/ro/docs/tutorial-react-native)
 - [browserStack: Flutter vs. **React-Native**](https://www.browserstack.com/guide/flutter-vs-react-native)
 - [linkedin@Codezilla-pulse-aplicatii_mobile_native: **React Native**, alegerea evidentă. De ce? ](https://www.linkedin.com/pulse/aplica%C8%9Bii-mobile-native-react-alegerea-evident%C4%83-de-ce-/)
 - [reactnative.express: **React-Native** Express](https://www.reactnative.express/)
 - [medium@ahmed.nums345: getting-started with **React-Native** a beginners-guide](https://medium.com/@ahmed.nums345/getting-started-with-react-native-a-beginners-guide-cf63368bb887)
 - [stackOverflow:**React Native CLI** or/vs. **Expo**?](https://stackoverflow.com/questions/79474102/react-native-cli-or-expo)
 - [expo.dev-docs-tutorial: Create your first app with **Expo**(**React-Native** SDK)](https://docs.expo.dev/tutorial/create-your-first-app/)
 - [expo.dev-docs: Migrate from **React Native CLI** to **Expo CLI**](https://docs.expo.dev/bare/using-expo-cli/)
 - [expo.dev-docs: **Expo-CLI**](https://docs.expo.dev/more/expo-cli/)
 - [expo.dev-blog: **RFC** - File System-Based ***Native Routing*** with **Expo** and **React Native**](https://blog.expo.dev/rfc-file-system-based-routing-in-react-native-7a35474722a); [wiki: ***RFC***](https://en.wikipedia.org/wiki/Request_for_Comments)
 - [expo.dev-blog: RFC: API-Routes in **Expo-Router**](https://blog.expo.dev/rfc-api-routes-cce5a3b9f25d)
 - [CF-blog: Redare **React**(extra: *atentie nu este React-Native pt dispozitive mobile*!) on the ***Edge*** cu ***Flareact*** și ***Cloudflare(CF)-Workers***](https://blog.cloudflare.com/rendering-react-on-the-edge-with-flareact-and-cloudflare-workers/)
 - [...](https://www.google.com/search?q=react+native&lr=lang_ro&sca_esv=a63cfb001f674c6a&rlz=1C1CHBF_enRO1132RO1132&tbs=lr:lang_1ro&sxsrf=AHTn8zpqGn4cj8q3XiVLLX5lIZGO8rPSYQ:1743842774377&ei=1u3wZ5LiFoCoxc8P2YSzsQo&start=10&sa=N&sstk=Af40H4WTgtId1TBjheerOjq_hzh42nLKp-TnYwqmVpP7A7YUYHTYVgUDBB7dxMWEdEBc_F4DHdijTdSysbazLIglUr2KTg8GVgqODg&ved=2ahUKEwiSpfHIwMCMAxUAVPEDHVnCLKYQ8tMDegQICRAE&biw=1735&bih=721&dpr=1)

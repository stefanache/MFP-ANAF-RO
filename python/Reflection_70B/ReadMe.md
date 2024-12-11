In acest post o sa discutam despre modelul/[**LLM**](https://huggingface.co/mattshumer/Reflection-Llama-3.1-70B)-ul [Reflection-70B](https://www.unite.ai/ro/reflection-70b-llm-with-self-correcting-cognition-and-leading-performance/)

Puteti urmari si acest [***videoclip-YT***](https://www.youtube.com/watch?v=jZtR7SIEcZs)(furnizat prin amabilitatea domnului [**Fahd Mirza**](https://blog.langchain.dev/reflection-agents/)) pentru a-l vedea efectiv cum lucreaza.

In general conceptul [**self-reflection**](https://en.wikipedia.org/wiki/Self-reflection)(**auto-reflexia**/**auto-reflecția**) este capacitatea de a asista și de a [evalua](https://dev.to/lgrammel/tutorial-create-an-ai-agent-that-reads-wikipedia-for-you-31cm) propriile procese cognitive(de gandire/rationament), emoționale și comportamentale. 

[Reflecția](https://langchain-ai.github.io/langgraphjs/tutorials/reflection/reflection/) este o strategie de stimulare utilizată pentru a îmbunătăți calitatea și rata de succes a agenților AI și a sistemelor AI similare.

În contextul construirii de agenți LLM, [reflecția](https://promptengineering.org/reflexion-an-iterative-approach-to-llm-problem-solving/) se referă la procesul de a determina un [LLM](https://www.unite.ai/ro/overcoming-llm-hallucinations-using-retrieval-augmented-generation-rag/) să-și observe pașii deja efectuati(in trecut) (împreună cu observațiile potențiale din instrumente/mediu) pentru a evalua calitatea acțiunilor alese. Acest "[*audit-intern/feedback*](https://www.promptingguide.ai/techniques/reflexion)" este apoi folosit în aval pentru lucruri precum replanificare, căutare sau evaluare(daca vreti, cumva este similar cu "a invata din propriile noastre greseli"). Asadar **autoreflectia** ajută agentul-AI să învețe rapid și eficient din greșelile anterioare, ceea ce duce la îmbunătățiri ale performanței pentru multe sarcini avansate.

Tehnica sau cadrul ["**Reflexiei**"](https://www.promptingguide.ai/techniques/reflexion) spcific unui agent-AI, constă din trei **modele** distincte:

 - Un **actor(a,b)** : generează text și acțiuni pe baza observațiilor de stare.
                  **Actorul** face o acțiune într-un mediu și primește o observație care are ca rezultat o **traiectorie(b)**.
                  Lanțul de gândire ([**CoT**](https://www.promptingguide.ai/techniques/cot))și [***ReAct***](https://www.promptingguide.ai/techniques/react) sunt folosite ca modele de **actor**.
                  De asemenea, este adăugată o componentă de memorie pentru a oferi un context suplimentar agentului.
 - Un ***evaluator(c)*** : punctează rezultate produse de **actor**.
                      Concret, ia ca intrare o **traiectorie(b)** generată (denumită și **memorie pe termen scurt(b)**) și emite un ***scor de recompensă***.
                      Sunt utilizate diferite ***funcții de recompensă***, în funcție de sarcină (LLM-urile și euristicile bazate pe reguli sunt folosite pentru sarcinile de **1.luare a deciziilor**).
 - *Auto-reflecție(d,e)* : generează indicii de *întărire verbală(d)* | *"verbal reinforcement(VR)"* pentru a-l ajuta pe **actor** să se *autoperfecționeze(d)*.
                        Acest rol(*d*) este atins de un **LLM** și oferă *feedback(d)* valoros pentru *încercările viitoare(e)*.
                        Pentru a genera *feedback(d)* specific și relevant(*feedback(d)* care este, de asemenea, stocat în memorie),
                        modelul de *auto-reflecție* folosește *semnalul de recompensă*, *traiectoria curentă* și *memoria sa persistentă*.
                        Aceste experiențe (stocate în *memoria pe termen lung/persistenta*) sunt valorificate de agent pentru a *îmbunătăți(e)* rapid procesul decizional.

În rezumat, **pașii cheie/importanti(a,b,c,d,e)** ai procesului de **reflexie** sunt:

 - a) definirea unei sarcini(**a.Task: 1. Decision-making | 2. Programming | 3. Reasoning**),
 - b) generarea unei traiectorii(**b.Trajectory**),
 - c) evaluarea(**c.Evaluation internal/external**),
 - d) efectuarea reflecției(**d.Reflection**) și
 - e) generarea următoarei traiectorii(**e.Next Trajectory**).

[Figura](https://www.promptingguide.ai/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Freflexion-examples.7558c279.png&w=1920&q=75) de mai jos demonstrează exemple despre modul în care un agent de reflexie poate învăța să își optimizeze comportamentul în mod iterativ pentru a rezolva diverse sarcini(**task**-uri), cum ar fi **luarea deciziilor(1)**, **programarea(2)** și **raționamentul(3)**. Reflexia extinde cadrul ***ReAct*** prin introducerea componentelor de ***autoevaluare***, ***auto-reflecție*** și ***memorie***.

[<img src="https://www.promptingguide.ai/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Freflexion-examples.7558c279.png&w=1920&q=75">]([https://link-to-your-URL/](https://www.promptingguide.ai/techniques/reflexion))

***Când să folosiți Reflexion?***

Reflexia este cea mai potrivită pentru următoarele:

I.**Un agent trebuie să învețe din încercări și erori** : Reflexia este concepută pentru a ajuta agenții să-și îmbunătățească performanța reflectând asupra greșelilor trecute și încorporând aceste cunoștințe în deciziile viitoare. Acest lucru îl face foarte potrivit pentru sarcini în care agentul trebuie să învețe prin încercări și erori, cum ar fi 1.luarea deciziilor, 2.raționamentul și 3.programarea.

II.**Metodele tradiționale de învățare prin întărire sunt impracticabile** : Metodele tradiționale de *învățare prin întărire (RL)* necesită adesea date extinse de antrenament și ajustarea fină a modelului costisitoare. **Reflexia** oferă o alternativă ușoară care nu necesită o reglare fină a modelului de limbaj de bază, făcându-l mai eficient în ceea ce privește datele și resursele de calcul.

III.**Este necesar feedback nuanțat** : Reflexia utilizează feedback-ul verbal, care poate fi mai nuanțat și mai specific decât recompensele scalare utilizate în RL tradițional. Acest lucru permite agentului să-și înțeleagă mai bine greșelile și să facă îmbunătățiri mai precise în încercările ulterioare.

IV.**Interpretabilitatea și memoria explicită sunt importante** : reflexia oferă o formă mai interpretabilă și mai explicită de memorie episodică în comparație cu metodele tradiționale RL. Auto-reflecțiile agentului sunt stocate în memoria sa, permițând o analiză și înțelegere mai ușoară a procesului său de învățare.

**Reflexia este eficientă în următoarele sarcini:**

 - **Luare succesivă a deciziilor** : agenții de reflecție își îmbunătățesc performanța în sarcinile AlfWorld, care implică navigarea prin diferite medii și îndeplinirea obiectivelor în mai mulți pași.
 - **Raționament** : Reflexion a îmbunătățit performanța agenților pe HotPotQA, un set de date cu răspunsuri la întrebări care necesită raționament pe mai multe documente.
 - **Programare** : agenții de reflexie scriu cod mai bun pe benchmark-uri precum HumanEval și MBPP, obținând rezultate de ultimă generație în unele cazuri.

***Iată câteva limitări ale Reflexiei:***

 - **Încrederea pe capacitățile de autoevaluare** : Reflexia se bazează pe capacitatea agentului de a-și evalua cu acuratețe performanța și de a genera auto-reflecții utile. Acest lucru poate fi o provocare, mai ales pentru sarcini complexe, dar este de așteptat ca Reflexion să se îmbunătățească în timp, pe măsură ce modelele continuă să își îmbunătățească capacitățile.
 - **Constrângeri de memorie pe termen lung** : Reflexion folosește o fereastră glisantă cu capacitate maximă, dar pentru sarcini mai complexe poate fi avantajoasă utilizarea structurilor avansate, cum ar fi încorporarea vectorială sau bazele de date SQL.
 - **Limitări de generare de cod* : Există limitări pentru dezvoltarea bazată pe test în specificarea mapărilor precise de intrare-ieșire (de exemplu, funcție de generator nedeterministă și ieșiri ale funcției influențate de hardware).


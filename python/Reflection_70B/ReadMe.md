In acest post o sa discutam despre modelul/[**LLM**](https://huggingface.co/mattshumer/Reflection-Llama-3.1-70B)-ul [Reflection-70B](https://www.unite.ai/ro/reflection-70b-llm-with-self-correcting-cognition-and-leading-performance/)

Puteti urmari si acest [***videoclip-YT***](https://www.youtube.com/watch?v=jZtR7SIEcZs)(furnizat prin amabilitatea domnului [**Fahd Mirza**](https://blog.langchain.dev/reflection-agents/)) pentru a-l vedea efectiv cum lucreaza.

In general conceptul [**self-reflection**](https://en.wikipedia.org/wiki/Self-reflection)(**auto-reflexia**/**auto-reflecția**) este capacitatea de a asista și de a [evalua](https://dev.to/lgrammel/tutorial-create-an-ai-agent-that-reads-wikipedia-for-you-31cm) propriile procese cognitive(de gandire/rationament), emoționale și comportamentale. 

[Reflecția](https://langchain-ai.github.io/langgraphjs/tutorials/reflection/reflection/) este o strategie de stimulare utilizată pentru a îmbunătăți calitatea și rata de succes a agenților AI și a sistemelor AI similare.

În contextul construirii de agenți LLM, [reflecția](https://promptengineering.org/reflexion-an-iterative-approach-to-llm-problem-solving/) se referă la procesul de a determina un [LLM](https://www.unite.ai/ro/overcoming-llm-hallucinations-using-retrieval-augmented-generation-rag/) să-și observe pașii deja efectuati(in trecut) (împreună cu observațiile potențiale din instrumente/mediu) pentru a evalua calitatea acțiunilor alese. Acest "[*audit-intern/feedback*](https://www.promptingguide.ai/techniques/reflexion)" este apoi folosit în aval pentru lucruri precum replanificare, căutare sau evaluare(daca vreti, cumva este similar cu "a invata din propriile noastre greseli"). Asadar **autoreflectia** ajută agentul-AI să învețe rapid și eficient din greșelile anterioare, ceea ce duce la îmbunătățiri ale performanței pentru multe sarcini avansate.

Tehnica ["**Reflexiei**"](https://www.promptingguide.ai/techniques/reflexion) constă din trei modele distincte:

 - Un **actor** : generează text și acțiuni pe baza observațiilor de stare.
                  Actorul face o acțiune într-un mediu și primește o observație care are ca rezultat o traiectorie.
                  Lanțul de gândire ([**CoT**](https://www.promptingguide.ai/techniques/cot))și [***ReAct***](https://www.promptingguide.ai/techniques/react) sunt folosite ca modele de actor.
                  De asemenea, este adăugată o componentă de memorie pentru a oferi un context suplimentar agentului.
 - Un **evaluator** : punctează rezultate produse de actor.
                      Concret, ia ca intrare o traiectorie generată (denumită și memorie pe termen scurt) și emite un scor de recompensă.
                      Sunt utilizate diferite funcții de recompensă în funcție de sarcină (LLM-urile și euristicile bazate pe reguli sunt folosite pentru sarcinile de luare a deciziilor).
 - **Auto-reflecție** : generează indicii de întărire verbală pentru a-l ajuta pe actor să se autoperfecționeze.
                        Acest rol este atins de un LLM și oferă feedback valoros pentru încercările viitoare.
                        Pentru a genera feedback specific și relevant, care este, de asemenea, stocat în memorie,
                        modelul de autoreflecție folosește semnalul de recompensă, traiectoria curentă și memoria sa persistentă.
                        Aceste experiențe (stocate în memoria pe termen lung) sunt valorificate de agent pentru a îmbunătăți rapid procesul decizional.

În rezumat, pașii cheie ai procesului de reflexie sunt:

 - a) definirea unei sarcini(**Task**),
 - b) generarea unei traiectorii(**Trajectory**),
 - c) evaluarea(**Evaluation internal/external**),
 - d) efectuarea reflecției(**Reflection**) și
 - e) generarea următoarei traiectorii(**Next Trajectory**).

[Figura](https://www.promptingguide.ai/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Freflexion-examples.7558c279.png&w=1920&q=75) de mai jos demonstrează exemple despre modul în care un agent de reflexie poate învăța să își optimizeze comportamentul în mod iterativ pentru a rezolva diverse sarcini(**task**-uri), cum ar fi **luarea deciziilor(1)**, **programarea(2)** și **raționamentul(3)**. Reflexia extinde cadrul ***ReAct*** prin introducerea componentelor de ***autoevaluare***, ***auto-reflecție*** și ***memorie***.

[<img src="https://www.promptingguide.ai/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Freflexion-examples.7558c279.png&w=1920&q=75">]([https://link-to-your-URL/](https://www.promptingguide.ai/techniques/reflexion))

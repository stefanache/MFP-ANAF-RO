Salut!

Aici voi plasa tutoriale,ghiduri... pentru efectuarea unor sarcini/task-uri/activitati economice,drept,medical(si nu numai...) folosind AI([domain-specific-LLMs](https://medium.com/sage-ai/building-domain-specific-llms-for-reliable-accounting-solutions-at-sage-f5f49479c8ad), Mecanismul atentiei in transformatoare,...):

 - [Jerry-Liu:  “document MCP server” for AI agents](https://www.linkedin.com/posts/jerry-liu-64390071_ive-been-thinking-about-this-idea-of-a-activity-7326034385671983104-KU7l?utm_source=share&utm_medium=member_desktop&rcm=ACoAABLIPGMB6KpJrQjF9LX4I4WFQuRY84ckvhg)
   <br/>
   <details>
    <summary>...cateva idei/consideratii/detalii privind/desprinse din acest subiect...</summary>

   <hr/>
   
   <pre>Motivul pentru care <b>RAG</b> a devenit atât de popular ca si concept este
   pentru că oamenii au vrut o modalitate de a conecta <b>LLM</b>-urile cu propriile(deci private!) <i>surse de date</i>.
   Odată cu creșterea <b>Agenților</b>/<b>MCP</b>/<b>A2A</b>, putem reformula această idee
   în jurul modelului <b>fluxurilor de lucru</b>(de tip <b>decide</b> si <b>actioneaza</b>) ale <b>Agenților</b>
   care interacționează cu <b><i>instrumentele</i></b> specifice.

   <b>Agenții</b> pot apela instrumente(decide si actioneaza) și pot recupera date(decide si actioneaza) în sens general.
   Aici ne putem concentra pe <i>documente</i>(fisierele sunt containere de continut-document care sunt vazute ca si <i>sursa de date</i>!).
   <b>Agenții</b> pot interacționa cu <i>documentele</i> în câteva moduri:
   1. <b><i>Căutare</i></b>:    Ei pot <b><i>interoga</i></b> o interfață API cu parametri preciși pentru a căuta <i>fișiere</i>/<i>metadate pe/de fișiere</i>.
   2. <b><i>Recuperare</i></b>: Pot face <b><i>căutări semantice</i></b> pentru a găsi <i>sursa relevantă de date</i> (acesta este doar <b>RAG</b>!)
   3. <b><i>Analiză</i></b>:    Pot <b><i>interoga</i></b> o bază de date(BD) structurată pentru a obține informații agregate din <i>documentele</i> lor(rezumate/sumarizari).
   4. <b><i>Manipulare</i></b>: Pot apela un set de funcții expuse de tipul de fișier pentru a manipula fișierul
      (de exemplu, efectuarea <b><i>calculelor</i></b> pe o <i>foaie Excel</i>, <b><i>editarea</i></b> în <i>Word/PowerPoint</i>)
   
   Dacă doriți să construiți <b>Agenți</b> eficienți peste <i>surse de date</i> precum <i>documente</i>, atunci aveți nevoie de
   <b><i>instrumente</i></b> foarte bune peste aceste <i>documente</i>.  

   In <b>LlamaCloud</b> sunt deja unele dintre "<b><i>instrumentele</i></b> de <i>documente</i>" de bază:
    - <b><i>analiză(3)</i></b>,
    - <b><i>extragere(1&2)</i></b>,
    - <b><i>indexare(1&2)</i></b>
    - și se construiesc mult mai <b><i>multe</i></b>(instrumente care sa acopere conducta ETL si nu numai...).
   </pre>

   <hr/>
   
   </details>
 - [ro-pt: Ghid agenti AI oferit de echipa OpenAI ](https://www.pt.ro/openai-ghid-agenti/)
   <br/>Q: Ce este un agent?
<br/>Ghidul-OpenAI defineşte agentul ca
<br/>„un sistem care execută/<b>acţionează</b> în mod autonom un flux-de-lucru(workflow) în numele/pt utilizator[ului]”,
<br/>recunoscând când sarcina e terminată, corectându‑se sau cedând controlul la nevoie(<b>decide</b> ).
<br/>O simplă interfaţă de chat pe un LLM nu este agent dacă(pt ca...) NU <b>decide</b> şi NU <b>acţionează</b>.
 - [A step-by-step guide to creating an AI Travel Agent with Microsoft AutoGen Studio](https://medium.com/@wxia8888/a-step-by-step-guide-to-creating-an-ai-travel-agent-with-microsoft-autogen-studio-7295592331ac)
 - [30 LLM-uri pt. drept(law)-financiar](https://www.lawstudies.ro/llm/drept-financiar); [FinGPT](https://levelup.gitconnected.com/fingpt-open-source-llm-for-finance-e8ec10d0bf40)-[framework(img)](https://miro.medium.com/v2/resize:fit:1400/1*NcxcT0TfKAK8vZYBAsFAFQ.png)
 - [19 LLM-uri pt. drept(law)-bancar](https://www.lawstudies.ro/llm/legea-bancar%C4%83)
 - [LLM-urilew pt contabilitatea-SaaS un ghid cuprinzator](https://www.sage.com/en-us/blog/llms-for-saas-accounting-a-comprehensive-guide/)
 - [Applying Large Language Models(LLMs) in Accounting: A Comparative Analysis of Different
Methodologies and Off-the-Shelf Examples](https://download.ssrn.com/2024/6/29/4650476.pdf?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFEaCXVzLWVhc3QtMSJGMEQCIB2XM1vd62TPrcEmeSI0KizTPU%2FlsVDZiXrHay%2F5qKbHAiBTSPuYtFbQ04MBLA%2FXW6YX3afh9uFB0lhcchKer0vfaCrHBQi5%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAQaDDMwODQ3NTMwMTI1NyIMHkPdXVCrjXlushuCKpsFUH8Qg4Ekt60E4Xb1jrMz7spdMaQk3FFNMFk0u0R8T0JlueWn7plYHGcvGL8xuDfccR6bT%2B1Ckkorwr8plSlDFqE2P7m2ttzu%2BC1huNOreUzyKVjnRezs5kgj6%2B9dcgkKRUAWclltTk1FPhwCE10mPafQKC0bfBdwKrAUiiNS4m7FSVQNR6ZQ%2BpYi%2BSJzzTq8TeFMAiiFRRk2l3uB9v7uE2jIX6LlvfVL2Bun%2F33cLjusxqNQLsE40wjBt8QoVd%2FmgiPtMHzvjPX9OlKC4lec5VNuc2Tossmo98NnQYMeAO24s6Gn9xRe%2BpMWlxlYrn0WptUKcmF8Q1UxTPlgCCV1aODnfhHUGmghCVjC97yTlUru%2FqkpKKzmVxv9QN0byyCZls77p%2BsFbH8UNP2%2FqtKWJklJF8CBimHUa7ntiPGxJaj%2FYV5IuWepoAKGwk39YqQ30pZkswZI%2B9UivquyX7MzpjDb4d2EpnDqQQNIhogatnMj2x9aJYx%2FW%2FmfnU6ATEd9WEBskAYk17P4zGvpebwfMlP5FmDDX86I2Bqm5vynCaB6VwquQnNrZb0mYR%2FpJqDpJLaJqEiEqeds2aPk%2By978bivRfMSeGHafMb3T7Gq8jNdwpP3ZcWjB0XHwh7%2BN3Our%2BQXI3F0VJQc85AXCWBOBanRfk2bTuWG6bfe03iSMmxC1FOb29j2RQiEn%2BaXx%2FiHgq1lo5VdOGQ7Jy6hqjTmEeTxjb2om7xuWDm6zR7DeOW50TanipAkojoMlQq%2Bu1jDeLrns0nq2OVEPXo0rZWXGtCC%2BXiILHmoWPhUY%2BNxP3%2FoJx78c3jeXBfIMtZFDy8n84H6L44fgrsJkesk3dCg7Mvvlvd4Pc%2B5n7th%2BSVBjbj3%2B%2BQy6rsDxzg59DC%2Fva6%2FBjqyAWbLLpq5bCE7vW2%2BSg4WyUzQw59vl1hkW5GIJkbB9uCavHHeuy14jg4yzK3IiWnJEqb1P4RZzMkM7hAzxt2iv0ERJfz2Uyr0N9wF7Q64NHLuxJKbxb3uDoR%2FuYQF9QZvhpBeYaD5awxVYib8Cmvxj%2FAB3KWwyQJ2VUWkTzQJvrnPVQknkQWC0n9ZsondMS1S%2FFHhkDRTRCs3GYmx0IXrbscm3spFeBFe2QeAbSg125GVDtw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20250401T084410Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAUPUUPRWE5BCV4IC6%2F20250401%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=b8a5c9c7e862126f54d7da86d108564b659525fba62af8c3cb9a4339c7a13623&abstractId=4650476); [Manual IFRS](https://viewpoint.pwc.com/dt/gx/en/pwc/manual_of_accounting/ifrs/ifrs_INT/ifrs_INT.html); [Utilizarea modelelor lingvistice mari(LLM-urilor) pentru a extrage situații-financiare și dezvăluiri/alte informații financiare](https://www.linkedin.com/pulse/using-large-language-models-extract-financial-sid-kumar-cfa-fdp-z9jle/);[NLP si LLM in contabilitate/accounting](https://www.mercity.ai/blog-post/nlp-and-llm-in-accounting); [IAS+ standadrds: IAS,IASB,IFRS,IFRIC,SIC,](https://www.iasplus.com/en/standards) [...](https://www.icaew.com/technical/corporate-reporting/ifrs/ifrs-accounting-standards-tracker); [Procesul de actualizare al IFRS-ului](https://icmab.gov.bd/wp-content/uploads/2019/05/8-Updates-on-IFRS.pdf); [IFRS-resurse tehnice](https://www.ey.com/en_gl/ifrs-technical-resources);[IFRS-9(python) - monitorizare a portofoliului de credite](https://medium.com/atoti/tutorial-how-to-build-an-ifrs-9-solution-with-python-and-atoti-6370dfb6c23); [IFRS-17(asigurătorii de risc) - LRC(PAA) si LIC](https://www.insuranceerm.com/content/partnered-content/ifrs-17-essentials/unpacking-lrc-and-lic-calculations-for-p-and-c-insurers.html);[Rapoarte-financiare(IFRS)](https://www.studocu.com/my/document/sunway-college/sbr-specimen-1/sbr%E9%87%8D%E7%82%B9%E7%AC%94%E8%AE%B0-klncnasjbc/66251773); [LLM-apps stack(img)](https://datasciencedojo.com/wp-content/uploads/LangChain-and-Orchestration-Frameworks.jpg.webp)
 - [intelegerea testarilor de penetrare utilizand LLM-uri](https://blog.gopenai.com/understanding-penetration-testing-with-llms-2b0ec6add14a)
 - [AI-LLM - cadrul de orchestrare](https://x.com/jblefevre60/status/1749859115961074010) - [AI/LLM- orchestration framework(img)](https://pbs.twimg.com/media/GEi_lygXQAAIS4w?format=jpg&name=small); [LLM-orchestration](https://www.linkedin.com/posts/data-science-dojo_orchestrationframework-activity-7154913549402660864-BX6d/);
 - [Atenția neuronală(KA-Attention) care poate fi învățată crește performanța transformatorului de vedere în timp ce se utilizează mai puțină putere de calcul](https://dev.to/aimodels-fyi/learnable-neural-attention-boosts-vision-transformer-performance-while-using-less-computing-power-2b62)
<br/>Kolmogorov-Arnold Attention (**KA-Attention**) este o RN-antrenabila care -*se foloseste in loc de*- ***softmax***(functia fixa de similaritate) in ...
<br/>Vision Transformers(ViT) = sarcini de viziune computerizată
<br/>[KA-Attention](https://www.aimodels.fyi/papers/arxiv/kolmogorov-arnold-attention-is-learnable-attention-better) - avantaje:
    - Îmbunătățește performanța în mai multe sarcini de viziune computerizată și seturi de date
    - Reduce complexitatea de calcul, menținând sau îmbunătățind acuratețea
    - Prezinta o mai mare robustețe la atacurile adverse și la datele în afara distribuției
 - [MedRAG](https://github.com/Teddy-XiongGZ/MedRAG/tree/main); [jinja-templating](https://jinja.palletsprojects.com/en/stable/); [...](https://www.google.com/search?q=github+python+ai+rag+mcp+medical+disease+symptom+prescription+drugs+precautions+treatment+recommendations++bot+assistant+agent+bot+predict&sca_esv=f2c3fa3a06631ada&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zrGQyjjSKAj8e1h4fDJAhGAuXwmjw%3A1744558801645&ei=0dr7Z8-UJ_SMxc8P3rGK6Ao&ved=0ahUKEwiPwaX9q9WMAxV0RvEDHd6YAq0Q4dUDCBE&uact=5&oq=github+python+ai+rag+mcp+medical+disease+symptom+prescription+drugs+precautions+treatment+recommendations++bot+assistant+agent+bot+predict&gs_lp=Egxnd3Mtd2l6LXNlcnAiigFnaXRodWIgcHl0aG9uIGFpIHJhZyBtY3AgbWVkaWNhbCBkaXNlYXNlIHN5bXB0b20gcHJlc2NyaXB0aW9uIGRydWdzIHByZWNhdXRpb25zIHRyZWF0bWVudCByZWNvbW1lbmRhdGlvbnMgIGJvdCBhc3Npc3RhbnQgYWdlbnQgYm90IHByZWRpY3RIAFAAWABwAHgAkAEAmAEAoAEAqgEAuAEDyAEA-AEBmAIAoAIAmAMAkgcAoAcAsgcAuAcA&sclient=gws-wiz-serp)
 - [w3schools: MathML](https://www.w3schools.com/ai/ai_mathematics.asp)
 - [...](https://www.google.com/search?sca_esv=84558b4239d0d7dc&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zodTjyFI8fCpe_f4uB7jP6L0__2yg:1743498593387&q=python+llm+IFRS,IAS+IFRS+SIC&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGlsodhGu4F1UEhEeTehlBu7020oMQ7aBpF-aNynCVlndtbrl-4J-rajucdRXcWuI2dKH9PAaK3ysaU0BSsPt4nUY66XgK_i1ksX1t7wbJ4XlSN3_Sovl3KlCML7ME1cwouhGns_CkbpeIPnBxJEJSEGrnnH0JwIXbOS9r6Vd51OJD3AQnYmg6tzAhwyAP9i66uHsY6dbQ&sa=X&ved=2ahUKEwjF4syyvraMAxWsBdsEHYEZI0cQtKgLegQIDhAB&biw=1920&bih=911&dpr=1)

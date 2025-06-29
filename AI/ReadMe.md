Salut!

Aici voi plasa tutoriale,ghiduri... pentru efectuarea unor sarcini/task-uri/activitati economice,drept,medical(si nu numai...) folosind AI([domain-specific-LLMs](https://medium.com/sage-ai/building-domain-specific-llms-for-reliable-accounting-solutions-at-sage-f5f49479c8ad), Mecanismul atentiei in transformatoare,...):

 - [Jerry-Liu:  “document MCP server” for AI-agents](https://www.linkedin.com/posts/jerry-liu-64390071_ive-been-thinking-about-this-idea-of-a-activity-7326034385671983104-KU7l?utm_source=share&utm_medium=member_desktop&rcm=ACoAABLIPGMB6KpJrQjF9LX4I4WFQuRY84ckvhg)
   <br/>
   <details>
    <summary>...cateva idei/consideratii/detalii privind/desprinse din acest subiect...</summary>

   <hr/>
   
   <pre>Motivul pentru care <b>RAG</b> a devenit atât de popular ca si concept este
   pentru că oamenii au vrut o modalitate de a conecta <b>LLM</b>-urile cu propriile(deci private!) <i>surse de date</i>.
   Odată cu creșterea <b>Agenților</b>/<b>MCP</b>/<b>A2A</b>, putem reformula această idee
   în jurul modelului <b>fluxurilor de lucru</b>(de tip <b>decide</b> si <b>actioneaza</b>) ale <b>Agenților</b>
   care interacționează cu <b><i>instrumentele</i></b> specifice.

   <b>Agenții</b> pot(decide si actiona) apela <b><i>instrumente</i></b> și pot(decide si actiona) <b><i>recupera</i></b> <i>date</i>(în sens general!).
   Aici ne putem concentra pe <i>documente</i>(fisierele sunt containere de continut-document care sunt vazute ca si <i>sursa de date</i>!).
   <b>Agenții</b> pot interacționa cu <i>documentele</i> în câteva moduri:
   1. <b><i>Căutare</i></b>:    Ei pot <b><i>interoga</i></b> o interfață API cu parametri preciși pentru a căuta <i>fișiere</i>/<i>metadate pe/de fișiere</i>.
   2. <b><i>Recuperare</i></b>: Pot face <b><i>căutări semantice</i></b> pentru a găsi <i>sursa relevantă de date</i> (acesta este doar <b>RAG</b>!)
   3. <b><i>Analiză</i></b>:    Pot <b><i>interoga</i></b> o bază de date(BD) structurată pentru a obține informații agregate din <i>documentele</i> lor
                                (rezumate/sumarizari).
   4. <b><i>Manipulare</i></b>: Pot apela un set de funcții expuse de/dupa tipul-de-<i>fișier</i> pentru a <b><i>manipula</i></b> <i>fișierul</i>
      (de exemplu, efectuarea <b><i>calculelor</i></b> pe o <i>foaie Excel</i>, <b><i>editarea</i></b> în <i>Word/PowerPoint</i>)
   
   Dacă doriți să construiți <b>Agenți</b> eficienți peste <i>surse de date</i> precum <i>documente</i>, atunci aveți nevoie de
   <b><i>instrumente</i></b> foarte bune peste aceste <i>documente</i>.  

   In <b>LlamaCloud</b> sunt deja unele dintre "<b><i>instrumentele</i></b> de <i>documente</i>" de bază:
    - <b><i>analiză(3)</i></b>,
    - <b><i>extragere(1&2)</i></b>,
    - <b><i>indexare(1&2)</i></b>
    - și se construiesc mult mai <b><i>multe</i></b>(instrumente care sa acopere conducta ETL si nu numai...).
   </pre>

   Puteti afla mult mai multe lucruri din [articolul original](https://www.linkedin.com/feed/?highlightedUpdateType=PAGES_TRENDING_CONTENT_BY_COMPANY_YOU_FOLLOW&highlightedUpdateUrn=urn%3Ali%3Aactivity%3A7326034385671983104)(***Document [MCP-Layer](https://modelcontextprotocol.io/examples) for Agents***) al lui [**Jerry-Liu**](https://www.google.com/search?q=document+MCP+layer+data+layer+knowledgement+layer+si+layer%28Agent+LLM%29&sca_esv=7362c71c7debaa22&rlz=1C1CHBF_enRO1132RO1132&udm=2&biw=1920&bih=911&sxsrf=AE3TifMFjAUJCAxWyGhWoWIrfAKf073pFg%3A1748078901220&ei=NZExaLGNDcaFxc8P_MGrkAM&ved=0ahUKEwjx-8iv5buNAxXGQvEDHfzgCjIQ4dUDCBE&uact=5&oq=document+MCP+layer+data+layer+knowledgement+layer+si+layer%28Agent+LLM%29&gs_lp=EgNpbWciRWRvY3VtZW50IE1DUCBsYXllciBkYXRhIGxheWVyIGtub3dsZWRnZW1lbnQgbGF5ZXIgc2kgbGF5ZXIoQWdlbnQgTExNKUj1M1C-DlidMnABeACQAQCYAXqgAYsQqgEEMC4xObgBA8gBAPgBAZgCAKACAJgDAIgGAZIHAKAH1wayBwC4BwDCBwDIBwA&sclient=img)...[lectura placuta](https://jingdongsun.medium.com/ai-agents-and-automation-mcp-and-my-considerations-5aa6a5dd42d8)!
   
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
 - [modelcontextprotocol: MCP-examples](https://modelcontextprotocol.io/examples)
 - [gopubby-AI: How to Develop your First (Agentic)-RAG Application?](https://ai.gopubby.com/how-to-develop-your-first-agentic-rag-application-1ccd886a7380);
   <br/>[RAG(clasic/traditional) animated-gif](https://github.com/stefanache/MFP-ANAF-RO/blob/main/AI/RAG.gif); [Agentic-RAG animated-gif](https://github.com/stefanache/MFP-ANAF-RO/blob/main/AI/Agentic_RAG.gif)
 - [dailyDoseOfDS-blog: Corrective-RAG-Agentic](https://blog.dailydoseofds.com/p/corrective-rag-agentic-workflow); [Corrective-RAG-Agentic-workflow animated-gif](https://raw.githubusercontent.com/stefanache/MFP-ANAF-RO/refs/heads/main/AI/Corrective-RAG.webp);
   <br/>[Unified_MCP-server_with_MindsDB(animated-gif)](https://github.com/stefanache/MFP-ANAF-RO/blob/main/AI/Unified_MCP_server_with_MindsDB.gif)
 - [medium@l7mp-technologies: Voice-AI-Agent in Kubernetes using Azure, STUNner and LiveKit](https://medium.com/l7mp-technologies/running-reel-time-ai-voice-assistants-in-kubernetes-136662bd031f)
 - [zdnet-article: Want generative-ai-llms-integrated with your-business-data-you need-RAG](https://www.zdnet.com/article/want-generative-ai-llms-integrated-with-your-business-data-you-need-rag/)
 - [alibabacloud-solutions-AI-apps: RT-interaction ~ Real-Time(RT) Audio and Video Calls with AI Agents](https://www.alibabacloud.com/en/solutions/ai-application/real-time-interaction?_p_lc=1)
 - [google: On-Prem RT-Audio-Video AI-Agent+RAG(RAG-Agentic)](https://www.google.com/search?q=On-Prem+RT+Audio-Video+Ai-Agent+RAG&rlz=1C1CHBF_enRO1132RO1132&oq=On-Prem+RT+Audio-Video+Ai-Agent+RAG&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIJCAEQIRgKGKABMgkIAhAhGAoYoAEyCQgDECEYChigATIHCAQQIRiPAjIHCAUQIRiPAjIHCAYQIRiPAtIBCjMyMjg0ajBqMTWoAgiwAgHxBQTmle79UJhk&sourceid=chrome&ie=UTF-8)
 - [medium@@anand94523: Agentic-AI and MCP - a new era of autonomous-agents](https://medium.com/@anand94523/agentic-ai-and-the-model-context-protocol-a-new-era-of-autonomous-agents-5a3a00c333a0)
 - [medium@AI-Agent-Insider: RAG vs. Self-RAG vs. Agentic RAG: Which One Is Right for You?](https://medium.com/ai-agent-insider/rag-vs-self-rag-vs-agentic-rag-which-one-is-right-for-you-3d233ef42cac)
 - [atera-blog: Agentic-AI vs. Generative-AI](https://www.atera.com/blog/agentic-ai-vs-generative-ai/?cq_src=google_ads&cq_cmp=20881532351&cq_term=&cq_plac=&cq_net=g&cq_plt=gp&utm_adgroup=dsa_blog&utm_adname=&utm_audience=&utm_source=adwords&utm_campaign=search-locc-dsa-troas&utm_medium=cpc&utm_term=&hsa_cam=20881532351&hsa_grp=153829934581&hsa_ad=685329532954&hsa_kw=&hsa_tgt=dsa-2269832072621&hsa_mt=&hsa_acc=6675104902&hsa_src=g&hsa_net=adwords&hsa_ver=3&gad_source=1&gad_campaignid=20881532351&gbraid=0AAAAADdJx0pdVXBtPop1s9W4vbiUx7rTq&gclid=Cj0KCQjwgvnCBhCqARIsADBLZoI4WKfoBf7uY0KqvgK53V9raRPinEHvxPewGGAiUrivVzSmLterXZUaAqppEALw_wcB)
 - [gaodalie.substack: LC+MCP+RAG+OL ~ LangChain + MCP + RAG + Ollama = Cheia către o IA agentică puternică](https://gaodalie.substack.com/p/langchain-mcp-rag-ollama-the-key)
 - [medium@the-model-observer: Building an Agentic RAG with LanceDB(VDB), Anthropic’s-Model Context Protocol(MCP), Bedrock, and Ollama(OL) in Google Colab(GCP)](https://medium.com/the-model-observer/building-an-agentic-rag-with-lancedb-mcp-bedrock-and-ollama-in-google-colab-8b6d4643f3f9)
 - [dailyDoseOfDS(Daily Dose of Data-Science): MCP-powered Agentic-RAG](https://www.dailydoseofds.com/p/mcp-powered-agentic-rag/); [animated-gif](https://github.com/stefanache/MFP-ANAF-RO/blob/main/AI/MCP_powered_Agentic-RAG.gif)
   <br/>[medium@@nravi3: Empower R(etrieval) in RAG ~ How MCP Enables Scalable Retrieval for Agentic AI](https://medium.com/@nravi3/empowering-the-r-in-rag-how-mcp-enables-scalable-retrieval-for-agentic-ai-93f2d3fd93c0);
   [RAG(classical)](https://raw.githubusercontent.com/stefanache/MFP-ANAF-RO/refs/heads/main/AI/classical_RAG.webp); [RAG with MCP](https://raw.githubusercontent.com/stefanache/MFP-ANAF-RO/refs/heads/main/AI/RAG_with_MCP.webp)
   <br/>[GH@plaban1981: RAG with MCP](https://github.com/plaban1981/RAG-MCP); [png-img](https://github.com/stefanache/MFP-ANAF-RO/blob/main/AI/RAG_with_MCP_server.png)
   <br/>[becomingAhacker: Integrating Agentic-RAG with MCP-Servers: Technical Implementation Guide](https://becomingahacker.org/integrating-agentic-rag-with-mcp-servers-technical-implementation-guide-1aba8fd4e442)
 - [dailyDoseOfDS: Deploy a Qwen3 Agentic-RAG](https://blog.dailydoseofds.com/p/deploy-a-qwen-3-agentic-rag); [animated-gif](https://raw.githubusercontent.com/stefanache/MFP-ANAF-RO/refs/heads/main/AI/Agentic-RAG%20workflow%20powered%20by%20Qwen3.webp)
 - [medium@abvijaykumar: Hands on — Agentic RAG (3/3) — Agentic Integrated with MCP Server](https://abvijaykumar.medium.com/hands-on-agentic-rag-3-3-agentic-integrated-with-mcp-server-055e1d601608);
   <br/>[Part 2 Hands on — Agentic RAG (2/3) — Agentic ReRanking RAG ](https://abvijaykumar.medium.com/hands-on-agentic-rag-2-3-agentic-reranking-rag-773b04cf4cdd)
   <br/>[Part 1 of the blog Hands on — Agentic RAG (1/3)](https://medium.com/@abvijaykumar/hands-on-agentic-rag-1-2-cdf375ad7e7a);
 - [GH@omerbsezer: Fast-LLM-Agent-MCP](https://github.com/omerbsezer/Fast-LLM-Agent-MCP)
 - [Formal Reasoning Meets LLMs: (AI4Math) Toward AI for Mathematics and Verification](https://arxiv.org/html/2412.16075v1)
 - [Ollama(OL) - DeepSeek-Math-7B-RL:Q4](https://ollama.com/t1c/deepseek-math-7b-rl:Q4); [OL - Lemma](https://ollama.com/Hudson/llemma:7b);[OL WizzardMath library](https://ollama.com/library/wizard-math); [OL-libraries](https://ollama.com/library); [OL mathstral library](https://ollama.com/library/mathstral/blobs/36ee4ce5634b); [OL qwen2.5-math](https://www.ollama.com/mightykatun/qwen2.5-math); [reddit: IMO cel mai bun model pentru agenți: Qwen2.5 14b](https://www.reddit.com/r/ollama/comments/1gh23zo/imo_the_best_model_for_agents_qwen25_14b/)
 - [rePrompt: AI-Powered Solutions for Complex Math](https://reprompt.gg/prompts/categories/mathematics)
 - [reddit: Math-prompting](https://www.reddit.com/r/PromptEngineering/comments/13l2u7s/i_need_help_to_make_a_prompt_that_will_convert/)
 - [learnPrompting: MathPrompter](https://learnprompting.org/docs/reliability/math?srsltid=AfmBOor3J_UM1kISxxfersVILXP1VlAqvjE1_Lb43hF-iPmpSOyJWrbV)
 - [medium@s181051_44724: COT/CdG Prompting](https://medium.com/@s181051_44724/cot-prompting-solving-math-like-a-pro-with-llm-e6ef7e121b63);[IBM -COT Prompting](https://www.ibm.com/think/topics/chain-of-thoughts)
 - [...](https://www.google.com/search?sca_esv=84558b4239d0d7dc&rlz=1C1CHBF_enRO1132RO1132&sxsrf=AHTn8zodTjyFI8fCpe_f4uB7jP6L0__2yg:1743498593387&q=python+llm+IFRS,IAS+IFRS+SIC&udm=2&fbs=ABzOT_BYhiZpMrUAF0c9tORwPGlsodhGu4F1UEhEeTehlBu7020oMQ7aBpF-aNynCVlndtbrl-4J-rajucdRXcWuI2dKH9PAaK3ysaU0BSsPt4nUY66XgK_i1ksX1t7wbJ4XlSN3_Sovl3KlCML7ME1cwouhGns_CkbpeIPnBxJEJSEGrnnH0JwIXbOS9r6Vd51OJD3AQnYmg6tzAhwyAP9i66uHsY6dbQ&sa=X&ved=2ahUKEwjF4syyvraMAxWsBdsEHYEZI0cQtKgLegQIDhAB&biw=1920&bih=911&dpr=1)

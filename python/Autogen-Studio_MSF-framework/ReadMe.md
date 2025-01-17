Salut,

In acest articol vreau sa va aduc in atentie/prezint [**AutoGen-Studio**](https://github.com/microsoft/autogen)(for/4 Windows), un cadru-AI de lucru Microsoft(MSF-framework).

Aici gasiti [documentatia](https://microsoft.github.io/autogen/0.2/docs/Getting-Started) **Autogen 0.2**. Am vazut/aflat ca din [*ecosistemul*](https://microsoft.github.io/autogen/0.2/docs/ecosystem) acestuia face parte si ***Ollama***(server ce expune local, spre utilizare/interogare, diverse **LLM**-uri).

Am gasit de asemenea o interesanta [***integrare***](https://github.com/hqnicolas/WindowsAutoGenStudio) **Autogen** cu ***Ollama***(server care va ofera access la un LLM), care opereaza de sub sistemul de operare ***Windows***.<br/> 
Va rog sa observati ca pt a crea un mediu/environment de programare specific s-a recurs la a utiliza **conda**(aici fiind vorba despre ***miniconda***) - de fapt o alternativa la [**venv**](https://www.hostinger.com/tutorials/how-to-create-a-python-virtual-environment?utm_campaign=Generic-Tutorials-DSA|NT:Se|LO:Other-EU&utm_medium=ppc&gad_source=1&gclid=CjwKCAiAnKi8BhB0EiwA58DA4ddSoInE-7FDra-YwLql4eTmUFQUzMQd_EhcCp_I31A9tLbdsFPGaRoCCfIQAvD_BwE).
Desigur ati fi putut activa/utiliza  mediul deja creat anterior pt acest proiect cu comanda-prompt(cmd.exe), in mod interactiv de la terminal, utilizand comanda: > ***activate {numele mediului-dvs}***,  dar daca folositi un batch(fisier.BAT), asa cum se utilizeaza in acest proiect,  pt lucrul in(sau pt a memora un) lot de lucrari neintreruptibile, in vederea neintreruperii fluxului de comenzi executabile, gazduite de/in acest {fisier}.bat, este recomandabil inserarea/utilizarea in acest fisier batch a comenzii: ***call C:\Users\{myusername}\miniconda3\Scripts\activate.bat base***.

In acest [videoclip-YT](https://www.youtube.com/watch?v=DMYCJe1vBVA&ab_channel=MervinPraison), domnul **Mervin Praison**, ne propune o ***integrare*** **AutoGen** și/cu **Ollama**, ceea ce face ca proiectul sa devina 100% local, 100% gratuit și toate datele dvs./sensibile ale acestuia(proiectului dvs), sa rămâna in spatiul dumneavoastra privat/propriu.<br/>
Acest videoclip vă va ghida prin întregul proces, de la configurarea **Olama** la crearea de *diagrame dinamice* și integrarea lor în orice aplicație *Python* sau *JavaScript(JS)* - toate în timp ce vă asigurăm că datele dvs. rămân private.

Si domnul **Fahd Mirza** are un [**videoclip-YT**](https://www.youtube.com/watch?v=Kv2DqHO0-1s&ab_channel=FahdMirza) de prezentare a acestui [instrument](https://autogen-studio.com/autogen-studio-ui) care ne poate face munca de dezvoltare mai usoara.

Un alt [videoclip-YT](https://www.youtube.com/watch?v=5YpVs7bkg7k&ab_channel=YaronBeen) prezinta o integrare **Autogen** cu [**Groq**](https://www.getguru.com/reference/what-is-groq-ai-and-how-to-use-it) și **Ollama** (local și gratuit) pentru a ne ajuta să fac un brainstorming un portofoliu de investiții(deci prezinta un agent-AI de/pt automatizarea afacerilor) 

Publicatia ***Medium*** pune la dispozitia comunitatii sale, o serie intreaga de [articole](https://medium.com/@amit25173/langchain-vs-autogen-60b32cca03fc), care vizeaza(se refera la) integrarea [Autogen+Ollama](https://medium.com/@shmilysyg/getting-started-with-autogen-studio-crafting-ai-agents-with-ollama-or-lm-studio-21e715350eab)

Si acest proiect [**GraphRAG**](https://github.com/karthik-codex/Autogen_GraphRAG_Ollama) poate constitui un bun [exemplu](https://www.youtube.com/watch?v=Dv0kVWMSISs&ab_channel=PromptEngineer) de utilizare a acestui instrument.

[**Autogen**](https://www.youtube.com/watch?v=dCCr52uT0W8&ab_channel=1littlecoder) figureaza si in aceasta [lista](https://github.com/underlines/awesome-ml/blob/master/llm-tools.md) de instrumente ML, minunate/folositoare,  postata in acest depozit-[**github**](https://github.com/underlines/awesome-ml/blob/master/llm-tools.md).

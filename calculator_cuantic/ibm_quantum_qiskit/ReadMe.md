Salutare

Multumita ghidului **IBM**, am creat primul program([**hello-wold**](https://docs.quantum.ibm.com/guides/hello-world)) scris cu ajutorul SDK-ului instalat [**qiskit**](https://docs.quantum.ibm.com/guides/install-qiskit)

Acest program se ruleaza local pe calculatorul dumneavoastra si in ordine simuleaza urmatoarele 
- a)am creat un circuit-cuantic apoi 
- b)in acest circuit-cuantic am introdus o o poarta-cuantica de tip **H**adamard
- c)in contextul calculului cuantic, expresia „Efectuați o poartă X controlată pe qubit 1, controlată de qubit 0” se referă la o operație cuantică specifică care aplică o anumită poartă cuantică unui qubit (qubit 1) pe baza stării altui qubit (qubit 0).

<a href="https://docs.quantum.ibm.com/api/qiskit/qiskit.circuit.QuantumCircuit#quantumcircuit-class"><img src="https://docs.quantum.ibm.com/images/extracted-notebook-images/hello-world/930ca3b6-0.svg">Clasa: QuantumCircuit</img></a>

Să defalcăm componentele acestei instrucțiuni:

c1. Poarta X controlată:
 - „X” din „controlled-X” se referă la poarta NOT, care este o poartă cuantică comună.
 - O poartă X controlată este o poartă de doi qubit, în care operația este aplicată unui qubit (qubitul „țintă”) numai dacă celălalt qubit (qubitul „de control”) se află într-o stare specifică (de obicei starea |1⟩).
 - Într-o poartă X controlată, dacă qubitul de control este în starea |1⟩, qubitul țintă va suferi o operație NOT, inversând starea sa de la |0⟩ la |1⟩ sau invers.

c2. Qubit 1:
 - Qubit-ul 1 este qubitul „țintă”, ceea ce înseamnă că operația de poartă controlată-X va fi aplicată acestui qubit.

c3. Controlat de qubit 0:
 - Qubit 0 este qubit-ul „de control”, care determină dacă operațiunea controlată a porții X este aplicată qubitului 1.
 - Dacă qubitul 0 este în starea |1⟩, poarta X controlată va fi aplicată qubitului 1, inversând starea acestuia. Dacă qubit 0 este în starea |0⟩, nu va fi efectuată nicio operație pe qubit 1.

În rezumat, instrucțiunea „Efectuați o poartă controlată-X pe qubit 1, controlată de qubit 0” înseamnă că sistemul cuantic va aplica o operație NOT la qubit 1 dacă și numai dacă qubit 0 este în starea |1⟩. Aceasta este o operație cuantică fundamentală utilizată în diverși algoritmi cuantici și proiecte de circuite cuantice.

 - d)ultima operatie este sa afisam circuitul final construit.


In continuare urmariti intregul tutorial([**hello-wold**](https://docs.quantum.ibm.com/guides/hello-world))...


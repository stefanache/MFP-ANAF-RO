Salutare

Multumita ghidului **IBM**, am creat primul program([**hello-wold**](https://docs.quantum.ibm.com/guides/hello-world)) scris cu ajutorul SDK-ului instalat [**qiskit**](https://docs.quantum.ibm.com/guides/install-qiskit)

<pre>
<code>
   import matplotlib.pyplot as plt
   
   from qiskit import QuantumCircuit
   from qiskit.quantum_info import SparsePauliOp
   from qiskit.transpiler.preset_passmanagers import generate_preset_pass_manager
   from qiskit_ibm_runtime import EstimatorV2 as Estimator
    
   # a)Create a new circuit with two qubits
   qc = QuantumCircuit(2)
    
   # b)Add a Hadamard gate to qubit 0
   qc.h(0)
    
   # c)Perform a controlled-X gate on qubit 1, controlled by qubit 0
   qc.cx(0, 1)
    
   # Return a drawing of the circuit using MatPlotLib ("mpl"). This is the
   # last line of the cell, so the drawing appears in the cell output.
   # Remove the "mpl" argument to get a text drawing.
   qc.draw("mpl")

   plt.show()  # d)Afișează circuitul grafic
</code>
</pre>


Programul debuteaza ca orice program Python cu invocarea dependentelor utilizate in acest cod:
<pre><code>
   import matplotlib.pyplot as plt
   
   from qiskit import QuantumCircuit
   from qiskit.quantum_info import SparsePauliOp
   from qiskit.transpiler.preset_passmanagers import generate_preset_pass_manager
   from qiskit_ibm_runtime import EstimatorV2 as Estimator

   
Să defalcăm fragmentul de cod și să explicăm fiecare linie:

1. `din importul qiskit QuantumCircuit`:
 - Această linie importă clasa `QuantumCircuit` din biblioteca `qiskit`.
 - Clasa „QuantumCircuit” este folosită pentru a crea și manipula circuite cuantice, care sunt blocurile de bază ale calculului cuantic.

2. `din qiskit.quantum_info import SparsePauliOp`:
 - Această linie importă clasa `SparsePauliOp` din modulul `qiskit.quantum_info`.
 - Clasa `SparsePauliOp` reprezintă un operator Pauli rar, care este un concept fundamental în calculul cuantic și este folosit pentru a reprezenta operații cuantice.

3. `din qiskit.transpiler.preset_passmanagers import generate_preset_pass_manager`:
 - Această linie importă funcția `generate_preset_pass_manager` din modulul `qiskit.transpiler.preset_passmanagers`.
 - Funcția `generate_preset_pass_manager` este utilizată pentru a genera un manager de trecere presetat, care este un set de pași de optimizare și transformare predefiniti care pot fi aplicați unui circuit cuantic pentru a-și îmbunătăți performanța.

4. „din qiskit_ibm_runtime import EstimatorV2 as Estimator”:
 - Această linie importă clasa `EstimatorV2` din modulul `qiskit_ibm_runtime` și o redenumește în `Estimator`.
 - Clasa „EstimatorV2” face parte din IBM Quantum Runtime, care este o platformă bazată pe cloud pentru rularea algoritmilor cuantici pe computerele cuantice ale IBM. Clasa „Estimator” este folosită pentru a estima valoarea observabilelor unui circuit cuantic.

În rezumat, acest cod importă mai multe clase și funcții din bibliotecile Qiskit și IBM Quantum Runtime, care
</code></pre>

Acest **program** se ruleaza local pe calculatorul dumneavoastra si in ordine *simuleaza* urmatoarele:
- a)am creat un circuit-cuantic cu 2 qubiti(cu 2 intrari: **q0** si **q1**):
  furnizat.
<pre><code>
   # a)Create a new circuit with two qubits
   qc = QuantumCircuit(2)
   
„# Create a new circuit with two qubits” este un comentariu care explică scopul codului care urmează.
Linia „qc = QuantumCircuit(2)” creează un nou obiect de circuit cuantic numit „qc” cu doi qubiți (biți cuantici).
În contextul calculului cuantic, un qubit este unitatea de bază a informației, similar cu un bit clasic în calculul tradițional. Cu toate acestea, qubiții pot exista într-o suprapunere de stări, permițându-le să reprezinte mai mult decât doar 0 sau 1.
Prin crearea unui QuantumCircuit cu doi qubiți, configurați un circuit cuantic care poate fi folosit pentru a efectua diverse operații și calcule cuantice. Acesta este primul pas în construirea unui algoritm sau simulare cuantică.
Clasa QuantumCircuit face parte dintr-o bibliotecă populară de calcul cuantic, cum ar fi Qiskit sau Cirq, care oferă instrumente și funcții pentru a lucra cu circuite cuantice și a le executa pe hardware sau simulatoare cuantice.
În rezumat, acest cod creează un nou circuit cuantic cu doi qubiți, care este baza pentru programarea și experimentarea cuantică ulterioară.
</code></pre>

- b)apoi, in acest circuit-cuantic am introdus o poarta-cuantica de tip **H**adamard:
<pre><code>
   # b)Add a Hadamard gate to qubit 0
   qc.h(0)
       
b1. „# Adăugați o poartă Hadamard la qubit 0”
 - Acesta este un comentariu (notat prin simbolul `#`) care oferă o scurtă descriere a următoarei linii de cod.
 - Comentariul indică faptul că scopul codului este de a adăuga o poartă Hadamard la primul qubit (qubit 0) din circuitul cuantic.

b2. „qc.h(0)”
 - Aceasta este linia reală de cod care efectuează operația.
 - `qc` reprezintă un obiect de circuit cuantic, care este o structură de date care stochează secvența porților cuantice și a operațiilor care urmează să fie aplicate qubiților.
 - Partea `.h(0)` a codului aplică poarta Hadamard la primul qubit (qubit 0) din circuitul cuantic.

Poarta Hadamard este o poartă cuantică care creează o suprapunere a stărilor |0⟩ și |1⟩ ale unui qubit. Când este aplicată unui qubit în starea |0⟩, poarta Hadamard produce o suprapunere egală de |0⟩ și |1⟩. Când este aplicată unui qubit în starea |1⟩, poarta Hadamard produce o suprapunere egală de |0⟩ și -|1⟩.

În rezumat, codul `qc.h(0)` adaugă o poartă Hadamard la primul qubit (qubit 0) din circuitul cuantic `qc`. Această operație pregătește primul qubit într-o suprapunere a stărilor |0⟩ și |1⟩, care este un punct de plecare comun pentru mulți algoritmi cuantici.
</code></pre>

- c)iar la final ...in contextul calculului cuantic, expresia „Efectuați o **poartă X** controlată pe qubit 1(**q1**), controlată de qubit 0(**q0**)” se referă la o operație cuantică specifică care aplică o anumită poartă cuantică unui qubit (qubit 1 = **q1**) pe baza stării altui qubit (qubit 0=**q0**).

<a href="https://docs.quantum.ibm.com/api/qiskit/qiskit.circuit.QuantumCircuit#quantumcircuit-class"><img src="https://docs.quantum.ibm.com/images/extracted-notebook-images/hello-world/930ca3b6-0.svg">Clasa: QuantumCircuit</img></a>

<pre><code>
   # c)Perform a controlled-X gate on qubit 1, controlled by qubit 0
   qc.cx(0, 1)
   
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
</code></pre>

 - d)ultima operatie este sa afisam circuitul final construit:
 
<pre><code>
   # Return a drawing of the circuit using MatPlotLib ("mpl"). This is the
   # last line of the cell, so the drawing appears in the cell output.
   # Remove the "mpl" argument to get a text drawing.
   qc.draw("mpl")

   plt.show()  # Afișează circuitul grafic

</code></pre>
In continuare urmariti intregul tutorial([**hello-wold**](https://docs.quantum.ibm.com/guides/hello-world))...

**OBS:** am folosit un plugin pt browser(Chrome) care este un **asistent-AI** care explica cat de cat ceea ce este marcat in vederea explicatiei.


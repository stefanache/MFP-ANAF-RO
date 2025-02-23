@echo off
cls
cd D:\ibm_quantum_qiskit
echo https://docs.quantum.ibm.com/guides/install-qiskit
REM python -m venv .venv
venv\Scripts\activate
REM pip install qiskit
REM pip install qiskit-ibm-runtime
REM pip install qiskit[visualization]
REM pip install matplotlib


echo https://docs.quantum.ibm.com/guides/hello-world

python qiskit_hello_world.py
pause
deactivate
pause
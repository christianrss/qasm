from qiskit_qasm3_import import parse
from qiskit.qasm3 import loads

with open("cat.qasm", "r") as file:
    program = file.read()
    #circuit = parse(program)
    circuit = loads(program)

    print(circuit.draw())

OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

h q[0]; // Hadamard

cx q[0], q[1]; // Controlled-NOT from control qubit q[k] to target qubit q[k+1]
cx q[1], q[2];

measure q -> c;

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];

// |w⟩ = |00⟩
h q[0];
h q[1];
x q[0];
x q[1];
cz q[1],q[0];
x q[0];
h q[0];
x q[1];
z q[0];
h q[1];
z q[1];
cz q[1],q[0];
h q[0];
h q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];

// |w⟩ = |01⟩
// h q[0];
// h q[1];
// x q[1];
// cz q[1],q[0];
// h q[0];
// x q[1];
// z q[0];
// h q[1];
// z q[1];
// cz q[1],q[0];
// h q[0];
// h q[1];
// measure q[0] -> c[0];
// measure q[1] -> c[1];

// |w⟩ = |10⟩
// h q[0];
// h q[1];
// x q[0];
// cz q[1],q[0];
// x q[0];
// h q[0];
// h q[1];
// z q[0];
// z q[1];
// cz q[1],q[0];
// h q[0];
// h q[1];
// measure q[0] -> c[0];
// measure q[1] -> c[1];

// |w⟩ = |11⟩
// h q[0];
// h q[1];
// cz q[1],q[0];
// h q[0];
// z q[0];
// h q[1];
// z q[1];
// cz q[1],q[0];
// h q[0];
// h q[1];
// measure q[0] -> c[0];
// measure q[1] -> c[1];

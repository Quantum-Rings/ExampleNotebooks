/*
    Tutorial Example - 3
    
    Illustrates how to create bits registers in the quantum system
    and set them both classically and using quantum gates.
*/


OPENQASM 3;
include "stdgates.inc";

qubit[12] q;
output bit[12] c;


// Create a pattern: 011000111001

// Quantum part      -11---11----  
x q[4];
x q[5];
x q[9];
x q[10];

// Classical part  : --------1--1
c[0] = 1;
c[3] = 1;


//
// Measuring these bits should not harm classical bits 0,1,2,3,6,7,8,11
//

c[4] = measure q[4];
c[5] = measure q[5];
c[9] = measure q[9];
c[10] = measure q[10];
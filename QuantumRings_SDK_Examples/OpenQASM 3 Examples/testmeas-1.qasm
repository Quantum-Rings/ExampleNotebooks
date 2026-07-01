/*
    Tutorial Example - 1
    
    Illustrates how to measure a register and output the values.
*/


OPENQASM 3;
include "stdgates.inc";

qubit[12] q;
output bit[12] c;

// Create a pattern: 011000111001

x q[0];
x q[3];
x q[4];
x q[5];
x q[9];
x q[10];

c = measure q;

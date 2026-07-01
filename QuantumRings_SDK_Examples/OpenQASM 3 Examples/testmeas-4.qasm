/*
  Tutorial Example - 4

    NOTE: Since no output register is marked, expect to return all bit registers,
          that is: 00000011000111001
*/


OPENQASM 3;
include "stdgates.inc";

qubit[12] q;
bit[12] c;
bit[5] d;

// Create a pattern: 011000111001

def create_pattern(qubit[3]q, int c) -> bit[3]
{
    bit[3] b;

    switch (c) 
    {
        case 0 {
          x q[0];
        }
        case 1 {
          x q[0];
          x q[1];
          x q[2];
        }
        case 2 {
          // Do nothing
        }
        case 3 {
          x q[0];
          x q[1];
        }
        default {
          // Do nothing
        }
    }

    b = measure q;

    return b;
}

c[0:2] = create_pattern(q[0:2], 0);
c[3:5] = create_pattern(q[3:5], 1);
c[6:8] = create_pattern(q[6:8], 2);
c[9:11] = create_pattern(q[9:11], 3);
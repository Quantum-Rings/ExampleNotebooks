/*
    Test measurement instructions and return values.

    NOTE: Illustrates how to use mid-circuit measurement and use the measured value to change control-flow.
*/


OPENQASM 3;
include "stdgates.inc";

qubit[12] q;
bit[12] c;
qubit[2] d;

// Create a pattern: 011000_111001


def create_pattern(qubit[6]q, qubit[2] test) -> bit[6]
{
    bit[2] b;

    b = measure test;

    if (b == 0b00)
    {
        x q[0];
        x q[3];
        x q[4];
        x q[5];

    }
    else if (b == 0b11)
    {
        x q[3];
        x q[4];
    }

    return measure q;
}

c[0:5] = create_pattern(q[0:5], d);

x d[0];
x d[1];

c[6:11] = create_pattern(q[6:11], d);
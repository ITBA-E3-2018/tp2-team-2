`include "latchSR.v"

module ffD(
    D,  //Entry
    E,  //Enable
    Q,  //Output
    nQ  //Neg-Output
);

//Defino Inputs
input D;
input E;

//Defino OUtputs
output Q;
output nQ;

//Defino Variables
wire D,E,Q,nQ;

wire a;

//Code
not(a,D);
latchSR latch(
    .R(a),
    .E(E),
    .S(D),
    .Q(Q),
    .nQ(nQ)
);

endmodule
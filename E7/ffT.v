`include "../E6/latchSR.v"

module ffT (
    T,  //Toggle
    E,  //Enable
    Q,  //Output
    nQ  //Inverse Output
);

//Deine Inputs
input T;
input E;

//Define Outputs
output Q;
output nQ;

//Define Variables
wire T,E;
wire Q,nQ;

wire R,S;

//Code
and(R,T,Q);
and(S,T,nQ);

latchSR latch (
    .R(R),
    .S(S),
    .E(E),
    .Q(Q),
    .nQ(nQ)
);

endmodule

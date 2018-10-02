module latchSR(
    R,
    E,
    S,
    Q,
    nQ
);

//Defino Inputs
input R;
input E;
input S;

//Defino Outputs
output Q;
output nQ;

//Defino variables
wire R,E,S;
wire Q,nQ;

wire a,b;

//Code
and(a,R,E);
and(b,S,E);
nor(Q,a,nQ);
nor(nQ,b,Q);

endmodule
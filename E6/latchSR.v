module latchSR(
    R,
    clk,
    S,
    Q,
    nQ
);

//Defino Inputs
input R;
input clk;
input S;

//Defino Outputs
output Q;
output nQ;

//Defino variables
wire R,clk,S;
wire Q,nQ;

wire a,b;

//Code
and aR(a,R,clk);
and aS(b,S,clk);
nor n1(Q,a,nQ);
nor n2(nQ,b,Q);

endmodule
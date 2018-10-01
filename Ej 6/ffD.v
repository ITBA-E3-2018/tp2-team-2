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

//Defino Parametros
wire D,E,Q,nQ;

wire a,b,c;

//Code
not(a,D);
and(b,a,E);
and(c,E,D);
nor(Q,b,nQ);
nor(nQ,c,Q);

endmodule
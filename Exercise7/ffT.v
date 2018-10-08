`include "../Exercise6/latchSR.v"

module ffT (
    T,  //Toggle
    clk,//Clock
    Q,  //Output
    nQ  //Inverse Output
);

//Deine Inputs
input T;
input clk;

//Define Outputs
output Q;
output nQ;

//Define Variables
wire T,clk;
wire Q,nQ;

wire R,S;

//Code
and(R,T,Q);
and(S,T,nQ);

latchSR latch (
    .R(R),
    .S(S),
    .clk(clk),
    .Q(Q),
    .nQ(nQ)
);

endmodule

//Behavioural programming of the module

module BffT (
    T,  //Toggle
    clk,//Clock
    Q,  //Output
    nQ  //Inverse Output
);

//Deine Inputs
input T;
input clk;

//Define Outputs
output Q;
output nQ;

//Define Variables
wire T,clk;
reg Q,nQ;

wire R,S;

//Code

initial begin
    Q = 0;
    nQ = 1;
end

always @(posedge clk) begin
    if(T == 1) begin
        Q = !Q;
        nQ = !nQ;
    end
end


endmodule
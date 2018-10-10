`include "ffT.v"

module syncCount (
    clk,
    T,
    Q,
    nQ
);

input clk, T;

output [2:0] Q;
output [2:0] nQ;

wire clk,T;
wire [2:0] Q, nQ;

ffT T0(
    .clk(clk),
    .T(T),
    .Q(Q(0)),
    .nQ(nQ(0))
    );

ffT T1(
    .clk(clk),
    .T(T),
    .Q(Q(1)),
    .nQ(nQ(1))
    );

ffT T2(
    .clk(clk),
    .T(T),
    .Q(Q(2)),
    .nQ(nQ(2))
    );


endmodule
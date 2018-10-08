`include "ffT.v"

module ffT_tb;

reg clk, T;
wire q, nq;

BffT test (
    .T  (T),
    .clk(clk),
    .Q  (q),
    .nQ (nq)
);

initial begin
  clk = 0;
  T = 0;
  #5 T = 1;
  #20 T = 0;
  #40 T = 1;
end

always
    #5 clk = !clk;

initial begin
  $dumpfile("ffT.vcd");
  $dumpvars;
end

initial begin
  $display("\t\ttime\tclk\tT\tQ\tnQ");
  $monitor("%d\t%b\t%b\t%b\t%b",$time,clk,T,q,nq);
end

initial
    #100 $finish;

endmodule
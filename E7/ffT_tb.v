`include "ffT.v"

module ffT_tb;

reg clk, T;
wire q, nq;

ffT test (
    .T  (T),
    .E  (clk),
    .Q  (q),
    .nQ (nQ)
);

initial begin
  clk = 0;
  T = 0;
  #20 T = 1;
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
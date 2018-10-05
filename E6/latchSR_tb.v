`include "latchSR.v"

module latchSR_tb;

reg clk, R, S;
wire q, nq;

latchSR test (
    .R  (R),
    .S  (S),
    .clk(clk),
    .Q  (q),
    .nQ (nq)
);

initial begin
  clk = 1;
  R = 1;
  S = 0;
  
  #5 R = 0;
  #5 S = 1;
  #5 S = 0;
  #5 R = 1;
  #5 R = 0;
end

always
    #5 clk = !clk;
 
initial begin
  $dumpfile("latchSR.vcd");
  $dumpvars;
end

initial begin
  $display("\t\ttime\tclk\tR\tS\tQ\tnQ");
  $monitor("%d\t%b\t%b\t%b\t%b\t%b",$time,clk,R,S,q,nq);
end

initial
    #100 $finish;

endmodule
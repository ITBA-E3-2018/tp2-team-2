`include "latchSR.v"
//Nota: Hay un glitch. No es un glitch. S=1, R=1 es inestable.
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

  #10 S = 1; R = 0;
  #10 S = 0; R = 0;
  #10 S = 1; R = 1;
end

always begin
  #5 clk = !clk;
end
 
initial begin
  $dumpfile("latchSR.vcd");
  $dumpvars;
end

initial begin
  $display("\t\ttime\tclk\tR\tS\tQ\tnQ");
  $monitor("%d\t%b\t%b\t%b\t%b\t%b",$time,clk,R,S,q,nq);
end

initial
    #50 $finish;

endmodule
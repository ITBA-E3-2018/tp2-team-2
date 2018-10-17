module main();
    
    
    wire clk;
    clock_gen clk_gen(clk);
    reg echo;
    reg reset = 0;
    wire[7:0] count;
    nand(out1,clk,echo);
    counter #(.WIDTH(8)) my_counter (count, out1, reset);
    initial begin

        #1
        reset = 1;
        #10
        reset = 0;
        #10
        echo = 1;
        #50
        echo = 0;
        #100;
        $finish;

    end
    
    reg dummy;
    reg[8*64:0] dumpfile_path = "output.vcd";

    initial begin
        dummy = $value$plusargs("VCD_PATH=%s", dumpfile_path);
        $dumpfile(dumpfile_path);
        $dumpvars(0,main);
    end

endmodule
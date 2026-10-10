module tb_nand_gate();

    // nand gate testbed

    reg a;
    reg b;

    wire c;


    nand_gate uut(a,b,c);

    initial begin

        $dumpfile("nand-waveform.vcd");

        a = 0; b = 0; // C should output as 1
        $dumpvars (0, tb_nand_gate);
        #10
        
        a = 0; b = 1; // C should output as 1
        $dumpvars (0, tb_nand_gate);
        #10

        a = 1; b = 0; // C should output as 1
        $dumpvars (0, tb_nand_gate);
        #10

        a = 1; b = 1; // C should output as 0
        $dumpvars (0, tb_nand_gate);
        #10

        $finish();

    end

endmodule

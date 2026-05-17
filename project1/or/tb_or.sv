module tb_or_gate();

    // Or gate testbed.

    reg a;
    reg b;

    wire c;

    or_gate uut(a,b,c);

    initial begin

        $dumpfile("or-waveform.vcd");

        a = 0; b = 0; // c should be 0
        $dumpvars (0, tb_or_gate);
        #10

        a = 0; b = 1; // c should be 1
        $dumpvars (0, tb_or_gate);
        #10

        a = 1; b = 0; // c should be 1
        $dumpvars (0, tb_or_gate);
        #10

        a = 1; b = 1; // c should be 1
        $dumpvars (0, tb_or_gate);
        #10

        $finish();

    end

endmodule

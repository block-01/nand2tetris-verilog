module tb_not_gate();

    // Not gate testbed.

    reg a;

    wire b;

    not_gate uut(a,b);


    initial begin

        $dumpfile("not-waveform.vcd");

        a = 0; // b should output as 1
        $dumpvars (0, tb_not_gate);
        #10

        a = 1; // b should output as 0
        $dumpvars (0, tb_not_gate);
        #10

        $finish();

    end

endmodule

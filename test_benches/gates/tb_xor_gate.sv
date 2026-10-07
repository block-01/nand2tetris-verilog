module tb_xor_gate();

    reg a;
    reg b;

    wire out;

    xor_gate uut(
            .a(a),
            .b(b),
            .out(out)
        );

    initial begin

        $dumpfile("xor-waveform.vcd");

        a = 0;
        b = 0;
        $dumpvars(0, tb_xor_gate);
        #10

        a = 1;
        b = 1;
        $dumpvars(0, tb_xor_gate);
        #10

        a = 1;
        b = 0;
        $dumpvars(0, tb_xor_gate);
        #10

        a = 0;
        b = 1;
        $dumpvars(0, tb_xor_gate);
        #10

        $finish();
    end

endmodule
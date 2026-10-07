module tb_or_gate();

    reg a;
    reg b;

    wire out;

    or_gate uut(
            .a(a),
            .b(b),
            .out(out)
        );

    initial begin

        $dumpfile("or-waveform.vcd");

        a = 0;
        b = 0;
        $dumpvars(0, tb_or_gate);
        #10

        a = 1;
        b = 1;
        $dumpvars(0, tb_or_gate);
        #10

        a = 1;
        b = 0;
        $dumpvars(0, tb_or_gate);
        #10

        a = 0;
        b = 1;
        $dumpvars(0, tb_or_gate);
        #10

        $finish();
    end

endmodule
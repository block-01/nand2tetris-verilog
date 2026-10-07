module tb_mux_gate();

    reg a;
    reg b;
    reg select;

    wire out;


    mux_gate uut(
        .a(a),
        .b(b),
        .select(select),
        .out(out)
    );

    initial begin
        $dumpfile("mux-waveform.vcd");

        a = 0; b = 0; select = 0;
        $dumpvars(0, tb_mux_gate);
        #10

        a = 0; b = 0; select = 1;
        $dumpvars(0, tb_mux_gate);
        #10
        
        a = 0; b = 1; select = 0;
        $dumpvars(0, tb_mux_gate);
        #10

        a = 0; b = 1; select = 1;
        $dumpvars(0, tb_mux_gate);
        #10

        a = 1; b = 0; select = 0;
        $dumpvars(0, tb_mux_gate);
        #10

        a = 1; b = 0; select = 1;
        $dumpvars(0, tb_mux_gate);
        #10

        a = 1; b = 1; select = 0;
        $dumpvars(0, tb_mux_gate);
        #10

        a = 1; b = 1; select = 1;
        $dumpvars(0, tb_mux_gate);
        #10

        $finish();
    end

endmodule
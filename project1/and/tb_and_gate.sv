module tb_and_gate();

    reg a;
    reg b;

    wire c;


    and_gate uut(a,b,c);

    initial begin

        $dumpfile("and-waveform.vcd");

        a = 0; b = 0;
        $dumpvars (0, tb_and_gate);
        #10
        
        a = 0; b = 1;
        $dumpvars (0, tb_and_gate);
        #10

        a = 1; b = 0;
        $dumpvars (0, tb_and_gate);
        #10

        a = 1; b = 1;
        $dumpvars (0, tb_and_gate);
        #10

        $finish();

    end

endmodule

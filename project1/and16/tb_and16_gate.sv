module tb_and16_gate();

    reg a[15:0];
    reg b[15:0];

    wire c[15:0];


    and16_gate uut(a[15:i],b[15:i],c[15:i]);

    initial begin

        $dumpfile("and16-waveform.vcd");

        a[15:0] = 0; b[15:0] = 0;
        $dumpvars (0, tb_and16_gate);
        #10
        
        a[15:0] = 0; b[15:0] = 1;
        $dumpvars (0, tb_and16_gate);
        #10

        a[15:0] = 1; b[15:0] = 0;
        $dumpvars (0, tb_and16_gate);
        #10

        a[15:0] = 1; b[15:0] = 1;
        $dumpvars (0, tb_and16_gate);
        #10


        a[15:1] = 0; b[15:1] = 0;
        $dumpvars (0, tb_and16_gate);
        #10
        
        a[15:1] = 0; b[15:1] = 1;
        $dumpvars (0, tb_and16_gate);
        #10

        a[15:1] = 1; b[15:1] = 0;
        $dumpvars (0, tb_and16_gate);
        #10

        a[15:1] = 1; b[15:1] = 1;
        $dumpvars (0, tb_and16_gate);
        #10


        a[15:2] = 0; b[15:2] = 0;
        $dumpvars (0, tb_and16_gate);
        #10
        
        a[15:2] = 0; b[15:2] = 1;
        $dumpvars (0, tb_and16_gate);
        #10

        a[15:2] = 1; b[15:2] = 0;
        $dumpvars (0, tb_and16_gate);
        #10

        a[15:2] = 1; b[15:2] = 1;
        $dumpvars (0, tb_and16_gate);
        #10

        $finish();

    end

endmodule

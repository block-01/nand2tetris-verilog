module nand_gate_tb();

    reg a;
    reg b;

    wire c;

    nand_gate uut(a,b,c);

    initial begin

        a = 0; b = 0;
        #10

        b = 0; b = 1;
        #10

        a = 1; b = 0;
        #10

        b = 1; b = 1;

        $finish();

    end

endmodule

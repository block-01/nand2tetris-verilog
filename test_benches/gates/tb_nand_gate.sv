`include "hack/gates/and_gate.v"
`include "hack/gates/not_gate.v"

module tb_nand_gate();

    reg a;
    reg b;

    wire out;


    nand_gate uut(
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        $dumpfile("nand-waveform.vcd");

        a = 0; b = 0;
        $dumpvars(0, tb_nand_gate);
        #10
        
        a = 0; b = 1;
        $dumpvars(0, tb_nand_gate);
        #10

        a = 1; b = 0;
        $dumpvars(0, tb_nand_gate);
        #10

        a = 1; b = 1;
        $dumpvars(0, tb_nand_gate);
        #10

        $finish();
    end

endmodule
`include "hack/gates/basic/nand_gate.sv"

`ifndef nand16_gate_sv
`define nand16_gate_sv
module nand16_gate(
    input wire [15:0] a,      // Input wire A[i].
    input wire [15:0] b,      // Input wire B[i].

    output wire [15:0] out    // Output wire of ¬(A[i]^B[i])
);

    nand_gate nand_out0(
        .out(out[0]),
        .a(a[0]),
        .b(b[0])
    );

    nand_gate nand_out1(
        .out(out[1]),
        .a(a[1]),
        .b(b[1])
    );

    nand_gate nand_out2(
        .out(out[2]),
        .a(a[2]),
        .b(b[2])
    );

    nand_gate nand_out3(
        .out(out[3]),
        .a(a[3]),
        .b(b[3])
    );

    nand_gate nand_out4(
        .out(out[4]),
        .a(a[4]),
        .b(b[4])
    );

    nand_gate nand_out5(
        .out(out[5]),
        .a(a[5]),
        .b(b[5])
    );

    nand_gate nand_out6(
        .out(out[6]),
        .a(a[6]),
        .b(b[6])
    );

    nand_gate nand_out7(
        .out(out[7]),
        .a(a[7]),
        .b(b[7])
    );

    nand_gate nand_out8(
        .out(out[8]),
        .a(a[8]),
        .b(b[8])
    );

    nand_gate nand_out9(
        .out(out[9]),
        .a(a[9]),
        .b(b[9])
    );

    nand_gate nand_out10(
        .out(out[10]),
        .a(a[10]),
        .b(b[10])
    );

    nand_gate nand_out11(
        .out(out[11]),
        .a(a[11]),
        .b(b[11])
    );

    nand_gate nand_out12(
        .out(out[12]),
        .a(a[12]),
        .b(b[12])
    );

    nand_gate nand_out13(
        .out(out[13]),
        .a(a[13]),
        .b(b[13])
    );

    nand_gate nand_out14(
        .out(out[14]),
        .a(a[14]),
        .b(b[14])
    );

    nand_gate nand_out15(
        .out(out[15]),
        .a(a[15]),
        .b(b[15])
    );

endmodule
`endif

`include "hack/gates/basic/nor_gate.sv"

`ifndef nor16_gate_sv
`define nor16_gate_sv
module nor16_gate(
    input wire [15:0] a,       // Input wire of A[i].
    input wire [15:0] b,       // Input wire of B[i].

    output wire [15:0] out     // Output wire for ¬(A[i]∨B[i]).
);

    nor_gate nor_out0(
        .out(out[0]),
        .a(a[0]),
        .b(b[0])
    );

    nor_gate nor_out1(
        .out(out[1]),
        .a(a[1]),
        .b(b[1])
    );

    nor_gate nor_out2(
        .out(out[2]),
        .a(a[2]),
        .b(b[2])
    );

    nor_gate nor_out3(
        .out(out[3]),
        .a(a[3]),
        .b(b[3])
    );

    nor_gate nor_out4(
        .out(out[4]),
        .a(a[4]),
        .b(b[4])
    );

    nor_gate nor_out5(
        .out(out[5]),
        .a(a[5]),
        .b(b[5])
    );

    nor_gate nor_out6(
        .out(out[6]),
        .a(a[6]),
        .b(b[6])
    );

    nor_gate nor_out7(
        .out(out[7]),
        .a(a[7]),
        .b(b[7])
    );

    nor_gate nor_out8(
        .out(out[8]),
        .a(a[8]),
        .b(b[8])
    );

    nor_gate nor_out9(
        .out(out[9]),
        .a(a[9]),
        .b(b[9])
    );

    nor_gate nor_out10(
        .out(out[10]),
        .a(a[10]),
        .b(b[10])
    );

    nor_gate nor_out11(
        .out(out[11]),
        .a(a[11]),
        .b(b[11])
    );

    nor_gate nor_out12(
        .out(out[12]),
        .a(a[12]),
        .b(b[12])
    );

    nor_gate nor_out13(
        .out(out[13]),
        .a(a[13]),
        .b(b[13])
    );

    nor_gate nor_out14(
        .out(out[14]),
        .a(a[14]),
        .b(b[14])
    );

    nor_gate nor_out15(
        .out(out[15]),
        .a(a[15]),
        .b(b[15])
    );

endmodule
`endif

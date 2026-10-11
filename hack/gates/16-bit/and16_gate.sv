`include "hack/gates/basic/and_gate.sv"

`ifndef and16_gate_sv
`define and16_gate_sv
module and16_gate(
    input wire [15:0] a,      // Input wire A[i].
    input wire [15:0] b,      // Input wire B[i].

    output wire [15:0] out    // Output wire of A[i]^B[i]
);

    and_gate and_out0(
        .out(out[0]),
        .a(a[0]),
        .b(b[0])
    );

    and_gate and_out1(
        .out(out[1]),
        .a(a[1]),
        .b(b[1])
    );

    and_gate and_out2(
        .out(out[2]),
        .a(a[2]),
        .b(b[2])
    );

    and_gate and_out3(
        .out(out[3]),
        .a(a[3]),
        .b(b[3])
    );

    and_gate and_out4(
        .out(out[4]),
        .a(a[4]),
        .b(b[4])
    );

    and_gate and_out5(
        .out(out[5]),
        .a(a[5]),
        .b(b[5])
    );

    and_gate and_out6(
        .out(out[6]),
        .a(a[6]),
        .b(b[6])
    );

    and_gate and_out7(
        .out(out[7]),
        .a(a[7]),
        .b(b[7])
    );

    and_gate and_out8(
        .out(out[8]),
        .a(a[8]),
        .b(b[8])
    );

    and_gate and_out9(
        .out(out[9]),
        .a(a[9]),
        .b(b[9])
    );

    and_gate and_out10(
        .out(out[10]),
        .a(a[10]),
        .b(b[10])
    );

    and_gate and_out11(
        .out(out[11]),
        .a(a[11]),
        .b(b[11])
    );

    and_gate and_out12(
        .out(out[12]),
        .a(a[12]),
        .b(b[12])
    );

    and_gate and_out13(
        .out(out[13]),
        .a(a[13]),
        .b(b[13])
    );

    and_gate and_out14(
        .out(out[14]),
        .a(a[14]),
        .b(b[14])
    );

    and_gate and_out15(
        .out(out[15]),
        .a(a[15]),
        .b(b[15])
    );

endmodule
`endif

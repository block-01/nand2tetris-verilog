`include "hack/gates/basic/mux_gate.sv"

`ifndef mux16_gate_sv
`define mux16_gate_sv
module mux16_gate(
    input wire [15:0] a,        // Input wire for A[i].
    input wire [15:0] b,        // Input wire for B[i].
    input wire select,          // Input wire for Select.

    output wire [15:0] out      // Output wire of (A[i]^¬Sel)∨(B[i]^Sel)
);

    mux_gate mux_out0(
        .out(out[0]),
        .select(select),
        .a(a[0]),
        .b(b[0])
    );

    mux_gate mux_out1(
        .out(out[1]),
        .select(select),
        .a(a[1]),
        .b(b[1])
    );

    mux_gate mux_out2(
        .out(out[2]),
        .select(select),
        .a(a[2]),
        .b(b[2])
    );

    mux_gate mux_out3(
        .out(out[3]),
        .select(select),
        .a(a[3]),
        .b(b[3])
    );

    mux_gate mux_out4(
        .out(out[4]),
        .select(select),
        .a(a[4]),
        .b(b[4])
    );

    mux_gate mux_out5(
        .out(out[5]),
        .select(select),
        .a(a[5]),
        .b(b[5])
    );

    mux_gate mux_out6(
        .out(out[6]),
        .select(select),
        .a(a[6]),
        .b(b[6])
    );

    mux_gate mux_out7(
        .out(out[7]),
        .select(select),
        .a(a[7]),
        .b(b[7])
    );

    mux_gate mux_out8(
        .out(out[8]),
        .select(select),
        .a(a[8]),
        .b(b[8])
    );

    mux_gate mux_out9(
        .out(out[9]),
        .select(select),
        .a(a[9]),
        .b(b[9])
    );

    mux_gate mux_out10(
        .out(out[10]),
        .select(select),
        .a(a[10]),
        .b(b[10])
    );

    mux_gate mux_out11(
        .out(out[11]),
        .select(select),
        .a(a[11]),
        .b(b[11])
    );

    mux_gate mux_out12(
        .out(out[12]),
        .select(select),
        .a(a[12]),
        .b(b[12])
    );

    mux_gate mux_out13(
        .out(out[13]),
        .select(select),
        .a(a[13]),
        .b(b[13])
    );

    mux_gate mux_out14(
        .out(out[14]),
        .select(select),
        .a(a[14]),
        .b(b[14])
    );

    mux_gate mux_out15(
        .out(out[15]),
        .select(select),
        .a(a[15]),
        .b(b[15])
    );

endmodule
`endif

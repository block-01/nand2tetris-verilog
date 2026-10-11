`include "hack/gates/16-bit/mux16_gate.sv"
`include "hack/gates/multi-way/mux16_4way_gate.sv"

`ifndef mux16_8way_gate_sv
`define mux16_8way_gate_sv
module mux16_8way_gate(
    input wire [15:0] a,        // Input wire of A[15:0].
    input wire [15:0] b,        // Input wire of B[15:0].
    input wire [15:0] c,        // Input wire of C[15:0].
    input wire [15:0] d,        // Input wire of D[15:0].
    input wire [15:0] e,        // Input wire of E[15:0].
    input wire [15:0] f,        // Input wire of F[15:0].
    input wire [15:0] g,        // Input wire of G[15:0].
    input wire [15:0] h,        // Input wire of H[15:0].

    input wire select0,         // TODO: Add Documentation when less eppy.
    input wire select1,         // TODO: Add Documentation when less eppy.
    input wire select2,         // TODO: Add Documentation when less eppy.

    output wire [15:0] out      // TODO: Add Documentation when less eppy.
);


    wire [15:0] mux_a_b_c_d;
    mux16_4way_gate mux_a_b_c_d_out (
        .out(mux_a_b_c_d),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .select0(select0),
        .select1(select1)
    );

    wire [15:0] mux_e_f_g_h;
    mux16_4way_gate mux_e_f_g_h_out (
        .out(mux_e_f_g_h),
        .a(e),
        .b(f),
        .c(g),
        .d(h),
        .select0(select0),
        .select1(select1)
    );

    mux16_gate mux_out (
        .out(out),
        .a(mux_a_b_c_d),
        .b(mux_e_f_g_h),
        .select(select2)
    );

endmodule
`endif 

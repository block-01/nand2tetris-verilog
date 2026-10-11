`include "hack/gates/16-bit/mux16_gate.sv"

`ifndef mux16_4way_gate_sv
`define mux16_4way_gate_sv
module mux16_4way_gate(
    input wire [15:0] a,        // Input wire of A[15:0].
    input wire [15:0] b,        // Input wire of B[15:0].
    input wire [15:0] c,        // Input wire of C[15:0].
    input wire [15:0] d,        // Input wire of D[15:0].

    input wire select0,         // TODO: Add Documentation when less eppy.
    input wire select1,         // TODO: Add Documentation when less eppy.

    output wire [15:0] out      // TODO: Add Documentation when less eppy.
);

    wire [15:0] a_mux_b;
    mux16_gate a_mux_b_out (
        .out(a_mux_b),
        .a(a),
        .b(b),
        .select(select0)
    );

    wire [15:0] c_mux_d;
    mux16_gate c_mux_d_out (
        .out(c_mux_d),
        .a(c),
        .b(d),
        .select(select0)
    );

    mux16_gate mux_out (
        .out(out),
        .a(a_mux_b),
        .b(c_mux_d),
        .select(select1)
    );

endmodule
`endif 

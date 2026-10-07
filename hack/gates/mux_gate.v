`include "hack/gates/and_gate.v"
`include "hack/gates/not_gate.v"
`include "hack/gates/or_gate.v"

`ifndef mux_gate_v
`define mux_gate_v
module mux_gate(
    input wire a,           // Input wire for A.
    input wire b,           // Input wire for B.
    input wire select,      // Input wire for Select.

    output wire out         // Output wire of (A^¬Sel)∨(B^Sel)
);
    
    not_gate not_select_out(
        .out(not_select_out),
        .in(select)
    );

    and_gate and_a_out(
        .out(and_a_out),
        .a(a),
        .b(not_select_out)
    );

    and_gate and_b_out(
        .out(and_b_out),
        .a(b),
        .b(select)
    );

    or_gate or_out(
        .out(out),
        .a(and_a_out),
        .b(and_b_out)
    );
    
endmodule
`endif

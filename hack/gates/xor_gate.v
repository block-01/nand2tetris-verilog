`include "hack/gates/not_gate.v"
`include "hack/gates/and_gate.v"
`include "hack/gates/or_gate.v"

`ifndef xor_gate_v
`define xor_gate_v
module xor_gate(
    input wire a,       // Input wire A.
    input wire b,       // Input wire B.

    output wire out     // Output wire of ∨(^(A,¬(B)),^(¬(A),B)).
);

    not_gate not_a_out(
        .out(not_a_out),
        .in(a)
    );

    not_gate not_b_out(
        .out(not_b_out),
        .in(b)
    );

    and_gate and_a_out(
        .out(and_a_out),
        .a(a),
        .b(not_b_out)
    );

    and_gate and_b_out(
        .out(and_b_out),
        .a(not_a_out),
        .b(b)
    );

    or_gate or_out(
        .out(out),
        .a(and_a_out),
        .b(and_b_out)
    );
    
endmodule
`endif
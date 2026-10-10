`include "hack/gates/or_gate.sv"
`include "hack/gates/not_gate.sv"

`ifndef nor_gate_sv
`define nor_gate_sv
module nor_gate(
    input wire a,       // Input wire of A.
    input wire b,       // Input wire of B.

    output wire out    // Output wire for ¬(A∨B).
);

    or_gate or_out(
        .out(or_out),
        .a(a),
        .b(b)
    );

    not_gate not_out(
        .out(out),
        .in(or_out)
    );

endmodule
`endif
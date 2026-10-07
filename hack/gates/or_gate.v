`ifndef or_gate_v
`define or_gate_v
module or_gate(
    input wire a,       // Input wire of A.
    input wire b,       // Input wire of B.

    output wire out     // Output wire of A∨B.
);

    assign out = a||b;

endmodule
`endif

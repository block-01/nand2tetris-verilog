`ifndef not_gate_v
`define not_gate_v
module not_gate(
    input wire in,     // Input wire A

    output wire out    // Output wire of ¬A
);

    assign out = !in;

endmodule
`endif

`ifndef not_gate_sv
`define not_gate_sv
module not_gate(
    input wire in,     // Input wire A

    output wire out    // Output wire of ¬A
);

    assign out = !in;

endmodule
`endif

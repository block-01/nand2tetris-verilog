`ifndef and_gate_v
`define and_gate_v
module and_gate(
    input wire a,      // Input wire A
    input wire b,      // Input wire B

    output wire out    // Output ^wire
    );

    assign  out = a&b;

endmodule
`endif

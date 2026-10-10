`ifndef and_gate_sv
`define and_gate_sv
module and_gate(
    input wire a,      // Input wire A
    input wire b,      // Input wire B

    output wire out    // Output ^wire
    );

    assign  out = a&b;

endmodule
`endif

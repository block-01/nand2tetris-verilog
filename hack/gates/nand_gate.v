`include "hack/gates/and_gate.v"
`include "hack/gates/not_gate.v"

`ifndef nand_gate_v
`define nand_gate_v
module nand_gate(
    input wire a,      // Input wire A
    input wire b,      // Input wire B

    output wire out    // Output wire of ¬(A^B)
);
    and_gate and_out(
        .out(and_out),
        .a(a),
        .b(b)
    );

    not_gate not_out(
        .out(out),
        .in(and_out)
    );

endmodule
`endif

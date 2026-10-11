`include "hack/gates/basic/and_gate.sv"
`include "hack/gates/basic/not_gate.sv"
`include "hack/gates/basic/or_gate.sv"

`ifndef demux_gate_sv
`define demux_gate_sv
module demux_gate(
    input wire in,          // Input wire for the demux (output of a mux_gate).
    input wire select,      // Input wire for Select.

    output wire a,          // Output wire of (IN^¬SEL).
    output wire b           // Output wire of (IN^SEL).
);
    
    not_gate not_select_out(
        .out(not_select_out),
        .in(select)
    );

    and_gate and_a_out(
        .out(a),
        .a(in),
        .b(not_select_out)
    );

    and_gate and_b_out(
        .out(b),
        .a(in),
        .b(select)
    );

endmodule
`endif

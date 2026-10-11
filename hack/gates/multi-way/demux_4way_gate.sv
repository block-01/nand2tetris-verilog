`include "hack/gates/basic/demux_gate.sv"

`ifndef demux_4way_gate_sv
`define demux_4way_gate_sv
module demux_4way_gate(
    input wire in,          // TODO: Add Documentation when less eppy.
    input wire select0,     // TODO: Add Documentation when less eppy.
    input wire select1,     // TODO: Add Documentation when less eppy.

    output wire a,          // TODO: Add Documentation when less eppy.
    output wire b,          // TODO: Add Documentation when less eppy.
    output wire c,          // TODO: Add Documentation when less eppy.
    output wire d           // TODO: Add Documentation when less eppy.
);

    wire demux_out0;
    wire demux_out1;
    demux_gate demux0_out(
        .a(demux_out0),
        .b(demux_out1),
        .select(select1),
        .in(in)
    );

    demux_gate demux1_out(
        .a(a),
        .b(b),
        .select(select0),
        .in(demux_out0)
    );

    demux_gate demux2_out(
        .a(c),
        .b(d),
        .select(select0),
        .in(demux_out1)
    );

endmodule
`endif

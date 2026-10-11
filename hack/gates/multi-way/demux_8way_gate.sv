`include "hack/gates/basic/demux_gate.sv"
`include "hack/gates/multi-way/demux_4way_gate.sv"

`ifndef demux_8way_gate_sv
`define demux_8way_gate_sv
module demux_8way_gate(
    input wire in,          // TODO: Add Documentation when less eppy.
    input wire select0,     // TODO: Add Documentation when less eppy.
    input wire select1,     // TODO: Add Documentation when less eppy.
    input wire select2,     // TODO: Add Documentation when less eppy.

    output wire a,          // TODO: Add Documentation when less eppy.
    output wire b,          // TODO: Add Documentation when less eppy.
    output wire c,          // TODO: Add Documentation when less eppy.
    output wire d,          // TODO: Add Documentation when less eppy.
    output wire e,          // TODO: Add Documentation when less eppy.
    output wire f,          // TODO: Add Documentation when less eppy.
    output wire g,          // TODO: Add Documentation when less eppy.
    output wire h           // TODO: Add Documentation when less eppy.
);

    wire demux_out0;
    wire demux_out1;

    demux_gate demux0_out(
        .a(demux_out0),
        .b(demux_out1),
        .select(select2),
        .in(in)
    );

    demux_4way_gate demux_4_way_0_out(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .in(demux_out0),
        .select0(select1),
        .select1(select2)
    );

    demux_4way_gate demux_4way_1_out(
        .a(e),
        .b(f),
        .c(g),
        .d(h),
        .in(demux_out1),
        .select0(select1),
        .select1(select2)
    );

endmodule
`endif

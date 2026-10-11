`include "hack/gates/basic/demux_gate.sv"

`ifndef demux16_gate_sv
`define demux16_gate_sv
module demux16_gate(
    input wire [15:0] in,          // Input wire for the demux (output of a mux_gate).
    input wire select,             // Input wire for Select.

    output wire [15:0] a,          // Output wire of (IN[i]^¬SEL).
    output wire [15:0] b           // Output wire of (IN[i]^SEL).
);
    
    demux_gate demux0(
        .a(a[0]),
        .b(b[0]),
        .in(in[0]),
        .select(select)
    );

    demux_gate demux1(
        .a(a[1]),
        .b(b[1]),
        .in(in[1]),
        .select(select)
    );

    demux_gate demux2(
        .a(a[2]),
        .b(b[2]),
        .in(in[2]),
        .select(select)
    );

    demux_gate demux3(
        .a(a[3]),
        .b(b[3]),
        .in(in[3]),
        .select(select)
    );

    demux_gate demux4(
        .a(a[4]),
        .b(b[4]),
        .in(in[4]),
        .select(select)
    );

    demux_gate demux5(
        .a(a[5]),
        .b(b[5]),
        .in(in[5]),
        .select(select)
    );

    demux_gate demux6(
        .a(a[6]),
        .b(b[6]),
        .in(in[6]),
        .select(select)
    );

    demux_gate demux7(
        .a(a[7]),
        .b(b[7]),
        .in(in[7]),
        .select(select)
    );

    demux_gate demux8(
        .a(a[8]),
        .b(b[8]),
        .in(in[8]),
        .select(select)
    );

    demux_gate demux9(
        .a(a[9]),
        .b(b[9]),
        .in(in[9]),
        .select(select)
    );

    demux_gate demux10(
        .a(a[10]),
        .b(b[10]),
        .in(in[10]),
        .select(select)
    );

    demux_gate demux11(
        .a(a[11]),
        .b(b[11]),
        .in(in[11]),
        .select(select)
    );

    demux_gate demux12(
        .a(a[12]),
        .b(b[12]),
        .in(in[12]),
        .select(select)
    );

    demux_gate demux13(
        .a(a[13]),
        .b(b[13]),
        .in(in[13]),
        .select(select)
    );

    demux_gate demux14(
        .a(a[14]),
        .b(b[14]),
        .in(in[14]),
        .select(select)
    );

    demux_gate demux15(
        .a(a[15]),
        .b(b[15]),
        .in(in[15]),
        .select(select)
    );

endmodule
`endif

`include "hack/gates/basic/or_gate.sv"

`ifndef or8way_gate_sv
`define or8way_gate_sv
module or8way_gate(
    input wire [7:0] in,        // TODO: Add Documentation when less eppy.

    output wire out             // TODO: Add Documentation when less eppy.
);
    or_gate a_or_b(
        .a(in[0]),
        .b(in[1]),
        .out(a_or_b)
    );


    or_gate c_or_d(
        .a(in[2]),
        .b(in[3]),
        .out(c_or_d)
    );


    or_gate e_or_f(
        .a(in[4]),
        .b(in[5]),
        .out(e_or_f)
    );

    or_gate g_or_h(
        .a(in[6]),
        .b(in[7]),
        .out(g_or_h)
    );

    // wire ;
    or_gate ab_or_cd(
        .a(a_or_b),
        .b(c_or_d),
        .out(ab_or_cd)
    );

    // wire ;
    or_gate ef_or_gh(
        .a(e_or_f),
        .b(g_or_h),
        .out(ef_or_gh)
    );


    or_gate or_out(
        .a(ab_or_cd),
        .b(ef_or_gh),
        .out(out)
    );

endmodule
`endif

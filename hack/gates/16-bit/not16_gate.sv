`include "hack/gates/basic/not_gate.sv"

`ifndef not16_gate_sv
`define not16_gate_sv
module not16_gate(
    input wire [15:0] in,       // Input wire of IN[i].

    output wire [15:0] out      // Output wire of ¬IN[i].
);

        not_gate not16_out0(
            .out(out[0]),
            .in(in[0])
        );

        not_gate not16_out1(
            .out(out[1]),
            .in(in[1])
        );

        not_gate not16_out2(
            .out(out[2] ),
            .in(in[2])
        );

        not_gate not16_out3(
            .out(out[3]),
            .in(in[3])
        );

        not_gate not16_out4(
            .out(out[4]),
            .in(in[4])
        );

        not_gate not16_out5(
            .out(out[5]),
            .in(in[5])
        );

        not_gate not16_out6(
            .out(out[6]),
            .in(in[6])
        );

        not_gate not16_out7(
            .out(out[7]),
            .in(in[7])
        );

        not_gate not16_out8(
            .out(out[8]),
            .in(in[8])
        );

        not_gate not16_out9(
            .out(out[9]),
            .in(in[9])
        );

        not_gate not16_out10(
            .out(out[10]),
            .in(in[10])
        );

        not_gate not16_out11(
            .out(out[11]),
            .in(in[11])
        );

        not_gate not16_out12(
            .out(out[12]),
            .in(in[12])
        );

        not_gate not16_out13(
            .out(out[13]),
            .in(in[13])
        );

        not_gate not16_out14(
            .out(out[14]),
            .in(in[14])
        );

        not_gate not16_out15(
            .out(out[15]),
            .in(in[15])
        );

endmodule
`endif

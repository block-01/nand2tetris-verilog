`ifndef alu_sv
`define alu_sv

module alu(
    input wire [15:0] a,            // 16-bit input A.
    input wire [15:0] b,            // 16-bit input B.
    input wire clk,                 // The current clock value of the CPU.
    input wire [5:0] op_code,       // 6 Bit OP Code for controlling the function of the ALU.
                                    /*

                                        *-------*-------------*---*---*---*---*---*---*
                                        | INDEX | INSTRUCTION | 5 | 4 | 3 | 2 | 1 | 0 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   0   |             | 1 | 0 | 1 | 0 | 1 | 0 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   1   |             | 1 | 1 | 1 | 1 | 1 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   2   |             | 1 | 1 | 1 | 0 | 1 | 0 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   3   |             | 0 | 0 | 1 | 1 | 0 | 0 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   4   |             | 1 | 1 | 0 | 0 | 0 | 0 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   5   |             | 0 | 0 | 1 | 1 | 0 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   6   |             | 1 | 1 | 0 | 0 | 0 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   7   |             | 0 | 0 | 1 | 1 | 1 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   8   |             | 1 | 1 | 0 | 0 | 1 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   9   |             | 0 | 1 | 1 | 1 | 1 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   10  |             | 1 | 1 | 0 | 1 | 1 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   11  |             | 0 | 0 | 1 | 1 | 0 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   12  |             | 1 | 1 | 0 | 0 | 0 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   13  |             | 0 | 0 | 0 | 0 | 1 | 0 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   14  |             | 0 | 1 | 0 | 0 | 1 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   15  |             | 0 | 0 | 0 | 1 | 1 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   16  |             | 0 | 0 | 0 | 0 | 0 | 0 |
                                        *-------*-------------*---*---*---*---*---*---*
                                        |   17  |             | 0 | 1 | 0 | 1 | 0 | 1 |
                                        *-------*-------------*---*---*---*---*---*---*
                                    */

    output wire [15:0] out,         // Output of the ALU.
    output wire zr,                 // Is 1 if OUT is 0.
    output wire ng                  // Is 1 if OUT has logically shifted left of 0.
);
    reg [15:0] out_temp;
    reg zr_temp;
    reg ng_temp;

    wire [15:0] out_a_not;
    not16_gate a_not16(
        .in(a),
        .out(out_a_not)
    );

    wire [15:0] out_b_not;
    not16_gate b_not16(
        .in(b),
        .out(out_b_not)
    );

    always @(posedge clk)
        begin
            case (op_code)
                6'b101010: out_temp <= 16'b0000000000000000;
                6'b111111: out_temp <= 16'b1111111111111111;
                6'b111010: out_temp <= -1'b1;
                6'b001100: out_temp <= a;
                6'b110000: out_temp <= b;
                6'b001101: out_temp <= out_a_not;
                6'b110001: out_temp <= out_b_not;
                6'b001111: out_temp <= -a;
                6'b110011: out_temp <= -b;
                6'b011111: out_temp <= a + 16'b0000000000000001;
                6'b110111: out_temp <= b + 16'b0000000000000001;
                6'b001110: out_temp <= a - 16'b0000000000000001;
                6'b110010: out_temp <= b - 16'b0000000000000001;
                6'b000010: out_temp <= a + b;
                6'b010011: out_temp <= a - b;
                6'b000111: out_temp <= b - a;
                6'b000000: out_temp <= a & b;
                6'b010101: out_temp <= a | b;
                default: out_temp <= 16'b0000000000000000;
            endcase

            if (out_temp == 16'b000000000000000) begin
                zr_temp <= 1;
            end else begin
                zr_temp <= 0;
            end

            if (out_temp << 16'b0000000000000000) begin
                ng_temp <= 1;
            end else begin
                ng_temp <= 0;
            end
        end

    assign out = out_temp;
    assign zr = zr_temp;
    assign ng = ng_temp;

endmodule
`endif

module not16_gate(
    input wire [15:0] in,       // Input wire of IN[i].

    output wire [15:0] out      // Output wire of ¬IN[i].
);

        assign out[0]= !in[0];
        assign out[1]= !in[1];
        assign out[2]= !in[2];
        assign out[3]= !in[3];
        assign out[4]= !in[4];
        assign out[5]= !in[5];
        assign out[6]= !in[6];
        assign out[7]= !in[7];
        assign out[8]= !in[8];
        assign out[9]= !in[9];
        assign out[10]= !in[10];
        assign out[11]= !in[11];
        assign out[12]= !in[12];
        assign out[13]= !in[13];
        assign out[14]= !in[14];
        assign out[15]= !in[15];

endmodule

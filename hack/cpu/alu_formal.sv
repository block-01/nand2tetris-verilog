`include "alu.sv"

module alu_formal(
input wire [15:0] a,
input wire [15:0] b,
input wire [5:0] op_code,
output wire [15:0] out,
output wire zr,
output wire ng
);

    alu alu(
        .a(a),
        .b(b),
        .op_code(op_code),
        .out(out),
        .zr(zr),
        .ng(ng)
    );

    always @(*) begin
        a = 16'b1111111111111111;
        b = 16'b0001111000100101;

        op_code = 6'b010101;
        assert(out == a&b);
        assert(out != a-b);
        assert(out != b-a);
        assert(out != a+b);
        assert(out != !a);
        assert(out != !b);

    end

endmodule

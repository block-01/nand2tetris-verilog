`include "hack/cpu/alu.sv"
`include "hack/cpu/pc.sv"

`ifndef cpu_sv
`define cpu_sv
module cpu(
    input wire [15:0] instruction_bus,
    input wire [15:0] data_bus_in,
    input wire reset,
    input wire clk,

    output wire [15:0] data_bus_out,
    output wire write_to_memory,
    output wire [14:0] data_address_bus_out,
    output wire [14:0] instruction_address_bus_out
);
    wire [14:0] pc_value;
    reg [2:0] pc_opcode;

    wire zr_out;
    wire ng_out;

    wire [15:0] alu_out;
    reg [15:0] alu_a_input;
    reg [15:0] alu_b_input;

    wire [15:0] d_register_out;
    reg [15:0] d_register_in;
    reg [2:0] d_register_opcode;

    wire [15:0] a_register_out;
    reg [15:0] a_register_in;
    reg [2:0] a_register_opcode;

    register d_register (
        .in(d_register_in),
        .clk(clk),
        .op_code(d_register_opcode),
        .out(d_register_out)
    );

    register a_register (
        .in(a_register_in),
        .clk(clk),
        .op_code(2'b10),
        .out(a_register_out)
    );

    pc pc(
        .in(a_register_out),
        .out(pc_value),
        .clk(clk),
        .op_code(pc_opcode)
    );

    alu alu (
        .a(alu_a_input), // Comes from D Register
        .b(alu_b_input), // Comes from either A Register or the Data Bus
        .clk(clk),
        .op_code(instruction_bus[9:5]),
        .out(alu_out), // The ALUs output gets saved to D register and used as INPUT A and is also sent to the mux for A register and outputted to the Data Bus.
        .zr(zr_out),
        .ng(ng_out)
    );

    always @(posedge clk) begin

        case (instruction_bus[15])
            1'b0: a_register_in <= d_register_out;
            1'b1: a_register_in <= instruction_bus;
        endcase

        case(reset)
            1'b0: pc_opcode <= 3'b100;
            1'b1: pc_opcode <= 3'b001;
        endcase

        case(instruction_bus[12])
            0: alu_b_input <= a_register_out;
            1: alu_b_input <= data_bus_in;
        endcase

        d_register_opcode <= 2'b10;

        alu_a_input <= d_register_out;
        alu_b_input <= alu_b_input;

        d_register_in <= alu_out;
        d_register_opcode <= 2'b01;
    end

    assign write_to_memory = instruction_bus[3]&instruction_bus[15];
    assign data_bus_out = alu_out;
    assign data_address_bus_out = a_register_out;
    assign instruction_address_bus_out = pc_value;

endmodule
`endif

module register(
    input wire [1:0] op_code,
    input wire [15:0] in,
    input wire clk,

    output wire [15:0] out
);

    reg [0:0] register_contents [15:0];
    reg [15:0] out_temp;

    always @(posedge clk) begin
        case (op_code)
            2'b01: register_contents[0] <= in;
            2'b10: out_temp <= register_contents[0];
        endcase
    end

    assign out = out_temp;

endmodule

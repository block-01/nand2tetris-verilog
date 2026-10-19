`ifndef ram_sv
`define ram_sv

module ram(
    input wire [15:0] in,                         // The 16-bit value to be saved to RAM.
    input wire [13:0] address,                    // The location to either read or write to within the RAM.
    input wire [1:0] op_code,                    // If data should be loaded into RAM or not.
    input wire clk,                               // The current clock value of the CPU.

    output wire [15:0] out                        // The contents of the RAM when it is read from otherwise 16'0000000000000000.
);
    reg [15:0] out_temp;
    reg [15:0] mem [15999:0];

    always @(posedge clk) begin

        case(op_code)
            2'b01: mem[address - 1] <= in;
            2'b10: out_temp <= mem[address];
        endcase
    end

    assign out = op_code == 2'b10 ? out_temp : 'hz;

endmodule
`endif

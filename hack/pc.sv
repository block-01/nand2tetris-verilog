`ifndef pc_sv
`define pc_sv

module pc(
    input wire [15:0] in,            // The Current value of the Program Counter.
    input wire [2:0] op_code,        // The Operational Functions of the Program Counter.
    input wire clk,                  // The current clock value of the CPU.

    output wire [15:0] out           // The Output of the Program Counter
);
    reg [15:0] out_temp;

    always @(posedge clk)
        begin

            case (op_code)
                3'b001: out_temp <= 16'b0000000000000000;           // Reset the Program Counter to 0 if bit 0 of OP_CODE is high.                                  | RESET
                3'b010: out_temp <= in;                             // Return the current value of the Program Counter if bit 1 of OP_CODE is high.                 | LOAD
                3'b100: out_temp <= in + 16'b0000000000000001;      // Increment the current value of the Program Counter by 1 if bit 2 of the OP_CODE is high.     | INCREMENT
            endcase
        end

    assign out = out_temp;

endmodule
`endif

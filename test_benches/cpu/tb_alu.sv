module tb_alu();
    reg [15:0] a;
    reg [15:0] b;
    reg [5:0] op_code;
    wire [15:0] out;
    wire zr;
    wire ng;

    alu alu(
        .a(a),
        .b(b),
        .op_code(op_code),
        .out(out),
        .zr(zr),
        .ng(ng)
    );

    initial begin

        $dumpfile("build/cpu/waveforms/alu-waveform.vcd");
        $dumpvars(0, tb_alu);

        a = 16'b0000000000000000;
        b = 16'b1111111111111111;

        op_code = 6'b101010;
        #10;
        if (out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0) begin
            $display("alu(0000000000000000,1111111111111111,101010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b111111;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,111111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b111010;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,111010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b001100;
        #10;
        if (out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0) begin
            $display("alu(0000000000000000,1111111111111111,001100) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110000;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,110000) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b001101;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,001101) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110001;
        #10;
        if (out == 16'b000000000000000 && zr == 1'b1 && ng == 1'b0) begin
            $display("alu(0000000000000000,1111111111111111,110001) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b001111;
        #10;
        if (out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0) begin
            $display("alu(0000000000000000,1111111111111111,001111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110011;
        #10;
        if (out == 16'b0000000000000001 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,110011) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b011111;
        #10;
        if (out == 16'b0000000000000001 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,011111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110111;
        #10;
        if (out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0) begin
            $display("alu(0000000000000000,1111111111111111,110111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b001110;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,001110) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110010;
        #10;
        if (out == 16'b1111111111111110 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,110010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b000010;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,000010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b010011;
        #10;
        if (out == 16'b0000000000000001 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,010011) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b000111;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,000111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b000000;
        #10;
        if (out == 16'b000000000000000 && zr == 1'b1 && ng == 1'b0) begin
            $display("alu(0000000000000000,1111111111111111,000000) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b010101;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000000000,1111111111111111,010101) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 16'b000000000010001;
        b = 16'b000000000000011;

        op_code = 6'b101010;
        #10;
        if (out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0) begin
            $display("alu(0000000000010001,0000000000000011,101010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b111111;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,111111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b111010;
        #10;
        if (out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,111010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b001100;
        #10;
        if (out == 16'b0000000000010001 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,001100) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110000;
        #10;
        if (out == 16'b0000000000000011 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,110000) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b001101;
        #10;
        if (out == 16'b1111111111101110 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,001101) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110001;
        #10;
        if (out == 16'b1111111111111100 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,110001) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b001111;
        #10;
        if (out == 16'b1111111111101111 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,001111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110011;
        #10;
        if (out == 16'b1111111111111101 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,110011) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b011111;
        #10;
        if (out == 16'b0000000000010010 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,011111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110111;
        #10;
        if (out == 16'b0000000000000100 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,110111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b001110;
        #10;
        if (out == 16'b0000000000010000 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,001110) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b110010;
        #10;
        if (out == 16'b0000000000000010 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,110010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b000010;
        #10;
        if (out == 16'b0000000000010100 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,000010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b010011;
        #10;
        if (out == 16'b0000000000001110 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,010011) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b000111;
        #10;
        if (out == 16'b1111111111110010 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,000111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b000000;
        #10;
        if (out == 16'b0000000000000001 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,000000) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        op_code = 6'b010101;
        #10;
        if (out == 16'b0000000000010011 && zr == 1'b0 && ng == 1'b1) begin
            $display("alu(0000000000010001,0000000000000011,010101) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end
    end

endmodule

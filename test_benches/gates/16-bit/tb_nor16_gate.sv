module tb_nor16_gate();
    reg [15:0] a;
    reg [15:0] b;

    wire [15:0] out;

    nor16_gate uut(
        .out(out),
        .a(a),
        .b(b)
    );

    initial begin
        $dumpfile("build/gates/16-bit/waveforms/nor16-waveform.vcd");
        $dumpvars(0, tb_nor16_gate);

        a = 16'b0101010101010101;
        b = 16'b1010101010101010;
        #10

        if (out == 16'b0000000000000000) begin
            $display("nor16(0101010101010101,1010101010101010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b1010101010101010;
        b = 16'b0101010101010101;
        #10

        if (out == 16'b0000000000000000) begin
            $display("nor16(1010101010101010,0101010101010101) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b1100110011001100;
        b = 16'b0011001100110011;
        #10

        if (out == 16'b0000000000000000) begin
            $display("nor16(1100110011001100,0011001100110011) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b0011001100110011;
        b = 16'b1100110011001100;
        #10

        if (out == 16'b0000000000000000) begin
            $display("nor16(0011001100110011,1100110011001100) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b1111111111111111;
        b = 16'b0000000000000000;
        #10

        if (out == 16'b0000000000000000) begin
            $display("nor16(1111111111111111,0000000000000000) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b0000000000000000;
        b = 16'b1111111111111111;
        #10

        if (out == 16'b0000000000000000) begin
            $display("nor16(0000000000000000,1111111111111111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b0000000000000000;
        b = 16'b1111111111111111;
        #10

        if (out == 16'b0000000000000000) begin
            $display("nor16(0000000000000000,1111111111111111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b0000101010101101;
        b = 16'b0000000000000000;
        #10


        if (out == 16'b1111010101010010) begin
            $display("nor16(0000101010101101,0000000000000000) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b0000101010101101;
        b = 16'b1010101011100100;
        #10

        if (out == 16'b0101010100010010) begin
            $display("nor16(0000101010101101,1010101011100100) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end
endmodule

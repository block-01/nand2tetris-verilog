module tb_not16_gate();
    reg [15:0] in;

    wire [15:0] out;

    not16_gate uut(
        .out(out),
        .in(in)
    );

    initial begin
        $dumpfile("build/gates/16-bit/waveforms/not16-waveform.vcd");
        $dumpvars(0, tb_not16_gate);

        in = 16'b0101010101010101;
        #10

        if (out == 16'b1010101010101010) begin
            $display("not16(0101010101010101) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 16'b1010101010101010;
        #10

        if (out == 16'b0101010101010101) begin
            $display("not16(1010101010101010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 16'b1100110011001100;
        #10

        if (out == 16'b0011001100110011) begin
            $display("not16(1100110011001100) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 16'b0011001100110011;
        #10

        if (out == 16'b1100110011001100) begin
            $display("not16(0011001100110011) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 16'b1111111111111111;
        #10

        if (out == 16'b0000000000000000) begin
            $display("not16(1111111111111111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 16'b0000000000000000;
        #10

        if (out == 16'b1111111111111111) begin
            $display("not16(0000000000000000) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end
endmodule

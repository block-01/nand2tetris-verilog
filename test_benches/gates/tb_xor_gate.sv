module tb_xor_gate();

    reg a;
    reg b;

    wire out;

    xor_gate uut(
            .a(a),
            .b(b),
            .out(out)
        );

    initial begin

        $dumpfile("xor-waveform.vcd");

        a = 0;
        b = 0;
        #10
        if (out == 0) begin
            $display("xor(0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1;
        b = 1;
        #10
        if (out == 0) begin
            $display("xor(1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1;
        b = 0;
        #10
        if (out == 1) begin
            $display("xor(1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 0;
        b = 1;
        #10
        if (out == 1) begin
            $display("xor(0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule
module tb_or_gate();

    reg a;
    reg b;

    wire out;

    or_gate uut(
            .a(a),
            .b(b),
            .out(out)
        );

    initial begin

        $dumpfile("or-waveform.vcd");

        a = 0;
        b = 0;
        #10
        if (out == 0) begin
            $display("and(0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1;
        b = 1;
        #10
        if (out == 1) begin
            $display("or(1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1;
        b = 0;
        #10
        if (out == 1) begin
            $display("or(1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 0;
        b = 1;
        #10
        if (out == 1) begin
            $display("or(0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule
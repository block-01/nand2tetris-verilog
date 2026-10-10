module tb_mux_gate();

    reg a;
    reg b;
    reg select;

    wire out;


    mux_gate uut(
        .a(a),
        .b(b),
        .select(select),
        .out(out)
    );

    initial begin
        $dumpfile("mux-waveform.vcd");

        a = 0; b = 0; select = 0;
        #10
        if (out == 0) begin
            $display("mux(0,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 0; b = 0; select = 1;
        #10
        if (out == 0) begin
            $display("mux(0,0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 0; b = 1; select = 0;
        #10
        if (out == 0) begin
            $display("mux(0,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 0; b = 1; select = 1;
        #10
        if (out == 1) begin
            $display("mux(0,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1; b = 0; select = 0;
        #10
        if (out == 1) begin
            $display("mux(1,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1; b = 0; select = 1;
        #10
        if (out == 0) begin
            $display("mux(1,0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1; b = 1; select = 0;
        #10
        if (out == 1) begin
            $display("mux(1,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1; b = 1; select = 1;
        #10
        if (out == 1) begin
            $display("mux(1,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule
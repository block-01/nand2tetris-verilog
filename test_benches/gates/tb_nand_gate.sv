module tb_nand_gate();

    reg a;
    reg b;

    wire out;


    nand_gate uut(
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        $dumpfile("nand-waveform.vcd");

        a = 0; b = 0;
        #10
        if (out == 1) begin
            $display("nand(0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end
        
        a = 0; b = 1;
        #10
        if (out == 1) begin
            $display("nand(0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1; b = 0;
        #10
        if (out == 1) begin
            $display("nand(1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        a = 1; b = 1;
        #10
        if (out == 0) begin
            $display("nand(1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule
module tb_or8way_gate();
    reg [7:0] in;
    
    wire out;

    or8way_gate uut(
        .out(out),
        .in(in)
    );

    initial begin
        $dumpfile("build/gates/multi-way/waveforms/or8way-waveform.vcd");
        $dumpvars(0, tb_or8way_gate);

        in = 8'b00000000;
        #10

        if (out == 0) begin
            $display("or8way(00000000) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 8'b10101010;
        #10

        if (out == 1) begin
            $display("or8way(10101010) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 8'b11111111;
        #10

        if (out == 1) begin
            $display("or8way(11111111) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 8'b00000001;
        #10

        if (out == 1) begin
            $display("or8way(00000001) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule

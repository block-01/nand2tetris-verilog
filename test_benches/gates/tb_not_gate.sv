module tb_not_gate ();

    reg in;
    wire out;

    not_gate uut(in,out);

    initial begin
        $dumpfile("not-waveform.vcd");

        in = 0;
        #10
        if (out == 1) begin
            $display("not(0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        in = 1;
        #10
        if (out == 0) begin
            $display("not(1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end
    
endmodule
module tb_mux16_gate();

    reg [15:0] a;
    reg [15:0] b;
    reg select;

    wire [15:0] out;


    mux16_gate uut(
        .a(a),
        .b(b),
        .select(select),
        .out(out)
    );

    initial begin
        $dumpfile("build/gates/16-bit/waveforms/mux16-waveform.vcd");
        $dumpvars(0, tb_mux16_gate);

        a = 16'b0000000000000000;
        b = 16'b1111111111111111;
        select = 0;
        #10
        if (out == 16'b0000000000000000) begin
            $display("mux16(0000000000000000,1111111111111111,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        a = 16'b0000000000000000; b = 16'b1111111111111111; select = 1;
        #10
        if (out == 16'b1111111111111111) begin
            $display("mux16(0000000000000000,1111111111111111,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule

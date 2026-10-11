module tb_demux16_gate();
    
    reg [15:0] in;
    reg select;

    wire [15:0] a;
    wire [15:0] b;

    demux16_gate uut(
        .a(a),
        .b(b),
        .in(in),
        .select(select)
    );

    initial begin
        $dumpfile("build/gates/16-bit/waveforms/demux16-waveform.vcd");
        $dumpvars(0, tb_demux16_gate);

        in = 16'b0000000000000000;
        select = 0;
        #10

        if (a == 16'b0000000000000000 && b == 16'b0000000000000000) begin
            $display("demux16(0000000000000000,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 16'b1111111111111111;
        select = 0;
        #10

        if (a == 16'b1111111111111111 && b == 16'b0000000000000000) begin
            $display("demux16(1111111111111111,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 16'b0000000000000000;
        select = 1;
        #10

        if (a == 16'b0000000000000000 && b == 16'b0000000000000000) begin
            $display("demux16(0000000000000000,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 16'b1111111111111111;
        select = 1;
        #10

        if (a == 16'b0000000000000000 && b == 16'b1111111111111111) begin
            $display("demux16(1111111111111111,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end  
        $finish();
    end

endmodule

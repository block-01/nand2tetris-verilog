module tb_mux16_4way_gate();

    reg [15:0] a;
    reg [15:0] b;
    reg [15:0] c;
    reg [15:0] d;
    reg select0;
    reg select1;

    wire [15:0] out;


    mux16_4way_gate uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .select0(select0),
        .select1(select1),
        .out(out)
    );

    initial begin
        $dumpfile("build/gates/multi-way/waveforms/mux16_4way-waveform.vcd");
        $dumpvars(0, tb_mux16_4way_gate);

        a = 16'b1000000000000000;
        b = 16'b0100000000000000;
        c = 16'b0010000000000000;
        d = 16'b0001000000000000;

        select0 = 0;
        select1 = 0;
        #10

        if (out == 16'b1000000000000000) begin
            $display("mux16_4way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 1;
        select1 = 0;
        #10

        if (out == 16'b0100000000000000) begin
            $display("mux16_4way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 0;
        select1 = 1;
        #10

        if (out == 16'b0010000000000000) begin
            $display("mux16_4way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 1;
        select1 = 1;
        #10

        if (out == 16'b0001000000000000) begin
            $display("mux16_4way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule

module tb_mux16_8way_gate();

    reg [15:0] a;
    reg [15:0] b;
    reg [15:0] c;
    reg [15:0] d;
    reg [15:0] e;
    reg [15:0] f;
    reg [15:0] g;
    reg [15:0] h;
    reg select0;
    reg select1;
    reg select2;

    wire [15:0] out;


    mux16_8way_gate uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h),
        .select0(select0),
        .select1(select1),
        .select2(select2),
        .out(out)
    );

    initial begin
        $dumpfile("build/gates/multi-way/waveforms/mux16_8way-waveform.vcd");
        $dumpvars(0, tb_mux16_8way_gate);

        a = 16'b1000000000000000;
        b = 16'b0100000000000000;
        c = 16'b0010000000000000;
        d = 16'b0001000000000000;
        e = 16'b0000100000000000;
        f = 16'b0000010000000000;
        g = 16'b0000001000000000;
        h = 16'b0000000100000000;

        select0 = 0;
        select1 = 0;
        select2 = 0;
        #10

        if (out == 16'b1000000000000000) begin
            $display("mux16_8way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,0,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 1;
        select1 = 0;
        select2 = 0;
        #10

        if (out == 16'b0100000000000000) begin
            $display("mux16_8way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,1,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 0;
        select1 = 1;
        select2 = 0;
        #10

        if (out == 16'b0010000000000000) begin
            $display("mux16_8way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,0,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 0;
        select1 = 0;
        select2 = 1;
        #10

        if (out == 16'b0000100000000000) begin
            $display("mux16_8way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,0,0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 1;
        select1 = 1;
        select2 = 0;
        #10

        if (out == 16'b0001000000000000) begin
            $display("mux16_8way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,1,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 1;
        select1 = 0;
        select2 = 1;
        #10

        if (out == 16'b0000010000000000) begin
            $display("mux16_8way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,1,0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 0;
        select1 = 1;
        select2 = 1;
        #10

        if (out == 16'b0000001000000000) begin
            $display("mux16_8way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,0,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        select0 = 1;
        select1 = 1;
        select2 = 1;
        #10

        if (out == 16'b0000000100000000) begin
            $display("mux16_8way(1000000000000000,0100000000000000,0010000000000000,0001000000000000,1,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule

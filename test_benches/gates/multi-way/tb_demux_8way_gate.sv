module tb_demux_8way_gate();
    
    reg in;
    reg select0;
    reg select1;
    reg select2;

    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    wire h;


    demux_8way_gate uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h),
        .in(in),
        .select0(select0),
        .select1(select1),
        .select2(select2)
    );

    initial begin
        $dumpfile("build/gates/multi-way/waveforms/demux_8way-waveform.vcd");
        $dumpvars(0, tb_demux_8way_gate);

        in = 0;
        select0 = 0;
        select1 = 0;
        select2 = 0;
        #10

        if (a == 0 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(0,0,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 1;
        select0 = 0;
        select1 = 0;
        select2 = 0;
        #10

        if (a == 1 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(1,0,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 0;
        select0 = 1;
        select1 = 0;
        select2 = 0;
        #10

        if (a == 0 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(0,1,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 1;
        select0 = 1;
        select1 = 0;
        select2 = 0;
        #10

        if (a == 1 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(1,1,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 0;
        select0 = 0;
        select1 = 1;
        select2 = 0;
        #10

        if (a == 0 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(0,0,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 1;
        select0 = 0;
        select1 = 1;
        select2 = 0;
        #10

        if (a == 0 && b == 1 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(1,0,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 0;
        select0 = 1;
        select1 = 1;
        select2 = 0;
        #10

        if (a == 0 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(0,1,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 1;
        select0 = 1;
        select1 = 1;
        select2 = 0;
        #10

        if (a == 0 && b == 1 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(1,1,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 0;
        select0 = 1;
        select1 = 1;
        select2 = 1;
        #10

        if (a == 0 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 0) begin
            $display("demux_8way(0,1,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 1;
        select0 = 1;
        select1 = 1;
        select2 = 1;
        #10

        if (a == 0 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 && g == 0 && h == 1) begin
            $display("demux_8way(1,1,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule

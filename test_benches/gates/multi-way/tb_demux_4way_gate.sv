module tb_demux_4way_gate();
    
    reg in;
    reg select0;
    reg select1;

    wire a;
    wire b;
    wire c;
    wire d;

    demux_4way_gate uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .in(in),
        .select0(select0),
        .select1(select1)
    );

    initial begin
        $dumpfile("build/gates/multi-way/waveforms/demux_4way-waveform.vcd");
        $dumpvars(0, tb_demux_4way_gate);

        in = 0;
        select0 = 0;
        select1 = 0;

        #10
        if (a == 0 && b == 0 && c == 0 && d == 0) begin
            $display("demux_4way(0,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        in = 1;
        select0 = 0;
        select1 = 0;

        #10
        if (a == 1 && b == 0 && c == 0 && d == 0) begin
            $display("demux_4way(1,0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 0;
        select0 = 1;
        select1 = 0;

        #10
        if (a == 0 && b == 0 && c == 0 && d == 0) begin
            $display("demux_4way(0,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        in = 1;
        select0 = 1;
        select1 = 0;

        #10
        if (a == 0 && b == 1 && c == 0 && d == 0) begin
            $display("demux_4way(1,1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 0;
        select0 = 0;
        select1 = 1;

        #10
        if (a == 0 && b == 0 && c == 0 && d == 0) begin
            $display("demux_4way(0,0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        in = 1;
        select0 = 0;
        select1 = 1;

        #10
        if (a == 0 && b == 0 && c == 1 && d == 0) begin
            $display("demux_4way(1,0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end


        in = 0;
        select0 = 1;
        select1 = 1;

        #10
        if (a == 0 && b == 0 && c == 0 && d == 0) begin
            $display("demux_4way(0,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        in = 1;
        select0 = 1;
        select1 = 1;

        #10
        if (a == 0 && b == 0 && c == 0 && d == 1) begin
            $display("demux_4way(1,1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule

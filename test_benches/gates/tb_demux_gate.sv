module tb_demux_gate();

    reg in;
    reg select;

    wire a;
    wire b;

    demux_gate uut(
        .a(a),
        .b(b),
        .in(in),
        .select(select)
    );

    initial begin
        $dumpfile("build/gates/waveforms/demux-waveform.vcd");
        $dumpvars(0, tb_demux_gate);

        in = 0; select = 0;
        #10
        if (a == 0 && b == 0) begin
            $display("demux(0,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        in = 1; select = 0;
        #10
        if (a == 1 && b == 0) begin
            $display("demux(1,0) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        in = 0; select = 1;
        #10
        if (a == 0 && b == 0) begin
            $display("demux(0,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        in = 1; select = 1;
        #10
        if (a == 0 && b == 1) begin
            $display("demux(1,1) Test Passes!");
        end
        else begin
            $error("Test Failed!");
        end

        $finish();
    end

endmodule

module tb_pc();
    reg [15:0] in;
    reg [2:0] op_code;
    reg clk;
    wire [15:0] out;

    integer i;

    pc pc(
        .in(in),
        .op_code(op_code),
        .clk(clk),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("build/cpu/waveforms/pc-waveform.vcd");
        $dumpvars(0, tb_pc);

        repeat (1) @ (posedge clk);

        i = 0;
        @(posedge clk);
        op_code <= 3'b001;
        assert(out == 16'b0000000000000000);

        while (i < 100) begin
            @(posedge clk);
            op_code <= 3'b100;
            in <= out;
            assert(out == in + 1 || out == in);
            i++;
        end

        @(posedge clk);
        op_code <= 3'b010;

        @(posedge clk);
        assert(out == in + 1);

        @(posedge clk);
        in <= 0;
        op_code <= 3'b001;

        @(posedge clk);
        op_code <= 3'b010;

        @(posedge clk);
        assert(out == 16'b0000000000000000);

        $finish();
    end

endmodule

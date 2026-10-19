module tb_ram();
    reg [15:0] in;
    reg [13:0] address;
    reg [1:0] op_state;
    reg clk;
    wire [15:0] out;

    reg [15:0] mem_contents [15999:0];
    integer i;

    reg [15:0] value;

    ram ram(
        .in(in),
        .address(address),
        .op_state(op_state),
        .clk(clk),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("build/cpu/waveforms/ram-waveform.vcd");
        $dumpvars(0, tb_ram);

        repeat (2) @ (posedge clk);

        // Writing 16000 16 bit values to the RAM.
        for (i = 0; i <= 16000; i ++) begin
            @(posedge clk);
            op_state <= 2'b01;
            in <= 16'b0000000000000000 + i;
            address <= 14'b0000000000000000 + i;
            mem_contents[i] = 16'b0000000000000000 + i;

            assert(in == mem_contents[i - 1]);
        end

        @(posedge clk);
        in <= 0;

        // Reading 16000 16 bit values from RAM and checking that it is what it is expected to be returned.
        for (i = 0; i <= 16000; i++) begin
            @(posedge clk);
            op_state <= 2'b10;
            address <= 14'b0000000000000000 + i;

            assert(out == mem_contents[i - 1]);
        end

        $finish();
    end
endmodule

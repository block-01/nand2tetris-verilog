module tb_ram();
    reg [15:0] in;
    reg [13:0] address;
    reg [1:0] op_code;
    reg clk;
    wire [15:0] out;

    reg [15:0] mem_contents [15999:0];
    integer i;

    wire debug = 0; // Set to 1 to activate MONITOR debug output.

    reg [15:0] value;

    ram ram(
        .in(in),
        .address(address),
        .op_code(op_code),
        .clk(clk),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("build/waveforms/ram-waveform.vcd");
        $dumpvars(0, tb_ram);

        if (debug == 1) begin
            $monitor("[$monitor] time=%0t, ADDRESS= %b OPCODE= %b INPUT= b%b\t|\tOUTPUT= b%b", $time, address, op_code, in, out);
        end

        repeat (2) @ (posedge clk);

        // Writing 16000 16 bit values to the RAM.
        for (i = 0; i <= 16000; i ++) begin
            @(posedge clk);
            op_code <= 2'b01;
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
            op_code <= 2'b10;
            address <= 14'b0000000000000000 + i;

            assert(out == mem_contents[i - 1]);
        end

        $finish();
    end
endmodule

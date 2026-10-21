module tb_alu ();
    reg [15:0] a;
    reg [15:0] b;
    reg [5:0] op_code;
    reg clk;
    wire [15:0] out;
    wire zr;
    wire ng;

    wire debug = 0; // Set to 1 to activate MONITOR debug output.

    alu alu(
        .a(a),
        .b(b),
        .op_code(op_code),
        .clk(clk),
        .out(out),
        .zr(zr),
        .ng(ng)
    );

    always #5 clk = ~clk;

    initial begin
        repeat (2) @ (posedge clk);
        @(posedge clk);
        $dumpfile("build/waveforms/alu-waveform.vcd");
        $dumpvars(0, tb_alu);
        if (debug == 1) begin
            $monitor("[$monitor] time=%0t, OPCODE= %b\t|\tOUTPUT= b%b, ZR= b%b, NG= b%b", $time, op_code, out, zr, ng);
        end


        a <= 16'b0000000000000000;
        b <= 16'b1111111111111111;
        op_code <= 6'b101010;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0);

        @(posedge clk);
        op_code <= 6'b111111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        op_code <= 6'b111010;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b001100;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0);

        @(posedge clk);
        op_code <= 6'b110000;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b001101;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b110001;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b000000000000000 && zr == 1'b1 && ng == 1'b0);

        @(posedge clk);
        op_code <= 6'b001111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0);

        @(posedge clk);
        op_code <= 6'b110011;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000001 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b011111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000001 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b110111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0);

        @(posedge clk);
        op_code <= 6'b001110;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b110010;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111110 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b000010;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b010011;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000001 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b000111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b000000;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b000000000000000 && zr == 1'b1 && ng == 1'b0);

        @(posedge clk);
        op_code <= 6'b010101;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        a <= 16'b000000000010001;
        b <= 16'b000000000000011;

        op_code <= 6'b101010;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000000 && zr == 1'b1 && ng == 1'b0);

        @(posedge clk);
        op_code <= 6'b111111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b111010;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b001100;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000010001 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b110000;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000011 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b001101;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111101110 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b110001;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111100 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b001111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111101111 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b110011;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111111101 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b011111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000010010 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b110111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000100 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b001110;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000010000 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b110010;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000010 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b000010;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000010100 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b010011;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000001110 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b000111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b1111111111110010 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b000000;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000000001 && zr == 1'b0 && ng == 1'b1);

        @(posedge clk);
        op_code <= 6'b010101;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(out == 16'b0000000000010011 && zr == 1'b0 && ng == 1'b1);

        $finish();
    end

endmodule

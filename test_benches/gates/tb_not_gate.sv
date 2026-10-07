module tb_not_gate ();

    reg in;
    wire out;

    not_gate uut(in,out);

    initial begin
        $dumpfile("not-waveform.vcd");

        in = 0;
        $dumpvars(0, tb_not_gate);
        #10

        in = 1;
        $dumpvars(0, tb_not_gate);
        #10

        $finish();
    end
    
endmodule
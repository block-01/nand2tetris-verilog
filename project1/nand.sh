iverilog  -D GENERATE_VCD nand/nand.v nand/tb_nand.sv
vvp a.out
gtkwave nand-waveform.vcd
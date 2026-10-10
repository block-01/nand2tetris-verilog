iverilog  -D GENERATE_VCD not/not.v not/tb_not.sv
vvp a.out
gtkwave not-waveform.vcd
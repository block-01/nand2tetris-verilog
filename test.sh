#! /usr/sh

mkdir build build/waveforms

echo "----"
echo "CPU:"
echo "----"

echo ""
echo "Testing ALU:"
iverilog -D GENERATE_VCD -o build/cpu/alu hack/cpu/alu.sv test_benches/cpu/tb_alu.sv
vvp build/cpu/alu

echo ""
echo "Testing RAM:"
verilator --binary --timing --main -j --trace -Wno-fatal -Wall  --cc hack/cpu/ram.sv test_benches/cpu/tb_ram.sv
echo "--------------------------------------------------------"
obj_dir/Vram

#! /usr/sh

mkdir build build/waveforms

echo "----"
echo "CPU:"
echo "----"

echo ""
echo "Testing ALU:"
verilator --binary --timing --main -j --trace -Wno-fatal -Wall  --cc hack/alu.sv test_benches/tb_alu.sv

obj_dir/Valu

echo ""
echo "Testing RAM:"
verilator --binary --timing --main -j --trace -Wno-fatal -Wall  --cc hack/ram.sv test_benches/tb_ram.sv
echo "--------------------------------------------------------"
obj_dir/Vram

echo ""
echo "Testing PC:"
verilator --binary --timing --main -j --trace -Wno-fatal -Wall  --cc hack/pc.sv test_benches/tb_pc.sv
echo "--------------------------------------------------------"
obj_dir/Vpc

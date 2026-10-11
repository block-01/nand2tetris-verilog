#! /usr/sh

mkdir build/gates \
build/gates/basic \
build/gates/basic/waveforms

echo "-----------"
echo "Basic Gates"
echo "-----------"

echo ""
echo "Testing AND gate:"
iverilog  -D GENERATE_VCD -o build/gates/basic/and hack/gates/basic/and_gate.sv test_benches/gates/basic/tb_and_gate.sv
vvp build/gates/basic/and

echo ""
echo "Testing OR gate:"
iverilog  -D GENERATE_VCD -o build/gates/basic/or hack/gates/basic/or_gate.sv test_benches/gates/basic/tb_or_gate.sv
vvp build/gates/basic/or

echo ""
echo "Testing NOT gate:"
iverilog  -D GENERATE_VCD -o build/gates/basic/not hack/gates/basic/not_gate.sv test_benches/gates/basic/tb_not_gate.sv
vvp build/gates/basic/not

echo ""
echo "Testing NAND gate:"
iverilog  -D GENERATE_VCD -o build/gates/basic/nand hack/gates/basic/and_gate.sv hack/gates/basic/not_gate.sv hack/gates/basic/nand_gate.sv test_benches/gates/basic/tb_nand_gate.sv
vvp build/gates/basic/nand

echo ""
echo "Testing NOR gate:"
iverilog  -D GENERATE_VCD -o build/gates/basic/nor hack/gates/basic/not_gate.sv hack/gates/basic/or_gate.sv hack/gates/basic/nor_gate.sv test_benches/gates/basic/tb_nor_gate.sv
vvp build/gates/basic/nor

echo ""
echo "Testing XOR gate:"
iverilog  -D GENERATE_VCD -o build/gates/basic/xor hack/gates/basic/not_gate.sv hack/gates/basic/and_gate.sv hack/gates/basic/or_gate.sv hack/gates/basic/xor_gate.sv test_benches/gates/basic/tb_xor_gate.sv
vvp build/gates/basic/xor

echo ""
echo "Testing MUX gate:"
iverilog  -D GENERATE_VCD -o build/gates/basic/mux hack/gates/basic/not_gate.sv hack/gates/basic/and_gate.sv hack/gates/basic/or_gate.sv hack/gates/basic/mux_gate.sv test_benches/gates/basic/tb_mux_gate.sv
vvp build/gates/basic/mux

echo ""
echo "Testing DEMUX gate:"
iverilog  -D GENERATE_VCD -o build/gates/basic/demux hack/gates/basic/not_gate.sv hack/gates/basic/and_gate.sv hack/gates/basic/or_gate.sv hack/gates/basic/demux_gate.sv test_benches/gates/basic/tb_demux_gate.sv
vvp build/gates/basic/demux

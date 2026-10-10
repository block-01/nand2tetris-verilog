#! /usr/sh

mkdir build/gates build/gates/waveforms

echo "Testing AND gate:"
iverilog  -D GENERATE_VCD -o build/gates/and hack/gates/and_gate.sv test_benches/gates/tb_and_gate.sv
vvp build/gates/and

echo ""
echo "Testing OR gate:"
iverilog  -D GENERATE_VCD -o build/gates/or hack/gates/or_gate.sv test_benches/gates/tb_or_gate.sv
vvp build/gates/or

echo ""
echo "Testing NOT gate:"
iverilog  -D GENERATE_VCD -o build/gates/not hack/gates/not_gate.sv test_benches/gates/tb_not_gate.sv
vvp build/gates/not

echo ""
echo "Testing NAND gate:"
iverilog  -D GENERATE_VCD -o build/gates/nand hack/gates/and_gate.sv hack/gates/not_gate.sv hack/gates/nand_gate.sv test_benches/gates/tb_nand_gate.sv
vvp build/gates/nand

echo ""
echo "Testing NOR gate:"
iverilog  -D GENERATE_VCD -o build/gates/nor hack/gates/not_gate.sv hack/gates/or_gate.sv hack/gates/nor_gate.sv test_benches/gates/tb_nor_gate.sv
vvp build/gates/nor

echo ""
echo "Testing XOR gate:"
iverilog  -D GENERATE_VCD -o build/gates/xor hack/gates/not_gate.sv hack/gates/and_gate.sv hack/gates/or_gate.sv hack/gates/xor_gate.sv test_benches/gates/tb_xor_gate.sv
vvp build/gates/xor

echo ""
echo "Testing MUX gate:"
iverilog  -D GENERATE_VCD -o build/gates/mux hack/gates/not_gate.sv hack/gates/and_gate.sv hack/gates/or_gate.sv hack/gates/mux_gate.sv test_benches/gates/tb_mux_gate.sv
vvp build/gates/mux

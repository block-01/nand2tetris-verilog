#! /usr/sh
echo "Testing AND gate:"
iverilog  -D GENERATE_VCD -o and hack/gates/and_gate.sv test_benches/gates/tb_and_gate.sv
vvp and

echo ""
echo "Testing OR gate:"
iverilog  -D GENERATE_VCD -o or hack/gates/or_gate.sv test_benches/gates/tb_or_gate.sv
vvp or

echo ""
echo "Testing NOT gate:"
iverilog  -D GENERATE_VCD -o not hack/gates/not_gate.sv test_benches/gates/tb_not_gate.sv
vvp not

echo ""
echo "Testing NAND gate:"
iverilog  -D GENERATE_VCD -o nand hack/gates/and_gate.sv hack/gates/not_gate.sv hack/gates/nand_gate.sv test_benches/gates/tb_nand_gate.sv
vvp nand

echo ""
echo "Testing NOR gate:"
iverilog  -D GENERATE_VCD -o nor hack/gates/not_gate.sv hack/gates/or_gate.sv hack/gates/nor_gate.sv test_benches/gates/tb_nor_gate.sv
vvp nor

echo ""
echo "Testing XOR gate:"
iverilog  -D GENERATE_VCD -o xor hack/gates/not_gate.sv hack/gates/and_gate.sv hack/gates/or_gate.sv hack/gates/xor_gate.sv test_benches/gates/tb_xor_gate.sv
vvp xor

echo ""
echo "Testing MUX gate:"
iverilog  -D GENERATE_VCD -o mux hack/gates/not_gate.sv hack/gates/and_gate.sv hack/gates/or_gate.sv hack/gates/mux_gate.sv test_benches/gates/tb_mux_gate.sv
vvp mux
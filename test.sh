#! /usr/sh

mkdir build/gates \
build/gates/basic \
build/gates/basic/waveforms \
build/gates/16-bit \
build/gates/16-bit/waveforms

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

echo ""
echo "-------------"
echo "16-Bit Gates:"
echo "-------------"

echo ""
echo "Testing 16-bit NOT gate:"
iverilog  -D GENERATE_VCD -o build/gates/16-bit/not16 hack/gates/basic/not_gate.sv hack/gates/16-bit/not16_gate.sv test_benches/gates/16-bit/tb_not16_gate.sv
vvp build/gates/16-bit/not16

echo ""
echo "Testing 16-bit OR gate:"
iverilog  -D GENERATE_VCD -o build/gates/16-bit/or16 hack/gates/basic/or_gate.sv hack/gates/16-bit/or16_gate.sv test_benches/gates/16-bit/tb_or16_gate.sv
vvp build/gates/16-bit/or16

echo ""
echo "Testing 16-bit NOR gate:"
iverilog  -D GENERATE_VCD -o build/gates/16-bit/nor16 hack/gates/basic/or_gate.sv hack/gates/basic/not_gate.sv hack/gates/basic/nor_gate.sv hack/gates/16-bit/nor16_gate.sv test_benches/gates/16-bit/tb_nor16_gate.sv
vvp build/gates/16-bit/nor16

echo ""
echo "Testing 16-bit XOR gate:"
iverilog  -D GENERATE_VCD -o build/gates/16-bit/xor16 hack/gates/basic/or_gate.sv hack/gates/basic/not_gate.sv hack/gates/basic/and_gate.sv hack/gates/basic/xor_gate.sv hack/gates/16-bit/xor16_gate.sv test_benches/gates/16-bit/tb_xor16_gate.sv
vvp build/gates/16-bit/xor16

echo ""
echo "Testing 16-bit AND gate:"
iverilog  -D GENERATE_VCD -o build/gates/16-bit/and16 hack/gates/basic/and_gate.sv hack/gates/16-bit/and16_gate.sv test_benches/gates/16-bit/tb_and16_gate.sv
vvp build/gates/16-bit/and16

echo ""
echo "Testing 16-bit NAND gate:"
iverilog  -D GENERATE_VCD -o build/gates/16-bit/nand16 hack/gates/basic/and_gate.sv hack/gates/basic/not_gate.sv hack/gates/basic/nand_gate.sv hack/gates/16-bit/nand16_gate.sv test_benches/gates/16-bit/tb_nand16_gate.sv
vvp build/gates/16-bit/nand16

echo ""
echo "Testing 16-bit MUX gate:"
iverilog  -D GENERATE_VCD -o build/gates/16-bit/mux16 hack/gates/basic/not_gate.sv hack/gates/basic/and_gate.sv hack/gates/basic/or_gate.sv hack/gates/basic/mux_gate.sv hack/gates/16-bit/mux16_gate.sv test_benches/gates/16-bit/tb_mux16_gate.sv
vvp build/gates/16-bit/mux16

echo ""
echo "Testing 16-bit DEMUX gate:"
iverilog  -D GENERATE_VCD -o build/gates/16-bit/demux16 hack/gates/basic/not_gate.sv hack/gates/basic/and_gate.sv hack/gates/basic/or_gate.sv hack/gates/basic/demux_gate.sv hack/gates/16-bit/demux16_gate.sv test_benches/gates/16-bit/tb_demux16_gate.sv
vvp build/gates/16-bit/demux16

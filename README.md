# 4-bit Ripple Carry Adder using CMOS Full Adder

## Project Overview
Design and verification of a 4-bit Ripple Carry Adder using CMOS-based Full Adder in Verilog HDL.

## Files
- `full_adder.v` - 1-bit Full Adder module
- `four_bit_adder.v` - 4-bit Ripple Carry Adder (4 Full Adders connected in chain)
- `tb_four_bit_adder.v` - Testbench for verification

## How it Works
- Full Adder: Sum = A ^ B ^ Cin, Cout = (A & B) | (Cin & (A ^ B))
- 4 Full Adders are connected in series. Carry output of one stage becomes Carry input of next stage.

## How to Run in EDA Playground
1. Copy all 3 files code into EDA Playground
2. Select Simulator: Icarus Verilog
3. Click Run
4. Check Output: Sum and Cout values

## Test Cases
- 0000 + 0000 = 0000
- 0011 + 0101 = 1000
- 1111 + 0001 = 0000 with Cout=1
- 1010 + 0101 + 1 = 0000 with Cout=1

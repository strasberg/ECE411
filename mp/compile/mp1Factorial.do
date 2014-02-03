echo "--- Executing initialization force file for ../testcode/mp1Factorial.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp1Factorial.asm program code."
run 5
change /mp2_cpu/dram/vhdl_memory/mem(0) X"02"
change /mp2_cpu/dram/vhdl_memory/mem(1) X"22"
change /mp2_cpu/dram/vhdl_memory/mem(2) X"01"
change /mp2_cpu/dram/vhdl_memory/mem(3) X"16"
change /mp2_cpu/dram/vhdl_memory/mem(4) X"3F"
change /mp2_cpu/dram/vhdl_memory/mem(5) X"94"
change /mp2_cpu/dram/vhdl_memory/mem(6) X"83"
change /mp2_cpu/dram/vhdl_memory/mem(7) X"16"
change /mp2_cpu/dram/vhdl_memory/mem(8) X"06"
change /mp2_cpu/dram/vhdl_memory/mem(9) X"0C"
change /mp2_cpu/dram/vhdl_memory/mem(10) X"40"
change /mp2_cpu/dram/vhdl_memory/mem(11) X"1A"
change /mp2_cpu/dram/vhdl_memory/mem(12) X"83"
change /mp2_cpu/dram/vhdl_memory/mem(13) X"18"
change /mp2_cpu/dram/vhdl_memory/mem(14) X"FB"
change /mp2_cpu/dram/vhdl_memory/mem(15) X"0D"
change /mp2_cpu/dram/vhdl_memory/mem(16) X"45"
change /mp2_cpu/dram/vhdl_memory/mem(17) X"12"
change /mp2_cpu/dram/vhdl_memory/mem(18) X"84"
change /mp2_cpu/dram/vhdl_memory/mem(19) X"18"
change /mp2_cpu/dram/vhdl_memory/mem(20) X"FC"
change /mp2_cpu/dram/vhdl_memory/mem(21) X"0F"
change /mp2_cpu/dram/vhdl_memory/mem(22) X"0E"
change /mp2_cpu/dram/vhdl_memory/mem(23) X"72"
change /mp2_cpu/dram/vhdl_memory/mem(24) X"FF"
change /mp2_cpu/dram/vhdl_memory/mem(25) X"0F"
change /mp2_cpu/dram/vhdl_memory/mem(26) X"05"
change /mp2_cpu/dram/vhdl_memory/mem(27) X"FF"
change /mp2_cpu/dram/vhdl_memory/mem(28) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(29) X"00"
run 5
echo "Done loading ../testcode/mp1Factorial.asm program code."

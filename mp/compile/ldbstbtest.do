echo "--- Executing initialization force file for ../testcode/ldbstbtest.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/ldbstbtest.asm program code."
run 5
change /mp2_cpu/dram/pdram/vhdl_memory/mem(0) X"08"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(1) X"2C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(2) X"09"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(3) X"2E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(4) X"05"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(5) X"7C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(6) X"0B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(7) X"3E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(8) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(9) X"60"
run 5
echo "Done loading ../testcode/ldbstbtest.asm program code."

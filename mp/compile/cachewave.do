onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label RESET_L /mp2_cpu/RESET_L
add wave -noupdate -label START_H /mp2_cpu/START_H
add wave -noupdate -label clk /mp2_cpu/clk
add wave -noupdate -label PCout /mp2_cpu/theDatapath/PCOUT
add wave -noupdate -label ADDRESS /mp2_cpu/theDatapath/ADDRESS
add wave -noupdate -label MWRITEL_L /mp2_cpu/MWRITEL_L
add wave -noupdate -label MWRITEH_L /mp2_cpu/MWRITEH_L
add wave -noupdate -label MREAD_L /mp2_cpu/MREAD_L
add wave -noupdate -label DATAIN /mp2_cpu/DATAIN
add wave -noupdate -label DATAOUT /mp2_cpu/DATAOUT
add wave -noupdate -label RegFile -expand /mp2_cpu/theDatapath/aRegFile/RAM
add wave -noupdate -label CPUState /mp2_cpu/ControlUnit/current_state
add wave -noupdate -label CacheState /mp2_cpu/DRAM/Cache_Cont/current_state
add wave -noupdate -label Hit /mp2_cpu/DRAM/Cache_Cont/Hit
add wave -noupdate -label MemWrite /mp2_cpu/DRAM/Cache_Cont/MemWrite
add wave -noupdate -label DirtyWrite /mp2_cpu/DRAM/Cache_Cont/DirtyCache
add wave -noupdate -label PMRESP_H /mp2_cpu/DRAM/Cache_Cont/PMRESP_H
add wave -noupdate -label Cache1Data -expand /mp2_cpu/DRAM/Cache_DP/WacheWay1/aDAtaArray/Data
add wave -noupdate -label Cache2Data -expand /mp2_cpu/DRAM/Cache_DP/CacheWay2/aDAtaArray/Data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11383 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 277
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {863 ns}

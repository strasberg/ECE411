; Test LDI, STI
Origin 0
SEGMENT  CodeSegment:
LDI r7, r0, MyPointer ;PC= 0
;First load should see
;MAR <= 4
;MDR <=(M[4] =6)
;Second load should see
;MAR <= 6
;MDR <= (M[6] = 4x600D)
;R7 <= 4x600D
sti r7, r0, MySPointer ;PC= 2
;First load should see
;MAR <= 8
;MDR <= (M[8] = 4xA)
;Second store should see
;MAR <= 4xA
;MDR <= (R7 = 4x600D)
;M[10] <= 4x600D

;HALT:                     ; Infinite loop to keep the processor
;BRnzp HALT             ; from trying to execute the data below.

MyPointer: DATA2 MyData ;4
MyData: DATA2 4x600D ;6
MySpointer: DATA2 MySData ;8
MySData: DATA2 ? ;10
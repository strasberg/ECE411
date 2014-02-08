 Origin 0
SEGMENT  CodeSegment:
   ADD R0, R0, 1
   LEA R7, HALT
   ADD R0, R0, -1

HALT:                     ; Infinite loop to keep the processor
   BRnzp HALT             ; from trying to execute the data below.


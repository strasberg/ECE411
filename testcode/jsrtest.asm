Origin 0
SEGMENT  CodeSegment:
   ADD R0, R0, HALT;
   JSR JUMP
   JSRR R0
   ADD R1, R1, -1
HALT:                     ; Infinite loop to keep the processor
   BRnzp HALT             ; from trying to execute the data below.

FILLER1:
FILLER2:
FILLER3:
JUMP:
   RET
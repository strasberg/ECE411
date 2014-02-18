; Test for immediate and AND
Origin 0
SEGMENT  CodeSegment:
   ADD  R1, R1, 5        ; R1 <= R1 + 5
   ADD  R2, R2, -1       ; R2 <= -1
   AND  R3, R3, 55       ; R2 <= R3 & 55
   AND  R3, R1, -1       ;

HALT:                     ; Infinite loop to keep the processor
   BRnzp HALT             ; from trying to execute the data below.


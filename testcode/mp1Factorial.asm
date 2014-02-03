SEGMENT  CodeSegment:
   LDB  R1, R0, 2     ; R1 <= Number to do factorial for
   ADD  R3, R0, R1        ; R3 <= R0 + R1 
   NOT  R2, R0            ; R2 <= -1

LOOP1:
   ADD  R3, R2, R3        ; R2 <= R2 + R3 (R2--)
   BRnz SAVE_RES          ; end program if at end of factorial
   ADD R5, R1, R0         ; R5 <= R1 + R0
   ADD  R4, R2, R3        ; R4 <= R2 + R3

   LOOP2:                 ; add current multiple of number to result register R4 times
      BRnz LOOP1
         ADD R1, R1, R5   ; R5 <= R5 + R5
         ADD R4, R2, R4   ; R4 <= R2 + R4 (R4--)
         BRnzp LOOP2

SAVE_RES:
   STR R1, R0, RESULT     ; Store factorial in memory

HALT:                     ; Infinite loop to keep the processor
   BRnzp HALT             ; from trying to execute the data below.

INPUT:   DATA2 4xff05     ; input for number to find factorial of
RESULT:  DATA2 4x0000     ; place to store result

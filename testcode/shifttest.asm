; SHFT test
Origin 0
SEGMENT  CodeSegment:

ADD R0, R0, -2;
ADD R1, R1, 1;
ADD R2, R2, 2;

RSHFA R0, R0, 4
LSHF R1, R1, 15
RSHFL R2, R2, 2
RSHFA R3, R0, 1
RSHFL R4, R0, 1
LSHF R5, R0 ,1

HALT:                     ; Infinite loop to keep the processor
BRnzp HALT             ; from trying to execute the data below.

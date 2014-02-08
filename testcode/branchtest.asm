Origin 0
SEGMENT CodeSegment:

TRAP BRANCHHERE
add R2, R2, 1;

Halt: BR Halt

BRANCHHERE:
add R1, R1, 1
ret
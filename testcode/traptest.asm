;trap test
Origin 0
SEGMENT  CodeSegment:

trap JUMP_HERE
add r0, r0, -2

Halt: BRnzp HALT

JUMP_HERE:
Add r0, r0, 1
ret
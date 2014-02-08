Origin 0
SEGMENT CodeSegment:
	LEA R2, OverHere
	JSRR R2
	JSR OverHere
	Halt: BRnzp Halt

	OverHere:
		add R1, R1, 1
		ret
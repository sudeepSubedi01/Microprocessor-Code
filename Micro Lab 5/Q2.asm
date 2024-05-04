	   LDA 9000
	   LXI H,9001
	   MVI C,0A
	   MOV B,A

AGAIN:	   ADD B
	   MOV M,A
	   INX H
	   DCR C
	   JNZ AGAIN
HLT
	   MVI A,80
	   OUT 43
	   LXI H,0000
	   LXI D,0001
	   MVI C,32

AGAIN:	   DAD D
	   INX D
	   DCR C
	   JNZ AGAIN
	   MOV A,L
	   OUT 0B
	   MOV A,H
	   OUT 0A
	   HLT

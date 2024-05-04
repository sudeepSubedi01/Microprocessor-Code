	   MVI A,80
	   OUT 43
	   XRA A
	   MVI B,06
	   LXI H,0000
	   LXI D,00EE

AGAIN:	   DAD D
	   DCR B
	   JNZ AGAIN
	   MOV A,L
	   OUT 41
	   MOV A,H
	   OUT 40
	   HLT

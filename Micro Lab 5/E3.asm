	   MVI A,54
	   LXI D,7432
	   LXI H,0000
	   MVI B,08
	   DAD H
	   RLC
	   JNC 8010
	   DAD D
	   DCR B
	   JNZ 800A
	   MOV A,H
	   OUT 40
	   MOV A,L
	   OUT 41
	   HLT

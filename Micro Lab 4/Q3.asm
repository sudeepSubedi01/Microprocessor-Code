	   MVI A,40
	   MVI C,08
	   MVI B,00

AGAIN:	   RLC
	   JNC SKIP
	   INR B

SKIP:	   DCR C
	   JNZ AGAIN
	   HLT

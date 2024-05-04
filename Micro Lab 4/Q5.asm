	   MVI A,80
	   OUT 43
	   LXI H,HERE
	   MVI A,00
	   MVI C,FF
	   PCHL

HERE:	   INR A
	   DCR C
	   JNZ HERE
	   OUT 0A
	   HLT

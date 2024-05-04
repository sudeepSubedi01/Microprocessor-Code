	   MVI A,01
	   OUT 40
	   INR A
	   CALL 8050
	   JMP 8002
	   MVI B,80
	   MVI C,80
	   DCR C
	   JNZ 8054
	   DCR B
	   JNZ 8052
	   RET

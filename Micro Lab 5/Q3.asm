	   MVI A,80
	   OUT 43
	   LXI H,8090
	   MOV A,M
	   MOV B,A
	   MVI C,0A
	   CALL 8018
	   OUT 40
	   ADD B
	   DAA
	   DCR C
	   JNZ 800B
	   HLT
	   MVI D,FF
	   MVI E,FF
	   DCR E
	   JMP 801C
	   DCR D
	   JNZ 801A
	   RET

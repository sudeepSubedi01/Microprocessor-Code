	   MVI A,00
	   LXI H,0000
	   CALL 8037
	   OUT 40
	   MOV B,A
	   MOV A,H
	   OUT 41
	   MOV A,L
	   OUT 42
	   MOV A,B
	   ADI 01
	   DAA
	   CPI 60
	   JNZ 8005
	   MOV A,H
	   ADI 01
	   DAA
	   CPI 60
	   JNZ 8034
	   MOV A,L
	   ADI 01
	   DAA
	   CPI 24
	   JZ 8000
	   MVI H,00
	   MOV L,A
	   MVI A,00
	   JMP 8005
	   MOV H,A
	   MVI A,00
	   JMP 8005
	   MVI B,FF
	   MVI C,FF
	   DCR C
	   JNZ 803E
	   DCR B
	   JNZ 803A
	   HLT

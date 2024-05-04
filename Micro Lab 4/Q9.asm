	   MVI A,80
	   OUT 43
	   MVI B,31
	   MOV A,B
	   ANI 01
	   CPI 00
	   JNZ SKIP
	   MOV A,B
	   OUT 0A

SKIP:	   HLT

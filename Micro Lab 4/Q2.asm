	   MVI B,FF
	   MVI A,FD
	   ADD B
	   PUSH PSW
	   POP B
	   MOV A,C
	   ANI FB
	   MOV C,A
	   PUSH B
	   POP PSW
	   HLT

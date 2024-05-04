	   LXI H,8040
	   LXI B,8060
	   LXI D,8080
	   MVI A,02

AGAIN:	   PUSH PSW
	   PUSH H
	   PUSH B
	   PUSH D
	   MOV A,M
	   MOV E,A
	   INX H
	   MOV A,M
	   MOV D,A
	   LDAX B
	   MOV L,A
	   INX B
	   LDAX B
	   MOV H,A
	   DAD D
	   POP D
	   MOV A,L
	   STAX D
	   INX D
	   MOV A,H
	   STAX D
	   INX D
	   POP B
	   INX B
	   POP H
	   INX H
	   POP PSW
	   DCR A
	   JNZ AGAIN
	   HLT

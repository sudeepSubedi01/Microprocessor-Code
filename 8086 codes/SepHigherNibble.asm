LXI D,0000H
LXI H,8050H
MOV C,M ; COUNTER
INX H
AGAIN:
MOV A,M
ANI F0H
RRC
RRC
RRC
RRC
CPI 06H
JC SKIP
MOV A,M
ADD E
MOV E,A
JNC SKIP
INR D
SKIP:
INX H
DCR C
JNZ AGAIN
MOV M,E
INX H
MOV M,D
HLT
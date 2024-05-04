TITLE PROGRAM TO FIND SUM OF TEN 16 BIT NUMBERS
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    ARR DW 0015H,0157H,000AH,000BH,0001H,0005H,0ABCH,A000H,B4A0H,6051H
    SUM DW ?
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,03H
        LEA SI,ARR
        MOV AX,0000H
        UP:
        ADD AX,[SI]
        ADD SI,2
        LOOP UP
        MOV SUM,AX
        
        MOV AH,4CH
        INT 21H
     MAIN ENDP
    END
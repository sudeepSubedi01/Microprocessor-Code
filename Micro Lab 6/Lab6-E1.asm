TITLE PROGRAM TO ADD TWO NUMBERS
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    VAL1 DW 5020H
    VAL2 DW 5021H
    SUM DW ?
.CODE 
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AX,VAL1
        ADD AX,VAL2
        MOV SUM,AX
                
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END
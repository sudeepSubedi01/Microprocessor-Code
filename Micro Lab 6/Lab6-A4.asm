TITLE QUESTION 4
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    ARR1 DW 0001h,0005h,0015h,0000h,00A0h
    ARR2 DW 0002H,0004H,00A0H,0050H,00C0H
    ARR3 DW 5 DUP(0000H)
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,0005H
                
        LEA SI,ARR3
        MOV BX,SI
                
        LEA SI,ARR1
        
        LEA DI,ARR2        
        UP:
        MOV AX,[SI]
        CMP AX,[DI]
        JNC SKIP
        MOV [BX],1FFFH 
        SKIP:
        ADD BX,2
        ADD SI,2
        ADD DI,2                        
        LOOP UP               
        
        MOV AH,4CH
        INT 21H     
     MAIN ENDP
    END
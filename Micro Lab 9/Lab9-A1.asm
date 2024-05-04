TITLE SUM UPTO N
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA 
    MSG DB 'Upto which number: $'
    MSG1 DB 0DH,0AH,'The sum is:$'
    COUNT DB 00H
    NUM DB 00H
    SUM DW 0H
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H   ;DISPLAY MSG
        LEA DX,MSG
        INT 21H
        
        MOV CX,03H
        UP:
        MOV AH,01H
        INT 21H
        CMP AL,0DH
        JE SKIP
        ;CMP AL,09H
        ;JA SKIP1
        SUB AL,30H           
        ;JMP NEXT
        ;SKIP1:
        ;SUB AL,37H
        ;NEXT:
        PUSH AX
        MOV AL,10
        MUL NUM
        MOV NUM,AL
        POP AX
        ADD NUM,AL
        INC COUNT
        LOOP UP 
        SKIP:
                
        MOV AL, NUM 
        MOV AH,00H
        AGAIN:
        ADD SUM,AX
        DEC AX
        JNZ AGAIN
        
        MOV BH,00H
        MOV AX,SUM
        MOV CX,0AH
        UP1:
        MOV DX,0H
        DIV CX
        CMP DX,09H
        JA SKIP1
        ADD DX,30H
        JMP NEXT
        SKIP1:
        ADD DX,37H
        NEXT:
        PUSH DX
        INC BH
        CMP AX,00H
        JNE UP1
        
        MOV AH,09H
        LEA DX,MSG1
        INT 21H
        
        UP4:
        POP DX
        MOV AH,02H
        INT 21H
        DEC BH
        JNZ UP4
        
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END
        
        
        
        
            
        
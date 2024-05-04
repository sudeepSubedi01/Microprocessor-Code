TITLE 16 BIT DECIMAL DISPLAY
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    NUM DW 0FFFFH
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV BH,00H   ;PUSH COUNTER
        MOV CX,10   ;DIVIDER FOR DECIMAL DISPLAY IS 0AH / 10
        MOV AX,[NUM]   ;GIVEN NUMBER
        UP:
        MOV DX,0000H
        DIV CX
        CMP DX,09H
        ;JA SKIP
        ADD DX,30H  ;ADD 30H FOR 0-9 ASCII
        ;JMP NEXT
        ;SKIP:
        ;ADD DX,37H  ;ADD 37H FOR A-F ASCII 
        ;NEXT:
        PUSH DX
        INC BH
        CMP AX,00H  ;LOOP CONDITION
        JNE UP
        
        AGAIN:
        POP DX
        MOV AH,02H
        INT 21H
        DEC BH
        JNZ AGAIN 
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END
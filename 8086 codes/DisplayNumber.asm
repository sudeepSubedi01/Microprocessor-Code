TITLE 16 BIT HEXADECIMAL DISPLAY 
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    NUM DW 0AAAAH
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV BH,00H   ;PUSH COUNTER
        MOV CX,16   ;DIVIDER FOR HEX DISPLAY IS 10H / 16
        MOV AX,[NUM]   ;GIVEN NUMBER
        UP:
        MOV DX,0000H
        DIV CX
        CMP DX,09H
        JA SKIP
        ADD DX,30H
        JMP NEXT
        SKIP:
        ADD DX,37H
        NEXT:
        PUSH DX
        INC BH
        CMP AX,00H
        JNZ UP
        
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
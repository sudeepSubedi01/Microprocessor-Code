TITLE COUNT THE NO OF A AND STORE IN MEMORY
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'Enter a string: $'
    PARA LABEL BYTE
    MAX DB 100
    LEN DB ?
    STR DB 100 DUP('$')
    NUM DB ?

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H  ;DISPLAY STRING
        LEA DX,MSG
        INT 21H
        
        MOV AH,0AH  ;READ STRING
        LEA DX,PARA
        INT 21H
        
        LEA SI,STR
        MOV CH,00H
        MOV CL,LEN
        MOV BX,0000H
        UP:
        CMP [SI],'a'
        JNZ SKIP
        INC BL
        SKIP:
        INC SI
        LOOP UP        
        MOV NUM,BL
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END
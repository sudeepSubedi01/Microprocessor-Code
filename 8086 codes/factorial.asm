TITLE
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'eNTER A STRING: $'
    NUM DB 00H
    COUNT DB 00H

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H
        LEA DX,MSG
        
        MOV CX, 03H
        up:
        MOV AH,01H
        INT 21H
        CMP AL,0DH
        JE loopout
        SUB AL,30H
        PUSH AX
        MOV AL,10
        MUL NUM
        MOV NUM,AL
        POP AX
        ADD NUM,AL
        INC COUNT
        LOOP UP
        
        loopout:
        
        MOV BH,00H
        MOV BL,NUM
        DEC BX 
        MOV AH,00H
        MOV AL,NUM
        AGAIN:
        MUL BX
        DEC BX
        CMP BX,01H
        JNZ AGAIN
        
        
        
        mov ah,4ch
        int 21h
    main endp
    end
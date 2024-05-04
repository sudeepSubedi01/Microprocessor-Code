TITLE count no of words/display decimal
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA 
    MSG DB 'Enter a string: $'
    STR DB 50 DUP('$')
    COUNT DB 01H
    MSG1 DB 0DH,0AH,'No. of words= $'
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H  ;DISPLAY MSG
        LEA DX,MSG
        INT 21H
        
        LEA SI,STR
        AGAIN:        
        MOV AH,01H
        INT 21H
        CMP AL,20H
        JNE SKIP
        INC COUNT
        SKIP:
        CMP AL,0DH
        JNE AGAIN
        
        MOV AH,09H ;DISPLAY MSG1
        LEA DX,MSG1
        INT 21H
        
        MOV BH,00H ;DISPLAY DECIMAL
        MOV AL,COUNT
        MOV AH,00H
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
        
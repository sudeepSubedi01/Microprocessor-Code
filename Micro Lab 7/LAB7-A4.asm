TITLE PROGRAM TO READ AND DISPLAY CHARACTERS
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    STR DB 60 DUP('$')
    NEWL DB 0DH,0AH,'$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV SI, OFFSET STR
        UP:
        MOV AH,01H ;ENTER A CHARACTER
        INT 21H
        MOV [SI],AL
        INC SI
        CMP AL,0DH ;READ UNTIL ENTER IS PRESSED
        JNZ UP
        
         MOV AH,09H  ;NEW LINE
         LEA DX, NEWL
         INT 21H
        
        LEA SI,STR
        UP1:
        MOV AH,02H
        MOV DL,[SI]
        INT 21H  
        INC SI
        CMP AL,0DH
        JNZ UP1
    
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END
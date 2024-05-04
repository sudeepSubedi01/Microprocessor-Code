;5. Write a program that a string from the user and display each word in new line diagonally from upper left towards 
;bottom right in a clear screen. If the string is “Programming in Assembly Language is Fun”, it shoud be displayed as       
TITLE LAB 8 QUESTION 5
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'Enter a string: $'
    
    PARA LABEL BYTE
    MAX DB 24
    LEN DB ?
    STR DB 24 DUP('$')
    
    NEWL DB 0DH,0AH,'$'
    ENTER DB 0DH,'$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H  ;MESSAGE DISPLAY
        LEA DX,MSG
        INT 21H
        
        MOV AH,0AH   ;STRING INPUT
        LEA DX, PARA
        INT 21H
        
        MOV AH,09H
        LEA DX,NEWL
        INT 21H
        
        MOV AH,06H   ;CLEAR THE SCREEN
        MOV AL,00H
        MOV CX,0000H
        MOV DX,184FH
        MOV BH,71H
        INT 10H
        
        LEA SI,[STR]
        UP:
        CMP [SI],32
        JNZ SKIP
        MOV AH,02H          ;NEWLINE WITHOUT LINE FEED
        MOV DL,0AH
        INT 21H
        SKIP:       
        MOV AH,02H          ;CHARACTER DISPLAY
        MOV DL,[SI]
        INT 21H
        
        INC SI
        DEC LEN
        JNZ UP                
                
        MOV AH,4CH
        INT 21H
   MAIN ENDP
   END
        
        
        
                
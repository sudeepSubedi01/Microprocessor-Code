;2. Write an assembly language program that takes a string (having 60 characters at max.) as input from user, and display 
;the string at the center of the clear screen         
TITLE LAB 8 QUESTION 2
PAGE 60,90
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'Enter a string: $'
    
    PARA LABEL BYTE
    MAX DB 60
    LEN DB ?
    STR DB 60 DUP('$')
    
    NEWL DB 0DH,0AH,'$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H    ;MESSAGE DISPLAY
        MOV DX,OFFSET MSG
        INT 21H
        
        MOV AH,0AH    ;INPUT STRING
        LEA DX,PARA
        INT 21H
        
        MOV AH,06H   ;CLEAR THE SCREEN
        MOV AL,00H
        MOV CX,0000H
        MOV DX,184FH
        MOV BH,71H
        INT 10H
        
        MOV AH,02H   ;SET CURSOR POSITION TO CENTER
        MOV BH,00H            ;PAGE
        MOV DH,12             ;ROW
        MOV DL,39             ;COLUMN
        INT 10H 
        
        MOV AH,09H    ;STRING DISPLAY
        LEA DX,STR
        INT 21H
        
        MOV AH,4CH
        INT 21H
   MAIN ENDP
   END
        
        
        
        
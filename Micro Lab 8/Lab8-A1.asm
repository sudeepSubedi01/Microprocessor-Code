;Write an assembly language program to scroll a window from row 5, column 20 to row 20, column 60 with a reverse 
;video attributes. Then locate the cursor at row 12, column 30. And display a string as “Programming in Assembly 
;Language is Fun”.         
TITLE ;;TITLE HERE
.MODEL SMALL
.STACK 64
.DATA
MSG DB "PROGRAMMING IN ASSEMBLY IS FUN$"
.CODE
MAIN PROC FAR

    MOV AX, @DATA
    MOV DS, AX 
    
    MOV AH, 7 ;scroll down
    MOV AL, 00
    MOV BH, 0F0H ;reverse attribute
    MOV CH, 5 ;upper left row
    MOV CL, 20 ;upper left column
    MOV DH, 20 ;lower right row
    MOV DL, 60 ;lower right column
    INT 10H
    MOV AH, 2 ;set cursor
    MOV BH, 0 ;page number
    MOV DH, 12 ;row
    MOV DL, 30 ;column
    INT 10H
    MOV AH, 09H
    LEA DX, MSG
    INT 21H 
    
    MOV AX, 4C00H
    INT 21H

MAIN ENDP

END MAIN
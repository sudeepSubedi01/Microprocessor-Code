;Write an assembly language program to scroll a window from row 5, column 20 to row 20, column 60 with a reverse video attributes. 
;Then locate the cursor at row 12, column 30. And display a string as "Programming in Assembly Language is Fun".

TITLE 20*20 WINDOW SCROLLING
.MODEL SMALL
.DATA
STRLEN DB 14
STRSZ DB ?
STR DB 14 DUP('$')
STRTRM DB '$'
.STACK
.CODE

MAIN PROC FAR
MOV AX, @DATA
MOV DS, AX

;; READING FROM THE USER
LEA DX, STRLEN
MOV AH, 0AH
INT 21H

;; CLEARING THE SCREEN
MOV AH, 00
MOV AL, 03H
INT 10H

;; MAKING 20 20 SCREEN
MOV AL, 00H
MOV CH, 00H
MOV CL, 30
MOV DH, 20
MOV DL, 50
MOV BH, 71H
MOV AH, 06H
INT 10H

;;  PUSH AX
MOV BH, 00
MOV DH, 10
MOV AX, 80
SUB AL, STRSZ
MOV DL, 02H
DIV DL
MOV DL, AL
MOV AX, 0200H
INT 10H

;;         POP AX
;; DISPLAYING THE STRING

LEA DX, STR
MOV AH, 09H
INT 21H

;; ENDING THE PROGRAM
MOV AH, 4CH
INT 21H
MAIN ENDP
END MAIN
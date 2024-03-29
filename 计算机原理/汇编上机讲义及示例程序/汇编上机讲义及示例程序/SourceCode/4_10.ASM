DATA   SEGMENT
STRING DB    '1234567890'
COUNT  EQU  $ - STRING
DATA   ENDS

STACK   SEGMENT PARA STACK 'STACK'
       DB 100 DUP(?)
STACK   ENDS

CODE    SEGMENT
       ASSUME  CS:CODE,DS:DATA,ES:DATA,SS:STACK
START   PROC    FAR
BEGIN:  PUSH   DS
        MOV    AX,0
        PUSH   AX
        MOV    AX,DATA
	MOV    DS,AX	;DATA��AX
        MOV    ES,AX
	LEA    SI,STRING   ;SET ADDRESS POINTER
	MOV    CX,COUNT 
AGAIN:  LODSB    ;
	AND    AL,AL
	JPE    NEXT	
	OR     AL,80H
	MOV    [SI-1],AL
NEXT:   DEC    CX;
	JNZ   AGAIN
	RET
START   ENDP
CODE	ENDS	;
END	BEGIN

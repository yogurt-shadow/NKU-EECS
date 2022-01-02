STACK   SEGMENT  STACK
	DB      200 DUP(0)
STACK   ENDS
DATA    SEGMENT
	TAB     DB      80,85,86,71,75,96,83,56,01,02,76,84
	NO      DB      10
DATA    ENDS

CODE    SEGMENT
ASSUME  DS:DATA,SS:STACK,CS:CODE
BEGIN:  MOV     AX,DATA
	MOV     DS,AX
	LEA     BX,TAB 
	LEA     SI,TAB
	MOV     AL,NO
	DEC     AL
	XLAT    TAB
	MOV DL,AL
        PUSH CX
        MOV CL,4
        SHR AL,CL
        OR AL,30H
        MOV [SI] ,AL
        INC SI
        MOV AL,DL
        AND AL,0FH
        OR AL,30H
        MOV [SI],AL
        INC SI
        MOV AL,'$'
        MOV [SI],AL
        MOV DX,OFFSET TAB
        MOV AH,09H
        INT 21H
	MOV     AH,4CH
	INT     21H
CODE    ENDS
	END BEGIN

DATA    SEGMENT
X       DW      2
Y       DW      2
Z       DW      3
V       DW      10
W       DW      2 DUP(?)
DATA    ENDS
STACK   SEGMENT  STACK PARA STACK 'STACK'
	DB   200  DUP(0)
        BUFFER DB 10 DUP(?)
STACK   ENDS
CODE    SEGMENT
	ASSUME  DS:DATA,CS:CODE,SS:STACK

START:  MOV     AX,SEG DATA
	MOV     DS,AX   ;DATA¡úAX
	LEA     SI,BUFFER
	MOV     AX,X
	IMUL    Y       ;(x)*(y)¡úDX:AX
	MOV     CX,AX
	MOV     BX,DX   ;(DX:AX)¡ú(BX:CX)
	MOV     AX,Z
	CWD     ;(Z) ·ûºÅÀ©Õ¹
	ADD     CX,AX
	ADC     BX,DX   ;(BX:CX)+(DX:AX)¡ú(BX:CX)
	SUB     CX,2
	SBB     BX,0    ;(BX:CX)-2¡ú(BX:CX)
	MOV     AX,V
	CWD     ;(V)·ûºÅÀ©Õ¹
	SUB     AX,CX
	SBB     DX,BX   ;(DX:AX)-(BX:CX)¡ú(DX:X)
	IDIV    X       ;(DX:AX)/X
	
	MOV    DL,AL
        PUSH   CX
        MOV    CL,4
        SHR    AL,CL
        OR     AL,30H
        MOV    [SI] ,AL
        INC    SI
        MOV    AL,DL
        AND    AL,0FH
        OR     AL,30H
        MOV    [SI],AL
        INC    SI
        MOV    AL,'$'
        MOV    [SI],AL
        MOV    DX,OFFSET BUFFER
        MOV    AH,09H
        INT    21H
	
	MOV     AH,4CH
	INT     21H
CODE    ENDS    ;ÍË³öDOS ×´Ì¬
	END     START

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
	MOV     DS,AX   ;DATA��AX
	LEA     SI,BUFFER
	MOV     AX,X
	IMUL    Y       ;(x)*(y)��DX:AX
	MOV     CX,AX
	MOV     BX,DX   ;(DX:AX)��(BX:CX)
	MOV     AX,Z
	CWD     ;(Z) ������չ
	ADD     CX,AX
	ADC     BX,DX   ;(BX:CX)+(DX:AX)��(BX:CX)
	SUB     CX,2
	SBB     BX,0    ;(BX:CX)-2��(BX:CX)
	MOV     AX,V
	CWD     ;(V)������չ
	SUB     AX,CX
	SBB     DX,BX   ;(DX:AX)-(BX:CX)��(DX:X)
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
CODE    ENDS    ;�˳�DOS ״̬
	END     START

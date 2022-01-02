DATA    SEGMENT
X       DW      2
Y       DW      2
Z       DW      3
V       DW      10
W       DW      2 DUP(?)
DATA    ENDS
STACK   SEGMENT  STACK PARA STACK 'STACK'
	DB   200  DUP(0)
STACK   ENDS
CODE    SEGMENT
	ASSUME  DS:DATA,CS:CODE,SS:STACK

START:  MOV     AX,SEG DATA
	MOV     DS,AX   ;DATA→AX
	MOV     AX,X
	IMUL    Y       ;(x)*(y)→DX:AX
	MOV     CX,AX
	MOV     BX,DX   ;(DX:AX)→(BX:CX)
	MOV     AX,Z
	CWD     ;(Z) 符号扩展
	ADD     CX,AX
	ADC     BX,DX   ;(BX:CX)+(DX:AX)→(BX:CX)
	SUB     CX,2
	SBB     BX,0    ;(BX:CX)-2→(BX:CX)
	MOV     AX,V
	CWD     ;(V)符号扩展
	SUB     AX,CX
	SBB     DX,BX   ;(DX:AX)-(BX:CX)→(DX:AX)
	IDIV    X       ;(DX:AX)/X
	MOV     W,  AX   ;商→W
	MOV     W+2,DX  ;余数DX→W+2
	MOV     AH,4CH
	INT     21H
CODE    ENDS    ;退出DOS 状态
	END     START

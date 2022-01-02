DATA	SEGMENT
     	X      	DB  -15
      	RESULT 	DB  ?
DATA	ENDS
CODE	SEGMENT
      	ASSUME  DS:DATA,CS:CODE
START:	MOV	AX,DATA
      	MOV	DS,AX 	;初始化
      	MOV	AL,X  	;X取到AL中
	TEST    AL,80H  ;测试AL正负
        JZ NEXT         ;为正，转NEXT
        NEG AL  	;否则AL求补
NEXT:	MOV 	RESULT,AL	;送结果
      	MOV 	AH,4CH
      	INT 	21H 	;返回DOS
CODE	ENDS
        END   START     ;汇编结束

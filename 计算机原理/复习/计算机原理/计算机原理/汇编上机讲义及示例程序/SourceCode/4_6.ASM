DATA  SEGMENT
	 SUM  DW  ?
	 CN   DW  ?
DATA     ENDS
CODE  SEGMENT
	ASSUME  CS:CODE,DS:DATA
START:  MOV  AX,DATA
	MOV  DS,AX      ;初始化
	MOV  AX,0       ;0送AX

	MOV  BX,0       ;0送BX
LP:     INC  BX     ;BX加1
	ADD  AX,BX      ;求累加和
	CMP  AX,1000    ;比较 
	JBE  LP         ;≤1000转
	MOV  SUM,AX
	MOV  CN,BX      ;送结果
	MOV  AH,4CH
	INT  21H        ;返回DOS
CODE    ENDS 
	END  START      ;汇编结束


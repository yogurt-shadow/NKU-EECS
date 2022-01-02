DATA 	SEGMENT
       X  DB  -5
       Y  DB  ?
DATA 	ENDS

CODE 	SEGMENT
     	ASSUME   CS:CODE,DS:DATA
START:     MOV  AX,DATA
           MOV  DS,AX       ;初始化
     	   MOV  AL,X        ;X取到AL中
	   CMP  AL,0        ;Al中内容和0比较
           JGE  BIG         ;大于等于0，转BIG
           MOV  BL,-1       ;否则为负数，－1送BL
	   JMP  EXIT        ;转到结束位置
BIG:       JE   EE          ;Al中内容是否为0，为0转EE
           MOV  BL,1        ;否则为大于0，1送BL
     	   JMP  EXIT        ;转到结束位置
EE:  	   MOV  BL,0        ;0送BL
EXIT: 	   MOV  Y,BL        ;BL中内容送Y单元
           MOV  AH,4CH
           INT  21H    	    ;程序结束
CODE    ENDS
        END  START 	    ;汇编结束

LXI H, 9000H ;LOAD SIZE OF THE ARRAY
MOV C, M ;STORE THE SIZE IN C  
INX H 
MOV B, M ;STORE VALUE OF THE FIRST NUMBER IN B
DCR C ;DECREMENT COUNT OF C

L1:	INX H ;ITEREATE TO NEXT ELEMENT
	MOV A, M ;STORE THE VALUE IN ACC
	CMP B ;CHECK IF B > A
	JC SKIP ;IF NOT THEN CONTINUE
	MOV B, A ;STORE THE VALUE OF A IN B AS THE LARGEST SO FAR
	
SKIP:	DCR C ;DECREMENT COUNTER
	JNZ L1 ;CHECK IF THE ARRAY HAS ENDED
	LXI H, 9500H 
	MOV M, B ;STORE LARGEST NUMBER AT MEMORY POINTED BY M
	HLT 	

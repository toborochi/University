
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------
;----------------------------------------------------------------
;PROGRAMA PARA ILUSTRAR LOS MODOS DE DIRECCIONAMIENTO INTEL 80X86
;----------------------------------------------------------------
;file: base-indice.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
dato1     DB 0x11,0x22, 0x33, 0x44, 0x55, 0x66
dato2     DB 0x77, 0x88, 0x99, 0xAA, 0xBB, 0xCC
			
segment .text 
global _main 					
_main:	
;---------------------------------------------------------------------------
;DIRECCIONAMIENTO INDIRECTO POR REGISTRO (BASE)
;---------------------------------------------------------------------------

mov ebx, dato2	
MOV AL, [EBX]		:AL= 77  
mov ax, [ebx] 		;ax= 8877             
   	  
;-----------------------------------------------------------------------------
;DIRECCIONAMIENTO RELATIVO POR REGISTRO (index addressing)
;(llamado tambien MODO BASE + DESPLAZAMIENTO) !!!!!!!!!!!!!!!!!!!
;-----------------------------------------------------------------------------

nop
xor eax, eax
mov edx, dato1

mov al,  [edx+2]		;al= 33
mov ax,  [edx+2]		;ax= 4433
mov eax, [edx+2]	;eax= 66554433
;---------------------------------------------------------
;DIRECCIONAMIENTO BASE MAS INDICE (base index addressing)
;---------------------------------------------------------
NOP
	xor eax, eax
	mov ebx, dato1
	mov edx, 4  	                  
	mov  al, [ebx+edx]		;al= 33
	mov  ax, [ebx+edx]		;ax= 4433 
	mov eax, [ebx+edx]		;eax= 66554433                             
;----------------------------------------------------------------
;DIRECCIONAMIENTO RELATIVO BASE MAS INDICE 
;( llamado tambien MODO BASE + INDICE + desplazamiento) !!!!!!!!!
;----------------------------------------------------------------
NOP
	xor eax, eax
	mov ebx, dato2         
	mov esi, 0 
	mov  al, [ebx+esi+2]	;al= 99
	mov  ax, [ebx+esi+2] 	;ax= aa99
	mov eax, [ebx+esi+2]	;eax= ccbbaa99

;------------------------------------------------
;DIRECCIONAMIENTO INDICE ESCALADO
;------------------------------------------------

XOR EDX, EDX
MOV EAX, dato1
mov ebx, 2		;indice
mov dl, [eax + ebx*1]		;dl= 33
mov dx, [eax + ebx*1]		;dx= 6655
mov edx, [eax + ebx*1]		;edx= ccbbaa99

;------otra forma--------
XOR EDX, EDX
mov ebx, 2		;indice
mov dl, [dato1 + ebx*1]
mov dx, [dato1 + ebx*1]
mov edx, [dato1 + ebx*1]

;DIRECCIONAMIENTO INDICE ESCALADO + DESPLAZAMIENTO
XOR EDX, EDX
MOV EAX, dato1
mov ebx, 1		;indice
mov EdX, [eax + ebx*2 + 2]		;EDX= 88776655
ret







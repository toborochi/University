
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

arreglo DB 1,2,3,4,5,6,7,8,9,10
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

suma resw 1

segment .text 
global _main 					
_main:
;---------------------------------------	

;-----------------------desplazamiento

;mov al,[dato1]
;sal al,1

;mov al,[dato2]
;sal al,1

;mov al,[dato2]
;sar al,1

;mov al,[dato3]
;sar al,1

;-----------------------rotacion

;mov al,[dato1]
;ror al,1

;mov cl,4
;mov al,[dato1]
;ror al,cl
;rol al,cl

;-----------------------saltos

;	mov eax,12345
;	mov ecx,67890
;	sub eax,ecx
;	jmp suma
;		sub ebx,edx
;vuelve: jmp fin
;suma:		add ecx,eax
;	jmp vuelve
;fin: xor eax,eax

;-----------------------saltos2

;xor eax,eax
;xor ebx,ebx
;mov ax,[minuendo]
;mov bx,[sustraendo]
;sub ax,bx
;js negativo1
;	mov [positivo],ax
;	jmp fin	
;negativo1: mov [negativo],ax 
;fin:

;-----------------------saltos3

		mov ecx,10
		xor al,al
		mov ebx,arreglo ;Copia la direccion del primer elemento al que apunta el arreglo [>1,2,3,4,5,...,10]
ciclo:		add al,[ebx]
			inc ebx
			dec ecx
			jnz ciclo
		mov [suma],al
;-----------------------saltos3 (BASE+INDICE)
		mov ecx,10
		xor al,al
		mov ebx,arreglo
		mov edx,0
ciclo1:		add al,[ebx+edx]
			inc edx
			dec ecx
		jnz ciclo1
	mov[suma],al

		
ret
;---------------------------------------
;..........subrutina....................	





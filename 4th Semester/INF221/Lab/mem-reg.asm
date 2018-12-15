;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: mem-reg.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
a	 dd 175
b	 dq 4097
c	 db 1, 2, 3, 4
d	 dd 0xffffffff
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---direccionamiento directo-------------------
	mov al, [a]		;al=0xAF
	mov ebx, [a]	;ebx=0x000000AF valor
	mov ecx, [b]	;ecx=0x00001001
	mov edx, [c]	;edx=0x04030201
	
	mov dl, [c]		;dl=0x01
	mov dl, [c+1]	;dl=0x02
	mov dl, [a+2]	;dl=0x03
;-------------------------------------------------
	mov eax, a		;dirección!!!!! -->> 0x00402000
	ret






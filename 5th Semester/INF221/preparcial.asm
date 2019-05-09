
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

a dd 10

segment .bss
;aqui van las variables declaradas pero sin inicializar

b resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	

; problema a<=10 entonces b = a*a+5

cmp dword[a],10
jg nope
	mov eax,[a]
	imul eax
	add eax,5	
	mov [b],eax	
nope:

ret
;---------------------------------------
;..........subrutina....................	





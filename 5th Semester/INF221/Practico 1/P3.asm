
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

N DB 8
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

arreglo_pares resb 8

segment .text 
global _main 					
_main:
;---------------------------------------	

mov bl,0
mov eax,arreglo_pares
mov ecx,[N]
ciclo:
	mov [eax],bl
	inc eax
	add bl,2
	loop ciclo	

ret
;---------------------------------------
;..........subrutina....................	





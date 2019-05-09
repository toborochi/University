
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
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

resultado resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	


	mov al,0
	mov ecx,10
ciclo:
	add al,5
	loop ciclo

mov [resultado],al
	
ret
;---------------------------------------
;..........subrutina....................	





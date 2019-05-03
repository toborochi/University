
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
		
a db 5
b db 10
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

may resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

	mov al,[a]
	mov bl,[b]
	cmp al,bl
    jg mayor
	mov [may],bl
	jmp fin
mayor:
	mov [may],al
fin:
	
ret
;---------------------------------------
;..........subrutina....................	





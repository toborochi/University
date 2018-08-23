
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: inm-mem.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
segment .bss
;aqui van las variables declaradas pero sin inicializar
a	resb 1
b	resw 1
c	resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	
	mov byte[a], 12			 	;mueve 12 a la posición de memoria (variable) etiquetada
								;"a", esta variable debe estar previamente definida
	mov word[b], 0x1234	
	mov	dword[c], -2147483648	;menor numero negativo	
	mov byte[0x00402000], 12	;mueve 12 a la posición de memoria 0x00402000
	mov dword[0x00402000], 0x12345678 						
	ret






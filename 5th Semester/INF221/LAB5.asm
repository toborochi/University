
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
		
pal db "hola",0
		
segment .bss
;aqui van las variables declaradas pero sin inicializar



segment .text 
global _main 					
_main:
;---------------------------------------	

	mov eax,pal
    mov ecx,4
lup:
	and byte[eax], 0XDF ; Mascara 11011111
	inc eax
	loop lup



ret
;---------------------------------------
;..........subrutina....................	





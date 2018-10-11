
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

; Problema: Pasar los elementos de a1 a a2 y multiplicarlo por 2

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
	
a1 DB 10,20,30,40,50	
	
segment .bss
;aqui van las variables declaradas pero sin inicializar

a2 resb 5

segment .text 
global _main 					
_main:
;---------------------------------------	

	mov ecx,5
	mov ebx,a1
	mov esi,a2
ciclo:  
		xor eax,eax
		mov al,2
		imul byte[ebx]
		
		mov [esi],eax
		
		inc esi
		inc ebx
		dec ecx
		jnz ciclo

ret
;---------------------------------------
;..........subrutina....................	





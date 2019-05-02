
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
		
a DB 1,2,3,4,5
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

suma resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

	mov ecx,5
	xor al,al
	mov ebx,a
ciclo:
		add al,[ebx]
		inc ebx
		dec ecx
		jnz ciclo
	mov [suma],al
	
	; loop => dec ecx & jnz [etiqueta]
	
	
	mov ecx,5
	xor al,al
	mov ebx,a
	xor edx,edx
ciclo2:
		add al,[ebx+edx]
		inc edx
		dec ecx
		jnz ciclo2
	mov [suma],al


	
	
	mov ecx,5
	xor al,al
	mov ebx,a
	xor edx,edx
ciclo3:
		add al,[a+edx]
		inc edx
		dec ecx
		jnz ciclo3
	mov [suma],al
	
	
		
	mov ecx,5
	xor al,al
	mov ebx,a
	xor edx,edx
ciclo4:
		add al,[a+edx*1] ; 1 Es el factor de escala
		inc edx
		dec ecx
		jnz ciclo4
	mov [suma],al
	
	; loop => dec ecx & jnz [etiqueta]
	
	

ret
;---------------------------------------
;..........subrutina....................	





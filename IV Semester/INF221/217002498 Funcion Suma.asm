
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o 217002498.o 217002498.asm -l 217002498.lst
;gcc -o 217002498.exe 217002498.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
a dd 0x11223344 		
b dd 0x55667788		
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

c resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	
	
	;Paso de parametros a la funcion suma
	mov ecx,[a] ;pasamos el valor de 'a' a ecx
	mov edx,[b] ;pasamos el valor de 'b' a edx
	;Funcion suma
	call suma	
	
	nop
	mov [c],eax

ret
;---------------------------------------
;..........subrutina....................	

suma: mov eax,ecx
	  add eax,edx ;Por convencio de C, dejamo sel resultado en eax
	  ret


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
		
arreglo DB 1,2,3,4,5
n       DB 5
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

resultado resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

; Indirecto por Registro
	mov ecx,5
	mov eax,arreglo
ciclo:
	mov bl,[eax]
	add [resultado],bl
	inc eax
	loop ciclo

; Base + Indice

	mov ecx,5
	mov eax,arreglo
	xor edx,edx
ciclo2:
	mov bl,[eax+edx]
	add [resultado],bl
	inc edx
	loop ciclo2

	
; Indice Escalado

	mov ecx,5
	mov eax,arreglo
	xor edx,edx
ciclo3:
	mov bl,[eax+edx*1] ; *1 Ya que son Bytes
	add [resultado],bl
	inc edx
	loop ciclo3
	
ret
;---------------------------------------
;..........subrutina....................	





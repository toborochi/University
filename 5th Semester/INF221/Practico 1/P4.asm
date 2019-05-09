
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

arreglo db 1,1,2,3,5,8,13
n db 7
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---------------------------------------	

xor ebx,ebx
xor ecx,ecx
mov cl,byte[n]
xor eax,eax
xor edx,edx
ciclo:
	mov al,[arreglo+edx]
	push eax
	inc edx
	loop ciclo
	
xor ebx,ebx
xor ecx,ecx
mov cl,byte[n]
xor eax,eax
xor edx,edx
ciclo2:
	pop eax
	mov [arreglo+edx],al
	inc edx
	loop ciclo2
	

	


ret
;---------------------------------------
;..........subrutina....................	





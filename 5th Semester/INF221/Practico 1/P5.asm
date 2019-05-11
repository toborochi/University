
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

pares   resb 1
impares resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

xor edx,edx
xor ecx,ecx
mov cl,[n]
ciclo:
	xor ax,ax
	mov al,byte[arreglo+edx]
	
	mov bl,2
	div bl
	
	cmp ah,0
	jne impar
	inc byte[pares]
	jmp fin
impar:
	inc byte[impares]
fin:
	inc edx
	loop ciclo

ret
;---------------------------------------
;..........subrutina....................	





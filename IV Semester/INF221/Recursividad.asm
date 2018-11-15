
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

segment .text 
global _main 					
_main:
;---------------------------------------	

xor eax,eax
push 5
call subSuma
add esp,4


ret
;---------------------------------------
;..........subrutina....................	

; Subrutina para sumar n+(n-1)+(n-2)+...+1
subSuma:
	push ebp
	mov ebp,esp
	
		cmp dword[ebp+8],0h
		je fin
			add eax,[ebp+8]
			mov ebx,[ebp+8]
			dec ebx
			push ebx
			call subSuma
fin:
	mov esp,ebp
	pop ebp
ret




extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

x dd 131
y dd 20
z dd 3

segment .bss
;Variables sin Inicializar

mayor resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	
mov ebx,[x]
cmp ebx,dword[y]
jg xmayor
	mov eax,[y]
	jmp salir
xmayor:
	mov eax,[x]
salir:

cmp eax,[z]
jg eaxmayor
	mov eax,[z]
eaxmayor:

mov [mayor],eax

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

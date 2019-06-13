;nasm -f win32 -o 217002498.o 217002498.asm -l 217002498.lst
;gcc -o 217002498.exe 217002498.o


extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

format_string db "%s",0
format_string_out db "%s",10,0

segment .bss
;Variables sin Inicializar 

cad resb 64

segment .text 	
	
global _main 					
_main:
;----------------------------------------------------------------------------	

	push cad
	push format_string
	call _scanf
	add esp,8
	
	push cad
	call maximizar
	add esp,4
	
	push cad
	push format_string_out
	call _printf
	add esp,8
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

maximizar:
	push ebp
	mov ebp,esp
	
	mov eax,[ebp+8]
	
	ciclo:
		
		cmp byte[eax],'a'
		jb nope
		
		cmp byte[eax],'z'
		ja nope
		
		sub byte[eax],0x20
		
		nope:
		inc eax
		cmp byte[eax],0
		jne ciclo
	
	
	mov esp,ebp
	pop ebp
	ret

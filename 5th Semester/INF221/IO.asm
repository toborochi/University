;nasm -f win32 -o 217002498.o 217002498.asm -l 217002498.lst
;gcc -o 217002498.exe 217002498.o


extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

frmt db "%d",0
frmt2 db "%d",10,0
tam dd 5

segment .bss
;Variables sin Inicializar 

arreglo resd 10
entrada resd 1

segment .text 	
	
global _main 					
_main:
;----------------------------------------------------------------------------	

mov ebx,5
mov esi,arreglo

ciclo:
		
	push esi
	push frmt
	call _scanf
	add esp,8
	
	add esi,4
	
	dec ebx
	cmp ebx,0
	jne ciclo

	push dword[tam]
	push arreglo
	call suma
	add esp,8

mov ebx,5
mov esi,arreglo

ciclo2:
		
	push dword[esi]
	push frmt2
	call _printf
	add esp,8
	
	add esi,4
	
	dec ebx
	cmp ebx,0
	jne ciclo2
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	


suma:
	push ebp
	mov ebp,esp
	
	
	mov eax,[ebp+8]
	mov ecx,[ebp+12]
	cic:
		
		add dword[eax],5
		add eax,4
		loop cic
	
	
	mov esp,ebp
	pop ebp
	ret

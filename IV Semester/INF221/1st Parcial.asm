iversidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
; Semestre II - 2018
;
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o 217002498.o 217002498.asm -l P1.lst
;gcc -o 217002498.exe 217002498.o
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;---------------------------------------------------------------------------
; Planteamiento: x = (a^3 + 5*(-b))/(c-d)
;---------------------------------------------------------------------------


extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
a DD 38
b DD -10
c DD 5
d DD 2		
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

x resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	

	mov eax,[a]         ;a
	imul dword[a]   	;a*a
	imul dword[a]       ;a*a*a = a^3
	
	mov ebx,[b]     
	imul ebx,-1 		;-b
	imul ebx,5  		;5*(-b)
	
	add eax,ebx     	;(a^3)+5*(-b)
	
	mov ecx,[c]         
	sub ecx,[d]			;c-d
	
	cmp ecx,0           ;verificamos que el denominador no sea 0
	jz nope   	
	idiv ecx	        ;dividimos si ese no es el caso: ((a^3)+5*(-b))/(c-d)
nope: 
   mov [x],eax          ;finalmente movemos la respuesta a 'x'
   
ret
;---------------------------------------
;..........subrutina....................	



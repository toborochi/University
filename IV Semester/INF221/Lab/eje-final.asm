
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
a	DD	25	 ;# a=25
b	DD  42	 ;# b=42
c	DD	 5 	; # c=5

		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:

mov eax, [a]		 ;# eax=a=25
mov ebx, [b]		 ;# ebx=b=42
mov ecx, [c]		 ;# ecx=c=5
mov eax, ecx		 ;# eax=ecx=5
mov [a], eax		 ;# a=eax=5
lea ecx, [a]		 ;# ecx=dirección de a
mov [ecx], ebx		 ;# a=ebx=42
mov ecx, a			 ;# ecx=dirección de a
;# finalización del programa

ret
	





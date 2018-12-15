
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
		
a DB 0X5A
b DB 0xF9		
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

c resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

xor eax,eax
mov ah,[a]
mov cl,[b]
sub ah,cl
mov [c],ah
ret
;---------------------------------------
;..........subrutina....................	







;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: LAB.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
DATO  DB -89
DATO1 DB +37		
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 

global _main 					
_main:
;---------------------------------------	
;AND
mov al,[DATO]
and al, 0xC3
and byte[DATO1],0x7a
;OR
mov al,[DATO]
or al,0xc3
;XOR
mov al,[DATO]
xor al,0xc3
 

ret
;---------------------------------------
;..........subrutina....................	
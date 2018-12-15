
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o doris.o doris.asm -l doris.lst
;gcc -o doris.exe doris.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: doris.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
 a dw 0X970A
 b dw 0XA1F3 
segment .bss
;aqui van las variables declaradas pero sin inicializar
c resw 1
segment .text 
global _main 					
_main:
mov AX,[a]
add AX,[b]
mov [c],AX
;---------------------------------------	

ret
;---------------------------------------
;..........subrutina....................	





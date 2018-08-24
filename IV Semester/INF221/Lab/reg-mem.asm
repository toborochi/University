
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: reg-mem.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
x	DB	45
y	DW	12345		
segment .bss
;aqui van las variables declaradas pero sin inicializar
a	resd 1
b	resd 1
c	resw 1
d	resb 1

segment .text 
global _main 					
_main:
;carga previa de los registros 
	mov eax, 0x12345678
	mov ebx, -12345678
	mov cx, 0xabcd
	mov dl, 255
;-----------------------------------------
;---direccionamiento directo--------------	
	mov [a], eax ; move a double word to "a"
	mov [b], ebx ; move a double word to "b"
	mov [c], cx  ; move a word to "c"
	mov [d], dl  ; move a byte to "d"
	
	mov [x], al
	mov [y], ax 
	ret





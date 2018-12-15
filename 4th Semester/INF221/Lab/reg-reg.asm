
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: reg-reg.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main: 
mov eax, 0x12345678	;carga previa del registro eax
;-------------------------------------------------------------------------
;---direccionamiento de registro------------------------------------------
	xor ebx, ebx	
	mov bl, ah	;mueve el contenido de ah a bl (1 byte)
	mov cx, ax	;mueve el contenido de ax a bx (2 bytes=1 word)
	mov ebx, eax;mueve el contenido de eax a ebx (1 double word = 4 bytes)
	ret
	





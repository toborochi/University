
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: relativo-reg.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
dato1     DB 0x11,0x22, 0x33, 0x44, 0x55, 0x66
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:	
;---------------------------------------------------------
;DIRECCIONAMIENTO RELATIVO POR REGISTRO (index addressing)
;(llamado tambien MODO BASE + DESPLAZAMIENTO) !!!!!!!!!!!!
;---------------------------------------------------------
nop
xor eax, eax
mov edx, dato1 		;edx=0x00402000
   	 
mov  al, [edx+2]	;al=33              
mov  ax, [edx+2]	;ax=4433 
mov eax, [edx+2]	;eax=66554433             
ret




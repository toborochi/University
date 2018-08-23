;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%

;file: base-indice.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
dato1     DB 0x11, 0x22, 0x33, 0x44, 0x55, 0x66
dato2     DB 0x77, 0x88, 0x99, 0xAA, 0xBB, 0xCC
			
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:	
;--------------------------------------------------------
;direccionamiento "base mas indice" (base index addressing)
;--------------------------------------------------------
	xor eax, eax
	mov ebx, dato1	;dirección 0x00402000
	mov edx, 4  	                  
	mov  al, [ebx+edx]		;0x55
	mov  ax, [ebx+edx]	 	;0x6655
	mov eax, [ebx+edx]		;0x88776655             

;---otra forma-------------------------------------------
	xor eax, eax
	mov edx, 4  	                  
	mov  al, [dato1+edx]	;0x55
	mov  ax, [dato1+edx] 	;0x6655
	mov eax, [dato1+edx]	;0x88776655             
	
;-------------------------------------------------------
;direccionamiento "relativo base mas indice" 
;( llamado tambien: modo base + indice + desplazamiento) 
;-------------------------------------------------------
	xor eax, eax
	mov ebx, dato2			;dirección 0x00402006       
	mov esi, 0 
	mov  al, [ebx+esi+2]	;0x99
	mov  ax, [ebx+esi+2]	;0xaa99 
	mov eax, [ebx+esi+2] 	;0xccbbaa99          

ret



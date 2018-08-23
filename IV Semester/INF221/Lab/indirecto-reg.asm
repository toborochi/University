;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: indirecto-reg.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
dato1     DB 0x11, 0x22, 0x33, 0x44, 0x55
dato2     DB 0x66, 0x77, 0x88, 0x99, 0xAA
		
segment .bss
;aqui van las variables declaradas pero sin inicializar
dato3	resd	1

segment .text 
global _main 					
_main:
;----------------------------------------------	
;direccionamiento indirecto por registro (base)
;----------------------------------------------
	xor eax, eax
	mov ecx, dato2		; dirección ecx= 0x00402005	  
	mov  al, [ecx]		; al= 66             
	mov  ax, [ecx]		; ax= 7766     
	mov eax, [ecx]		; eax= 99887766  
   
	mov ecx, dato3
	mov [ecx], dword 27 ; mueve 27 = 0x1B a la posición de
						;memoria cuya dirección está en el registro ecx

;---------------------------------------------------------
;direccionamiento relativo por registro (index addressing)
;(llamado tambien modo base + desplazamiento) 
;---------------------------------------------------------
	xor eax, eax
	mov edx, dato1		; dirección ecx= 0x00402000   	 
	mov  al, [edx+2]	; al= 33              
	mov  ax, [edx+2] 	; ax= 4433 
	mov eax, [edx+2]	;eax= 66554433              
	ret
	





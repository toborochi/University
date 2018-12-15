
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: inm-reg.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;----------------------------------------------------------------------------
;-------direccionamiento inmediato-------------------------------------------
		xor eax, eax	
		mov ah, 45	 	 ;# mueve 45 al registro de 8 bits ah
		mov ax, -123	 ;# mueve el valor -123 al registro ax
		mov eax, 85	 	 ;# mueve el valor 85 al registro eax
		mov ebx, -5678	 ;# mueve el valor -5678 al registro ebx
		mov ecx, 0x100 	 ;# mueve el valor 0x100 hexadecimal al registro ecx
		
		mov al, "A"		 ; al= 0x41
		mov ax, "AB"	 ; ax= 0x4241
		ret






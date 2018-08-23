
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------
;TITULO direc.asm
; descripcion del programa:este programa ilustra
; los modos de direccionamiento 

;file: direc.asm

extern _printf, _scanf		

segment .data
dato1	DB	0xff
dato2	DW	0xaaff
dato3	DB	0xff
dato4	DW	0xbbcc
dato5	DB	0xff
dato6	DW	0xddee
dato7	DD	0x12345678  
		
segment .bss

segment .text 

global _main 					
_main:
mov  al, 0ffH		;inmediato
mov  ax, 0aaffH		;inmediato
mov ebx, 0x12345678
;--------------------------------
mov byte[dato5], 0aaH	;inmediato
mov word[dato6], 0ffaaH	;inmediato
;---------------------------------	
mov al, bl		;por registro
mov dx, cx		;por registro
mov ebx, eax
;--------------------------------
mov [dato1], al		;directo
mov [dato2], ax		;directo
;--------------------------------
mov al, [dato3]		;directo
mov dx, [dato4]		;directo
;--------------------------------
mov al, [ebx]		;indirecto
mov cx, [ebx]		;indirecto
mov byte [ebx], 10H	;indirecto
mov word [ebx], 1000H   ;indirecto
;--------------------------------


ret
	





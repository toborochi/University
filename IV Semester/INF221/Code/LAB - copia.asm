
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
		
a DW 0X970A
b DW 0x41F3		
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

c resw 1

segment .text 
global _main 					
_main:
;---------------------------------------	

;r/inm
xor eax,eax
mov ax,0X970A
add ax,0xA1F3
mov [c],ax

;m/inm
xor eax,eax
mov word[c],0x970A
add word[c],0xA1F3

;Directo r/m
xor eax,eax
mov ax,[a] ;Vaya a memoria, donde "a" tome el contenido
add ax,[b] ;;Vaya a memoria, donde "b" tome el contenido y sumele a lo que hay en ax
mov [c],ax

;r/r
xor eax,eax
mov ax,[a]
mov bx,[b]
add ax,bx
mov [c],ax

ret
;---------------------------------------
;..........subrutina....................	






;%%%%%%%%%%%%%%%%%%%%%%%
; Registro: 217002498
; Nombre: Anez Vladimirovna Leonardo Henry
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
var1 DD 175		
var2 DQ 4097		
var3 DB 1,2,3,4		
var4 DD 0xFFFFF		
var5 DB 45
var6 DW 1234
arreglo1 DB 0x11, 0x22,0x33,0x44,0x55
arreglo2 DB 0x66, 0x77,0x88,0x99,0xCC
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

var11 resb 1
var22 resw 1
var33 resd 1
var44 resd 1
var55 resd 1
arreglo3 resb 6

segment .text 
global _main 					
_main:
;---------------------------------------	

; registro / inmediato
	xor eax,eax
	
	mov ah,45
	mov ax,-125
	mov eax,85
	mov ebx,-5678
	mov ecx,0x100
	mov al,'A'
	mov ax,"AB"
	
; memoria / inmediato
	
	mov byte[var11],12
	mov word[var22],0x1234
	mov dword[var33],-2147483648
	
; registro / registro
	
	mov eax,0x12345678
	xor ebx,ebx
	mov bl,ah
	mov cx,ax
	mov ebx,eax
	
; registro / memoria
	
	
	mov al,[var1] ; en este caso no hace falta especificar byte[] ya que al es el que manda, y simplemente lo corta
	mov ebx,[var1]
	mov ecx,[var2]
	mov edx,[var3]
	
	xor edx,edx
	mov dl,[var3]
	mov dl,[var3+1]
	mov dl,[var3+2]
	
	; esto mueve la direccion de memoria, RECORDAR: Corchete es contenido
	mov eax,var1
	
; memoria / registro
		
	mov [var33],eax
	mov [var44],ebx
	mov [var22],cx
	mov [var11],dl
	
	mov [var5],al
	
; direccionamiento indirecto por registro (base)
	xor eax,eax
	mov ecx,arreglo2
	mov al,[ecx]
	mov ax,[ecx]
	
	mov ecx,arreglo3
	mov [ecx],byte 0x22
	
ret
;---------------------------------------
;..........subrutina....................

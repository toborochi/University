extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

arreglo DB 1,-2,3,-4,5
n       DD 5
pivote_menor DB 127
pivote_mayor DB -128

segment .bss
;Variables sin Inicializar

mayor resb 1
menor resb 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

	mov ecx,[n]
	mov eax,arreglo
hentai:
	mov bl,[eax]
	
	cmp bl,byte[pivote_menor]
	jge nomenor
		mov byte[pivote_menor],bl
	nomenor:	
	
	cmp bl,byte[pivote_mayor]
	jle nomayor
		mov byte[pivote_mayor],bl
	nomayor:	
	
	inc eax
	loop hentai
	
	mov bl,byte[pivote_menor]
	mov byte[menor],bl
	
	mov bh,byte[pivote_mayor]
	mov byte[mayor],bh

	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

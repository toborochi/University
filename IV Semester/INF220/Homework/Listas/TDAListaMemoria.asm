	.386p
	ifdef ??version
	if ??version GT 500H
	.mmx
	endif
	endif
	model flat
	ifndef	??version
	?debug	macro
	endm
	endif
	?debug	S "TDAListaMemoria.cpp"
	?debug	T "TDAListaMemoria.cpp"
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
_DATA	segment dword public use32 'DATA'
_DATA	ends
_BSS	segment dword public use32 'BSS'
_BSS	ends
$$BSYMS	segment byte public use32 'DEBSYM'
$$BSYMS	ends
$$BTYPES	segment byte public use32 'DEBTYP'
$$BTYPES	ends
$$BNAMES	segment byte public use32 'DEBNAM'
$$BNAMES	ends
$$BROWSE	segment byte public use32 'DEBSYM'
$$BROWSE	ends
$$BROWFILE	segment byte public use32 'DEBSYM'
$$BROWFILE	ends
 ?debug C FB0C0100600000
DGROUP	group	_BSS,_DATA
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@crear$qv	segment virtual
@@TDAListaMemoria@crear$qv	proc	near
?live16385@0:
 ;	
 ;	void TDAListaMemoria::crear()
 ;	
	?debug L 12
	push      ebp
	mov       ebp,esp
 ;	
 ;	{
 ;		Longitud = 0;
 ;	
	?debug L 14
@1:
	mov       eax,dword ptr [ebp+8]
	xor       edx,edx
	mov       dword ptr [eax],edx
 ;	
 ;		PtrElemento = NULO;
 ;	
	?debug L 15
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx+176],-1
 ;	
 ;	}
 ;	
	?debug L 16
@2:
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@crear$qv	endp
@TDAListaMemoria@crear$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	db	2
	db	0
	db	0
	db	0
	dw	72
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch1
	dd	?patch2
	dd	?patch3
	df	@@TDAListaMemoria@crear$qv
	dw	0
	dw	4136
	dw	0
	dw	33
	dw	0
	dw	0
	dw	0
	db	25
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	99
	db	114
	db	101
	db	97
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	34
	dw	0
	dw	0
	dw	0
?patch1	equ	@2-@@TDAListaMemoria@crear$qv+2
?patch2	equ	0
?patch3	equ	@2-@@TDAListaMemoria@crear$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@vacia$qv	segment virtual
@@TDAListaMemoria@vacia$qv	proc	near
?live16386@0:
 ;	
 ;	bool TDAListaMemoria::vacia()
 ;	
	?debug L 18
	push      ebp
	mov       ebp,esp
 ;	
 ;	{
 ;	    return (Longitud == 0);
 ;	
	?debug L 20
@3:
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax],0
	sete      al
	and       eax,1
 ;	
 ;	}
 ;	
	?debug L 21
@5:
@4:
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@vacia$qv	endp
@TDAListaMemoria@vacia$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	72
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch4
	dd	?patch5
	dd	?patch6
	df	@@TDAListaMemoria@vacia$qv
	dw	0
	dw	4183
	dw	0
	dw	35
	dw	0
	dw	0
	dw	0
	db	25
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	118
	db	97
	db	99
	db	105
	db	97
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	36
	dw	0
	dw	0
	dw	0
?patch4	equ	@5-@@TDAListaMemoria@vacia$qv+2
?patch5	equ	0
?patch6	equ	@5-@@TDAListaMemoria@vacia$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@fin$qv	segment virtual
@@TDAListaMemoria@fin$qv	proc	near
?live16387@0:
 ;	
 ;	int TDAListaMemoria::fin()
 ;	
	?debug L 24
	push      ebp
	mov       ebp,esp
	add       esp,-12
 ;	
 ;	{
 ;	    int PtrFin;
 ;		if(vacia())
 ;	
	?debug L 27
@6:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@vacia$qv
	pop       ecx
	test      al,al
	je        short @7
 ;	
 ;		{
 ;	        throw("Lista Vacia...");
 ;	
	?debug L 29
@8:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-8],offset s@+2
	lea       eax,dword ptr [ebp-8]
	push      eax
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;		}else
 ;	
	?debug L 30
@9:
	jmp short @10
 ;	
 ;		{
 ;			int x = PtrElemento;
 ;	
	?debug L 32
@7:
@11:
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [edx+176]
	mov       dword ptr [ebp-12],ecx
 ;	
 ;			while(x!=NULO)
 ;	
	?debug L 33
	cmp       dword ptr [ebp-12],-1
	je        short @13
 ;	
 ;			{
 ;				PtrFin = x;
 ;	
	?debug L 35
@12:
@14:
	mov       eax,dword ptr [ebp-12]
	mov       dword ptr [ebp-4],eax
 ;	
 ;				x = m.obtener_dato(x,2);
 ;	
	?debug L 36
	push      2
	push      dword ptr [ebp-12]
	mov       edx,dword ptr [ebp+8]
	add       edx,4
	push      edx
	call      @@SMemoria@obtener_dato$qii
	add       esp,12
	mov       dword ptr [ebp-12],eax
	?debug L 33
@15:
	cmp       dword ptr [ebp-12],-1
	jne       short @12
 ;	
 ;			}
 ;	        return PtrFin;
 ;	
	?debug L 38
@13:
	mov       eax,dword ptr [ebp-4]
 ;	
 ;	    }
 ;	
 ;	}
 ;	
	?debug L 41
@17:
@10:
@18:
@16:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@fin$qv	endp
@TDAListaMemoria@fin$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	70
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch7
	dd	?patch8
	dd	?patch9
	df	@@TDAListaMemoria@fin$qv
	dw	0
	dw	4185
	dw	0
	dw	37
	dw	0
	dw	0
	dw	0
	db	23
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	102
	db	105
	db	110
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	38
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	116
	dw	0
	dw	39
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch10
	df	@8
	dw	0
	dw	0
?patch10	equ	@9-@8
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch11
	df	@11
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	116
	dw	0
	dw	40
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch12
	df	@14
	dw	0
	dw	0
?patch12	equ	@15-@14
	dw	2
	dw	6
?patch11	equ	@17-@11
	dw	2
	dw	6
?patch7	equ	@18-@@TDAListaMemoria@fin$qv+4
?patch8	equ	0
?patch9	equ	@18-@@TDAListaMemoria@fin$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@primero$qv	segment virtual
@@TDAListaMemoria@primero$qv	proc	near
?live16389@0:
 ;	
 ;	int TDAListaMemoria::primero()
 ;	
	?debug L 43
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	{
 ;		if(!vacia())
 ;	
	?debug L 45
@19:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@vacia$qv
	pop       ecx
	test      al,al
	jne       short @20
 ;	
 ;		{
 ;			return PtrElemento;
 ;	
	?debug L 47
@21:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+176]
@28:
	pop       ecx
	pop       ebp
	ret 
 ;	
 ;		}else
 ;	
	?debug L 48
@23:
@29:
	pop       ecx
	pop       ebp
	ret 
 ;	
 ;		{
 ;	        throw("Lista Vacia...\n");
 ;	
	?debug L 50
@20:
@25:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-4],offset s@+17
	lea       edx,dword ptr [ebp-4]
	push      edx
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;	    }
 ;	}
 ;	
	?debug L 52
@26:
@24:
@27:
@22:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@primero$qv	endp
@TDAListaMemoria@primero$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch13
	dd	?patch14
	dd	?patch15
	df	@@TDAListaMemoria@primero$qv
	dw	0
	dw	4187
	dw	0
	dw	41
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	112
	db	114
	db	105
	db	109
	db	101
	db	114
	db	111
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	42
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch16
	df	@21
	dw	0
	dw	0
?patch16	equ	@23-@21
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch17
	df	@25
	dw	0
	dw	0
?patch17	equ	@26-@25
	dw	2
	dw	6
	dw	8
	dw	530
	dd	@29-@@TDAListaMemoria@primero$qv
	dw	3
	dw	8
	dw	530
	dd	@28-@@TDAListaMemoria@primero$qv
	dw	3
?patch13	equ	@27-@@TDAListaMemoria@primero$qv+3
?patch14	equ	0
?patch15	equ	@27-@@TDAListaMemoria@primero$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@siguiente$qi	segment virtual
@@TDAListaMemoria@siguiente$qi	proc	near
?live16390@0:
 ;	
 ;	int TDAListaMemoria::siguiente(int direccion)
 ;	
	?debug L 54
	push      ebp
	mov       ebp,esp
	add       esp,-8
 ;	
 ;	{
 ;		if(vacia())
 ;	
	?debug L 56
@30:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@vacia$qv
	pop       ecx
	test      al,al
	je        short @31
 ;	
 ;		{
 ;	        throw("Lista Vacia...");
 ;	
	?debug L 58
@32:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-4],offset s@+33
	lea       eax,dword ptr [ebp-4]
	push      eax
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;		}else
 ;	
	?debug L 59
@33:
	jmp short @34
 ;	
 ;		{
 ;			if(direccion == fin())
 ;	
	?debug L 61
@31:
@35:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@fin$qv
	pop       ecx
	cmp       eax,dword ptr [ebp+12]
	jne       short @36
 ;	
 ;			{
 ;				throw("Error, Ultima Direccion...");
 ;	
	?debug L 63
@37:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-8],offset s@+48
	lea       edx,dword ptr [ebp-8]
	push      edx
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;			}else
 ;	
	?debug L 64
@38:
	jmp short @39
 ;	
 ;			{
 ;	            return m.obtener_dato(direccion,2);
 ;	
	?debug L 66
@36:
@40:
	push      2
	push      dword ptr [ebp+12]
	mov       ecx,dword ptr [ebp+8]
	add       ecx,4
	push      ecx
	call      @@SMemoria@obtener_dato$qii
	add       esp,12
 ;	
 ;	        }
 ;	    }
 ;	}
 ;	
	?debug L 69
@42:
@39:
@43:
@34:
@44:
@41:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@siguiente$qi	endp
@TDAListaMemoria@siguiente$qi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	76
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch18
	dd	?patch19
	dd	?patch20
	df	@@TDAListaMemoria@siguiente$qi
	dw	0
	dw	4189
	dw	0
	dw	43
	dw	0
	dw	0
	dw	0
	db	29
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	115
	db	105
	db	103
	db	117
	db	105
	db	101
	db	110
	db	116
	db	101
	db	36
	db	113
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	44
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	45
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch21
	df	@32
	dw	0
	dw	0
?patch21	equ	@33-@32
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch22
	df	@35
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch23
	df	@37
	dw	0
	dw	0
?patch23	equ	@38-@37
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch24
	df	@40
	dw	0
	dw	0
?patch24	equ	@42-@40
	dw	2
	dw	6
?patch22	equ	@43-@35
	dw	2
	dw	6
?patch18	equ	@44-@@TDAListaMemoria@siguiente$qi+4
?patch19	equ	0
?patch20	equ	@44-@@TDAListaMemoria@siguiente$qi
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@anterior$qi	segment virtual
@@TDAListaMemoria@anterior$qi	proc	near
?live16391@0:
 ;	
 ;	int TDAListaMemoria::anterior(int direccion)
 ;	
	?debug L 71
	push      ebp
	mov       ebp,esp
	add       esp,-16
 ;	
 ;	{
 ;		if(vacia())
 ;	
	?debug L 73
@45:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@vacia$qv
	pop       ecx
	test      al,al
	je        short @46
 ;	
 ;		{
 ;	        throw("Lista Vacia...");
 ;	
	?debug L 75
@47:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-4],offset s@+75
	lea       eax,dword ptr [ebp-4]
	push      eax
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;		}else
 ;	
	?debug L 76
@48:
	jmp short @49
 ;	
 ;		{
 ;			if(direccion==primero())
 ;	
	?debug L 78
@46:
@50:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@primero$qv
	pop       ecx
	cmp       eax,dword ptr [ebp+12]
	jne       short @51
 ;	
 ;			{
 ;				throw("Error Primera Direccion");
 ;	
	?debug L 80
@52:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-8],offset s@+90
	lea       edx,dword ptr [ebp-8]
	push      edx
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;			}else
 ;	
	?debug L 81
@53:
	jmp short @54
 ;	
 ;			{
 ;				int x = PtrElemento;
 ;	
	?debug L 83
@51:
@55:
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+176]
	mov       dword ptr [ebp-12],eax
 ;	
 ;				int ant = NULO;
 ;	
	?debug L 84
	mov       dword ptr [ebp-16],-1
 ;	
 ;				while(x!=NULO)
 ;	
	?debug L 85
	cmp       dword ptr [ebp-12],-1
	je        short @57
 ;	
 ;				{
 ;					if(x==direccion)
 ;	
	?debug L 87
@56:
@58:
	mov       edx,dword ptr [ebp-12]
	cmp       edx,dword ptr [ebp+12]
	jne       short @59
 ;	
 ;					{
 ;	                    return ant;
 ;	
	?debug L 89
@60:
	mov       eax,dword ptr [ebp-16]
	jmp short @61
 ;	
 ;					}
 ;					ant = x;
 ;	
	?debug L 91
@62:
@59:
	mov       edx,dword ptr [ebp-12]
	mov       dword ptr [ebp-16],edx
 ;	
 ;					x = m.obtener_dato(x,2);
 ;	
	?debug L 92
	push      2
	push      dword ptr [ebp-12]
	mov       ecx,dword ptr [ebp+8]
	add       ecx,4
	push      ecx
	call      @@SMemoria@obtener_dato$qii
	add       esp,12
	mov       dword ptr [ebp-12],eax
	?debug L 85
@63:
	cmp       dword ptr [ebp-12],-1
	jne       short @56
 ;	
 ;	            }
 ;	        }
 ;		}
 ;	}
 ;	
	?debug L 96
@57:
@64:
@54:
@65:
@49:
@66:
@61:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@anterior$qi	endp
@TDAListaMemoria@anterior$qi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	75
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch25
	dd	?patch26
	dd	?patch27
	df	@@TDAListaMemoria@anterior$qi
	dw	0
	dw	4191
	dw	0
	dw	46
	dw	0
	dw	0
	dw	0
	db	28
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	97
	db	110
	db	116
	db	101
	db	114
	db	105
	db	111
	db	114
	db	36
	db	113
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	47
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	48
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch28
	df	@47
	dw	0
	dw	0
?patch28	equ	@48-@47
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch29
	df	@50
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch30
	df	@52
	dw	0
	dw	0
?patch30	equ	@53-@52
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch31
	df	@55
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65520
	dw	65535
	dw	116
	dw	0
	dw	49
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	116
	dw	0
	dw	50
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch32
	df	@58
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch33
	df	@60
	dw	0
	dw	0
?patch33	equ	@62-@60
	dw	2
	dw	6
?patch32	equ	@63-@58
	dw	2
	dw	6
?patch31	equ	@64-@55
	dw	2
	dw	6
?patch29	equ	@65-@50
	dw	2
	dw	6
?patch25	equ	@66-@@TDAListaMemoria@anterior$qi+4
?patch26	equ	0
?patch27	equ	@66-@@TDAListaMemoria@anterior$qi
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@recupera$qi	segment virtual
@@TDAListaMemoria@recupera$qi	proc	near
?live16392@0:
 ;	
 ;	int TDAListaMemoria::recupera(int direccion)
 ;	
	?debug L 98
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	{
 ;		if(vacia())
 ;	
	?debug L 100
@67:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@vacia$qv
	pop       ecx
	test      al,al
	je        short @68
 ;	
 ;		{
 ;	        throw("Lista Vacia...");
 ;	
	?debug L 102
@69:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-4],offset s@+114
	lea       eax,dword ptr [ebp-4]
	push      eax
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;		}else
 ;	
	?debug L 103
@70:
@76:
	pop       ecx
	pop       ebp
	ret 
 ;	
 ;		{
 ;	        return m.obtener_dato(direccion,1);
 ;	
	?debug L 105
@68:
@72:
	push      1
	push      dword ptr [ebp+12]
	mov       edx,dword ptr [ebp+8]
	add       edx,4
	push      edx
	call      @@SMemoria@obtener_dato$qii
	add       esp,12
 ;	
 ;		}
 ;	}
 ;	
	?debug L 107
@74:
@71:
@75:
@73:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@recupera$qi	endp
@TDAListaMemoria@recupera$qi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	75
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch34
	dd	?patch35
	dd	?patch36
	df	@@TDAListaMemoria@recupera$qi
	dw	0
	dw	4193
	dw	0
	dw	51
	dw	0
	dw	0
	dw	0
	db	28
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	114
	db	101
	db	99
	db	117
	db	112
	db	101
	db	114
	db	97
	db	36
	db	113
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	52
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	53
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch37
	df	@69
	dw	0
	dw	0
?patch37	equ	@70-@69
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch38
	df	@72
	dw	0
	dw	0
?patch38	equ	@74-@72
	dw	2
	dw	6
	dw	8
	dw	530
	dd	@76-@@TDAListaMemoria@recupera$qi
	dw	3
?patch34	equ	@75-@@TDAListaMemoria@recupera$qi+3
?patch35	equ	0
?patch36	equ	@75-@@TDAListaMemoria@recupera$qi
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@longitud$qv	segment virtual
@@TDAListaMemoria@longitud$qv	proc	near
?live16393@0:
 ;	
 ;	int TDAListaMemoria::longitud()
 ;	
	?debug L 109
	push      ebp
	mov       ebp,esp
 ;	
 ;	{
 ;	    return Longitud;
 ;	
	?debug L 111
@77:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax]
 ;	
 ;	}
 ;	
	?debug L 112
@79:
@78:
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@longitud$qv	endp
@TDAListaMemoria@longitud$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	75
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch39
	dd	?patch40
	dd	?patch41
	df	@@TDAListaMemoria@longitud$qv
	dw	0
	dw	4195
	dw	0
	dw	54
	dw	0
	dw	0
	dw	0
	db	28
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	108
	db	111
	db	110
	db	103
	db	105
	db	116
	db	117
	db	100
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	55
	dw	0
	dw	0
	dw	0
?patch39	equ	@79-@@TDAListaMemoria@longitud$qv+2
?patch40	equ	0
?patch41	equ	@79-@@TDAListaMemoria@longitud$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@inserta$qii	segment virtual
@@TDAListaMemoria@inserta$qii	proc	near
?live16394@0:
 ;	
 ;	void TDAListaMemoria::inserta(int direccion,int elemento)
 ;	
	?debug L 114
	push      ebp
	mov       ebp,esp
	add       esp,-12
	push      ebx
 ;	
 ;	{
 ;		int x = m.new_espacio(2);
 ;	
	?debug L 116
@80:
	push      2
	mov       eax,dword ptr [ebp+8]
	add       eax,4
	push      eax
	call      @@SMemoria@new_espacio$qi
	add       esp,8
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;		if(x!=NULO)
 ;	
	?debug L 118
	cmp       dword ptr [ebp-4],-1
	je        @82
 ;	
 ;		{
 ;			m.poner_dato(x,1,elemento);
 ;	
	?debug L 120
@83:
	push      dword ptr [ebp+16]
	push      1
	push      dword ptr [ebp-4]
	mov       edx,dword ptr [ebp+8]
	add       edx,4
	push      edx
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;			m.poner_dato(x,2,NULO);
 ;	
	?debug L 121
	push      -1
	push      2
	push      dword ptr [ebp-4]
	mov       ecx,dword ptr [ebp+8]
	add       ecx,4
	push      ecx
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;			if(vacia())
 ;	
	?debug L 122
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@vacia$qv
	pop       ecx
	test      al,al
	je        short @84
 ;	
 ;			{
 ;				PtrElemento = x;
 ;	
	?debug L 124
@85:
	mov       eax,dword ptr [ebp-4]
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx+176],eax
 ;	
 ;	            Longitud = 1;
 ;	
	?debug L 125
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],1
 ;	
 ;			}else
 ;	
	?debug L 126
@86:
	jmp @97
 ;	
 ;			{
 ;				Longitud++;
 ;	
	?debug L 128
@84:
@88:
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [eax]
 ;	
 ;				if(direccion==primero())
 ;	
	?debug L 129
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@primero$qv
	pop       ecx
	cmp       eax,dword ptr [ebp+12]
	jne       short @89
 ;	
 ;				{
 ;					m.poner_dato(x,2,direccion);
 ;	
	?debug L 131
@90:
	push      dword ptr [ebp+12]
	push      2
	push      dword ptr [ebp-4]
	mov       edx,dword ptr [ebp+8]
	add       edx,4
	push      edx
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;	                PtrElemento = x;
 ;	
	?debug L 132
	mov       ecx,dword ptr [ebp-4]
	mov       ebx,dword ptr [ebp+8]
	mov       dword ptr [ebx+176],ecx
 ;	
 ;				}else
 ;	
	?debug L 133
@91:
	jmp short @97
 ;	
 ;				{
 ;					int ant = anterior(direccion);
 ;	
	?debug L 135
@89:
@93:
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@anterior$qi
	add       esp,8
	mov       dword ptr [ebp-8],eax
 ;	
 ;					m.poner_dato(ant,2,x);
 ;	
	?debug L 136
	push      dword ptr [ebp-4]
	push      2
	push      dword ptr [ebp-8]
	mov       eax,dword ptr [ebp+8]
	add       eax,4
	push      eax
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;	                m.poner_dato(x,2,direccion);
 ;	
	?debug L 137
	push      dword ptr [ebp+12]
	push      2
	push      dword ptr [ebp-4]
	mov       edx,dword ptr [ebp+8]
	add       edx,4
	push      edx
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;	            }
 ;	
 ;	        }
 ;		}else
 ;	
	?debug L 141
@94:
@95:
@96:
	jmp short @97
 ;	
 ;		{
 ;			throw("Existe  Espacio de Memoria...");
 ;	
	?debug L 143
@82:
@98:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-12],offset s@+129
	lea       ecx,dword ptr [ebp-12]
	push      ecx
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;	    }
 ;	}
 ;	
	?debug L 145
@99:
@97:
@100:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@inserta$qii	endp
@TDAListaMemoria@inserta$qii	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	75
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch42
	dd	?patch43
	dd	?patch44
	df	@@TDAListaMemoria@inserta$qii
	dw	0
	dw	4197
	dw	0
	dw	56
	dw	0
	dw	0
	dw	0
	db	28
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	105
	db	110
	db	115
	db	101
	db	114
	db	116
	db	97
	db	36
	db	113
	db	105
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	57
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	58
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	116
	dw	0
	dw	59
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	116
	dw	0
	dw	60
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch45
	df	@83
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch46
	df	@85
	dw	0
	dw	0
?patch46	equ	@86-@85
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch47
	df	@88
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch48
	df	@90
	dw	0
	dw	0
?patch48	equ	@91-@90
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch49
	df	@93
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	61
	dw	0
	dw	0
	dw	0
?patch49	equ	@94-@93
	dw	2
	dw	6
?patch47	equ	@95-@88
	dw	2
	dw	6
?patch45	equ	@96-@83
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch50
	df	@98
	dw	0
	dw	0
?patch50	equ	@99-@98
	dw	2
	dw	6
?patch42	equ	@100-@@TDAListaMemoria@inserta$qii+5
?patch43	equ	0
?patch44	equ	@100-@@TDAListaMemoria@inserta$qii
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65520
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@modifica$qii	segment virtual
@@TDAListaMemoria@modifica$qii	proc	near
?live16395@0:
 ;	
 ;	void TDAListaMemoria::modifica(int direccion,int elemento)
 ;	
	?debug L 147
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	{
 ;		if(vacia())
 ;	
	?debug L 149
@101:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@vacia$qv
	pop       ecx
	test      al,al
	je        short @102
 ;	
 ;		{
 ;	        throw("Lista esta Vacia...");
 ;	
	?debug L 151
@103:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-4],offset s@+159
	lea       eax,dword ptr [ebp-4]
	push      eax
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;		}else
 ;	
	?debug L 152
@104:
@109:
	pop       ecx
	pop       ebp
	ret 
 ;	
 ;		{
 ;	        m.poner_dato(direccion,1,elemento);
 ;	
	?debug L 154
@102:
@106:
	push      dword ptr [ebp+16]
	push      1
	push      dword ptr [ebp+12]
	mov       edx,dword ptr [ebp+8]
	add       edx,4
	push      edx
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;	    }
 ;	
 ;	}
 ;	
	?debug L 157
@107:
@105:
@108:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@modifica$qii	endp
@TDAListaMemoria@modifica$qii	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	76
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch51
	dd	?patch52
	dd	?patch53
	df	@@TDAListaMemoria@modifica$qii
	dw	0
	dw	4199
	dw	0
	dw	62
	dw	0
	dw	0
	dw	0
	db	29
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	109
	db	111
	db	100
	db	105
	db	102
	db	105
	db	99
	db	97
	db	36
	db	113
	db	105
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	63
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	64
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	116
	dw	0
	dw	65
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch54
	df	@103
	dw	0
	dw	0
?patch54	equ	@104-@103
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch55
	df	@106
	dw	0
	dw	0
?patch55	equ	@107-@106
	dw	2
	dw	6
	dw	8
	dw	530
	dd	@109-@@TDAListaMemoria@modifica$qii
	dw	3
?patch51	equ	@108-@@TDAListaMemoria@modifica$qii+3
?patch52	equ	0
?patch53	equ	@108-@@TDAListaMemoria@modifica$qii
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@imprimir$qv	segment virtual
@@TDAListaMemoria@imprimir$qv	proc	near
?live16396@0:
 ;	
 ;	void TDAListaMemoria::imprimir()
 ;	
	?debug L 160
	push      ebp
	mov       ebp,esp
	add       esp,-12
 ;	
 ;	{
 ;		if(vacia())
 ;	
	?debug L 162
@110:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@vacia$qv
	pop       ecx
	test      al,al
	je        short @111
 ;	
 ;		{
 ;			throw("Lista Vacia...");
 ;	
	?debug L 164
@112:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-4],offset s@+179
	lea       eax,dword ptr [ebp-4]
	push      eax
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;		}else
 ;	
	?debug L 165
@113:
	jmp @114
 ;	
 ;		{
 ;			int p = primero();
 ;	
	?debug L 167
@111:
@115:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@primero$qv
	pop       ecx
	mov       dword ptr [ebp-8],eax
 ;	
 ;			std::cout<<"<";
 ;	
	?debug L 168
	push      offset s@+194
	push      offset @std@cout
	call      @@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%
	add       esp,8
	jmp short @117
 ;	
 ;	
 ;			while(p!=fin())
 ;			{
 ;				int e = recupera(p);
 ;	
	?debug L 172
@116:
@118:
	push      dword ptr [ebp-8]
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@recupera$qi
	add       esp,8
	mov       dword ptr [ebp-12],eax
 ;	
 ;				std::cout<<e<< ((p!=NULO)?", ":"") ;
 ;	
	?debug L 173
	cmp       dword ptr [ebp-8],-1
	je        short @119
	mov       edx,offset s@+196
	jmp short @120
@119:
	mov       edx,offset s@+199
@120:
	push      edx
	push      dword ptr [ebp-12]
	push      offset @std@cout
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi
	add       esp,8
	push      eax
	call      @@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%
	add       esp,8
 ;	
 ;				p = siguiente(p);
 ;	
	?debug L 174
	push      dword ptr [ebp-8]
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@siguiente$qi
	add       esp,8
	mov       dword ptr [ebp-8],eax
	?debug L 170
@121:
@117:
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@fin$qv
	pop       ecx
	cmp       eax,dword ptr [ebp-8]
	jne       short @116
 ;	
 ;			}
 ;	        std::cout<<recupera(fin());
 ;	
	?debug L 176
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@fin$qv
	pop       ecx
	push      eax
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@recupera$qi
	add       esp,8
	push      eax
	push      offset @std@cout
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi
	add       esp,8
 ;	
 ;	
 ;			std::cout<<">"<<std::endl;
 ;	
	?debug L 178
	push      offset @@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%
	push      offset s@+200
	push      offset @std@cout
	call      @@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%
	add       esp,8
	push      eax
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%
	add       esp,8
 ;	
 ;	
 ;		}
 ;	}
 ;	
	?debug L 181
@122:
@114:
@123:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@imprimir$qv	endp
@TDAListaMemoria@imprimir$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	75
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch56
	dd	?patch57
	dd	?patch58
	df	@@TDAListaMemoria@imprimir$qv
	dw	0
	dw	4201
	dw	0
	dw	66
	dw	0
	dw	0
	dw	0
	db	28
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	105
	db	109
	db	112
	db	114
	db	105
	db	109
	db	105
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	67
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch59
	df	@112
	dw	0
	dw	0
?patch59	equ	@113-@112
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch60
	df	@115
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	68
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch61
	df	@118
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	116
	dw	0
	dw	69
	dw	0
	dw	0
	dw	0
?patch61	equ	@121-@118
	dw	2
	dw	6
?patch60	equ	@122-@115
	dw	2
	dw	6
?patch56	equ	@123-@@TDAListaMemoria@imprimir$qv+4
?patch57	equ	0
?patch58	equ	@123-@@TDAListaMemoria@imprimir$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TDAListaMemoria@suprime$qi	segment virtual
@@TDAListaMemoria@suprime$qi	proc	near
?live16401@0:
 ;	
 ;	void TDAListaMemoria::suprime(int direccion)
 ;	
	?debug L 184
	push      ebp
	mov       ebp,esp
	add       esp,-12
	push      ebx
 ;	
 ;	{
 ;		if(Longitud==0)
 ;	
	?debug L 186
@124:
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax],0
	jne       short @125
 ;	
 ;		{
 ;	        throw("Lista Vacia...");
 ;	
	?debug L 188
@126:
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	push      0
	mov       dword ptr [ebp-4],offset s@+202
	lea       edx,dword ptr [ebp-4]
	push      edx
	push      offset @@$xt$pxc
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
 ;	
 ;		}
 ;		if(direccion==PtrElemento)
 ;	
	?debug L 190
@127:
@125:
	mov       ecx,dword ptr [ebp+12]
	mov       ebx,dword ptr [ebp+8]
	cmp       ecx,dword ptr [ebx+176]
	jne       short @128
 ;	
 ;		{
 ;			int x = PtrElemento;
 ;	
	?debug L 192
@129:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+176]
	mov       dword ptr [ebp-8],edx
 ;	
 ;			PtrElemento = m.obtener_dato(PtrElemento,2);
 ;	
	?debug L 193
	push      2
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx+176]
	mov       eax,dword ptr [ebp+8]
	add       eax,4
	push      eax
	call      @@SMemoria@obtener_dato$qii
	add       esp,12
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx+176],eax
 ;	
 ;			m.poner_dato(direccion,PtrElemento,NULO);
 ;	
	?debug L 194
	push      -1
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx+176]
	push      dword ptr [ebp+12]
	mov       eax,dword ptr [ebp+8]
	add       eax,4
	push      eax
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;		}else
 ;	
	?debug L 195
@130:
	jmp short @131
 ;	
 ;		{
 ;			int ant = anterior(direccion);
 ;	
	?debug L 197
@128:
@132:
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@anterior$qi
	add       esp,8
	mov       dword ptr [ebp-12],eax
 ;	
 ;			m.poner_dato(ant,2,siguiente(direccion));
 ;	
	?debug L 198
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@TDAListaMemoria@siguiente$qi
	add       esp,8
	push      eax
	push      2
	push      dword ptr [ebp-12]
	mov       edx,dword ptr [ebp+8]
	add       edx,4
	push      edx
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;	        m.poner_dato(direccion,ant,NULO);
 ;	
	?debug L 199
	push      -1
	push      dword ptr [ebp-12]
	push      dword ptr [ebp+12]
	mov       ecx,dword ptr [ebp+8]
	add       ecx,4
	push      ecx
	call      @@SMemoria@poner_dato$qiii
	add       esp,16
 ;	
 ;	    }
 ;	}
 ;	
	?debug L 201
@133:
@131:
@134:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TDAListaMemoria@suprime$qi	endp
@TDAListaMemoria@suprime$qi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch62
	dd	?patch63
	dd	?patch64
	df	@@TDAListaMemoria@suprime$qi
	dw	0
	dw	4203
	dw	0
	dw	70
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	84
	db	68
	db	65
	db	76
	db	105
	db	115
	db	116
	db	97
	db	77
	db	101
	db	109
	db	111
	db	114
	db	105
	db	97
	db	64
	db	115
	db	117
	db	112
	db	114
	db	105
	db	109
	db	101
	db	36
	db	113
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	71
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	72
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch65
	df	@126
	dw	0
	dw	0
?patch65	equ	@127-@126
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch66
	df	@129
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	73
	dw	0
	dw	0
	dw	0
?patch66	equ	@130-@129
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch67
	df	@132
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	116
	dw	0
	dw	74
	dw	0
	dw	0
	dw	0
?patch67	equ	@133-@132
	dw	2
	dw	6
?patch62	equ	@134-@@TDAListaMemoria@suprime$qi+5
?patch63	equ	0
?patch64	equ	@134-@@TDAListaMemoria@suprime$qi
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65520
	dw	65535
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$CHEDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$CHEDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	label	dword
	dd	0
	dd	0
	dd	@135
	dd	0
	dd	1
	dd	0
	dd	0
	dd	0
@_$CHEDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCFDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$DCFDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	label	dword
	dd	@@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	dd	4
	dd	-8
	dd	0
@_$DCFDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTGDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$ECTGDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	label	dword
	dd	0
	dd	0
	dd	-44
	dw	0
	dw	5
	dd	0
	dd	@@_$DCFDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCFDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%
	dw	24
	dw	3
	dd	@@_$CHEDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%
	dw	24
	dw	4
	dw	36
	dw	5
	dd	0
	dd	0
@_$ECTGDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
@@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	proc	near
?live16397@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ostream"
 ;	
 ;	
 ;	
	?debug L 657
	push      ebp
	mov       ebp,esp
	add       esp,-72
	push      ebx
	push      esi
	push      edi
@136:
	mov       eax,offset @@_$ECTGDB$@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 663
	xor       edx,edx
	mov       dword ptr [ebp-48],edx
 ;	
 ;	
 ;	
	?debug L 664
	push      dword ptr [ebp+12]
	call      @@std@%char_traits$c%@length$qpxc
	pop       ecx
	mov       dword ptr [ebp-52],eax
 ;	
 ;	
 ;	
	?debug L 665
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @@std@ios_base@width$xqv
	pop       ecx
	test      eax,eax
	jle       short @139
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax]
	call      @@std@ios_base@width$xqv
	pop       ecx
	cmp       eax,dword ptr [ebp-52]
	jg        short @137
@139:
	xor       edx,edx
	jmp short @138
@137:
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @@std@ios_base@width$xqv
	pop       ecx
	mov       edx,eax
	sub       edx,dword ptr [ebp-52]
@138:
	mov       dword ptr [ebp-56],edx
 ;	
 ;	
 ;	
	?debug L 667
	mov       word ptr [ebp-28],12
	push      dword ptr [ebp+8]
	lea       eax,dword ptr [ebp-8]
	push      eax
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	add       esp,8
	add       dword ptr [ebp-16],2
	mov       word ptr [ebp-28],24
 ;	
 ;	
 ;	
	?debug L 669
	lea       ecx,dword ptr [ebp-8]
	push      ecx
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv
	pop       ecx
	test      al,al
	jne       short @140
 ;	
 ;	
 ;	
	?debug L 670
	push      4
	lea       eax,dword ptr [ebp-48]
	push      eax
	call      @@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	add       esp,8
	jmp @141
 ;	
 ;	
 ;	
	?debug L 673
@140:
@142:
	mov       word ptr [ebp-28],36
 ;	
 ;	
 ;	
	?debug L 674
	push      14
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	cmp       eax,2
	je        short @144
 ;	
 ;	
 ;	
	?debug L 675
	cmp       dword ptr [ebp-56],0
	jle       short @146
 ;	
 ;	
 ;	
	?debug L 676
@145:
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv
	pop       ecx
	push      eax
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	push      eax
	call      @@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc
	add       esp,8
	mov       dword ptr [ebp-64],eax
	lea       edx,dword ptr [ebp-64]
	push      edx
	call      @@std@%char_traits$c%@eof$qv
	mov       dword ptr [ebp-60],eax
	lea       ecx,dword ptr [ebp-60]
	push      ecx
	call      @@std@%char_traits$c%@eq_int_type$qrxit1
	add       esp,8
	test      al,al
	je        short @147
 ;	
 ;	
 ;	
	?debug L 679
@148:
	push      4
	lea       eax,dword ptr [ebp-48]
	push      eax
	call      @@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 680
	jmp short @149
	?debug L 675
@150:
@147:
	dec       dword ptr [ebp-56]
	cmp       dword ptr [ebp-56],0
	jg        short @145
 ;	
 ;	
 ;	
	?debug L 683
@146:
@149:
@144:
	cmp       dword ptr [ebp-48],0
	jne       short @152
	push      dword ptr [ebp-52]
	push      dword ptr [ebp+12]
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	push      eax
	call      @@std@%basic_streambuf$c19std@%char_traits$c%%@sputn$qpxci
	add       esp,12
	cmp       eax,dword ptr [ebp-52]
	je        short @152
 ;	
 ;	
 ;	
	?debug L 685
	push      4
	lea       ecx,dword ptr [ebp-48]
	push      ecx
	call      @@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 687
@152:
	cmp       dword ptr [ebp-48],0
	jne       short @154
 ;	
 ;	
 ;	
	?debug L 688
	cmp       dword ptr [ebp-56],0
	jle       short @156
 ;	
 ;	
 ;	
	?debug L 689
@155:
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv
	pop       ecx
	push      eax
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	push      eax
	call      @@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc
	add       esp,8
	mov       dword ptr [ebp-72],eax
	lea       ecx,dword ptr [ebp-72]
	push      ecx
	call      @@std@%char_traits$c%@eof$qv
	mov       dword ptr [ebp-68],eax
	lea       eax,dword ptr [ebp-68]
	push      eax
	call      @@std@%char_traits$c%@eq_int_type$qrxit1
	add       esp,8
	test      al,al
	je        short @157
 ;	
 ;	
 ;	
	?debug L 692
@158:
	push      4
	lea       edx,dword ptr [ebp-48]
	push      edx
	call      @@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 693
	jmp short @159
	?debug L 688
@160:
@157:
	dec       dword ptr [ebp-56]
	cmp       dword ptr [ebp-56],0
	jg        short @155
 ;	
 ;	
 ;	
	?debug L 695
@156:
@159:
@154:
	push      0
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @@std@ios_base@width$qi
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 696
	mov       word ptr [ebp-28],24
	jmp short @162
@163:
@135:
	push      1
	push      4
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
@164:
	mov       word ptr [ebp-28],44
	call      @@_CatchCleanup$qv
 ;	
 ;	
 ;	
	?debug L 699
@162:
@165:
@141:
	push      0
	push      dword ptr [ebp-48]
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 700
	mov       eax,dword ptr [ebp+8]
	push      eax
	sub       dword ptr [ebp-16],2
	push      2
	lea       edx,dword ptr [ebp-8]
	push      edx
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 701
@167:
@166:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	endp
@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	153
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch68
	dd	?patch69
	dd	?patch70
	df	@@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%
	dw	0
	dw	4205
	dw	0
	dw	698
	dw	0
	dw	0
	dw	0
	db	106
	db	64
	db	115
	db	116
	db	100
	db	64
	db	36
	db	98
	db	108
	db	115
	db	104
	db	36
	db	113
	db	114
	db	52
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	112
	db	120
	db	99
	db	36
	db	114
	db	52
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4206
	dw	0
	dw	699
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	700
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	5647
	dw	0
	dw	701
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	116
	dw	0
	dw	702
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65484
	dw	65535
	dw	116
	dw	0
	dw	703
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	4222
	dw	0
	dw	704
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4207
	dw	0
	dw	0
	dw	705
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	112
	dw	0
	dw	0
	dw	706
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch71
	df	@142
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch72
	df	@148
	dw	0
	dw	0
?patch72	equ	@150-@148
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch73
	df	@158
	dw	0
	dw	0
?patch73	equ	@160-@158
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch74
	df	@163
	dw	0
	dw	0
?patch74	equ	@164-@163
	dw	2
	dw	6
?patch71	equ	@165-@142
	dw	2
	dw	6
?patch68	equ	@167-@@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%+7
?patch69	equ	0
?patch70	equ	@167-@@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%
	dw	2
	dw	6
	dw	8
	dw	531
	dw	7
	dw	65452
	dw	65535
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$CHHDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	segment virtual
	align	2
@@_$CHHDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	label	dword
	dd	0
	dd	0
	dd	@168
	dd	0
	dd	0
	dd	0
	dd	0
	dd	0
@_$CHHDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCIDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	segment virtual
	align	2
@@_$DCIDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	label	dword
	dd	@@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$10std@locale
	dd	4
	dd	-24
	dd	0
	dd	@@$xt$10std@locale
	dd	2052
	dd	-24
	dd	0
@_$DCIDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTJDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	segment virtual
	align	2
@@_$ECTJDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	label	dword
	dd	0
	dd	0
	dd	-60
	dw	0
	dw	5
	dd	0
	dd	@@_$DCIDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCIDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi
	dw	24
	dw	5
	dd	2
	dd	@@_$DCIDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi+48
	dw	24
	dw	5
	dd	2
	dd	@@_$DCIDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi+32
	dw	48
	dw	3
	dd	@@_$CHHDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi
	dw	48
	dw	4
	dw	60
	dw	5
	dd	0
	dd	0
@_$ECTJDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	proc	near
?live16398@0:
 ;	
 ;	
 ;	
	?debug L 230
	push      ebp
	mov       ebp,esp
	add       esp,-92
	push      ebx
	push      esi
	push      edi
@169:
	mov       eax,offset @@_$ECTJDB$@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 232
	xor       edx,edx
	mov       dword ptr [ebp-64],edx
 ;	
 ;	
 ;	
	?debug L 233
	mov       word ptr [ebp-44],12
	push      dword ptr [ebp+8]
	lea       ecx,dword ptr [ebp-8]
	push      ecx
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	add       esp,8
	add       dword ptr [ebp-32],2
	mov       word ptr [ebp-44],24
 ;	
 ;	
 ;	
	?debug L 235
	lea       eax,dword ptr [ebp-8]
	push      eax
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv
	pop       ecx
	test      al,al
	je        @171
 ;	
 ;	
 ;	
	?debug L 237
@172:
	mov       word ptr [ebp-44],36
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	lea       ecx,dword ptr [ebp-24]
	push      ecx
	call      @@std@ios_base@getloc$xqv
	add       esp,8
	lea       eax,dword ptr [ebp-24]
	push      eax
	inc       dword ptr [ebp-32]
	call      @@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	pop       ecx
	mov       dword ptr [ebp-68],eax
	mov       word ptr [ebp-44],48
 ;	
 ;	
 ;	
	?debug L 239
	push      112
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	mov       dword ptr [ebp-72],eax
 ;	
 ;	
 ;	
	?debug L 240
	cmp       dword ptr [ebp-72],32
	je        short @175
	cmp       dword ptr [ebp-72],64
	jne       short @173
@175:
	mov       ecx,dword ptr [ebp+12]
	jmp short @174
@173:
	mov       ecx,dword ptr [ebp+12]
@174:
	mov       dword ptr [ebp-76],ecx
 ;	
 ;	
 ;	
	?debug L 244
	mov       word ptr [ebp-44],60
 ;	
 ;	
 ;	
	?debug L 245
	push      dword ptr [ebp-76]
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv
	pop       ecx
	push      eax
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	add       esp,-16
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	push      eax
	lea       edx,dword ptr [esp+4]
	push      edx
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%
	add       esp,8
	push      dword ptr [ebp-68]
	lea       ecx,dword ptr [ebp-92]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl
	add       esp,36
	lea       eax,dword ptr [ebp-92]
	push      eax
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv
	pop       ecx
	test      al,al
	je        short @176
 ;	
 ;	
 ;	
	?debug L 247
	push      4
	lea       edx,dword ptr [ebp-64]
	push      edx
	call      @@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 248
@176:
	mov       word ptr [ebp-44],48
	jmp short @177
@178:
@168:
	push      1
	push      4
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
@179:
	mov       word ptr [ebp-44],68
	call      @@_CatchCleanup$qv
 ;	
 ;	
 ;	
	?debug L 249
@177:
	dec       dword ptr [ebp-32]
	push      2
	lea       eax,dword ptr [ebp-24]
	push      eax
	call      @@std@locale@$bdtr$qv
	add       esp,8
	mov       word ptr [ebp-44],24
 ;	
 ;	
 ;	
	?debug L 251
@180:
@171:
	push      0
	push      dword ptr [ebp-64]
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 252
	mov       eax,dword ptr [ebp+8]
	push      eax
	sub       dword ptr [ebp-32],2
	push      2
	lea       edx,dword ptr [ebp-8]
	push      edx
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-60]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 253
@182:
@181:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	endp
@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	99
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch75
	dd	?patch76
	dd	?patch77
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi
	dw	0
	dw	5741
	dw	0
	dw	707
	dw	0
	dw	0
	dw	0
	db	52
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	108
	db	115
	db	104
	db	36
	db	113
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5614
	dw	0
	dw	708
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	709
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	5647
	dw	0
	dw	710
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65472
	dw	65535
	dw	4222
	dw	0
	dw	711
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch78
	df	@172
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65460
	dw	65535
	dw	18
	dw	0
	dw	712
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65464
	dw	65535
	dw	4219
	dw	0
	dw	713
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65468
	dw	65535
	dw	5743
	dw	0
	dw	714
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch79
	df	@178
	dw	0
	dw	0
?patch79	equ	@179-@178
	dw	2
	dw	6
?patch78	equ	@180-@172
	dw	2
	dw	6
?patch75	equ	@182-@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi+7
?patch76	equ	0
?patch77	equ	@182-@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi
	dw	2
	dw	6
	dw	8
	dw	531
	dw	7
	dw	65432
	dw	65535
?t1 = -132
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%	proc	near
?live16399@0:
 ;	
 ;	
 ;	
	?debug L 145
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 148
@183:
	push      dword ptr [ebp+8]
	call      dword ptr [ebp+12]
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 149
@185:
@184:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%	endp
@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	191
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch80
	dd	?patch81
	dd	?patch82
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%
	dw	0
	dw	5745
	dw	0
	dw	715
	dw	0
	dw	0
	dw	0
	db	144
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	108
	db	115
	db	104
	db	36
	db	113
	db	112
	db	113
	db	114
	db	52
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	36
	db	114
	db	52
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5614
	dw	0
	dw	716
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5669
	dw	0
	dw	717
	dw	0
	dw	0
	dw	0
?patch80	equ	@185-@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%+2
?patch81	equ	0
?patch82	equ	@185-@@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
@@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%	proc	near
?live16400@0:
 ;	
 ;	
 ;	
	?debug L 859
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 861
@186:
	push      10
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc
	add       esp,8
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@put$qc
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 862
	push      dword ptr [ebp+8]
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 863
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 864
@188:
@187:
	pop       ebp
	ret 
	?debug L 0
@@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%	endp
@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	174
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch83
	dd	?patch84
	dd	?patch85
	df	@@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%
	dw	0
	dw	5747
	dw	0
	dw	718
	dw	0
	dw	0
	dw	0
	db	127
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	101
	db	110
	db	100
	db	108
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	36
	db	113
	db	114
	db	52
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	36
	db	114
	db	52
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4206
	dw	0
	dw	719
	dw	0
	dw	0
	dw	0
?patch83	equ	@188-@@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%+2
?patch84	equ	0
?patch85	equ	@188-@@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%char_traits$c%@length$qpxc	segment virtual
@@std@%char_traits$c%@length$qpxc	proc	near
?live16402@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd"
 ;	
 ;	
 ;	
	?debug L 508
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 511
@189:
	push      dword ptr [ebp+8]
	call      @_strlen
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 512
@191:
@190:
	pop       ebp
	ret 
	?debug L 0
@@std@%char_traits$c%@length$qpxc	endp
@std@%char_traits$c%@length$qpxc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	79
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch86
	dd	?patch87
	dd	?patch88
	df	@@std@%char_traits$c%@length$qpxc
	dw	0
	dw	5749
	dw	0
	dw	720
	dw	0
	dw	0
	dw	0
	db	32
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	64
	db	108
	db	101
	db	110
	db	103
	db	116
	db	104
	db	36
	db	113
	db	112
	db	120
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4267
	dw	0
	dw	721
	dw	0
	dw	0
	dw	0
?patch86	equ	@191-@@std@%char_traits$c%@length$qpxc+2
?patch87	equ	0
?patch88	equ	@191-@@std@%char_traits$c%@length$qpxc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@ios_base@width$xqv	segment virtual
@@std@ios_base@width$xqv	proc	near
?live16403@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase"
 ;	
 ;	
 ;	
	?debug L 417
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 419
@192:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+32]
 ;	
 ;	
 ;	
	?debug L 420
@194:
@193:
	pop       ebp
	ret 
	?debug L 0
@@std@ios_base@width$xqv	endp
@std@ios_base@width$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	70
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch89
	dd	?patch90
	dd	?patch91
	df	@@std@ios_base@width$xqv
	dw	0
	dw	5751
	dw	0
	dw	722
	dw	0
	dw	0
	dw	0
	db	23
	db	64
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	119
	db	105
	db	100
	db	116
	db	104
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4858
	dw	0
	dw	723
	dw	0
	dw	0
	dw	0
?patch89	equ	@194-@@std@ios_base@width$xqv+2
?patch90	equ	0
?patch91	equ	@194-@@std@ios_base@width$xqv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCKDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$DCKDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	label	dword
	dd	@@$xt$p49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	dd	5
	dd	8
	dd	0
@_$DCKDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTLDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$ECTLDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCKDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
@_$ECTLDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	proc	near
?live16404@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ostream"
 ;	
 ;	
 ;	
	?debug L 91
	push      ebp
	mov       ebp,esp
	add       esp,-36
@195:
	mov       eax,offset @@_$ECTLDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 92
	mov       word ptr [ebp-20],12
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	add       esp,8
	inc       dword ptr [ebp-8]
 ;	
 ;	
 ;	
	?debug L 94
	mov       edx,dword ptr [ebp+12]
	push      dword ptr [edx]
	call      @@std@ios_base@good$xqv
	pop       ecx
	test      al,al
	je        short @196
	mov       ecx,dword ptr [ebp+12]
	push      dword ptr [ecx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv
	pop       ecx
	test      eax,eax
	je        short @196
 ;	
 ;	
 ;	
	?debug L 95
	mov       eax,dword ptr [ebp+12]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv
	pop       ecx
	push      eax
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 96
@196:
	mov       edx,dword ptr [ebp+12]
	push      dword ptr [edx]
	call      @@std@ios_base@good$xqv
	pop       ecx
	mov       ecx,dword ptr [ebp+8]
	mov       byte ptr [ecx+4],al
 ;	
 ;	
 ;	
	?debug L 97
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 97
@198:
@197:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	endp
@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	150
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch92
	dd	?patch93
	dd	?patch94
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	dw	0
	dw	5753
	dw	0
	dw	724
	dw	0
	dw	0
	dw	0
	db	103
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	115
	db	101
	db	110
	db	116
	db	114
	db	121
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	52
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5643
	dw	0
	dw	725
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4206
	dw	0
	dw	726
	dw	0
	dw	0
	dw	0
?patch92	equ	@198-@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%+4
?patch93	equ	0
?patch94	equ	@198-@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCMDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	segment virtual
	align	2
@@_$DCMDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	label	dword
	dd	@@$xt$p49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	dd	5
	dd	8
	dd	0
@_$DCMDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTNDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	segment virtual
	align	2
@@_$ECTNDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCMDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv
@_$ECTNDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	proc	near
?live16405@0:
 ;	
 ;	
 ;	
	?debug L 99
	push      ebp
	mov       ebp,esp
	add       esp,-36
@199:
	mov       eax,offset @@_$ECTNDB$@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-8],1
	cmp       dword ptr [ebp+8],0
	je        short @200
 ;	
 ;	
 ;	
	?debug L 100
	mov       word ptr [ebp-20],12
 ;	
 ;	
 ;	
	?debug L 103
	call      @@std@uncaught_exception$qv
	test      al,al
	jne       short @201
 ;	
 ;	
 ;	
	?debug L 104
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv
	pop       ecx
@201:
	dec       dword ptr [ebp-8]
	push      0
	push      dword ptr [ebp+8]
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv
	add       esp,8
	test      byte ptr [ebp+12],1
	je        short @202
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 105
@202:
@200:
	mov       ecx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],ecx
	?debug L 105
@203:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	endp
@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	106
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch95
	dd	?patch96
	dd	?patch97
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv
	dw	0
	dw	5755
	dw	0
	dw	727
	dw	0
	dw	0
	dw	0
	db	59
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	115
	db	101
	db	110
	db	116
	db	114
	db	121
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5643
	dw	0
	dw	728
	dw	0
	dw	0
	dw	0
?patch95	equ	@203-@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv+4
?patch96	equ	0
?patch97	equ	@203-@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv	proc	near
?live16406@0:
 ;	
 ;	
 ;	
	?debug L 112
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 114
@204:
	mov       eax,dword ptr [ebp+8]
	mov       al,byte ptr [eax+4]
 ;	
 ;	
 ;	
	?debug L 115
@206:
@205:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv	endp
@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	105
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch98
	dd	?patch99
	dd	?patch100
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv
	dw	0
	dw	5757
	dw	0
	dw	729
	dw	0
	dw	0
	dw	0
	db	58
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	115
	db	101
	db	110
	db	116
	db	114
	db	121
	db	64
	db	36
	db	111
	db	111
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5652
	dw	0
	dw	730
	dw	0
	dw	0
	dw	0
?patch98	equ	@206-@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv+2
?patch99	equ	0
?patch100	equ	@206-@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate	segment virtual
@@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate	proc	near
?live16407@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase"
 ;	
 ;	
 ;	
	?debug L 525
	push      ebp
	mov       ebp,esp
@207:
	mov       eax,dword ptr [ebp+12]
	mov       edx,dword ptr [ebp+8]
	or        dword ptr [edx],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 525
@209:
@208:
	pop       ebp
	ret 
	?debug L 0
@@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate	endp
@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	108
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch101
	dd	?patch102
	dd	?patch103
	df	@@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	dw	0
	dw	5759
	dw	0
	dw	731
	dw	0
	dw	0
	dw	0
	db	61
	db	64
	db	115
	db	116
	db	100
	db	64
	db	36
	db	98
	db	114
	db	111
	db	114
	db	36
	db	113
	db	114
	db	50
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	73
	db	111
	db	115
	db	98
	db	36
	db	105
	db	37
	db	64
	db	95
	db	73
	db	111
	db	115
	db	116
	db	97
	db	116
	db	101
	db	50
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	73
	db	111
	db	115
	db	98
	db	36
	db	105
	db	37
	db	64
	db	95
	db	73
	db	111
	db	115
	db	116
	db	97
	db	116
	db	101
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5760
	dw	0
	dw	732
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4222
	dw	0
	dw	733
	dw	0
	dw	0
	dw	0
?patch101	equ	@209-@@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate+2
?patch102	equ	0
?patch103	equ	@209-@@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@ios_base@flags$xqv	segment virtual
@@std@ios_base@flags$xqv	proc	near
?live16408@0:
 ;	
 ;	
 ;	
	?debug L 367
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 369
@210:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+24]
 ;	
 ;	
 ;	
	?debug L 370
@212:
@211:
	pop       ebp
	ret 
	?debug L 0
@@std@ios_base@flags$xqv	endp
@std@ios_base@flags$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	70
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch104
	dd	?patch105
	dd	?patch106
	df	@@std@ios_base@flags$xqv
	dw	0
	dw	5762
	dw	0
	dw	734
	dw	0
	dw	0
	dw	0
	db	23
	db	64
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	102
	db	108
	db	97
	db	103
	db	115
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4858
	dw	0
	dw	735
	dw	0
	dw	0
	dw	0
?patch104	equ	@212-@@std@ios_base@flags$xqv+2
?patch105	equ	0
?patch106	equ	@212-@@std@ios_base@flags$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@$band$q23std@%_Iosb$i%@_Fmtflagst1	segment virtual
@@std@$band$q23std@%_Iosb$i%@_Fmtflagst1	proc	near
?live16409@0:
 ;	
 ;	
 ;	
	?debug L 524
	push      ebp
	mov       ebp,esp
@213:
	mov       eax,dword ptr [ebp+8]
	and       eax,dword ptr [ebp+12]
	?debug L 524
@215:
@214:
	pop       ebp
	ret 
	?debug L 0
@@std@$band$q23std@%_Iosb$i%@_Fmtflagst1	endp
@std@$band$q23std@%_Iosb$i%@_Fmtflagst1	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	86
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch107
	dd	?patch108
	dd	?patch109
	df	@@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	dw	0
	dw	5764
	dw	0
	dw	736
	dw	0
	dw	0
	dw	0
	db	39
	db	64
	db	115
	db	116
	db	100
	db	64
	db	36
	db	98
	db	97
	db	110
	db	100
	db	36
	db	113
	db	50
	db	51
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	73
	db	111
	db	115
	db	98
	db	36
	db	105
	db	37
	db	64
	db	95
	db	70
	db	109
	db	116
	db	102
	db	108
	db	97
	db	103
	db	115
	db	116
	db	49
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4219
	dw	0
	dw	737
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4219
	dw	0
	dw	738
	dw	0
	dw	0
	dw	0
?patch107	equ	@215-@@std@$band$q23std@%_Iosb$i%@_Fmtflagst1+2
?patch108	equ	0
?patch109	equ	@215-@@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%char_traits$c%@eof$qv	segment virtual
@@std@%char_traits$c%@eof$qv	proc	near
?live16410@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd"
 ;	
 ;	
 ;	
	?debug L 559
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 561
@216:
	or        eax,-1
 ;	
 ;	
 ;	
	?debug L 562
@218:
@217:
	pop       ebp
	ret 
	?debug L 0
@@std@%char_traits$c%@eof$qv	endp
@std@%char_traits$c%@eof$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch110
	dd	?patch111
	dd	?patch112
	df	@@std@%char_traits$c%@eof$qv
	dw	0
	dw	5766
	dw	0
	dw	739
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	64
	db	101
	db	111
	db	102
	db	36
	db	113
	db	118
?patch110	equ	@218-@@std@%char_traits$c%@eof$qv+2
?patch111	equ	0
?patch112	equ	@218-@@std@%char_traits$c%@eof$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv	segment virtual
@@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv	proc	near
?live16411@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ios"
 ;	
 ;	
 ;	
	?debug L 76
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 78
@219:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+48]
 ;	
 ;	
 ;	
	?debug L 79
@221:
@220:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv	endp
@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	96
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch113
	dd	?patch114
	dd	?patch115
	df	@@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	dw	0
	dw	5768
	dw	0
	dw	740
	dw	0
	dw	0
	dw	0
	db	49
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	105
	db	111
	db	115
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	114
	db	100
	db	98
	db	117
	db	102
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5573
	dw	0
	dw	741
	dw	0
	dw	0
	dw	0
?patch113	equ	@221-@@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv+2
?patch114	equ	0
?patch115	equ	@221-@@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv	segment virtual
@@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv	proc	near
?live16412@0:
 ;	
 ;	
 ;	
	?debug L 97
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 99
@222:
	mov       eax,dword ptr [ebp+8]
	mov       al,byte ptr [eax+56]
 ;	
 ;	
 ;	
	?debug L 100
@224:
@223:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv	endp
@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	95
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch116
	dd	?patch117
	dd	?patch118
	df	@@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv
	dw	0
	dw	5770
	dw	0
	dw	742
	dw	0
	dw	0
	dw	0
	db	48
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	105
	db	111
	db	115
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	102
	db	105
	db	108
	db	108
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5573
	dw	0
	dw	743
	dw	0
	dw	0
	dw	0
?patch116	equ	@224-@@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv+2
?patch117	equ	0
?patch118	equ	@224-@@std@%basic_ios$c19std@%char_traits$c%%@fill$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc	segment virtual
@@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc	proc	near
?live16413@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\streambuf"
 ;	
 ;	
 ;	
	?debug L 142
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 144
@225:
	push      dword ptr [ebp+8]
	call      @@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail$xqv
	pop       ecx
	test      eax,eax
	jle       short @226
	push      dword ptr [ebp+8]
	call      @@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc$qv
	pop       ecx
	mov       dword ptr [ebp-4],eax
	mov       al,byte ptr [ebp+12]
	mov       edx,dword ptr [ebp-4]
	mov       byte ptr [edx],al
	mov       ecx,dword ptr [ebp-4]
	push      ecx
	call      @@std@%char_traits$c%@to_int_type$qrxc
	pop       ecx
	jmp short @228
@226:
	lea       eax,dword ptr [ebp+12]
	push      eax
	call      @@std@%char_traits$c%@to_int_type$qrxc
	pop       ecx
	push      eax
	mov       edx,dword ptr [ebp+8]
	push      edx
	mov       ecx,dword ptr [edx]
	call      dword ptr [ecx+12]
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 147
@229:
@228:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc	endp
@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	101
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch119
	dd	?patch120
	dd	?patch121
	df	@@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc
	dw	0
	dw	5772
	dw	0
	dw	744
	dw	0
	dw	0
	dw	0
	db	54
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	115
	db	112
	db	117
	db	116
	db	99
	db	36
	db	113
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5244
	dw	0
	dw	745
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	746
	dw	0
	dw	0
	dw	0
?patch119	equ	@229-@@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc+3
?patch120	equ	0
?patch121	equ	@229-@@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%char_traits$c%@eq_int_type$qrxit1	segment virtual
@@std@%char_traits$c%@eq_int_type$qrxit1	proc	near
?live16414@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd"
 ;	
 ;	
 ;	
	?debug L 553
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 556
@230:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax]
	mov       ecx,dword ptr [ebp+12]
	cmp       edx,dword ptr [ecx]
	sete      al
	and       eax,1
 ;	
 ;	
 ;	
	?debug L 557
@232:
@231:
	pop       ebp
	ret 
	?debug L 0
@@std@%char_traits$c%@eq_int_type$qrxit1	endp
@std@%char_traits$c%@eq_int_type$qrxit1	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	86
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch122
	dd	?patch123
	dd	?patch124
	df	@@std@%char_traits$c%@eq_int_type$qrxit1
	dw	0
	dw	5774
	dw	0
	dw	747
	dw	0
	dw	0
	dw	0
	db	39
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	64
	db	101
	db	113
	db	95
	db	105
	db	110
	db	116
	db	95
	db	116
	db	121
	db	112
	db	101
	db	36
	db	113
	db	114
	db	120
	db	105
	db	116
	db	49
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4523
	dw	0
	dw	748
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4523
	dw	0
	dw	749
	dw	0
	dw	0
	dw	0
?patch122	equ	@232-@@std@%char_traits$c%@eq_int_type$qrxit1+2
?patch123	equ	0
?patch124	equ	@232-@@std@%char_traits$c%@eq_int_type$qrxit1
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_streambuf$c19std@%char_traits$c%%@sputn$qpxci	segment virtual
@@std@%basic_streambuf$c19std@%char_traits$c%%@sputn$qpxci	proc	near
?live16415@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\streambuf"
 ;	
 ;	
 ;	
	?debug L 149
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 151
@233:
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+12]
	mov       eax,dword ptr [ebp+8]
	push      eax
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+36]
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 152
@235:
@234:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_streambuf$c19std@%char_traits$c%%@sputn$qpxci	endp
@std@%basic_streambuf$c19std@%char_traits$c%%@sputn$qpxci	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	104
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch125
	dd	?patch126
	dd	?patch127
	df	@@std@%basic_streambuf$c19std@%char_traits$c%%@sputn$qpxci
	dw	0
	dw	5776
	dw	0
	dw	750
	dw	0
	dw	0
	dw	0
	db	57
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	115
	db	112
	db	117
	db	116
	db	110
	db	36
	db	113
	db	112
	db	120
	db	99
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5244
	dw	0
	dw	751
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	752
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	116
	dw	0
	dw	753
	dw	0
	dw	0
	dw	0
?patch125	equ	@235-@@std@%basic_streambuf$c19std@%char_traits$c%%@sputn$qpxci+2
?patch126	equ	0
?patch127	equ	@235-@@std@%basic_streambuf$c19std@%char_traits$c%%@sputn$qpxci
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@ios_base@width$qi	segment virtual
@@std@ios_base@width$qi	proc	near
?live16416@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase"
 ;	
 ;	
 ;	
	?debug L 422
	push      ebp
	mov       ebp,esp
	push      ecx
	push      ebx
 ;	
 ;	
 ;	
	?debug L 424
@236:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+32]
	mov       dword ptr [ebp-4],edx
 ;	
 ;	
 ;	
	?debug L 425
	mov       ecx,dword ptr [ebp+12]
	mov       ebx,dword ptr [ebp+8]
	mov       dword ptr [ebx+32],ecx
 ;	
 ;	
 ;	
	?debug L 426
	mov       eax,dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 427
@238:
@237:
	pop       ebx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@ios_base@width$qi	endp
@std@ios_base@width$qi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	69
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch128
	dd	?patch129
	dd	?patch130
	df	@@std@ios_base@width$qi
	dw	0
	dw	5778
	dw	0
	dw	754
	dw	0
	dw	0
	dw	0
	db	22
	db	64
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	119
	db	105
	db	100
	db	116
	db	104
	db	36
	db	113
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4853
	dw	0
	dw	755
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	756
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	116
	dw	0
	dw	757
	dw	0
	dw	0
	dw	0
?patch128	equ	@238-@@std@ios_base@width$qi+4
?patch129	equ	0
?patch130	equ	@238-@@std@ios_base@width$qi
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65528
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo	segment virtual
@@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo	proc	near
?live16418@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ios"
 ;	
 ;	
 ;	
	?debug L 45
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 47
@239:
	cmp       dword ptr [ebp+12],0
	je        short @240
 ;	
 ;	
 ;	
	?debug L 48
	mov       al,byte ptr [ebp+16]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@ios_base@rdstate$xqv
	pop       ecx
	or        eax,dword ptr [ebp+12]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@clear$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 49
@240:
@241:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo	endp
@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	122
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch131
	dd	?patch132
	dd	?patch133
	df	@@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	dw	0
	dw	5780
	dw	0
	dw	758
	dw	0
	dw	0
	dw	0
	db	75
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	105
	db	111
	db	115
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	115
	db	101
	db	116
	db	115
	db	116
	db	97
	db	116
	db	101
	db	36
	db	113
	db	50
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	73
	db	111
	db	115
	db	98
	db	36
	db	105
	db	37
	db	64
	db	95
	db	73
	db	111
	db	115
	db	116
	db	97
	db	116
	db	101
	db	111
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5550
	dw	0
	dw	759
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4222
	dw	0
	dw	760
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	48
	dw	0
	dw	761
	dw	0
	dw	0
	dw	0
?patch131	equ	@241-@@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo+2
?patch132	equ	0
?patch133	equ	@241-@@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCODB$@std@ios_base@getloc$xqv	segment virtual
	align	2
@@_$DCODB$@std@ios_base@getloc$xqv	label	dword
	dd	@@$xt$p10std@locale
	dd	20
	dd	8
	dd	0
@_$DCODB$@std@ios_base@getloc$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTPDB$@std@ios_base@getloc$xqv	segment virtual
	align	2
@@_$ECTPDB$@std@ios_base@getloc$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCODB$@std@ios_base@getloc$xqv
@_$ECTPDB$@std@ios_base@getloc$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@ios_base@getloc$xqv	segment virtual
@@std@ios_base@getloc$xqv	proc	near
?live16422@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase"
 ;	
 ;	
 ;	
	?debug L 429
	push      ebp
	mov       ebp,esp
	add       esp,-36
@242:
	mov       eax,offset @@_$ECTPDB$@std@ios_base@getloc$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 431
	mov       word ptr [ebp-20],12
	mov       edx,dword ptr [ebp+12]
	push      dword ptr [edx+44]
	push      dword ptr [ebp+8]
	call      @@std@locale@$bctr$qrx10std@locale
	add       esp,8
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [ebp-8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 432
@244:
@243:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@ios_base@getloc$xqv	endp
@std@ios_base@getloc$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	71
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch134
	dd	?patch135
	dd	?patch136
	df	@@std@ios_base@getloc$xqv
	dw	0
	dw	5782
	dw	0
	dw	762
	dw	0
	dw	0
	dw	0
	db	24
	db	64
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	103
	db	101
	db	116
	db	108
	db	111
	db	99
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5099
	dw	0
	dw	763
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4858
	dw	0
	dw	764
	dw	0
	dw	0
	dw	0
?patch134	equ	@244-@@std@ios_base@getloc$xqv+4
?patch135	equ	0
?patch136	equ	@244-@@std@ios_base@getloc$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLQDB$@std@locale@$bdtr$qv	segment virtual
	align	2
@@_$TLQDB$@std@locale@$bdtr$qv	label	dword
	dd	0
@_$TLQDB$@std@locale@$bdtr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCRDB$@std@locale@$bdtr$qv	segment virtual
	align	2
@@_$DCRDB$@std@locale@$bdtr$qv	label	dword
	dd	@@$xt$a2$p16std@locale@facet
	dd	20495
	dd	-8
	dd	0
@_$DCRDB$@std@locale@$bdtr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTSDB$@std@locale@$bdtr$qv	segment virtual
	align	2
@@_$ECTSDB$@std@locale@$bdtr$qv	label	dword
	dd	@@_$TLQDB$@std@locale@$bdtr$qv
	dd	0
	dd	-44
	dw	0
	dw	5
	dd	0
	dd	0
	dw	12
	dw	5
	dd	0
	dd	@@_$DCRDB$@std@locale@$bdtr$qv
	dw	24
	dw	5
	dd	0
	dd	0
@_$ECTSDB$@std@locale@$bdtr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@$bdtr$qv	segment virtual
@@std@locale@$bdtr$qv	proc	near
?live16423@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 246
	push      ebp
	mov       ebp,esp
	add       esp,-44
@245:
	mov       eax,offset @@_$ECTSDB$@std@locale@$bdtr$qv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 247
	dec       dword ptr [ebp-16]
	cmp       dword ptr [ebp+8],0
	je        short @246
 ;	
 ;	
 ;	
	?debug L 248
	mov       edx,dword ptr [ebp+8]
	cmp       dword ptr [edx+8],0
	je        short @247
 ;	
 ;	
 ;	
	?debug L 249
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx+8]
	call      @@std@locale@facet@_Decref$qv
	pop       ecx
	mov       dword ptr [ebp-8],eax
	cmp       dword ptr [ebp-8],0
	je        short @248
	mov       eax,dword ptr [ebp-8]
	mov       edx,dword ptr [eax]
	mov       dword ptr [ebp-4],edx
	mov       word ptr [ebp-28],36
	push      3
	mov       ecx,dword ptr [ebp-8]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax]
	add       esp,8
	mov       word ptr [ebp-28],12
@248:
@249:
@247:
	test      byte ptr [ebp+12],1
	je        short @250
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 250
@250:
@246:
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr fs:[0],edx
	?debug L 250
@251:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@locale@$bdtr$qv	endp
@std@locale@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	67
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch137
	dd	?patch138
	dd	?patch139
	df	@@std@locale@$bdtr$qv
	dw	0
	dw	5784
	dw	0
	dw	765
	dw	0
	dw	0
	dw	0
	db	20
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5096
	dw	0
	dw	766
	dw	0
	dw	0
	dw	0
?patch137	equ	@251-@@std@locale@$bdtr$qv+4
?patch138	equ	0
?patch139	equ	@251-@@std@locale@$bdtr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCTDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	segment virtual
	align	2
@@_$DCTDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	label	dword
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$12std@bad_cast
	dd	4
	dd	-8
	dd	0
@_$DCTDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTUDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	segment virtual
	align	2
@@_$ECTUDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	label	dword
	dd	0
	dd	0
	dd	-44
	dw	0
	dw	5
	dd	0
	dd	@@_$DCTDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCTDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	dw	24
	dw	5
	dd	1
	dd	@@_$DCTDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%+32
@_$ECTUDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	segment virtual
@@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	proc	near
?live16424@0:
 ;	
 ;	
 ;	
	?debug L 310
	push      ebp
	mov       ebp,esp
	add       esp,-60
@252:
	mov       eax,offset @@_$ECTUDB$@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 312
	mov       word ptr [ebp-28],12
	push      0
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@std@_Lockit@$bctr$qi
	add       esp,8
	inc       dword ptr [ebp-16]
	mov       word ptr [ebp-28],24
 ;	
 ;	
 ;	
	?debug L 314
	mov       ecx,dword ptr [@@std@%_Facetptr$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%@_Psave]
	mov       dword ptr [ebp-48],ecx
 ;	
 ;	
 ;	
	?debug L 316
	push      offset @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id
	call      @@std@locale@id@$oui$qv
	pop       ecx
	mov       dword ptr [ebp-52],eax
 ;	
 ;	
 ;	
	?debug L 317
	push      dword ptr [ebp-52]
	push      dword ptr [ebp+8]
	call      @@std@locale@_Getfacet$xqui
	add       esp,8
	mov       dword ptr [ebp-56],eax
 ;	
 ;	
 ;	
	?debug L 319
	cmp       dword ptr [ebp-56],0
	jne       @253
 ;	
 ;	
 ;	
	?debug L 321
	cmp       dword ptr [ebp-48],0
	je        short @254
 ;	
 ;	
 ;	
	?debug L 322
	mov       eax,dword ptr [ebp-48]
	mov       dword ptr [ebp-56],eax
	jmp short @255
 ;	
 ;	
 ;	
	?debug L 323
@254:
	push      dword ptr [ebp+8]
	lea       edx,dword ptr [ebp-48]
	push      edx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale
	add       esp,8
	cmp       eax,-1
	jne       short @256
 ;	
 ;	
 ;	
	?debug L 326
	lea       ecx,dword ptr [ebp-44]
	push      ecx
	push      0
	push      0
	push      0
	push      1
	push      offset @@std@bad_cast@$bctr$qrx12std@bad_cast
	push      0
	mov       word ptr [ebp-28],36
	lea       eax,dword ptr [ebp-8]
	push      eax
	call      @@std@exception@$bctr$qv
	pop       ecx
	inc       dword ptr [ebp-16]
	mov       edx,offset @@std@bad_cast@3+12
	mov       dword ptr [ebp-8],edx
	inc       dword ptr [ebp-16]
	lea       ecx,dword ptr [ebp-8]
	push      ecx
	push      offset @@$xt$12std@bad_cast
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
	jmp short @255
 ;	
 ;	
 ;	
	?debug L 334
@256:
@257:
	mov       eax,dword ptr [ebp-48]
	mov       dword ptr [ebp-56],eax
 ;	
 ;	
 ;	
	?debug L 335
	mov       edx,dword ptr [ebp-48]
	mov       dword ptr [@@std@%_Facetptr$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%@_Psave],edx
 ;	
 ;	
 ;	
	?debug L 337
	mov       ecx,dword ptr [ebp-48]
	mov       dword ptr [ebp-60],ecx
 ;	
 ;	
 ;	
	?debug L 338
	push      dword ptr [ebp-60]
	call      @@std@locale@facet@_Incref$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 340
	push      dword ptr [ebp-60]
	call      @@std@locale@facet@_Register$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 344
@258:
@253:
@255:
	mov       eax,dword ptr [ebp-56]
	push      eax
	dec       dword ptr [ebp-16]
	push      2
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@std@_Lockit@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 345
@260:
@259:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	endp
@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	217
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch140
	dd	?patch141
	dd	?patch142
	df	@@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	dw	0
	dw	5786
	dw	0
	dw	767
	dw	0
	dw	0
	dw	0
	db	170
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	117
	db	115
	db	101
	db	95
	db	102
	db	97
	db	99
	db	101
	db	116
	db	36
	db	54
	db	53
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	37
	db	36
	db	113
	db	114
	db	120
	db	49
	db	48
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	36
	db	114
	db	120
	db	54
	db	53
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5106
	dw	0
	dw	768
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	4938
	dw	0
	dw	769
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65484
	dw	65535
	dw	117
	dw	0
	dw	770
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	4938
	dw	0
	dw	771
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	5040
	dw	0
	dw	772
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch143
	df	@257
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65476
	dw	65535
	dw	4947
	dw	0
	dw	773
	dw	0
	dw	0
	dw	0
?patch143	equ	@258-@257
	dw	2
	dw	6
?patch140	equ	@260-@@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%+4
?patch141	equ	0
?patch142	equ	@260-@@std@%use_facet$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLVDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$TLVDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	label	dword
	dd	0
@_$TLVDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTWDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$ECTWDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	label	dword
	dd	@@_$TLVDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%
	dd	0
	dd	-36
@_$ECTWDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	segment virtual
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	proc	near
?live16425@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\streambuf"
 ;	
 ;	
 ;	
	?debug L 728
	push      ebp
	mov       ebp,esp
	add       esp,-36
	push      ebx
@261:
	mov       eax,offset @@_$ECTWDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 729
	mov       edx,dword ptr [ebp+8]
	mov       byte ptr [edx+8],0
	mov       ecx,dword ptr [ebp+12]
	mov       ebx,dword ptr [ebp+8]
	mov       dword ptr [ebx+12],ecx
 ;	
 ;	
 ;	
	?debug L 731
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 731
@263:
@262:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	endp
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	151
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch144
	dd	?patch145
	dd	?patch146
	df	@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%
	dw	0
	dw	5788
	dw	0
	dw	774
	dw	0
	dw	0
	dw	0
	db	104
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	112
	db	52
	db	52
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5790
	dw	0
	dw	775
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5243
	dw	0
	dw	776
	dw	0
	dw	0
	dw	0
?patch144	equ	@263-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%+5
?patch145	equ	0
?patch146	equ	@263-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65496
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl	proc	near
?live16426@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 1089
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1092
@264:
	push      dword ptr [ebp+40]
	mov       al,byte ptr [ebp+36]
	push      eax
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [edx]
	call      dword ptr [ecx+8]
	add       esp,36
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1093
@266:
@265:
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	187
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch147
	dd	?patch148
	dd	?patch149
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl
	dw	0
	dw	5792
	dw	0
	dw	777
	dw	0
	dw	0
	dw	0
	db	140
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	108
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	778
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	779
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	780
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	781
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	782
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	18
	dw	0
	dw	783
	dw	0
	dw	0
	dw	0
?patch147	equ	@266-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl+2
?patch148	equ	0
?patch149	equ	@266-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl
	dw	2
	dw	6
?t2 = -28
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLXDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	segment virtual
	align	2
@@_$TLXDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	label	dword
	dd	0
@_$TLXDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTYDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	segment virtual
	align	2
@@_$ECTYDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	label	dword
	dd	@@_$TLXDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv
	dd	0
	dd	-36
@_$ECTYDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	segment virtual
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	proc	near
?live16427@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\streambuf"
 ;	
 ;	
 ;	
	?debug L 762
	push      ebp
	mov       ebp,esp
	add       esp,-36
@267:
	mov       eax,offset @@_$ECTYDB$@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 764
	mov       edx,dword ptr [ebp+8]
	mov       al,byte ptr [edx+8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 765
@269:
@268:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	endp
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	107
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch150
	dd	?patch151
	dd	?patch152
	df	@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv
	dw	0
	dw	5795
	dw	0
	dw	784
	dw	0
	dw	0
	dw	0
	db	60
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	102
	db	97
	db	105
	db	108
	db	101
	db	100
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5796
	dw	0
	dw	785
	dw	0
	dw	0
	dw	0
?patch150	equ	@269-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv+4
?patch151	equ	0
?patch152	equ	@269-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCZDB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	segment virtual
	align	2
@@_$DCZDB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	label	dword
	dd	@@$xt$10std@locale
	dd	4
	dd	-16
	dd	0
	dd	@@$xt$10std@locale
	dd	2052
	dd	-16
	dd	0
@_$DCZDB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTAEB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	segment virtual
	align	2
@@_$ECTAEB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	label	dword
	dd	0
	dd	0
	dd	-52
	dw	0
	dw	5
	dd	0
	dd	@@_$DCZDB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCZDB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc
@_$ECTAEB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	segment virtual
@@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	proc	near
?live16432@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ios"
 ;	
 ;	
 ;	
	?debug L 115
	push      ebp
	mov       ebp,esp
	add       esp,-56
@270:
	mov       eax,offset @@_$ECTAEB$@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 117
	mov       word ptr [ebp-36],12
	push      dword ptr [ebp+8]
	lea       edx,dword ptr [ebp-16]
	push      edx
	call      @@std@ios_base@getloc$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-16]
	push      ecx
	inc       dword ptr [ebp-24]
	call      @@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%
	pop       ecx
	mov       dword ptr [ebp-56],eax
	mov       word ptr [ebp-36],24
 ;	
 ;	
 ;	
	?debug L 118
	mov       al,byte ptr [ebp+12]
	push      eax
	push      dword ptr [ebp-56]
	call      @@std@%ctype$c%@widen$xqc
	add       esp,8
	push      eax
	dec       dword ptr [ebp-24]
	push      2
	lea       edx,dword ptr [ebp-16]
	push      edx
	call      @@std@locale@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-52]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 119
@272:
@271:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	endp
@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	96
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch153
	dd	?patch154
	dd	?patch155
	df	@@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc
	dw	0
	dw	5799
	dw	0
	dw	786
	dw	0
	dw	0
	dw	0
	db	49
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	105
	db	111
	db	115
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	119
	db	105
	db	100
	db	101
	db	110
	db	36
	db	120
	db	113
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5573
	dw	0
	dw	787
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	788
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	5526
	dw	0
	dw	789
	dw	0
	dw	0
	dw	0
?patch153	equ	@272-@@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc+4
?patch154	equ	0
?patch155	equ	@272-@@std@%basic_ios$c19std@%char_traits$c%%@widen$xqc
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$CHBEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	segment virtual
	align	2
@@_$CHBEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	label	dword
	dd	0
	dd	0
	dd	@273
	dd	0
	dd	1
	dd	0
	dd	0
	dd	0
@_$CHBEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCCEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	segment virtual
	align	2
@@_$DCCEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	label	dword
	dd	@@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	dd	4
	dd	-8
	dd	0
@_$DCCEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTDEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	segment virtual
	align	2
@@_$ECTDEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	label	dword
	dd	0
	dd	0
	dd	-44
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc
	dw	24
	dw	3
	dd	@@_$CHBEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc
	dw	24
	dw	4
	dw	36
	dw	5
	dd	0
	dd	0
@_$ECTDEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	proc	near
?live16433@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ostream"
 ;	
 ;	
 ;	
	?debug L 474
	push      ebp
	mov       ebp,esp
	add       esp,-56
	push      ebx
	push      esi
	push      edi
@274:
	mov       eax,offset @@_$ECTDEB$@std@%basic_ostream$c19std@%char_traits$c%%@put$qc
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 476
	xor       edx,edx
	mov       dword ptr [ebp-48],edx
 ;	
 ;	
 ;	
	?debug L 477
	mov       word ptr [ebp-28],12
	push      dword ptr [ebp+8]
	lea       ecx,dword ptr [ebp-8]
	push      ecx
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	add       esp,8
	add       dword ptr [ebp-16],2
	mov       word ptr [ebp-28],24
 ;	
 ;	
 ;	
	?debug L 479
	lea       eax,dword ptr [ebp-8]
	push      eax
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$oo$xqv
	pop       ecx
	test      al,al
	jne       short @275
 ;	
 ;	
 ;	
	?debug L 480
	push      4
	lea       edx,dword ptr [ebp-48]
	push      edx
	call      @@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	add       esp,8
	jmp short @276
 ;	
 ;	
 ;	
	?debug L 483
@275:
@277:
	mov       word ptr [ebp-28],36
 ;	
 ;	
 ;	
	?debug L 484
	mov       cl,byte ptr [ebp+12]
	push      ecx
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	push      eax
	call      @@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc
	add       esp,8
	mov       dword ptr [ebp-56],eax
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%char_traits$c%@eof$qv
	mov       dword ptr [ebp-52],eax
	lea       ecx,dword ptr [ebp-52]
	push      ecx
	call      @@std@%char_traits$c%@eq_int_type$qrxit1
	add       esp,8
	test      al,al
	je        short @278
 ;	
 ;	
 ;	
	?debug L 486
	push      4
	lea       eax,dword ptr [ebp-48]
	push      eax
	call      @@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 487
@278:
	mov       word ptr [ebp-28],24
	jmp short @279
@280:
@273:
	push      1
	push      4
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
@281:
	mov       word ptr [ebp-28],44
	call      @@_CatchCleanup$qv
 ;	
 ;	
 ;	
	?debug L 490
@279:
@282:
@276:
	push      0
	push      dword ptr [ebp-48]
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 491
	mov       eax,dword ptr [ebp+8]
	push      eax
	sub       dword ptr [ebp-16],2
	push      2
	lea       edx,dword ptr [ebp-8]
	push      edx
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 492
@284:
@283:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	endp
@std@%basic_ostream$c19std@%char_traits$c%%@put$qc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	97
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch156
	dd	?patch157
	dd	?patch158
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@put$qc
	dw	0
	dw	5801
	dw	0
	dw	790
	dw	0
	dw	0
	dw	0
	db	50
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	112
	db	117
	db	116
	db	36
	db	113
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5614
	dw	0
	dw	791
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	792
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	5647
	dw	0
	dw	793
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	4222
	dw	0
	dw	794
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch159
	df	@277
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch160
	df	@280
	dw	0
	dw	0
?patch160	equ	@281-@280
	dw	2
	dw	6
?patch159	equ	@282-@277
	dw	2
	dw	6
?patch156	equ	@284-@@std@%basic_ostream$c19std@%char_traits$c%%@put$qc+7
?patch157	equ	0
?patch158	equ	@284-@@std@%basic_ostream$c19std@%char_traits$c%%@put$qc
	dw	2
	dw	6
	dw	8
	dw	531
	dw	7
	dw	65468
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv	proc	near
?live16434@0:
 ;	
 ;	
 ;	
	?debug L 515
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 517
@285:
	xor       eax,eax
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 518
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@ios_base@fail$xqv
	pop       ecx
	test      al,al
	jne       short @286
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	push      eax
	call      @@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync$qv
	pop       ecx
	inc       eax
	jne       short @286
 ;	
 ;	
 ;	
	?debug L 519
	push      4
	lea       eax,dword ptr [ebp-4]
	push      eax
	call      @@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 520
@286:
	push      0
	push      dword ptr [ebp-4]
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@setstate$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 521
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 522
@288:
@287:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv	endp
@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	99
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch161
	dd	?patch162
	dd	?patch163
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv
	dw	0
	dw	5803
	dw	0
	dw	795
	dw	0
	dw	0
	dw	0
	db	52
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	102
	db	108
	db	117
	db	115
	db	104
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5614
	dw	0
	dw	796
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4222
	dw	0
	dw	797
	dw	0
	dw	0
	dw	0
?patch161	equ	@288-@@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv+3
?patch162	equ	0
?patch163	equ	@288-@@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCEEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$DCEEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	label	dword
	dd	@@$xt$p55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base
	dd	5
	dd	8
	dd	0
@_$DCEEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTFEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
	align	2
@@_$ECTFEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCEEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
@_$ECTFEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	proc	near
?live16435@0:
 ;	
 ;	
 ;	
	?debug L 71
	push      ebp
	mov       ebp,esp
	add       esp,-40
@289:
	mov       eax,offset @@_$ECTFEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 72
	mov       word ptr [ebp-20],12
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [ebp+12]
	mov       dword ptr [edx],ecx
 ;	
 ;	
 ;	
	?debug L 74
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax]
	push      dword ptr [edx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	test      eax,eax
	je        short @290
 ;	
 ;	
 ;	
	?debug L 75
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	mov       dword ptr [ebp-40],eax
	mov       edx,dword ptr [ebp-40]
	push      edx
	mov       ecx,dword ptr [edx]
	call      dword ptr [ecx+4]
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 76
@290:
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 76
@292:
@291:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	endp
@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	156
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch164
	dd	?patch165
	dd	?patch166
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	dw	0
	dw	5805
	dw	0
	dw	798
	dw	0
	dw	0
	dw	0
	db	109
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	83
	db	101
	db	110
	db	116
	db	114
	db	121
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	52
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5625
	dw	0
	dw	799
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4206
	dw	0
	dw	800
	dw	0
	dw	0
	dw	0
?patch164	equ	@292-@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%+4
?patch165	equ	0
?patch166	equ	@292-@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@ios_base@good$xqv	segment virtual
@@std@ios_base@good$xqv	proc	near
?live16436@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase"
 ;	
 ;	
 ;	
	?debug L 330
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 332
@293:
	push      dword ptr [ebp+8]
	call      @@std@ios_base@rdstate$xqv
	pop       ecx
	test      eax,eax
	sete      al
	and       eax,1
 ;	
 ;	
 ;	
	?debug L 333
@295:
@294:
	pop       ebp
	ret 
	?debug L 0
@@std@ios_base@good$xqv	endp
@std@ios_base@good$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	69
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch167
	dd	?patch168
	dd	?patch169
	df	@@std@ios_base@good$xqv
	dw	0
	dw	5807
	dw	0
	dw	801
	dw	0
	dw	0
	dw	0
	db	22
	db	64
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	103
	db	111
	db	111
	db	100
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4858
	dw	0
	dw	802
	dw	0
	dw	0
	dw	0
?patch167	equ	@295-@@std@ios_base@good$xqv+2
?patch168	equ	0
?patch169	equ	@295-@@std@ios_base@good$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv	segment virtual
@@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv	proc	near
?live16437@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ios"
 ;	
 ;	
 ;	
	?debug L 64
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 66
@296:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+52]
 ;	
 ;	
 ;	
	?debug L 67
@298:
@297:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv	endp
@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	94
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch170
	dd	?patch171
	dd	?patch172
	df	@@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv
	dw	0
	dw	5809
	dw	0
	dw	803
	dw	0
	dw	0
	dw	0
	db	47
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	105
	db	111
	db	115
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	116
	db	105
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5573
	dw	0
	dw	804
	dw	0
	dw	0
	dw	0
?patch170	equ	@298-@@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv+2
?patch171	equ	0
?patch172	equ	@298-@@std@%basic_ios$c19std@%char_traits$c%%@tie$xqv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$CHGEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	segment virtual
	align	2
@@_$CHGEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	label	dword
	dd	0
	dd	0
	dd	@299
	dd	0
	dd	0
	dd	0
	dd	0
	dd	0
@_$CHGEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTHEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	segment virtual
	align	2
@@_$ECTHEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	3
	dd	@@_$CHGEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv
	dw	0
	dw	4
	dw	12
	dw	5
	dd	0
	dd	0
@_$ECTHEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	proc	near
?live16441@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ostream"
 ;	
 ;	
 ;	
	?debug L 136
	push      ebp
	mov       ebp,esp
	add       esp,-36
	push      ebx
	push      esi
	push      edi
@300:
	mov       eax,offset @@_$ECTHEB$@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 138
	mov       word ptr [ebp-20],12
 ;	
 ;	
 ;	
	?debug L 139
	push      8192
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	je        short @301
 ;	
 ;	
 ;	
	?debug L 140
	push      dword ptr [ebp+8]
	call      @@std@%basic_ostream$c19std@%char_traits$c%%@flush$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 141
@301:
	mov       word ptr [ebp-20],0
	jmp short @302
 ;	
 ;	
 ;	
	?debug L 142
@303:
@299:
@304:
	mov       word ptr [ebp-20],20
	call      @@_CatchCleanup$qv
 ;	
 ;	
 ;	
	?debug L 143
@302:
	mov       ecx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],ecx
	?debug L 143
@305:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	endp
@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	99
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch173
	dd	?patch174
	dd	?patch175
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv
	dw	0
	dw	5811
	dw	0
	dw	805
	dw	0
	dw	0
	dw	0
	db	52
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	79
	db	115
	db	102
	db	120
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5614
	dw	0
	dw	806
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch176
	df	@303
	dw	0
	dw	0
?patch176	equ	@304-@303
	dw	2
	dw	6
?patch173	equ	@305-@@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv+7
?patch174	equ	0
?patch175	equ	@305-@@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx$qv
	dw	2
	dw	6
	dw	8
	dw	531
	dw	7
	dw	65488
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv	segment virtual
@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv	proc	near
?live16442@0:
 ;	
 ;	
 ;	
	?debug L 78
	push      ebp
	mov       ebp,esp
	push      ecx
@306:
	cmp       dword ptr [ebp+8],0
	je        short @307
 ;	
 ;	
 ;	
	?debug L 80
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax]
	push      dword ptr [edx]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	test      eax,eax
	je        short @308
 ;	
 ;	
 ;	
	?debug L 81
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx]
	push      dword ptr [eax]
	call      @@std@%basic_ios$c19std@%char_traits$c%%@rdbuf$xqv
	pop       ecx
	mov       dword ptr [ebp-4],eax
	mov       edx,dword ptr [ebp-4]
	push      edx
	mov       ecx,dword ptr [edx]
	call      dword ptr [ecx+8]
	pop       ecx
@308:
	test      byte ptr [ebp+12],1
	je        short @309
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 82
@309:
@307:
@310:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv	endp
@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	112
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch177
	dd	?patch178
	dd	?patch179
	df	@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv
	dw	0
	dw	5813
	dw	0
	dw	807
	dw	0
	dw	0
	dw	0
	db	65
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	83
	db	101
	db	110
	db	116
	db	114
	db	121
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5625
	dw	0
	dw	808
	dw	0
	dw	0
	dw	0
?patch177	equ	@310-@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv+3
?patch178	equ	0
?patch179	equ	@310-@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail$xqv	segment virtual
@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail$xqv	proc	near
?live16445@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\streambuf"
 ;	
 ;	
 ;	
	?debug L 287
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 290
@311:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+40]
	cmp       dword ptr [edx],0
	je        short @312
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+56]
	mov       eax,dword ptr [eax]
	inc       eax
	neg       eax
	jmp short @314
@312:
	xor       eax,eax
 ;	
 ;	
 ;	
	?debug L 294
@315:
@314:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail$xqv	endp
@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	105
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch180
	dd	?patch181
	dd	?patch182
	df	@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail$xqv
	dw	0
	dw	5815
	dw	0
	dw	809
	dw	0
	dw	0
	dw	0
	db	58
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	80
	db	110
	db	97
	db	118
	db	97
	db	105
	db	108
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5270
	dw	0
	dw	810
	dw	0
	dw	0
	dw	0
?patch180	equ	@315-@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail$xqv+2
?patch181	equ	0
?patch182	equ	@315-@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc$qv	segment virtual
@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc$qv	proc	near
?live16446@0:
 ;	
 ;	
 ;	
	?debug L 277
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 280
@316:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+56]
	inc       dword ptr [edx]
 ;	
 ;	
 ;	
	?debug L 284
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+40]
	mov       edx,dword ptr [eax]
	inc       dword ptr [eax]
	mov       eax,edx
 ;	
 ;	
 ;	
	?debug L 285
@318:
@317:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc$qv	endp
@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	102
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch183
	dd	?patch184
	dd	?patch185
	df	@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc$qv
	dw	0
	dw	5817
	dw	0
	dw	811
	dw	0
	dw	0
	dw	0
	db	55
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	80
	db	110
	db	105
	db	110
	db	99
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5244
	dw	0
	dw	812
	dw	0
	dw	0
	dw	0
?patch183	equ	@318-@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc$qv+2
?patch184	equ	0
?patch185	equ	@318-@@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%char_traits$c%@to_int_type$qrxc	segment virtual
@@std@%char_traits$c%@to_int_type$qrxc	proc	near
?live16447@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd"
 ;	
 ;	
 ;	
	?debug L 548
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 550
@319:
	mov       eax,dword ptr [ebp+8]
	movzx     eax,byte ptr [eax]
 ;	
 ;	
 ;	
	?debug L 551
@321:
@320:
	pop       ebp
	ret 
	?debug L 0
@@std@%char_traits$c%@to_int_type$qrxc	endp
@std@%char_traits$c%@to_int_type$qrxc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	84
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch186
	dd	?patch187
	dd	?patch188
	df	@@std@%char_traits$c%@to_int_type$qrxc
	dw	0
	dw	5819
	dw	0
	dw	813
	dw	0
	dw	0
	dw	0
	db	37
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	64
	db	116
	db	111
	db	95
	db	105
	db	110
	db	116
	db	95
	db	116
	db	121
	db	112
	db	101
	db	36
	db	113
	db	114
	db	120
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4303
	dw	0
	dw	814
	dw	0
	dw	0
	dw	0
?patch186	equ	@321-@@std@%char_traits$c%@to_int_type$qrxc+2
?patch187	equ	0
?patch188	equ	@321-@@std@%char_traits$c%@to_int_type$qrxc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@ios_base@rdstate$xqv	segment virtual
@@std@ios_base@rdstate$xqv	proc	near
?live16448@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase"
 ;	
 ;	
 ;	
	?debug L 308
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 310
@322:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+16]
 ;	
 ;	
 ;	
	?debug L 311
@324:
@323:
	pop       ebp
	ret 
	?debug L 0
@@std@ios_base@rdstate$xqv	endp
@std@ios_base@rdstate$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	72
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch189
	dd	?patch190
	dd	?patch191
	df	@@std@ios_base@rdstate$xqv
	dw	0
	dw	5821
	dw	0
	dw	815
	dw	0
	dw	0
	dw	0
	db	25
	db	64
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	114
	db	100
	db	115
	db	116
	db	97
	db	116
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4858
	dw	0
	dw	816
	dw	0
	dw	0
	dw	0
?patch189	equ	@324-@@std@ios_base@rdstate$xqv+2
?patch190	equ	0
?patch191	equ	@324-@@std@ios_base@rdstate$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_ios$c19std@%char_traits$c%%@clear$q22std@%_Iosb$i%@_Iostateo	segment virtual
@@std@%basic_ios$c19std@%char_traits$c%%@clear$q22std@%_Iosb$i%@_Iostateo	proc	near
?live16449@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ios"
 ;	
 ;	
 ;	
	?debug L 34
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 36
@325:
	mov       al,byte ptr [ebp+16]
	push      eax
	mov       edx,dword ptr [ebp+8]
	cmp       dword ptr [edx+48],0
	jne       short @326
	mov       ecx,dword ptr [ebp+12]
	or        ecx,4
	jmp short @327
@326:
	mov       ecx,dword ptr [ebp+12]
@327:
	push      ecx
	push      dword ptr [ebp+8]
	call      @@std@ios_base@clear$q22std@%_Iosb$i%@_Iostateo
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 38
@328:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_ios$c19std@%char_traits$c%%@clear$q22std@%_Iosb$i%@_Iostateo	endp
@std@%basic_ios$c19std@%char_traits$c%%@clear$q22std@%_Iosb$i%@_Iostateo	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	119
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch192
	dd	?patch193
	dd	?patch194
	df	@@std@%basic_ios$c19std@%char_traits$c%%@clear$q22std@%_Iosb$i%@_Iostateo
	dw	0
	dw	5823
	dw	0
	dw	817
	dw	0
	dw	0
	dw	0
	db	72
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	105
	db	111
	db	115
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	99
	db	108
	db	101
	db	97
	db	114
	db	36
	db	113
	db	50
	db	50
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	73
	db	111
	db	115
	db	98
	db	36
	db	105
	db	37
	db	64
	db	95
	db	73
	db	111
	db	115
	db	116
	db	97
	db	116
	db	101
	db	111
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5550
	dw	0
	dw	818
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4222
	dw	0
	dw	819
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	48
	dw	0
	dw	820
	dw	0
	dw	0
	dw	0
?patch192	equ	@328-@@std@%basic_ios$c19std@%char_traits$c%%@clear$q22std@%_Iosb$i%@_Iostateo+2
?patch193	equ	0
?patch194	equ	@328-@@std@%basic_ios$c19std@%char_traits$c%%@clear$q22std@%_Iosb$i%@_Iostateo
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLIEB$@std@locale@$bctr$qrx10std@locale	segment virtual
	align	2
@@_$TLIEB$@std@locale@$bctr$qrx10std@locale	label	dword
	dd	0
@_$TLIEB$@std@locale@$bctr$qrx10std@locale	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCJEB$@std@locale@$bctr$qrx10std@locale	segment virtual
	align	2
@@_$DCJEB$@std@locale@$bctr$qrx10std@locale	label	dword
	dd	@@$xt$p10std@locale
	dd	5
	dd	8
	dd	0
@_$DCJEB$@std@locale@$bctr$qrx10std@locale	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTKEB$@std@locale@$bctr$qrx10std@locale	segment virtual
	align	2
@@_$ECTKEB$@std@locale@$bctr$qrx10std@locale	label	dword
	dd	@@_$TLIEB$@std@locale@$bctr$qrx10std@locale
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCJEB$@std@locale@$bctr$qrx10std@locale
@_$ECTKEB$@std@locale@$bctr$qrx10std@locale	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@$bctr$qrx10std@locale	segment virtual
@@std@locale@$bctr$qrx10std@locale	proc	near
?live16450@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 231
	push      ebp
	mov       ebp,esp
	add       esp,-36
@329:
	mov       eax,offset @@_$ECTKEB$@std@locale@$bctr$qrx10std@locale
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 232
	mov       word ptr [ebp-20],12
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [ebp+12]
	mov       eax,dword ptr [ecx+8]
	mov       dword ptr [edx+8],eax
 ;	
 ;	
 ;	
	?debug L 234
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx+8]
	call      @@std@locale@facet@_Incref$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 235
	mov       ecx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],ecx
	mov       eax,dword ptr [ebp+8]
	?debug L 235
@331:
@330:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@locale@$bctr$qrx10std@locale	endp
@std@locale@$bctr$qrx10std@locale	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	80
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch195
	dd	?patch196
	dd	?patch197
	df	@@std@locale@$bctr$qrx10std@locale
	dw	0
	dw	5825
	dw	0
	dw	821
	dw	0
	dw	0
	dw	0
	db	33
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	120
	db	49
	db	48
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5096
	dw	0
	dw	822
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5106
	dw	0
	dw	823
	dw	0
	dw	0
	dw	0
?patch195	equ	@331-@@std@locale@$bctr$qrx10std@locale+4
?patch196	equ	0
?patch197	equ	@331-@@std@locale@$bctr$qrx10std@locale
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@facet@_Decref$qv	segment virtual
@@std@locale@facet@_Decref$qv	proc	near
?live16454@0:
 ;	
 ;	
 ;	
	?debug L 115
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 118
@332:
	mov       eax,dword ptr [ebp+8]
	add       eax,4
	push      eax
	call      @__InterlockedDecrement
	pop       ecx
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 119
	cmp       dword ptr [ebp-4],0
	jne       short @333
	mov       eax,dword ptr [ebp+8]
	jmp short @335
@333:
	xor       eax,eax
 ;	
 ;	
 ;	
	?debug L 127
@336:
@335:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@locale@facet@_Decref$qv	endp
@std@locale@facet@_Decref$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	75
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch198
	dd	?patch199
	dd	?patch200
	df	@@std@locale@facet@_Decref$qv
	dw	0
	dw	5827
	dw	0
	dw	824
	dw	0
	dw	0
	dw	0
	db	28
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	102
	db	97
	db	99
	db	101
	db	116
	db	64
	db	95
	db	68
	db	101
	db	99
	db	114
	db	101
	db	102
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4944
	dw	0
	dw	825
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	826
	dw	0
	dw	0
	dw	0
?patch198	equ	@336-@@std@locale@facet@_Decref$qv+3
?patch199	equ	0
?patch200	equ	@336-@@std@locale@facet@_Decref$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCLEB$@std@_Lockit@$bctr$qi	segment virtual
	align	2
@@_$DCLEB$@std@_Lockit@$bctr$qi	label	dword
	dd	@@$xt$p11std@_Lockit
	dd	5
	dd	8
	dd	0
@_$DCLEB$@std@_Lockit@$bctr$qi	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTMEB$@std@_Lockit@$bctr$qi	segment virtual
	align	2
@@_$ECTMEB$@std@_Lockit@$bctr$qi	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCLEB$@std@_Lockit@$bctr$qi
@_$ECTMEB$@std@_Lockit@$bctr$qi	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@_Lockit@$bctr$qi	segment virtual
@@std@_Lockit@$bctr$qi	proc	near
?live16459@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\yvals.h"
 ;	
 ;	
 ;	
	?debug L 1078
	push      ebp
	mov       ebp,esp
	add       esp,-36
@337:
	mov       eax,offset @@_$ECTMEB$@std@_Lockit@$bctr$qi
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1079
	mov       word ptr [ebp-20],12
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [ebp+12]
	mov       dword ptr [edx],ecx
 ;	
 ;	
 ;	
	?debug L 1081
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax],1
	je        short @339
	mov       edx,dword ptr [ebp+8]
	cmp       dword ptr [edx],3
	jne       short @338
 ;	
 ;	
 ;	
	?debug L 1082
@339:
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @__Locksyslock
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 1083
@338:
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 1083
@341:
@340:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@_Lockit@$bctr$qi	endp
@std@_Lockit@$bctr$qi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	68
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch201
	dd	?patch202
	dd	?patch203
	df	@@std@_Lockit@$bctr$qi
	dw	0
	dw	5829
	dw	0
	dw	827
	dw	0
	dw	0
	dw	0
	db	21
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	107
	db	105
	db	116
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5043
	dw	0
	dw	828
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	829
	dw	0
	dw	0
	dw	0
?patch201	equ	@341-@@std@_Lockit@$bctr$qi+4
?patch202	equ	0
?patch203	equ	@341-@@std@_Lockit@$bctr$qi
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@_Lockit@$bdtr$qv	segment virtual
@@std@_Lockit@$bdtr$qv	proc	near
?live16460@0:
 ;	
 ;	
 ;	
	?debug L 1085
	push      ebp
	mov       ebp,esp
@342:
	cmp       dword ptr [ebp+8],0
	je        short @343
 ;	
 ;	
 ;	
	?debug L 1087
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax],1
	je        short @345
	mov       edx,dword ptr [ebp+8]
	cmp       dword ptr [edx],3
	jne       short @344
 ;	
 ;	
 ;	
	?debug L 1088
@345:
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx]
	call      @__Unlocksyslock
	pop       ecx
@344:
	test      byte ptr [ebp+12],1
	je        short @346
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 1089
@346:
@343:
@347:
	pop       ebp
	ret 
	?debug L 0
@@std@_Lockit@$bdtr$qv	endp
@std@_Lockit@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	68
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch204
	dd	?patch205
	dd	?patch206
	df	@@std@_Lockit@$bdtr$qv
	dw	0
	dw	5831
	dw	0
	dw	830
	dw	0
	dw	0
	dw	0
	db	21
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	107
	db	105
	db	116
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5043
	dw	0
	dw	831
	dw	0
	dw	0
	dw	0
?patch204	equ	@347-@@std@_Lockit@$bdtr$qv+2
?patch205	equ	0
?patch206	equ	@347-@@std@_Lockit@$bdtr$qv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCNEB$@std@locale@id@$oui$qv	segment virtual
	align	2
@@_$DCNEB$@std@locale@id@$oui$qv	label	dword
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
@_$DCNEB$@std@locale@id@$oui$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTOEB$@std@locale@id@$oui$qv	segment virtual
	align	2
@@_$ECTOEB$@std@locale@id@$oui$qv	label	dword
	dd	0
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCNEB$@std@locale@id@$oui$qv+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCNEB$@std@locale@id@$oui$qv
@_$ECTOEB$@std@locale@id@$oui$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@id@$oui$qv	segment virtual
@@std@locale@id@$oui$qv	proc	near
?live16461@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 69
	push      ebp
	mov       ebp,esp
	add       esp,-40
@348:
	mov       eax,offset @@_$ECTOEB$@std@locale@id@$oui$qv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 71
	mov       edx,dword ptr [ebp+8]
	cmp       dword ptr [edx],0
	jne       short @349
 ;	
 ;	
 ;	
	?debug L 73
@350:
	mov       word ptr [ebp-24],12
	push      0
	lea       ecx,dword ptr [ebp-4]
	push      ecx
	call      @@std@_Lockit@$bctr$qi
	add       esp,8
	inc       dword ptr [ebp-12]
	mov       word ptr [ebp-24],24
 ;	
 ;	
 ;	
	?debug L 74
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax],0
	jne       short @351
 ;	
 ;	
 ;	
	?debug L 75
	inc       dword ptr [@@std@locale@id@_Id_cnt]
	mov       edx,dword ptr [@@std@locale@id@_Id_cnt]
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 76
@351:
	dec       dword ptr [ebp-12]
	push      2
	lea       eax,dword ptr [ebp-4]
	push      eax
	call      @@std@_Lockit@$bdtr$qv
	add       esp,8
	mov       word ptr [ebp-24],0
 ;	
 ;	
 ;	
	?debug L 77
@352:
@349:
	mov       edx,dword ptr [ebp+8]
	mov       eax,dword ptr [edx]
	mov       edx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 78
@354:
@353:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@locale@id@$oui$qv	endp
@std@locale@id@$oui$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	69
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch207
	dd	?patch208
	dd	?patch209
	df	@@std@locale@id@$oui$qv
	dw	0
	dw	5833
	dw	0
	dw	832
	dw	0
	dw	0
	dw	0
	db	22
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	105
	db	100
	db	64
	db	36
	db	111
	db	117
	db	105
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4915
	dw	0
	dw	833
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch210
	df	@350
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	5040
	dw	0
	dw	834
	dw	0
	dw	0
	dw	0
?patch210	equ	@352-@350
	dw	2
	dw	6
?patch207	equ	@354-@@std@locale@id@$oui$qv+4
?patch208	equ	0
?patch209	equ	@354-@@std@locale@id@$oui$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCPEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
	align	2
@@_$DCPEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	label	dword
	dd	@@$xt$p65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	dd	8199
	dd	-4
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-44
	dd	@@$xt$12std@_Locinfo
	dd	4
	dd	-140
	dd	0
@_$DCPEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTQEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
	align	2
@@_$ECTQEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	label	dword
	dd	0
	dd	0
	dd	-176
	dw	0
	dw	5
	dd	0
	dd	0
	dw	12
	dw	5
	dd	0
	dd	@@_$DCPEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	24
	dw	5
	dd	0
	dd	@@_$DCPEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale+16
@_$ECTQEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	proc	near
?live16462@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 1043
	push      ebp
	mov       ebp,esp
	add       esp,-176
@355:
	mov       eax,offset @@_$ECTQEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1046
	cmp       dword ptr [ebp+8],0
	je        @356
	mov       edx,dword ptr [ebp+8]
	cmp       dword ptr [edx],0
	jne       @356
 ;	
 ;	
 ;	
	?debug L 1047
	push      16
	call      @$bnew$qui
	pop       ecx
	mov       dword ptr [ebp-4],eax
	test      eax,eax
	je        short @357
	mov       word ptr [ebp-160],36
	push      0
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-44]
	push      edx
	call      @@std@locale@name$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-44]
	push      ecx
	inc       dword ptr [ebp-148]
	lea       eax,dword ptr [ebp-140]
	push      eax
	call      @@std@_Locinfo@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	add       esp,8
	push      eax
	add       dword ptr [ebp-148],4
	push      dword ptr [ebp-4]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui
	add       esp,12
	mov       word ptr [ebp-160],12
	mov       edx,dword ptr [ebp-4]
	jmp short @358
@357:
	mov       edx,dword ptr [ebp-4]
@358:
	mov       eax,dword ptr [ebp+8]
	mov       dword ptr [eax],edx
 ;	
 ;	
 ;	
	?debug L 1048
	sub       dword ptr [ebp-148],4
	push      2
	lea       ecx,dword ptr [ebp-140]
	push      ecx
	call      @@std@_Locinfo@$bdtr$qv
	add       esp,8
	dec       dword ptr [ebp-148]
	push      2
	lea       eax,dword ptr [ebp-44]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1049
@356:
	mov       eax,3
	mov       edx,dword ptr [ebp-176]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 1050
@360:
@359:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	158
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch211
	dd	?patch212
	dd	?patch213
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	0
	dw	5835
	dw	0
	dw	835
	dw	0
	dw	0
	dw	0
	db	111
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	71
	db	101
	db	116
	db	99
	db	97
	db	116
	db	36
	db	113
	db	112
	db	112
	db	120
	db	49
	db	54
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	102
	db	97
	db	99
	db	101
	db	116
	db	112
	db	120
	db	49
	db	48
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4937
	dw	0
	dw	836
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4940
	dw	0
	dw	837
	dw	0
	dw	0
	dw	0
?patch211	equ	@360-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale+4
?patch212	equ	0
?patch213	equ	@360-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$ECTREB$@std@bad_cast@$bctr$qrx12std@bad_cast	segment virtual
	align	2
@@_$ECTREB$@std@bad_cast@$bctr$qrx12std@bad_cast	label	dword
	dd	0
	dd	0
	dd	-36
@_$ECTREB$@std@bad_cast@$bctr$qrx12std@bad_cast	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@bad_cast@$bctr$qrx12std@bad_cast	segment virtual
@@std@bad_cast@$bctr$qrx12std@bad_cast	proc	near
?live16464@0:
	?debug L 0
	push      ebp
	mov       ebp,esp
	add       esp,-36
@361:
	mov       eax,offset @@_$ECTREB$@std@bad_cast@$bctr$qrx12std@bad_cast
	call      @__InitExceptBlockLDTC
	mov       edx,offset @@std@exception@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
	inc       dword ptr [ebp-8]
	mov       eax,offset @@std@bad_cast@3+12
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx],eax
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
	?debug L 1050
@363:
@362:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@bad_cast@$bctr$qrx12std@bad_cast	endp
@std@bad_cast@$bctr$qrx12std@bad_cast	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	84
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch214
	dd	?patch215
	dd	?patch216
	df	@@std@bad_cast@$bctr$qrx12std@bad_cast
	dw	0
	dw	5845
	dw	0
	dw	842
	dw	0
	dw	0
	dw	0
	db	37
	db	64
	db	115
	db	116
	db	100
	db	64
	db	98
	db	97
	db	100
	db	95
	db	99
	db	97
	db	115
	db	116
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	120
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	98
	db	97
	db	100
	db	95
	db	99
	db	97
	db	115
	db	116
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5843
	dw	0
	dw	843
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5846
	dw	0
	dw	844
	dw	0
	dw	0
	dw	0
?patch214	equ	@363-@@std@bad_cast@$bctr$qrx12std@bad_cast+4
?patch215	equ	0
?patch216	equ	@363-@@std@bad_cast@$bctr$qrx12std@bad_cast
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLSEB$@std@exception@$bctr$qv	segment virtual
	align	2
@@_$TLSEB$@std@exception@$bctr$qv	label	dword
	dd	0
@_$TLSEB$@std@exception@$bctr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCTEB$@std@exception@$bctr$qv	segment virtual
	align	2
@@_$DCTEB$@std@exception@$bctr$qv	label	dword
	dd	@@$xt$p13std@exception
	dd	5
	dd	8
	dd	0
@_$DCTEB$@std@exception@$bctr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTUEB$@std@exception@$bctr$qv	segment virtual
	align	2
@@_$ECTUEB$@std@exception@$bctr$qv	label	dword
	dd	@@_$TLSEB$@std@exception@$bctr$qv
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCTEB$@std@exception@$bctr$qv
@_$ECTUEB$@std@exception@$bctr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@exception@$bctr$qv	segment virtual
@@std@exception@$bctr$qv	proc	near
?live16465@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\exception"
 ;	
 ;	
 ;	
	?debug L 119
	push      ebp
	mov       ebp,esp
	add       esp,-36
@364:
	mov       eax,offset @@_$ECTUEB$@std@exception@$bctr$qv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 120
	mov       word ptr [ebp-20],12
	mov       edx,offset @@std@exception@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 121
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 121
@366:
@365:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@exception@$bctr$qv	endp
@std@exception@$bctr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	70
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch217
	dd	?patch218
	dd	?patch219
	df	@@std@exception@$bctr$qv
	dw	0
	dw	5859
	dw	0
	dw	845
	dw	0
	dw	0
	dw	0
	db	23
	db	64
	db	115
	db	116
	db	100
	db	64
	db	101
	db	120
	db	99
	db	101
	db	112
	db	116
	db	105
	db	111
	db	110
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4260
	dw	0
	dw	846
	dw	0
	dw	0
	dw	0
?patch217	equ	@366-@@std@exception@$bctr$qv+4
?patch218	equ	0
?patch219	equ	@366-@@std@exception@$bctr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@facet@_Incref$qv	segment virtual
@@std@locale@facet@_Incref$qv	proc	near
?live16466@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 103
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 106
@367:
	mov       eax,dword ptr [ebp+8]
	add       eax,4
	push      eax
	call      @__InterlockedIncrement
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 113
@368:
	pop       ebp
	ret 
	?debug L 0
@@std@locale@facet@_Incref$qv	endp
@std@locale@facet@_Incref$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	75
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch220
	dd	?patch221
	dd	?patch222
	df	@@std@locale@facet@_Incref$qv
	dw	0
	dw	5861
	dw	0
	dw	847
	dw	0
	dw	0
	dw	0
	db	28
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	102
	db	97
	db	99
	db	101
	db	116
	db	64
	db	95
	db	73
	db	110
	db	99
	db	114
	db	101
	db	102
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4944
	dw	0
	dw	848
	dw	0
	dw	0
	dw	0
?patch220	equ	@368-@@std@locale@facet@_Incref$qv+2
?patch221	equ	0
?patch222	equ	@368-@@std@locale@facet@_Incref$qv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCVEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	segment virtual
	align	2
@@_$DCVEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	label	dword
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$12std@bad_cast
	dd	4
	dd	-8
	dd	0
@_$DCVEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTWEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	segment virtual
	align	2
@@_$ECTWEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	label	dword
	dd	0
	dd	0
	dd	-44
	dw	0
	dw	5
	dd	0
	dd	@@_$DCVEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCVEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%
	dw	24
	dw	5
	dd	1
	dd	@@_$DCVEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%+32
@_$ECTWEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	segment virtual
@@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	proc	near
?live16474@0:
 ;	
 ;	
 ;	
	?debug L 310
	push      ebp
	mov       ebp,esp
	add       esp,-60
@369:
	mov       eax,offset @@_$ECTWEB$@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 312
	mov       word ptr [ebp-28],12
	push      0
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@std@_Lockit@$bctr$qi
	add       esp,8
	inc       dword ptr [ebp-16]
	mov       word ptr [ebp-28],24
 ;	
 ;	
 ;	
	?debug L 314
	mov       ecx,dword ptr [@@std@%_Facetptr$13std@%ctype$c%%@_Psave]
	mov       dword ptr [ebp-48],ecx
 ;	
 ;	
 ;	
	?debug L 316
	push      offset @@std@%ctype$c%@id
	call      @@std@locale@id@$oui$qv
	pop       ecx
	mov       dword ptr [ebp-52],eax
 ;	
 ;	
 ;	
	?debug L 317
	push      dword ptr [ebp-52]
	push      dword ptr [ebp+8]
	call      @@std@locale@_Getfacet$xqui
	add       esp,8
	mov       dword ptr [ebp-56],eax
 ;	
 ;	
 ;	
	?debug L 319
	cmp       dword ptr [ebp-56],0
	jne       @370
 ;	
 ;	
 ;	
	?debug L 321
	cmp       dword ptr [ebp-48],0
	je        short @371
 ;	
 ;	
 ;	
	?debug L 322
	mov       eax,dword ptr [ebp-48]
	mov       dword ptr [ebp-56],eax
	jmp short @372
 ;	
 ;	
 ;	
	?debug L 323
@371:
	push      dword ptr [ebp+8]
	lea       edx,dword ptr [ebp-48]
	push      edx
	call      @@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	add       esp,8
	cmp       eax,-1
	jne       short @373
 ;	
 ;	
 ;	
	?debug L 326
	lea       ecx,dword ptr [ebp-44]
	push      ecx
	push      0
	push      0
	push      0
	push      1
	push      offset @@std@bad_cast@$bctr$qrx12std@bad_cast
	push      0
	mov       word ptr [ebp-28],36
	lea       eax,dword ptr [ebp-8]
	push      eax
	call      @@std@exception@$bctr$qv
	pop       ecx
	inc       dword ptr [ebp-16]
	mov       edx,offset @@std@bad_cast@3+12
	mov       dword ptr [ebp-8],edx
	inc       dword ptr [ebp-16]
	lea       ecx,dword ptr [ebp-8]
	push      ecx
	push      offset @@$xt$12std@bad_cast
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
	jmp short @372
 ;	
 ;	
 ;	
	?debug L 334
@373:
@374:
	mov       eax,dword ptr [ebp-48]
	mov       dword ptr [ebp-56],eax
 ;	
 ;	
 ;	
	?debug L 335
	mov       edx,dword ptr [ebp-48]
	mov       dword ptr [@@std@%_Facetptr$13std@%ctype$c%%@_Psave],edx
 ;	
 ;	
 ;	
	?debug L 337
	mov       ecx,dword ptr [ebp-48]
	mov       dword ptr [ebp-60],ecx
 ;	
 ;	
 ;	
	?debug L 338
	push      dword ptr [ebp-60]
	call      @@std@locale@facet@_Incref$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 340
	push      dword ptr [ebp-60]
	call      @@std@locale@facet@_Register$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 344
@375:
@370:
@372:
	mov       eax,dword ptr [ebp-56]
	push      eax
	dec       dword ptr [ebp-16]
	push      2
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@std@_Lockit@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 345
@377:
@376:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	endp
@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	113
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch223
	dd	?patch224
	dd	?patch225
	df	@@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%
	dw	0
	dw	5863
	dw	0
	dw	849
	dw	0
	dw	0
	dw	0
	db	66
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	117
	db	115
	db	101
	db	95
	db	102
	db	97
	db	99
	db	101
	db	116
	db	36
	db	49
	db	51
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	37
	db	36
	db	113
	db	114
	db	120
	db	49
	db	48
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	36
	db	114
	db	120
	db	49
	db	51
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5106
	dw	0
	dw	850
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	4938
	dw	0
	dw	851
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65484
	dw	65535
	dw	117
	dw	0
	dw	852
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	4938
	dw	0
	dw	853
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	5040
	dw	0
	dw	854
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch226
	df	@374
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65476
	dw	65535
	dw	4947
	dw	0
	dw	855
	dw	0
	dw	0
	dw	0
?patch226	equ	@375-@374
	dw	2
	dw	6
?patch223	equ	@377-@@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%+4
?patch224	equ	0
?patch225	equ	@377-@@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@widen$xqc	segment virtual
@@std@%ctype$c%@widen$xqc	proc	near
?live16475@0:
 ;	
 ;	
 ;	
	?debug L 1815
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1817
@378:
	mov       al,byte ptr [ebp+12]
	push      eax
	mov       edx,dword ptr [ebp+8]
	push      edx
	mov       ecx,dword ptr [edx]
	call      dword ptr [ecx+20]
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1818
@380:
@379:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@widen$xqc	endp
@std@%ctype$c%@widen$xqc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	71
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch227
	dd	?patch228
	dd	?patch229
	df	@@std@%ctype$c%@widen$xqc
	dw	0
	dw	5865
	dw	0
	dw	856
	dw	0
	dw	0
	dw	0
	db	24
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	119
	db	105
	db	100
	db	101
	db	110
	db	36
	db	120
	db	113
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	857
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	858
	dw	0
	dw	0
	dw	0
?patch227	equ	@380-@@std@%ctype$c%@widen$xqc+2
?patch228	equ	0
?patch229	equ	@380-@@std@%ctype$c%@widen$xqc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@ios_base@fail$xqv	segment virtual
@@std@ios_base@fail$xqv	proc	near
?live16481@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase"
 ;	
 ;	
 ;	
	?debug L 340
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 342
@381:
	push      dword ptr [ebp+8]
	call      @@std@ios_base@rdstate$xqv
	pop       ecx
	test      al,6
	setne     al
	and       eax,1
 ;	
 ;	
 ;	
	?debug L 344
@383:
@382:
	pop       ebp
	ret 
	?debug L 0
@@std@ios_base@fail$xqv	endp
@std@ios_base@fail$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	69
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch230
	dd	?patch231
	dd	?patch232
	df	@@std@ios_base@fail$xqv
	dw	0
	dw	5867
	dw	0
	dw	859
	dw	0
	dw	0
	dw	0
	db	22
	db	64
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	102
	db	97
	db	105
	db	108
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4858
	dw	0
	dw	860
	dw	0
	dw	0
	dw	0
?patch230	equ	@383-@@std@ios_base@fail$xqv+2
?patch231	equ	0
?patch232	equ	@383-@@std@ios_base@fail$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync$qv	segment virtual
@@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync$qv	proc	near
?live16482@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\streambuf"
 ;	
 ;	
 ;	
	?debug L 90
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 92
@384:
	mov       eax,dword ptr [ebp+8]
	push      eax
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+52]
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 93
@386:
@385:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync$qv	endp
@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	103
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch233
	dd	?patch234
	dd	?patch235
	df	@@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync$qv
	dw	0
	dw	5869
	dw	0
	dw	861
	dw	0
	dw	0
	dw	0
	db	56
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	112
	db	117
	db	98
	db	115
	db	121
	db	110
	db	99
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5244
	dw	0
	dw	862
	dw	0
	dw	0
	dw	0
?patch233	equ	@386-@@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync$qv+2
?patch234	equ	0
?patch235	equ	@386-@@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync$qv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCXEB$@std@locale@name$xqv	segment virtual
	align	2
@@_$DCXEB$@std@locale@name$xqv	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	20
	dd	8
	dd	0
@_$DCXEB$@std@locale@name$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTYEB$@std@locale@name$xqv	segment virtual
	align	2
@@_$ECTYEB$@std@locale@name$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCXEB$@std@locale@name$xqv
@_$ECTYEB$@std@locale@name$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@name$xqv	segment virtual
@@std@locale@name$xqv	proc	near
?live16496@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 263
	push      ebp
	mov       ebp,esp
	add       esp,-36
@387:
	mov       eax,offset @@_$ECTYEB$@std@locale@name$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 265
	mov       word ptr [ebp-20],12
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [edx+8]
	add       ecx,24
	push      ecx
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	add       esp,8
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [ebp-8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 266
@389:
@388:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@locale@name$xqv	endp
@std@locale@name$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	67
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch236
	dd	?patch237
	dd	?patch238
	df	@@std@locale@name$xqv
	dw	0
	dw	5871
	dw	0
	dw	863
	dw	0
	dw	0
	dw	0
	db	20
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	110
	db	97
	db	109
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4442
	dw	0
	dw	864
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5121
	dw	0
	dw	865
	dw	0
	dw	0
	dw	0
?patch236	equ	@389-@@std@locale@name$xqv+4
?patch237	equ	0
?patch238	equ	@389-@@std@locale@name$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv	proc	near
?live16497@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 614
	push      ebp
	mov       ebp,esp
@390:
	cmp       dword ptr [ebp+8],0
	je        short @391
 ;	
 ;	
 ;	
	?debug L 616
	push      0
	push      1
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	add       esp,12
	test      byte ptr [ebp+12],1
	je        short @392
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 617
@392:
@391:
@393:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	117
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch239
	dd	?patch240
	dd	?patch241
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	dw	0
	dw	5873
	dw	0
	dw	866
	dw	0
	dw	0
	dw	0
	db	70
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	867
	dw	0
	dw	0
	dw	0
?patch239	equ	@393-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv+2
?patch240	equ	0
?patch241	equ	@393-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCZEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	segment virtual
	align	2
@@_$DCZEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	label	dword
	dd	@@$xt$p65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	dd	5
	dd	8
	dd	0
@_$DCZEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTAFB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	segment virtual
	align	2
@@_$ECTAFB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCZEB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui
@_$ECTAFB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	proc	near
?live16498@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 1074
	push      ebp
	mov       ebp,esp
	add       esp,-36
@394:
	mov       eax,offset @@_$ECTAFB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1075
	mov       word ptr [ebp-20],12
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@locale@facet@$bctr$qui
	add       esp,8
	inc       dword ptr [ebp-8]
	mov       edx,offset @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 1077
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init$qrx12std@_Locinfo
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1078
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 1078
@396:
@395:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	139
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch242
	dd	?patch243
	dd	?patch244
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui
	dw	0
	dw	5875
	dw	0
	dw	868
	dw	0
	dw	0
	dw	0
	db	92
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	120
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5877
	dw	0
	dw	869
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4982
	dw	0
	dw	870
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	871
	dw	0
	dw	0
	dw	0
?patch242	equ	@396-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui+4
?patch243	equ	0
?patch244	equ	@396-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCBFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
	align	2
@@_$DCBFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	label	dword
	dd	@@$xt$p13std@%ctype$c%
	dd	8199
	dd	-4
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-44
	dd	@@$xt$12std@_Locinfo
	dd	4
	dd	-140
	dd	0
@_$DCBFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTCFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
	align	2
@@_$ECTCFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	label	dword
	dd	0
	dd	0
	dd	-176
	dw	0
	dw	5
	dd	0
	dd	0
	dw	12
	dw	5
	dd	0
	dd	@@_$DCBFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	24
	dw	5
	dd	0
	dd	@@_$DCBFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale+16
@_$ECTCFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
@@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	proc	near
?live16509@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 1859
	push      ebp
	mov       ebp,esp
	add       esp,-176
@397:
	mov       eax,offset @@_$ECTCFB$@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1862
	cmp       dword ptr [ebp+8],0
	je        @398
	mov       edx,dword ptr [ebp+8]
	cmp       dword ptr [edx],0
	jne       @398
 ;	
 ;	
 ;	
	?debug L 1863
	push      24
	call      @$bnew$qui
	pop       ecx
	mov       dword ptr [ebp-4],eax
	test      eax,eax
	je        short @399
	mov       word ptr [ebp-160],36
	push      0
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-44]
	push      edx
	call      @@std@locale@name$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-44]
	push      ecx
	inc       dword ptr [ebp-148]
	lea       eax,dword ptr [ebp-140]
	push      eax
	call      @@std@_Locinfo@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	add       esp,8
	push      eax
	add       dword ptr [ebp-148],4
	push      dword ptr [ebp-4]
	call      @@std@%ctype$c%@$bctr$qrx12std@_Locinfoui
	add       esp,12
	mov       word ptr [ebp-160],12
	mov       edx,dword ptr [ebp-4]
	jmp short @400
@399:
	mov       edx,dword ptr [ebp-4]
@400:
	mov       eax,dword ptr [ebp+8]
	mov       dword ptr [eax],edx
 ;	
 ;	
 ;	
	?debug L 1864
	sub       dword ptr [ebp-148],4
	push      2
	lea       ecx,dword ptr [ebp-140]
	push      ecx
	call      @@std@_Locinfo@$bdtr$qv
	add       esp,8
	dec       dword ptr [ebp-148]
	push      2
	lea       eax,dword ptr [ebp-44]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1865
@398:
	mov       eax,1
	mov       edx,dword ptr [ebp-176]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 1866
@402:
@401:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	endp
@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	106
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch245
	dd	?patch246
	dd	?patch247
	df	@@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	0
	dw	5879
	dw	0
	dw	872
	dw	0
	dw	0
	dw	0
	db	59
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	95
	db	71
	db	101
	db	116
	db	99
	db	97
	db	116
	db	36
	db	113
	db	112
	db	112
	db	120
	db	49
	db	54
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	102
	db	97
	db	99
	db	101
	db	116
	db	112
	db	120
	db	49
	db	48
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4937
	dw	0
	dw	873
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4940
	dw	0
	dw	874
	dw	0
	dw	0
	dw	0
?patch245	equ	@402-@@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale+4
?patch246	equ	0
?patch247	equ	@402-@@std@%ctype$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCDFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	segment virtual
	align	2
@@_$DCDFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	5
	dd	8
	dd	0
@_$DCDFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTEFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	segment virtual
	align	2
@@_$ECTEFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCDFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
@_$ECTEFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	proc	near
?live16512@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 411
	push      ebp
	mov       ebp,esp
	add       esp,-36
@403:
	mov       eax,offset @@_$ECTEFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 412
	mov       word ptr [ebp-20],12
	add       esp,-8
	mov       edx,dword ptr [ebp+12]
	add       edx,8
	push      edx
	lea       ecx,dword ptr [esp+4]
	push      ecx
	call      @@std@%allocator$c%@$bctr$qrx17std@%allocator$c%
	add       esp,8
	push      dword ptr [ebp+8]
	call      @@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 414
	push      0
	push      0
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 415
	push      -1
	push      0
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui
	add       esp,16
 ;	
 ;	
 ;	
	?debug L 416
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 416
@405:
@404:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	180
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch248
	dd	?patch249
	dd	?patch250
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dw	0
	dw	5881
	dw	0
	dw	875
	dw	0
	dw	0
	dw	0
	db	133
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	120
	db	54
	db	48
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	876
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4283
	dw	0
	dw	877
	dw	0
	dw	0
	dw	0
?patch248	equ	@405-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%+4
?patch249	equ	0
?patch250	equ	@405-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t3 = -44
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui	proc	near
?live16516@0:
 ;	
 ;	
 ;	
	?debug L 1805
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 1808
@406:
	cmp       byte ptr [ebp+12],0
	je        short @407
 ;	
 ;	
 ;	
	?debug L 1810
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax+36],16
	jb        short @408
 ;	
 ;	
 ;	
	?debug L 1812
@409:
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [edx+16]
	mov       dword ptr [ebp-4],ecx
 ;	
 ;	
 ;	
	?debug L 1813
	cmp       dword ptr [ebp+16],0
	jbe       short @410
 ;	
 ;	
 ;	
	?debug L 1814
	push      dword ptr [ebp+16]
	push      dword ptr [ebp-4]
	mov       eax,dword ptr [ebp+8]
	add       eax,16
	push      eax
	call      @@std@%char_traits$c%@copy$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1815
@410:
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [edx+36]
	inc       ecx
	push      ecx
	push      dword ptr [ebp-4]
	mov       eax,dword ptr [ebp+8]
	add       eax,8
	push      eax
	call      @@std@%allocator$c%@deallocate$qpcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1817
@411:
@408:
@407:
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx+36],15
 ;	
 ;	
 ;	
	?debug L 1818
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1819
@412:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	119
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch251
	dd	?patch252
	dd	?patch253
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	dw	0
	dw	5883
	dw	0
	dw	878
	dw	0
	dw	0
	dw	0
	db	72
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	84
	db	105
	db	100
	db	121
	db	36
	db	113
	db	111
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	879
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	48
	dw	0
	dw	880
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	881
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch254
	df	@409
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	1136
	dw	0
	dw	882
	dw	0
	dw	0
	dw	0
?patch254	equ	@411-@409
	dw	2
	dw	6
?patch251	equ	@412-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui+3
?patch252	equ	0
?patch253	equ	@412-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCFFB$@std@locale@facet@$bctr$qui	segment virtual
	align	2
@@_$DCFFB$@std@locale@facet@$bctr$qui	label	dword
	dd	@@$xt$p16std@locale@facet
	dd	5
	dd	8
	dd	0
@_$DCFFB$@std@locale@facet@$bctr$qui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTGFB$@std@locale@facet@$bctr$qui	segment virtual
	align	2
@@_$ECTGFB$@std@locale@facet@$bctr$qui	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCFFB$@std@locale@facet@$bctr$qui
@_$ECTGFB$@std@locale@facet@$bctr$qui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@facet@$bctr$qui	segment virtual
@@std@locale@facet@$bctr$qui	proc	near
?live16517@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 137
	push      ebp
	mov       ebp,esp
	add       esp,-36
@413:
	mov       eax,offset @@_$ECTGFB$@std@locale@facet@$bctr$qui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 138
	mov       word ptr [ebp-20],12
	mov       edx,offset @@std@locale@facet@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp+12]
	mov       dword ptr [eax+4],edx
 ;	
 ;	
 ;	
	?debug L 140
	mov       ecx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],ecx
	mov       eax,dword ptr [ebp+8]
	?debug L 140
@415:
@414:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@locale@facet@$bctr$qui	endp
@std@locale@facet@$bctr$qui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch255
	dd	?patch256
	dd	?patch257
	df	@@std@locale@facet@$bctr$qui
	dw	0
	dw	5885
	dw	0
	dw	883
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	102
	db	97
	db	99
	db	101
	db	116
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4944
	dw	0
	dw	884
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	885
	dw	0
	dw	0
	dw	0
?patch255	equ	@415-@@std@locale@facet@$bctr$qui+4
?patch256	equ	0
?patch257	equ	@415-@@std@locale@facet@$bctr$qui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init$qrx12std@_Locinfo	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init$qrx12std@_Locinfo	proc	near
?live16518@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 1060
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1062
@416:
	push      dword ptr [ebp+12]
	mov       eax,dword ptr [ebp+8]
	add       eax,8
	push      eax
	call      @@std@_Locinfo@_Getcvt$xqv
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1063
@417:
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init$qrx12std@_Locinfo	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init$qrx12std@_Locinfo	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	137
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch258
	dd	?patch259
	dd	?patch260
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init$qrx12std@_Locinfo
	dw	0
	dw	5887
	dw	0
	dw	886
	dw	0
	dw	0
	dw	0
	db	90
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	73
	db	110
	db	105
	db	116
	db	36
	db	113
	db	114
	db	120
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5877
	dw	0
	dw	887
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4982
	dw	0
	dw	888
	dw	0
	dw	0
	dw	0
?patch258	equ	@417-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init$qrx12std@_Locinfo+2
?patch259	equ	0
?patch260	equ	@417-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init$qrx12std@_Locinfo
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCHFB$@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	segment virtual
	align	2
@@_$DCHFB$@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	label	dword
	dd	@@$xt$p13std@%ctype$c%
	dd	5
	dd	8
	dd	0
@_$DCHFB$@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTIFB$@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	segment virtual
	align	2
@@_$ECTIFB$@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCHFB$@std@%ctype$c%@$bctr$qrx12std@_Locinfoui
@_$ECTIFB$@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	segment virtual
@@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	proc	near
?live16521@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 1853
	push      ebp
	mov       ebp,esp
	add       esp,-36
@418:
	mov       eax,offset @@_$ECTIFB$@std@%ctype$c%@$bctr$qrx12std@_Locinfoui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1854
	mov       word ptr [ebp-20],12
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@ctype_base@$bctr$qui
	add       esp,8
	add       dword ptr [ebp-8],2
	mov       edx,offset @@std@%ctype$c%@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 1856
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%ctype$c%@_Init$qrx12std@_Locinfo
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1857
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 1857
@420:
@419:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	endp
@std@%ctype$c%@$bctr$qrx12std@_Locinfoui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	87
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch261
	dd	?patch262
	dd	?patch263
	df	@@std@%ctype$c%@$bctr$qrx12std@_Locinfoui
	dw	0
	dw	5889
	dw	0
	dw	889
	dw	0
	dw	0
	dw	0
	db	40
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	120
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5490
	dw	0
	dw	890
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4982
	dw	0
	dw	891
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	892
	dw	0
	dw	0
	dw	0
?patch261	equ	@420-@@std@%ctype$c%@$bctr$qrx12std@_Locinfoui+4
?patch262	equ	0
?patch263	equ	@420-@@std@%ctype$c%@$bctr$qrx12std@_Locinfoui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLJFB$@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	segment virtual
	align	2
@@_$TLJFB$@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	label	dword
	dd	0
@_$TLJFB$@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTKFB$@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	segment virtual
	align	2
@@_$ECTKFB$@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	label	dword
	dd	@@_$TLJFB$@std@%allocator$c%@$bctr$qrx17std@%allocator$c%
	dd	0
	dd	-36
@_$ECTKFB$@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	segment virtual
@@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	proc	near
?live16525@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xmemory"
 ;	
 ;	
 ;	
	?debug L 112
	push      ebp
	mov       ebp,esp
	add       esp,-36
@421:
	mov       eax,offset @@_$ECTKFB$@std@%allocator$c%@$bctr$qrx17std@%allocator$c%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 114
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
	mov       eax,dword ptr [ebp+8]
	?debug L 114
@423:
@422:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	endp
@std@%allocator$c%@$bctr$qrx17std@%allocator$c%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	94
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch264
	dd	?patch265
	dd	?patch266
	df	@@std@%allocator$c%@$bctr$qrx17std@%allocator$c%
	dw	0
	dw	5891
	dw	0
	dw	893
	dw	0
	dw	0
	dw	0
	db	47
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	120
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4312
	dw	0
	dw	894
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4315
	dw	0
	dw	895
	dw	0
	dw	0
	dw	0
?patch264	equ	@423-@@std@%allocator$c%@$bctr$qrx17std@%allocator$c%+4
?patch265	equ	0
?patch266	equ	@423-@@std@%allocator$c%@$bctr$qrx17std@%allocator$c%
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$ECTLFB$@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%	segment virtual
	align	2
@@_$ECTLFB$@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%	label	dword
	dd	0
	dd	0
	dd	-36
@_$ECTLFB$@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%	segment virtual
@@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%	proc	near
?live16526@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 344
	push      ebp
	mov       ebp,esp
	add       esp,-36
@424:
	mov       eax,offset @@_$ECTLFB$@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 345
	lea       edx,dword ptr [ebp+12]
	push      edx
	mov       ecx,dword ptr [ebp+8]
	add       ecx,8
	push      ecx
	call      @@std@%allocator$c%@$bctr$qrx17std@%allocator$c%
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 347
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 347
@426:
@425:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%	endp
@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	113
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch267
	dd	?patch268
	dd	?patch269
	df	@@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%
	dw	0
	dw	5893
	dw	0
	dw	896
	dw	0
	dw	0
	dw	0
	db	66
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	95
	db	118
	db	97
	db	108
	db	36
	db	99
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4345
	dw	0
	dw	897
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4299
	dw	0
	dw	898
	dw	0
	dw	0
	dw	0
?patch267	equ	@426-@@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%+4
?patch268	equ	0
?patch269	equ	@426-@@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui	proc	near
?live16527@0:
 ;	
 ;	
 ;	
	?debug L 764
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 767
@427:
	push      dword ptr [ebp+12]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	pop       ecx
	cmp       eax,dword ptr [ebp+16]
	jae       short @428
 ;	
 ;	
 ;	
	?debug L 768
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xran$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 769
@428:
	push      dword ptr [ebp+12]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	pop       ecx
	sub       eax,dword ptr [ebp+16]
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 770
	mov       eax,dword ptr [ebp+20]
	cmp       eax,dword ptr [ebp-4]
	jae       short @429
 ;	
 ;	
 ;	
	?debug L 771
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [ebp-4],edx
 ;	
 ;	
 ;	
	?debug L 773
@429:
	mov       ecx,dword ptr [ebp+8]
	cmp       ecx,dword ptr [ebp+12]
	jne       short @430
 ;	
 ;	
 ;	
	?debug L 774
	push      -1
	mov       eax,dword ptr [ebp+16]
	add       eax,dword ptr [ebp-4]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui
	add       esp,12
	push      dword ptr [ebp+16]
	push      0
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui
	add       esp,12
	jmp short @431
 ;	
 ;	
 ;	
	?debug L 775
@430:
	push      0
	push      dword ptr [ebp-4]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio
	add       esp,12
	test      al,al
	je        short @432
 ;	
 ;	
 ;	
	?debug L 777
@433:
	push      dword ptr [ebp-4]
	push      dword ptr [ebp+12]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv
	pop       ecx
	add       eax,dword ptr [ebp+16]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	push      eax
	call      @@std@%char_traits$c%@copy$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 778
	push      dword ptr [ebp-4]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 780
@434:
@432:
@431:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 781
@436:
@435:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	185
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch270
	dd	?patch271
	dd	?patch272
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui
	dw	0
	dw	5895
	dw	0
	dw	899
	dw	0
	dw	0
	dw	0
	db	138
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	97
	db	115
	db	115
	db	105
	db	103
	db	110
	db	36
	db	113
	db	114
	db	120
	db	54
	db	48
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	117
	db	105
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	900
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4283
	dw	0
	dw	901
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	902
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	117
	dw	0
	dw	903
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	904
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch273
	df	@433
	dw	0
	dw	0
?patch273	equ	@434-@433
	dw	2
	dw	6
?patch270	equ	@436-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui+3
?patch271	equ	0
?patch272	equ	@436-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%char_traits$c%@copy$qpcpxcui	segment virtual
@@std@%char_traits$c%@copy$qpcpxcui	proc	near
?live16530@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd"
 ;	
 ;	
 ;	
	?debug L 514
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 519
@437:
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @_memcpy
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 520
@439:
@438:
	pop       ebp
	ret 
	?debug L 0
@@std@%char_traits$c%@copy$qpcpxcui	endp
@std@%char_traits$c%@copy$qpcpxcui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	81
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch274
	dd	?patch275
	dd	?patch276
	df	@@std@%char_traits$c%@copy$qpcpxcui
	dw	0
	dw	5897
	dw	0
	dw	905
	dw	0
	dw	0
	dw	0
	db	34
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	64
	db	99
	db	111
	db	112
	db	121
	db	36
	db	113
	db	112
	db	99
	db	112
	db	120
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	1136
	dw	0
	dw	906
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	907
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	908
	dw	0
	dw	0
	dw	0
?patch274	equ	@439-@@std@%char_traits$c%@copy$qpcpxcui+2
?patch275	equ	0
?patch276	equ	@439-@@std@%char_traits$c%@copy$qpcpxcui
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%allocator$c%@deallocate$qpcui	segment virtual
@@std@%allocator$c%@deallocate$qpcui	proc	near
?live16531@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xmemory"
 ;	
 ;	
 ;	
	?debug L 127
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 129
@440:
	push      dword ptr [ebp+12]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 130
@441:
	pop       ebp
	ret 
	?debug L 0
@@std@%allocator$c%@deallocate$qpcui	endp
@std@%allocator$c%@deallocate$qpcui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	82
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch277
	dd	?patch278
	dd	?patch279
	df	@@std@%allocator$c%@deallocate$qpcui
	dw	0
	dw	5899
	dw	0
	dw	909
	dw	0
	dw	0
	dw	0
	db	35
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	64
	db	100
	db	101
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	101
	db	36
	db	113
	db	112
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4312
	dw	0
	dw	910
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1136
	dw	0
	dw	911
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	912
	dw	0
	dw	0
	dw	0
?patch277	equ	@441-@@std@%allocator$c%@deallocate$qpcui+2
?patch278	equ	0
?patch279	equ	@441-@@std@%allocator$c%@deallocate$qpcui
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui	proc	near
?live16532@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 1771
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 1773
@442:
	mov       byte ptr [ebp-1],0
	lea       eax,dword ptr [ebp-1]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx+32],edx
	add       eax,edx
	push      eax
	call      @@std@%char_traits$c%@assign$qrcrxc
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1774
@443:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	117
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch280
	dd	?patch281
	dd	?patch282
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	dw	0
	dw	5901
	dw	0
	dw	913
	dw	0
	dw	0
	dw	0
	db	70
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	69
	db	111
	db	115
	db	36
	db	113
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	914
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	915
	dw	0
	dw	0
	dw	0
?patch280	equ	@443-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui+3
?patch281	equ	0
?patch282	equ	@443-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
	align	4
$adbamklc	label	byte
	db	4	dup(?)
	db	4	dup(?)
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTMFB$@std@_Locinfo@_Getcvt$xqv	segment virtual
	align	2
@@_$ECTMFB$@std@_Locinfo@_Getcvt$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	0
@_$ECTMFB$@std@_Locinfo@_Getcvt$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@_Locinfo@_Getcvt$xqv	segment virtual
@@std@_Locinfo@_Getcvt$xqv	proc	near
?live16536@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocinfo"
 ;	
 ;	
 ;	
	?debug L 64
	push      ebp
	mov       ebp,esp
	add       esp,-44
@444:
	mov       eax,offset @@_$ECTMFB$@std@_Locinfo@_Getcvt$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 66
	mov       edx,dword ptr [$adbamklc]
	mov       dword ptr [ebp-44],edx
	mov       edx,dword ptr [$adbamklc+4]
	mov       dword ptr [ebp-40],edx
	mov       ecx,dword ptr [ebp+12]
	mov       eax,dword ptr [ecx+88]
	mov       dword ptr [ebp-44],eax
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [edx+92]
	mov       dword ptr [ebp-40],ecx
 ;	
 ;	
 ;	
	?debug L 67
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr [eax],edx
	mov       edx,dword ptr [ebp-40]
	mov       dword ptr [eax+4],edx
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 68
@446:
@445:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@_Locinfo@_Getcvt$xqv	endp
@std@_Locinfo@_Getcvt$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	72
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch283
	dd	?patch284
	dd	?patch285
	df	@@std@_Locinfo@_Getcvt$xqv
	dw	0
	dw	5903
	dw	0
	dw	916
	dw	0
	dw	0
	dw	0
	db	25
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	64
	db	95
	db	71
	db	101
	db	116
	db	99
	db	118
	db	116
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5905
	dw	0
	dw	917
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5016
	dw	0
	dw	918
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65492
	dw	65535
	dw	4991
	dw	0
	dw	919
	dw	0
	dw	0
	dw	0
?patch283	equ	@446-@@std@_Locinfo@_Getcvt$xqv+4
?patch284	equ	0
?patch285	equ	@446-@@std@_Locinfo@_Getcvt$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCNFB$@std@ctype_base@$bctr$qui	segment virtual
	align	2
@@_$DCNFB$@std@ctype_base@$bctr$qui	label	dword
	dd	@@$xt$p14std@ctype_base
	dd	5
	dd	8
	dd	0
@_$DCNFB$@std@ctype_base@$bctr$qui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTOFB$@std@ctype_base@$bctr$qui	segment virtual
	align	2
@@_$ECTOFB$@std@ctype_base@$bctr$qui	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCNFB$@std@ctype_base@$bctr$qui
@_$ECTOFB$@std@ctype_base@$bctr$qui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@ctype_base@$bctr$qui	segment virtual
@@std@ctype_base@$bctr$qui	proc	near
?live16537@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 1507
	push      ebp
	mov       ebp,esp
	add       esp,-36
@447:
	mov       eax,offset @@_$ECTOFB$@std@ctype_base@$bctr$qui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1508
	mov       word ptr [ebp-20],12
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@locale@facet@$bctr$qui
	add       esp,8
	inc       dword ptr [ebp-8]
	mov       edx,offset @@std@ctype_base@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 1510
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 1510
@449:
@448:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@ctype_base@$bctr$qui	endp
@std@ctype_base@$bctr$qui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	72
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch286
	dd	?patch287
	dd	?patch288
	df	@@std@ctype_base@$bctr$qui
	dw	0
	dw	5906
	dw	0
	dw	920
	dw	0
	dw	0
	dw	0
	db	25
	db	64
	db	115
	db	116
	db	100
	db	64
	db	99
	db	116
	db	121
	db	112
	db	101
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5447
	dw	0
	dw	921
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	922
	dw	0
	dw	0
	dw	0
?patch286	equ	@449-@@std@ctype_base@$bctr$qui+4
?patch287	equ	0
?patch288	equ	@449-@@std@ctype_base@$bctr$qui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@_Init$qrx12std@_Locinfo	segment virtual
@@std@%ctype$c%@_Init$qrx12std@_Locinfo	proc	near
?live16538@0:
 ;	
 ;	
 ;	
	?debug L 1877
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1881
@450:
	mov       dword ptr [@@std@%ctype$c%@table_size],256
 ;	
 ;	
 ;	
	?debug L 1884
	push      dword ptr [ebp+12]
	mov       eax,dword ptr [ebp+8]
	add       eax,8
	push      eax
	call      @@std@_Locinfo@_Getctype$xqv
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1885
@451:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@_Init$qrx12std@_Locinfo	endp
@std@%ctype$c%@_Init$qrx12std@_Locinfo	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	85
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch289
	dd	?patch290
	dd	?patch291
	df	@@std@%ctype$c%@_Init$qrx12std@_Locinfo
	dw	0
	dw	5908
	dw	0
	dw	923
	dw	0
	dw	0
	dw	0
	db	38
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	95
	db	73
	db	110
	db	105
	db	116
	db	36
	db	113
	db	114
	db	120
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5490
	dw	0
	dw	924
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4982
	dw	0
	dw	925
	dw	0
	dw	0
	dw	0
?patch289	equ	@451-@@std@%ctype$c%@_Init$qrx12std@_Locinfo+2
?patch290	equ	0
?patch291	equ	@451-@@std@%ctype$c%@_Init$qrx12std@_Locinfo
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv	proc	near
?live16544@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 1331
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1333
@452:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+32]
 ;	
 ;	
 ;	
	?debug L 1334
@454:
@453:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	117
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch292
	dd	?patch293
	dd	?patch294
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	dw	0
	dw	5910
	dw	0
	dw	926
	dw	0
	dw	0
	dw	0
	db	70
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	115
	db	105
	db	122
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4622
	dw	0
	dw	927
	dw	0
	dw	0
	dw	0
?patch292	equ	@454-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv+2
?patch293	equ	0
?patch294	equ	@454-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui	proc	near
?live16545@0:
 ;	
 ;	
 ;	
	?debug L 990
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 993
@455:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+32]
	cmp       edx,dword ptr [ebp+12]
	jae       short @456
 ;	
 ;	
 ;	
	?debug L 994
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xran$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 995
@456:
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+32]
	sub       eax,dword ptr [ebp+12]
	cmp       eax,dword ptr [ebp+16]
	jae       short @457
 ;	
 ;	
 ;	
	?debug L 996
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [edx+32]
	sub       ecx,dword ptr [ebp+12]
	mov       dword ptr [ebp+16],ecx
 ;	
 ;	
 ;	
	?debug L 997
@457:
	cmp       dword ptr [ebp+16],0
	jbe       short @458
 ;	
 ;	
 ;	
	?debug L 999
@459:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+32]
	sub       edx,dword ptr [ebp+12]
	sub       edx,dword ptr [ebp+16]
	push      edx
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	add       eax,dword ptr [ebp+12]
	add       eax,dword ptr [ebp+16]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	add       eax,dword ptr [ebp+12]
	push      eax
	call      @@std@%char_traits$c%@move$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1001
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+32]
	sub       eax,dword ptr [ebp+16]
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 1002
	push      dword ptr [ebp-4]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1004
@460:
@458:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1005
@462:
@461:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	120
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch295
	dd	?patch296
	dd	?patch297
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui
	dw	0
	dw	5912
	dw	0
	dw	928
	dw	0
	dw	0
	dw	0
	db	73
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	101
	db	114
	db	97
	db	115
	db	101
	db	36
	db	113
	db	117
	db	105
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	929
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	930
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	931
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch298
	df	@459
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	932
	dw	0
	dw	0
	dw	0
?patch298	equ	@460-@459
	dw	2
	dw	6
?patch295	equ	@462-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui+3
?patch296	equ	0
?patch297	equ	@462-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase$quiui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio	proc	near
?live16546@0:
 ;	
 ;	
 ;	
	?debug L 1776
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1779
@463:
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv
	pop       ecx
	cmp       eax,dword ptr [ebp+12]
	jae       short @464
 ;	
 ;	
 ;	
	?debug L 1780
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xlen$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 1781
@464:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+36]
	cmp       edx,dword ptr [ebp+12]
	jae       short @465
 ;	
 ;	
 ;	
	?debug L 1782
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx+32]
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui
	add       esp,12
	jmp short @466
 ;	
 ;	
 ;	
	?debug L 1783
@465:
	cmp       byte ptr [ebp+16],0
	je        short @467
	cmp       dword ptr [ebp+12],16
	jae       short @467
 ;	
 ;	
 ;	
	?debug L 1784
	mov       eax,dword ptr [ebp+12]
	mov       edx,dword ptr [ebp+8]
	cmp       eax,dword ptr [edx+32]
	jae       short @468
	mov       ecx,dword ptr [ebp+12]
	jmp short @469
@468:
	mov       eax,dword ptr [ebp+8]
	mov       ecx,dword ptr [eax+32]
@469:
	push      ecx
	push      1
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1785
	jmp short @466
 ;	
 ;	
 ;	
	?debug L 1786
@467:
	cmp       dword ptr [ebp+12],0
	jne       short @470
 ;	
 ;	
 ;	
	?debug L 1787
	push      0
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1788
@470:
@466:
	cmp       dword ptr [ebp+12],0
	seta      al
	and       eax,1
 ;	
 ;	
 ;	
	?debug L 1789
@472:
@471:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	119
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch299
	dd	?patch300
	dd	?patch301
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio
	dw	0
	dw	5914
	dw	0
	dw	933
	dw	0
	dw	0
	dw	0
	db	72
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	71
	db	114
	db	111
	db	119
	db	36
	db	113
	db	117
	db	105
	db	111
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	934
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	935
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	48
	dw	0
	dw	936
	dw	0
	dw	0
	dw	0
?patch299	equ	@472-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio+2
?patch300	equ	0
?patch301	equ	@472-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv	proc	near
?live16547@0:
 ;	
 ;	
 ;	
	?debug L 1827
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1829
@473:
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax+36],16
	jb        short @474
	mov       edx,dword ptr [ebp+8]
	mov       eax,dword ptr [edx+16]
	jmp short @476
@474:
	mov       eax,dword ptr [ebp+8]
	add       eax,16
 ;	
 ;	
 ;	
	?debug L 1830
@477:
@476:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	118
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch302
	dd	?patch303
	dd	?patch304
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	dw	0
	dw	5916
	dw	0
	dw	937
	dw	0
	dw	0
	dw	0
	db	71
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	77
	db	121
	db	112
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	938
	dw	0
	dw	0
	dw	0
?patch302	equ	@477-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv+2
?patch303	equ	0
?patch304	equ	@477-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv	proc	near
?live16548@0:
 ;	
 ;	
 ;	
	?debug L 1832
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1834
@478:
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax+36],16
	jb        short @479
	mov       edx,dword ptr [ebp+8]
	mov       eax,dword ptr [edx+16]
	jmp short @481
@479:
	mov       eax,dword ptr [ebp+8]
	add       eax,16
 ;	
 ;	
 ;	
	?debug L 1835
@482:
@481:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	119
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch305
	dd	?patch306
	dd	?patch307
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv
	dw	0
	dw	5918
	dw	0
	dw	939
	dw	0
	dw	0
	dw	0
	db	72
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	77
	db	121
	db	112
	db	116
	db	114
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4622
	dw	0
	dw	940
	dw	0
	dw	0
	dw	0
?patch305	equ	@482-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv+2
?patch306	equ	0
?patch307	equ	@482-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%char_traits$c%@assign$qrcrxc	segment virtual
@@std@%char_traits$c%@assign$qrcrxc	proc	near
?live16549@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd"
 ;	
 ;	
 ;	
	?debug L 485
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 487
@483:
	mov       eax,dword ptr [ebp+12]
	mov       dl,byte ptr [eax]
	mov       ecx,dword ptr [ebp+8]
	mov       byte ptr [ecx],dl
 ;	
 ;	
 ;	
	?debug L 488
@484:
	pop       ebp
	ret 
	?debug L 0
@@std@%char_traits$c%@assign$qrcrxc	endp
@std@%char_traits$c%@assign$qrcrxc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	81
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch308
	dd	?patch309
	dd	?patch310
	df	@@std@%char_traits$c%@assign$qrcrxc
	dw	0
	dw	5920
	dw	0
	dw	941
	dw	0
	dw	0
	dw	0
	db	34
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	64
	db	97
	db	115
	db	115
	db	105
	db	103
	db	110
	db	36
	db	113
	db	114
	db	99
	db	114
	db	120
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4302
	dw	0
	dw	942
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4303
	dw	0
	dw	943
	dw	0
	dw	0
	dw	0
?patch308	equ	@484-@@std@%char_traits$c%@assign$qrcrxc+2
?patch309	equ	0
?patch310	equ	@484-@@std@%char_traits$c%@assign$qrcrxc
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
	align	4
$ahbamklc	label	byte
	db	4	dup(?)
	db	4	dup(?)
	dd	0
	dd	0
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTPFB$@std@_Locinfo@_Getctype$xqv	segment virtual
	align	2
@@_$ECTPFB$@std@_Locinfo@_Getctype$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	0
@_$ECTPFB$@std@_Locinfo@_Getctype$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@_Locinfo@_Getctype$xqv	segment virtual
@@std@_Locinfo@_Getctype$xqv	proc	near
?live16554@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocinfo"
 ;	
 ;	
 ;	
	?debug L 56
	push      ebp
	mov       ebp,esp
	add       esp,-52
	push      esi
	push      edi
@485:
	mov       eax,offset @@_$ECTPFB$@std@_Locinfo@_Getctype$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 58
	mov       esi,offset $ahbamklc
	lea       edi,dword ptr [ebp-52]
	mov       ecx,4
	rep   movsd
	mov       eax,dword ptr [ebp+12]
	mov       edx,dword ptr [eax+88]
	mov       dword ptr [ebp-52],edx
	mov       ecx,dword ptr [ebp+12]
	mov       eax,dword ptr [ecx+92]
	mov       dword ptr [ebp-48],eax
 ;	
 ;	
 ;	
	?debug L 59
	call      @__Getctyptab
	mov       dword ptr [ebp-44],eax
 ;	
 ;	
 ;	
	?debug L 60
	mov       dword ptr [ebp-40],1
 ;	
 ;	
 ;	
	?debug L 61
	mov       edx,dword ptr [ebp+8]
	lea       esi,dword ptr [ebp-52]
	mov       edi,edx
	mov       ecx,4
	rep   movsd
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 62
@487:
@486:
	pop       edi
	pop       esi
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@_Locinfo@_Getctype$xqv	endp
@std@_Locinfo@_Getctype$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch311
	dd	?patch312
	dd	?patch313
	df	@@std@_Locinfo@_Getctype$xqv
	dw	0
	dw	5922
	dw	0
	dw	944
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	64
	db	95
	db	71
	db	101
	db	116
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5924
	dw	0
	dw	945
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5016
	dw	0
	dw	946
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65484
	dw	65535
	dw	4987
	dw	0
	dw	947
	dw	0
	dw	0
	dw	0
?patch311	equ	@487-@@std@_Locinfo@_Getctype$xqv+6
?patch312	equ	0
?patch313	equ	@487-@@std@_Locinfo@_Getctype$xqv
	dw	2
	dw	6
	dw	8
	dw	531
	dw	6
	dw	65476
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%char_traits$c%@move$qpcpxcui	segment virtual
@@std@%char_traits$c%@move$qpcpxcui	proc	near
?live16555@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd"
 ;	
 ;	
 ;	
	?debug L 529
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 534
@488:
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @_memmove
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 535
@490:
@489:
	pop       ebp
	ret 
	?debug L 0
@@std@%char_traits$c%@move$qpcpxcui	endp
@std@%char_traits$c%@move$qpcpxcui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	81
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch314
	dd	?patch315
	dd	?patch316
	df	@@std@%char_traits$c%@move$qpcpxcui
	dw	0
	dw	5925
	dw	0
	dw	948
	dw	0
	dw	0
	dw	0
	db	34
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	64
	db	109
	db	111
	db	118
	db	101
	db	36
	db	113
	db	112
	db	99
	db	112
	db	120
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	1136
	dw	0
	dw	949
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	950
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	951
	dw	0
	dw	0
	dw	0
?patch314	equ	@490-@@std@%char_traits$c%@move$qpcpxcui+2
?patch315	equ	0
?patch316	equ	@490-@@std@%char_traits$c%@move$qpcpxcui
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv	proc	near
?live16556@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 1336
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 1338
@491:
	mov       eax,dword ptr [ebp+8]
	add       eax,8
	push      eax
	call      @@std@%allocator$c%@max_size$xqv
	pop       ecx
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 1339
	cmp       dword ptr [ebp-4],1
	ja        short @492
	mov       eax,1
	jmp short @494
@492:
	mov       eax,dword ptr [ebp-4]
	dec       eax
 ;	
 ;	
 ;	
	?debug L 1340
@495:
@494:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	121
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch317
	dd	?patch318
	dd	?patch319
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv
	dw	0
	dw	5927
	dw	0
	dw	952
	dw	0
	dw	0
	dw	0
	db	74
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	109
	db	97
	db	120
	db	95
	db	115
	db	105
	db	122
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4622
	dw	0
	dw	953
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	954
	dw	0
	dw	0
	dw	0
?patch317	equ	@495-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv+3
?patch318	equ	0
?patch319	equ	@495-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$CHRFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	segment virtual
	align	2
@@_$CHRFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	label	dword
	dd	0
	dd	0
	dd	@496
	dd	0
	dd	0
	dd	0
	dd	0
	dd	0
@_$CHRFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$CHQFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	segment virtual
	align	2
@@_$CHQFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	label	dword
	dd	0
	dd	0
	dd	@497
	dd	0
	dd	0
	dd	0
	dd	0
	dd	0
@_$CHQFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTSFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	segment virtual
	align	2
@@_$ECTSFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	3
	dd	@@_$CHQFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui
	dw	0
	dw	4
	dw	12
	dw	5
	dd	0
	dd	0
	dw	20
	dw	3
	dd	@@_$CHRFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui
	dw	20
	dw	4
	dw	36
	dw	5
	dd	0
	dd	0
@_$ECTSFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	proc	near
?live16557@0:
 ;	
 ;	
 ;	
	?debug L 1741
	push      ebp
	mov       ebp,esp
	add       esp,-44
	push      ebx
	push      esi
	push      edi
@498:
	mov       eax,offset @@_$ECTSFB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1743
	mov       edx,dword ptr [ebp+12]
	or        edx,15
	mov       dword ptr [ebp-40],edx
 ;	
 ;	
 ;	
	?debug L 1744
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv
	pop       ecx
	cmp       eax,dword ptr [ebp-40]
	jae       short @499
 ;	
 ;	
 ;	
	?debug L 1745
	mov       ecx,dword ptr [ebp+12]
	mov       dword ptr [ebp-40],ecx
	jmp short @500
 ;	
 ;	
 ;	
	?debug L 1746
@499:
	mov       eax,dword ptr [ebp-40]
	mov       ecx,3
	xor       edx,edx
	div       ecx
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [edx+36]
	shr       ecx,1
	cmp       eax,ecx
	jae       short @501
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size$xqv
	pop       ecx
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [edx+36]
	shr       ecx,1
	sub       eax,ecx
	mov       edx,dword ptr [ebp+8]
	cmp       eax,dword ptr [edx+36]
	jb        short @501
 ;	
 ;	
 ;	
	?debug L 1748
	mov       eax,dword ptr [ebp+8]
	mov       ecx,dword ptr [eax+36]
	mov       ebx,dword ptr [ebp+8]
	mov       eax,dword ptr [ebx+36]
	shr       eax,1
	add       ecx,eax
	mov       dword ptr [ebp-40],ecx
 ;	
 ;	
 ;	
	?debug L 1751
@501:
@500:
	mov       word ptr [ebp-20],12
 ;	
 ;	
 ;	
	?debug L 1752
	mov       edx,dword ptr [ebp-40]
	inc       edx
	push      edx
	mov       ecx,dword ptr [ebp+8]
	add       ecx,8
	push      ecx
	call      @@std@%allocator$c%@allocate$qui
	add       esp,8
	mov       dword ptr [ebp-44],eax
 ;	
 ;	
 ;	
	?debug L 1753
	mov       word ptr [ebp-20],0
	jmp short @502
 ;	
 ;	
 ;	
	?debug L 1754
@503:
@497:
	mov       eax,dword ptr [ebp+12]
	mov       dword ptr [ebp-40],eax
 ;	
 ;	
 ;	
	?debug L 1755
	mov       word ptr [ebp-20],36
 ;	
 ;	
 ;	
	?debug L 1756
	mov       edx,dword ptr [ebp-40]
	inc       edx
	push      edx
	mov       ecx,dword ptr [ebp+8]
	add       ecx,8
	push      ecx
	call      @@std@%allocator$c%@allocate$qui
	add       esp,8
	mov       dword ptr [ebp-44],eax
 ;	
 ;	
 ;	
	?debug L 1757
	mov       word ptr [ebp-20],20
	jmp short @504
 ;	
 ;	
 ;	
	?debug L 1758
@505:
@496:
	push      0
	push      1
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1759
	push      0
	push      0
	call      @_ReThrowException$quipuc
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1760
@506:
	mov       word ptr [ebp-20],44
	call      @@_CatchCleanup$qv
 ;	
 ;	
 ;	
	?debug L 1761
@504:
@507:
	mov       word ptr [ebp-20],20
	call      @@_CatchCleanup$qv
 ;	
 ;	
 ;	
	?debug L 1763
@502:
	cmp       dword ptr [ebp+16],0
	jbe       short @508
 ;	
 ;	
 ;	
	?debug L 1764
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	push      eax
	push      dword ptr [ebp-44]
	call      @@std@%char_traits$c%@copy$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1765
@508:
	push      0
	push      1
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1766
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr [eax+16],edx
 ;	
 ;	
 ;	
	?debug L 1767
	mov       ecx,dword ptr [ebp+8]
	mov       ebx,dword ptr [ebp-40]
	mov       dword ptr [ecx+36],ebx
 ;	
 ;	
 ;	
	?debug L 1768
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1769
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	?debug L 1769
@509:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	120
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch320
	dd	?patch321
	dd	?patch322
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui
	dw	0
	dw	5929
	dw	0
	dw	955
	dw	0
	dw	0
	dw	0
	db	73
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	67
	db	111
	db	112
	db	121
	db	36
	db	113
	db	117
	db	105
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	956
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	957
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	958
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65492
	dw	65535
	dw	1136
	dw	0
	dw	959
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65496
	dw	65535
	dw	117
	dw	0
	dw	960
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch323
	df	@503
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch324
	df	@505
	dw	0
	dw	0
?patch324	equ	@506-@505
	dw	2
	dw	6
?patch323	equ	@507-@503
	dw	2
	dw	6
?patch320	equ	@509-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui+7
?patch321	equ	0
?patch322	equ	@509-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy$quiui
	dw	2
	dw	6
	dw	8
	dw	531
	dw	7
	dw	65480
	dw	65535
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLTFB$@std@%allocator$c%@max_size$xqv	segment virtual
	align	2
@@_$TLTFB$@std@%allocator$c%@max_size$xqv	label	dword
	dd	0
@_$TLTFB$@std@%allocator$c%@max_size$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTUFB$@std@%allocator$c%@max_size$xqv	segment virtual
	align	2
@@_$ECTUFB$@std@%allocator$c%@max_size$xqv	label	dword
	dd	@@_$TLTFB$@std@%allocator$c%@max_size$xqv
	dd	0
	dd	-36
@_$ECTUFB$@std@%allocator$c%@max_size$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%allocator$c%@max_size$xqv	segment virtual
@@std@%allocator$c%@max_size$xqv	proc	near
?live16559@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xmemory"
 ;	
 ;	
 ;	
	?debug L 152
	push      ebp
	mov       ebp,esp
	add       esp,-40
@510:
	mov       eax,offset @@_$ECTUFB$@std@%allocator$c%@max_size$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 154
	mov       dword ptr [ebp-40],-1
 ;	
 ;	
 ;	
	?debug L 155
	cmp       dword ptr [ebp-40],0
	jbe       short @511
	mov       eax,dword ptr [ebp-40]
	jmp short @512
@511:
	mov       eax,1
@512:
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 156
@514:
@513:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%allocator$c%@max_size$xqv	endp
@std@%allocator$c%@max_size$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	78
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch325
	dd	?patch326
	dd	?patch327
	df	@@std@%allocator$c%@max_size$xqv
	dw	0
	dw	5931
	dw	0
	dw	961
	dw	0
	dw	0
	dw	0
	db	31
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	64
	db	109
	db	97
	db	120
	db	95
	db	115
	db	105
	db	122
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4305
	dw	0
	dw	962
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65496
	dw	65535
	dw	117
	dw	0
	dw	963
	dw	0
	dw	0
	dw	0
?patch325	equ	@514-@@std@%allocator$c%@max_size$xqv+4
?patch326	equ	0
?patch327	equ	@514-@@std@%allocator$c%@max_size$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%allocator$c%@allocate$qui	segment virtual
@@std@%allocator$c%@allocate$qui	proc	near
?live16560@0:
 ;	
 ;	
 ;	
	?debug L 132
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 134
@515:
	push      0
	push      dword ptr [ebp+12]
	call      @@std@%_Allocate$c%$quipc$pc
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 135
@517:
@516:
	pop       ebp
	ret 
	?debug L 0
@@std@%allocator$c%@allocate$qui	endp
@std@%allocator$c%@allocate$qui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	78
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch328
	dd	?patch329
	dd	?patch330
	df	@@std@%allocator$c%@allocate$qui
	dw	0
	dw	5933
	dw	0
	dw	964
	dw	0
	dw	0
	dw	0
	db	31
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	64
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	101
	db	36
	db	113
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4312
	dw	0
	dw	965
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	966
	dw	0
	dw	0
	dw	0
?patch328	equ	@517-@@std@%allocator$c%@allocate$qui+2
?patch329	equ	0
?patch330	equ	@517-@@std@%allocator$c%@allocate$qui
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%_Allocate$c%$quipc$pc	segment virtual
@@std@%_Allocate$c%$quipc$pc	proc	near
?live16566@0:
 ;	
 ;	
 ;	
	?debug L 17
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 19
@518:
	push      dword ptr [ebp+8]
	call      @$bnew$qui
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 20
@520:
@519:
	pop       ebp
	ret 
	?debug L 0
@@std@%_Allocate$c%$quipc$pc	endp
@std@%_Allocate$c%$quipc$pc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch331
	dd	?patch332
	dd	?patch333
	df	@@std@%_Allocate$c%$quipc$pc
	dw	0
	dw	5935
	dw	0
	dw	967
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	65
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	101
	db	36
	db	99
	db	37
	db	36
	db	113
	db	117
	db	105
	db	112
	db	99
	db	36
	db	112
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	117
	dw	0
	dw	968
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1136
	dw	0
	dw	969
	dw	0
	dw	0
	dw	0
?patch331	equ	@520-@@std@%_Allocate$c%$quipc$pc+2
?patch332	equ	0
?patch333	equ	@520-@@std@%_Allocate$c%$quipc$pc
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@std@%_Facetptr$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%@_Psave	segment virtual
	align	2
@@std@%_Facetptr$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%@_Psave	label	dword
	dd	0
@std@%_Facetptr$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%@_Psave	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id	segment virtual
	align	2
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id	label	byte
	db	4	dup(?)
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@%_Facetptr$13std@%ctype$c%%@_Psave	segment virtual
	align	2
@@std@%_Facetptr$13std@%ctype$c%%@_Psave	label	dword
	dd	0
@std@%_Facetptr$13std@%ctype$c%%@_Psave	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p14std@ctype_base	segment virtual
	align	2
@@$xt$p14std@ctype_base	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$14std@ctype_base
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	116
	db	121
	db	112
	db	101
	db	95
	db	98
	db	97
	db	115
	db	101
	db	32
	db	42
	db	0
@$xt$p14std@ctype_base	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p16std@locale@facet	segment virtual
	align	2
@@$xt$p16std@locale@facet	label	dword
	dd	4
	dw	16
	dw	12
	dd	@@$xt$16std@locale@facet
	db	115
	db	116
	db	100
	db	58
	db	58
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	58
	db	58
	db	102
	db	97
	db	99
	db	101
	db	116
	db	32
	db	42
	db	0
@$xt$p16std@locale@facet	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p13std@%ctype$c%	segment virtual
	align	2
@@$xt$p13std@%ctype$c%	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$13std@%ctype$c%
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	116
	db	121
	db	112
	db	101
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	32
	db	42
	db	0
@$xt$p13std@%ctype$c%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	segment virtual
	align	2
@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	db	115
	db	116
	db	100
	db	58
	db	58
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	32
	db	42
	db	0
@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p13std@exception	segment virtual
	align	2
@@$xt$p13std@exception	label	dword
	dd	4
	dw	16
	dw	12
	dd	@@$xt$13std@exception
	db	115
	db	116
	db	100
	db	58
	db	58
	db	101
	db	120
	db	99
	db	101
	db	112
	db	116
	db	105
	db	111
	db	110
	db	32
	db	42
	db	0
@$xt$p13std@exception	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$12std@_Locinfo	segment virtual
	align	2
@@$xt$12std@_Locinfo	label	byte
	dd	96
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	64
	dw	68
	dd	0
	dw	0
	dw	0
	dd	0
	dd	4
	dd	4
	dd	@@std@_Locinfo@$bdtr$qv
	dw	1
	dw	72
	db	115
	db	116
	db	100
	db	58
	db	58
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	0
	db	0
	db	0
	dd	0
	dd	0
	dd	@@$xt$11std@_Lockit
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	8
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	48
	dd	0
@$xt$12std@_Locinfo	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	segment virtual
	align	2
@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	label	byte
	dd	40
	dw	3
	dw	48
	dd	-1
	dd	7
	dw	120
	dw	136
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	dw	1
	dw	140
	db	115
	db	116
	db	100
	db	58
	db	58
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	60
	db	99
	db	104
	db	97
	db	114
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	32
	db	62
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$38std@%_String_val$c17std@%allocator$c%%
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	segment virtual
	align	2
@@$xt$p65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	db	115
	db	116
	db	100
	db	58
	db	58
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	60
	db	99
	db	104
	db	97
	db	114
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	60
	db	99
	db	104
	db	97
	db	114
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	32
	db	62
	db	32
	db	62
	db	32
	db	42
	db	0
@$xt$p65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p11std@_Lockit	segment virtual
	align	2
@@$xt$p11std@_Lockit	label	dword
	dd	4
	dw	16
	dw	12
	dd	@@$xt$11std@_Lockit
	db	115
	db	116
	db	100
	db	58
	db	58
	db	95
	db	76
	db	111
	db	99
	db	107
	db	105
	db	116
	db	32
	db	42
	db	0
@$xt$p11std@_Lockit	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base	segment virtual
	align	2
@@$xt$p55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base	label	dword
	dd	4
	dw	16
	dw	12
	dd	@@$xt$55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	58
	db	58
	db	95
	db	83
	db	101
	db	110
	db	116
	db	114
	db	121
	db	95
	db	98
	db	97
	db	115
	db	101
	db	32
	db	42
	db	0
@$xt$p55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$11std@_Lockit	segment virtual
	align	2
@@$xt$11std@_Lockit	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	64
	dw	68
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@std@_Lockit@$bdtr$qv
	dw	1
	dw	72
	db	115
	db	116
	db	100
	db	58
	db	58
	db	95
	db	76
	db	111
	db	99
	db	107
	db	105
	db	116
	db	0
	db	0
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$11std@_Lockit	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$12std@bad_cast	segment virtual
	align	2
@@$xt$12std@bad_cast	label	byte
	dd	4
	dw	3
	dw	48
	dd	0
	dd	119
	dw	64
	dw	80
	dd	0
	dw	0
	dw	0
	dd	0
	dd	2
	dd	2
	dd	@@std@bad_cast@$bdtr$qv
	dw	1
	dw	84
	db	115
	db	116
	db	100
	db	58
	db	58
	db	98
	db	97
	db	100
	db	95
	db	99
	db	97
	db	115
	db	116
	db	0
	db	0
	db	0
	dd	@@$xt$13std@exception
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$12std@bad_cast	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$a2$p16std@locale@facet	segment virtual
	align	2
@@$xt$a2$p16std@locale@facet	label	dword
	dd	8
	dw	1024
	dw	16
	dd	@@$xt$p16std@locale@facet
	dd	2
	db	115
	db	116
	db	100
	db	58
	db	58
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	58
	db	58
	db	102
	db	97
	db	99
	db	101
	db	116
	db	32
	db	42
	db	91
	db	50
	db	93
	db	0
@$xt$a2$p16std@locale@facet	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p10std@locale	segment virtual
	align	2
@@$xt$p10std@locale	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$10std@locale
	db	115
	db	116
	db	100
	db	58
	db	58
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	32
	db	42
	db	0
@$xt$p10std@locale	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p49std@%basic_ostream$c19std@%char_traits$c%%@sentry	segment virtual
	align	2
@@$xt$p49std@%basic_ostream$c19std@%char_traits$c%%@sentry	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	58
	db	58
	db	115
	db	101
	db	110
	db	116
	db	114
	db	121
	db	32
	db	42
	db	0
@$xt$p49std@%basic_ostream$c19std@%char_traits$c%%@sentry	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$10std@locale	segment virtual
	align	2
@@$xt$10std@locale	label	byte
	dd	16
	dw	3
	dw	48
	dd	-1
	dd	7
	dw	60
	dw	76
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@std@locale@$bdtr$qv
	dw	1
	dw	80
	db	115
	db	116
	db	100
	db	58
	db	58
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	0
	dd	@@$xt$16std@%_Locbase$i%
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$10std@locale	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry	segment virtual
	align	2
@@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry	label	byte
	dd	8
	dw	3
	dw	48
	dd	-1
	dd	7
	dw	108
	dw	124
	dd	0
	dw	0
	dw	0
	dd	0
	dd	2
	dd	2
	dd	@@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv
	dw	1
	dw	128
	db	115
	db	116
	db	100
	db	58
	db	58
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	60
	db	99
	db	104
	db	97
	db	114
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	32
	db	62
	db	58
	db	58
	db	115
	db	101
	db	110
	db	116
	db	114
	db	121
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$49std@%basic_ostream$c19std@%char_traits$c%%@sentry	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$pxc	segment virtual
	align	2
@@$xt$pxc	label	dword
	dd	4
	dw	272
	dw	12
	dd	@@$xt$c
	db	99
	db	111
	db	110
	db	115
	db	116
	db	32
	db	99
	db	104
	db	97
	db	114
	db	32
	db	42
	db	0
@$xt$pxc	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$ECTVFB$@std@locale@id@$bctr$qui	segment virtual
	align	2
@@_$ECTVFB$@std@locale@id@$bctr$qui	label	dword
	dd	0
	dd	0
	dd	-36
@_$ECTVFB$@std@locale@id@$bctr$qui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@id@$bctr$qui	segment virtual
@@std@locale@id@$bctr$qui	proc	near
?live16569@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 64
	push      ebp
	mov       ebp,esp
	add       esp,-36
@521:
	mov       eax,offset @@_$ECTVFB$@std@locale@id@$bctr$qui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 65
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 67
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 67
@523:
@522:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@locale@id@$bctr$qui	endp
@std@locale@id@$bctr$qui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	71
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch334
	dd	?patch335
	dd	?patch336
	df	@@std@locale@id@$bctr$qui
	dw	0
	dw	5937
	dw	0
	dw	970
	dw	0
	dw	0
	dw	0
	db	24
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	105
	db	100
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4915
	dw	0
	dw	971
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	972
	dw	0
	dw	0
	dw	0
?patch334	equ	@523-@@std@locale@id@$bctr$qui+4
?patch335	equ	0
?patch336	equ	@523-@@std@locale@id@$bctr$qui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLWFB$@std@bad_cast@$bdtr$qv	segment virtual
	align	2
@@_$TLWFB$@std@bad_cast@$bdtr$qv	label	dword
	dd	0
@_$TLWFB$@std@bad_cast@$bdtr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTXFB$@std@bad_cast@$bdtr$qv	segment virtual
	align	2
@@_$ECTXFB$@std@bad_cast@$bdtr$qv	label	dword
	dd	@@_$TLWFB$@std@bad_cast@$bdtr$qv
	dd	0
	dd	-36
@_$ECTXFB$@std@bad_cast@$bdtr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@bad_cast@$bdtr$qv	segment virtual
@@std@bad_cast@$bdtr$qv	proc	near
?live16579@0:
	?debug L 0
	push      ebp
	mov       ebp,esp
	add       esp,-36
@524:
	mov       eax,offset @@_$ECTXFB$@std@bad_cast@$bdtr$qv
	call      @__InitExceptBlockLDTC
	cmp       dword ptr [ebp+8],0
	je        short @525
	dec       dword ptr [ebp-8]
	push      0
	push      dword ptr [ebp+8]
	call      @@std@exception@$bdtr$qv
	add       esp,8
	test      byte ptr [ebp+12],1
	je        short @526
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
@525:
@526:
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
	?debug L 67
@530:
@529:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@bad_cast@$bdtr$qv	endp
@std@bad_cast@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	69
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch337
	dd	?patch338
	dd	?patch339
	df	@@std@bad_cast@$bdtr$qv
	dw	0
	dw	5939
	dw	0
	dw	973
	dw	0
	dw	0
	dw	0
	db	22
	db	64
	db	115
	db	116
	db	100
	db	64
	db	98
	db	97
	db	100
	db	95
	db	99
	db	97
	db	115
	db	116
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5843
	dw	0
	dw	974
	dw	0
	dw	0
	dw	0
?patch337	equ	@530-@@std@bad_cast@$bdtr$qv+4
?patch338	equ	0
?patch339	equ	@530-@@std@bad_cast@$bdtr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@std@ctype_base@3	segment virtual
	align	2
@@std@ctype_base@3	label	byte
	dd	@@$xt$14std@ctype_base
	dd	0
	dd	0
	dd	@@std@ctype_base@$bdtr$qv
@std@ctype_base@3	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@%ctype$c%@3	segment virtual
	align	2
@@std@%ctype$c%@3	label	byte
	dd	@@$xt$13std@%ctype$c%
	dd	0
	dd	0
	dd	@@std@%ctype$c%@$bdtr$qv
	dd	@@std@%ctype$c%@do_tolower$xqc
	dd	@@std@%ctype$c%@do_tolower$xqpcpxc
	dd	@@std@%ctype$c%@do_toupper$xqc
	dd	@@std@%ctype$c%@do_toupper$xqpcpxc
	dd	@@std@%ctype$c%@do_widen$xqc
	dd	@@std@%ctype$c%@do_widen$xqpxct1pc
	dd	@@std@%ctype$c%@do_narrow$xqcc
	dd	@@std@%ctype$c%@do_narrow$xqpxct1cpc
@std@%ctype$c%@3	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@locale@facet@3	segment virtual
	align	2
@@std@locale@facet@3	label	byte
	dd	@@$xt$16std@locale@facet
	dd	0
	dd	0
	dd	@@std@locale@facet@$bdtr$qv
@std@locale@facet@3	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@3	segment virtual
	align	2
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@3	label	byte
	dd	@@$xt$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	dd	0
	dd	0
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecul
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecj
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecuj
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecd
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecg
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxv
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@3	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@exception@3	segment virtual
	align	2
@@std@exception@3	label	byte
	dd	@@$xt$13std@exception
	dd	0
	dd	0
	dd	@@std@exception@$bdtr$qv
	dd	@@std@exception@what$xqv
@std@exception@3	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@bad_cast@3	segment virtual
	align	2
@@std@bad_cast@3	label	byte
	dd	@@$xt$12std@bad_cast
	dd	0
	dd	0
	dd	@@std@bad_cast@$bdtr$qv
	dd	@@std@exception@what$xqv
_INIT_	segment word public use32 'INITDATA'
_INIT_	ends
@std@bad_cast@3	ends
_DATA	ends
_INIT_	segment word public use32 'INITDATA'
	db	0
	db	32
	dd	@_STCON1_$qv
_INIT_	ends
_DATA	segment dword public use32 'DATA'
@std@bad_cast@3	segment virtual
@std@bad_cast@3	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@#$cf$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id	segment virtual
$akjllklc	label	byte
	db	0
@#$cf$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@_STCON1_$qv	proc	near
@@_STCON1_$qv equ @_STCON1_$qv
?live1@0:
	?debug L 0
	push      ebp
	mov       ebp,esp
@531:
	cmp       byte ptr [$akjllklc],0
	jne       short @532
	push      0
	push      offset @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id
	call      @@std@locale@id@$bctr$qui
	add       esp,8
	mov       byte ptr [$akjllklc],1
	?debug L 0
@532:
@533:
	pop       ebp
	ret 
	?debug L 0
@_STCON1_$qv	endp
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	46
	dw	516
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch340
	dd	?patch341
	dd	?patch342
	df	@_STCON1_$qv
	dw	0
	dw	5941
	dw	0
	dw	975
	dw	0
	dw	0
	dw	0
?patch340	equ	@533-@_STCON1_$qv+2
?patch341	equ	0
?patch342	equ	@533-@_STCON1_$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@$xt$c	segment virtual
	align	2
@@$xt$c	label	byte
	dd	1
	dw	0
	dw	8
	db	99
	db	104
	db	97
	db	114
	db	0
@$xt$c	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$16std@%_Locbase$i%	segment virtual
	align	2
@@$xt$16std@%_Locbase$i%	label	byte
	dd	8
	dw	1
	dw	16
	dd	-1
	dd	0
	db	115
	db	116
	db	100
	db	58
	db	58
	db	95
	db	76
	db	111
	db	99
	db	98
	db	97
	db	115
	db	101
	db	60
	db	105
	db	110
	db	116
	db	62
	db	0
	db	0
@$xt$16std@%_Locbase$i%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base	segment virtual
	align	2
@@$xt$55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	112
	dw	116
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv
	dw	1
	dw	120
	db	115
	db	116
	db	100
	db	58
	db	58
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	60
	db	99
	db	104
	db	97
	db	114
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	32
	db	62
	db	58
	db	58
	db	95
	db	83
	db	101
	db	110
	db	116
	db	114
	db	121
	db	95
	db	98
	db	97
	db	115
	db	101
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	segment virtual
	align	2
@@$xt$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	label	byte
	dd	16
	dw	3
	dw	48
	dd	0
	dd	119
	dw	124
	dw	140
	dd	0
	dw	0
	dw	0
	dd	0
	dd	2
	dd	2
	dd	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv
	dw	1
	dw	144
	db	115
	db	116
	db	100
	db	58
	db	58
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	60
	db	99
	db	104
	db	97
	db	114
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	60
	db	99
	db	104
	db	97
	db	114
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	32
	db	62
	db	32
	db	62
	db	0
	db	0
	dd	@@$xt$16std@locale@facet
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$38std@%_String_val$c17std@%allocator$c%%	segment virtual
	align	2
@@$xt$38std@%_String_val$c17std@%allocator$c%%	label	byte
	dd	16
	dw	3
	dw	32
	dd	-1
	dd	5
	dw	80
	dw	96
	dd	0
	dw	0
	dw	0
	dd	0
	db	115
	db	116
	db	100
	db	58
	db	58
	db	95
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	95
	db	118
	db	97
	db	108
	db	60
	db	99
	db	104
	db	97
	db	114
	db	44
	db	115
	db	116
	db	100
	db	58
	db	58
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	32
	db	62
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$16std@_String_base
	dd	0
	dd	3
	dd	0
	dd	0
@$xt$38std@%_String_val$c17std@%allocator$c%%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$13std@exception	segment virtual
	align	2
@@$xt$13std@exception	label	byte
	dd	4
	dw	3
	dw	48
	dd	0
	dd	115
	dw	64
	dw	68
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@std@exception@$bdtr$qv
	dw	1
	dw	72
	db	115
	db	116
	db	100
	db	58
	db	58
	db	101
	db	120
	db	99
	db	101
	db	112
	db	116
	db	105
	db	111
	db	110
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$13std@exception	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$13std@%ctype$c%	segment virtual
	align	2
@@$xt$13std@%ctype$c%	label	byte
	dd	24
	dw	3
	dw	48
	dd	0
	dd	119
	dw	68
	dw	84
	dd	0
	dw	0
	dw	0
	dd	0
	dd	3
	dd	3
	dd	@@std@%ctype$c%@$bdtr$qv
	dw	1
	dw	88
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	116
	db	121
	db	112
	db	101
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$14std@ctype_base
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$13std@%ctype$c%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$16std@locale@facet	segment virtual
	align	2
@@$xt$16std@locale@facet	label	byte
	dd	8
	dw	3
	dw	48
	dd	0
	dd	115
	dw	68
	dw	72
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@std@locale@facet@$bdtr$qv
	dw	1
	dw	76
	db	115
	db	116
	db	100
	db	58
	db	58
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	58
	db	58
	db	102
	db	97
	db	99
	db	101
	db	116
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$16std@locale@facet	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$14std@ctype_base	segment virtual
	align	2
@@$xt$14std@ctype_base	label	byte
	dd	8
	dw	3
	dw	48
	dd	0
	dd	119
	dw	64
	dw	80
	dd	0
	dw	0
	dw	0
	dd	0
	dd	2
	dd	2
	dd	@@std@ctype_base@$bdtr$qv
	dw	1
	dw	84
	db	115
	db	116
	db	100
	db	58
	db	58
	db	99
	db	116
	db	121
	db	112
	db	101
	db	95
	db	98
	db	97
	db	115
	db	101
	db	0
	dd	@@$xt$16std@locale@facet
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$14std@ctype_base	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCYFB$@std@ctype_base@$bdtr$qv	segment virtual
	align	2
@@_$DCYFB$@std@ctype_base@$bdtr$qv	label	dword
	dd	@@$xt$p14std@ctype_base
	dd	5
	dd	8
	dd	0
@_$DCYFB$@std@ctype_base@$bdtr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTZFB$@std@ctype_base@$bdtr$qv	segment virtual
	align	2
@@_$ECTZFB$@std@ctype_base@$bdtr$qv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCYFB$@std@ctype_base@$bdtr$qv
@_$ECTZFB$@std@ctype_base@$bdtr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@ctype_base@$bdtr$qv	segment virtual
@@std@ctype_base@$bdtr$qv	proc	near
?live16586@0:
 ;	
 ;	
 ;	
	?debug L 1512
	push      ebp
	mov       ebp,esp
	add       esp,-36
@534:
	mov       eax,offset @@_$ECTZFB$@std@ctype_base@$bdtr$qv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-8],1
	cmp       dword ptr [ebp+8],0
	je        short @535
 ;	
 ;	
 ;	
	?debug L 1513
	mov       word ptr [ebp-20],12
	mov       edx,offset @@std@ctype_base@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
	dec       dword ptr [ebp-8]
	push      0
	push      dword ptr [ebp+8]
	call      @@std@locale@facet@$bdtr$qv
	add       esp,8
	test      byte ptr [ebp+12],1
	je        short @536
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 1514
@536:
@535:
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	?debug L 1514
@537:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@ctype_base@$bdtr$qv	endp
@std@ctype_base@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	71
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch343
	dd	?patch344
	dd	?patch345
	df	@@std@ctype_base@$bdtr$qv
	dw	0
	dw	5943
	dw	0
	dw	976
	dw	0
	dw	0
	dw	0
	db	24
	db	64
	db	115
	db	116
	db	100
	db	64
	db	99
	db	116
	db	121
	db	112
	db	101
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5447
	dw	0
	dw	977
	dw	0
	dw	0
	dw	0
?patch343	equ	@537-@@std@ctype_base@$bdtr$qv+4
?patch344	equ	0
?patch345	equ	@537-@@std@ctype_base@$bdtr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCAGB$@std@%ctype$c%@$bdtr$qv	segment virtual
	align	2
@@_$DCAGB$@std@%ctype$c%@$bdtr$qv	label	dword
	dd	@@$xt$p13std@%ctype$c%
	dd	5
	dd	8
	dd	0
@_$DCAGB$@std@%ctype$c%@$bdtr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTBGB$@std@%ctype$c%@$bdtr$qv	segment virtual
	align	2
@@_$ECTBGB$@std@%ctype$c%@$bdtr$qv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCAGB$@std@%ctype$c%@$bdtr$qv
@_$ECTBGB$@std@%ctype$c%@$bdtr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@$bdtr$qv	segment virtual
@@std@%ctype$c%@$bdtr$qv	proc	near
?live16588@0:
 ;	
 ;	
 ;	
	?debug L 1871
	push      ebp
	mov       ebp,esp
	add       esp,-36
@538:
	mov       eax,offset @@_$ECTBGB$@std@%ctype$c%@$bdtr$qv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-8],2
	cmp       dword ptr [ebp+8],0
	je        short @539
 ;	
 ;	
 ;	
	?debug L 1872
	mov       word ptr [ebp-20],12
	mov       edx,offset @@std@%ctype$c%@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 1873
	push      dword ptr [ebp+8]
	call      @@std@%ctype$c%@_Tidy$qv
	pop       ecx
	sub       dword ptr [ebp-8],2
	push      0
	push      dword ptr [ebp+8]
	call      @@std@ctype_base@$bdtr$qv
	add       esp,8
	test      byte ptr [ebp+12],1
	je        short @540
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 1874
@540:
@539:
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	?debug L 1874
@541:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@$bdtr$qv	endp
@std@%ctype$c%@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	70
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch346
	dd	?patch347
	dd	?patch348
	df	@@std@%ctype$c%@$bdtr$qv
	dw	0
	dw	5945
	dw	0
	dw	978
	dw	0
	dw	0
	dw	0
	db	23
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5490
	dw	0
	dw	979
	dw	0
	dw	0
	dw	0
?patch346	equ	@541-@@std@%ctype$c%@$bdtr$qv+4
?patch347	equ	0
?patch348	equ	@541-@@std@%ctype$c%@$bdtr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@do_tolower$xqc	segment virtual
@@std@%ctype$c%@do_tolower$xqc	proc	near
?live16589@0:
 ;	
 ;	
 ;	
	?debug L 1895
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1897
@542:
	mov       eax,dword ptr [ebp+8]
	add       eax,8
	push      eax
	xor       edx,edx
	mov       dl,byte ptr [ebp+12]
	push      edx
	call      @@std@_Tolower$qipx13std@_Ctypevec
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1898
@544:
@543:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@do_tolower$xqc	endp
@std@%ctype$c%@do_tolower$xqc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	76
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch349
	dd	?patch350
	dd	?patch351
	df	@@std@%ctype$c%@do_tolower$xqc
	dw	0
	dw	5947
	dw	0
	dw	980
	dw	0
	dw	0
	dw	0
	db	29
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	116
	db	111
	db	108
	db	111
	db	119
	db	101
	db	114
	db	36
	db	120
	db	113
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	981
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	982
	dw	0
	dw	0
	dw	0
?patch349	equ	@544-@@std@%ctype$c%@do_tolower$xqc+2
?patch350	equ	0
?patch351	equ	@544-@@std@%ctype$c%@do_tolower$xqc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@do_tolower$xqpcpxc	segment virtual
@@std@%ctype$c%@do_tolower$xqpcpxc	proc	near
?live16590@0:
 ;	
 ;	
 ;	
	?debug L 1900
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1904
@545:
	mov       eax,dword ptr [ebp+12]
	cmp       eax,dword ptr [ebp+16]
	je        short @547
 ;	
 ;	
 ;	
	?debug L 1905
@546:
	mov       edx,dword ptr [ebp+8]
	add       edx,8
	push      edx
	mov       ecx,dword ptr [ebp+12]
	xor       eax,eax
	mov       al,byte ptr [ecx]
	push      eax
	call      @@std@_Tolower$qipx13std@_Ctypevec
	add       esp,8
	mov       edx,dword ptr [ebp+12]
	mov       byte ptr [edx],al
	?debug L 1904
	inc       dword ptr [ebp+12]
	mov       ecx,dword ptr [ebp+12]
	cmp       ecx,dword ptr [ebp+16]
	jne       short @546
 ;	
 ;	
 ;	
	?debug L 1906
@547:
	mov       eax,dword ptr [ebp+12]
 ;	
 ;	
 ;	
	?debug L 1907
@550:
@549:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@do_tolower$xqpcpxc	endp
@std@%ctype$c%@do_tolower$xqpcpxc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	80
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch352
	dd	?patch353
	dd	?patch354
	df	@@std@%ctype$c%@do_tolower$xqpcpxc
	dw	0
	dw	5949
	dw	0
	dw	983
	dw	0
	dw	0
	dw	0
	db	33
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	116
	db	111
	db	108
	db	111
	db	119
	db	101
	db	114
	db	36
	db	120
	db	113
	db	112
	db	99
	db	112
	db	120
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	984
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1136
	dw	0
	dw	985
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	4267
	dw	0
	dw	986
	dw	0
	dw	0
	dw	0
?patch352	equ	@550-@@std@%ctype$c%@do_tolower$xqpcpxc+2
?patch353	equ	0
?patch354	equ	@550-@@std@%ctype$c%@do_tolower$xqpcpxc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@do_toupper$xqc	segment virtual
@@std@%ctype$c%@do_toupper$xqc	proc	near
?live16591@0:
 ;	
 ;	
 ;	
	?debug L 1909
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1911
@551:
	mov       eax,dword ptr [ebp+8]
	add       eax,8
	push      eax
	xor       edx,edx
	mov       dl,byte ptr [ebp+12]
	push      edx
	call      @@std@_Toupper$qipx13std@_Ctypevec
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1912
@553:
@552:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@do_toupper$xqc	endp
@std@%ctype$c%@do_toupper$xqc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	76
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch355
	dd	?patch356
	dd	?patch357
	df	@@std@%ctype$c%@do_toupper$xqc
	dw	0
	dw	5951
	dw	0
	dw	987
	dw	0
	dw	0
	dw	0
	db	29
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	116
	db	111
	db	117
	db	112
	db	112
	db	101
	db	114
	db	36
	db	120
	db	113
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	988
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	989
	dw	0
	dw	0
	dw	0
?patch355	equ	@553-@@std@%ctype$c%@do_toupper$xqc+2
?patch356	equ	0
?patch357	equ	@553-@@std@%ctype$c%@do_toupper$xqc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@do_toupper$xqpcpxc	segment virtual
@@std@%ctype$c%@do_toupper$xqpcpxc	proc	near
?live16592@0:
 ;	
 ;	
 ;	
	?debug L 1914
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1918
@554:
	mov       eax,dword ptr [ebp+12]
	cmp       eax,dword ptr [ebp+16]
	je        short @556
 ;	
 ;	
 ;	
	?debug L 1919
@555:
	mov       edx,dword ptr [ebp+8]
	add       edx,8
	push      edx
	mov       ecx,dword ptr [ebp+12]
	xor       eax,eax
	mov       al,byte ptr [ecx]
	push      eax
	call      @@std@_Toupper$qipx13std@_Ctypevec
	add       esp,8
	mov       edx,dword ptr [ebp+12]
	mov       byte ptr [edx],al
	?debug L 1918
	inc       dword ptr [ebp+12]
	mov       ecx,dword ptr [ebp+12]
	cmp       ecx,dword ptr [ebp+16]
	jne       short @555
 ;	
 ;	
 ;	
	?debug L 1920
@556:
	mov       eax,dword ptr [ebp+12]
 ;	
 ;	
 ;	
	?debug L 1921
@559:
@558:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@do_toupper$xqpcpxc	endp
@std@%ctype$c%@do_toupper$xqpcpxc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	80
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch358
	dd	?patch359
	dd	?patch360
	df	@@std@%ctype$c%@do_toupper$xqpcpxc
	dw	0
	dw	5953
	dw	0
	dw	990
	dw	0
	dw	0
	dw	0
	db	33
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	116
	db	111
	db	117
	db	112
	db	112
	db	101
	db	114
	db	36
	db	120
	db	113
	db	112
	db	99
	db	112
	db	120
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	991
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1136
	dw	0
	dw	992
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	4267
	dw	0
	dw	993
	dw	0
	dw	0
	dw	0
?patch358	equ	@559-@@std@%ctype$c%@do_toupper$xqpcpxc+2
?patch359	equ	0
?patch360	equ	@559-@@std@%ctype$c%@do_toupper$xqpcpxc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@do_widen$xqc	segment virtual
@@std@%ctype$c%@do_widen$xqc	proc	near
?live16593@0:
 ;	
 ;	
 ;	
	?debug L 1923
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1925
@560:
	mov       al,byte ptr [ebp+12]
 ;	
 ;	
 ;	
	?debug L 1926
@562:
@561:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@do_widen$xqc	endp
@std@%ctype$c%@do_widen$xqc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch361
	dd	?patch362
	dd	?patch363
	df	@@std@%ctype$c%@do_widen$xqc
	dw	0
	dw	5955
	dw	0
	dw	994
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	119
	db	105
	db	100
	db	101
	db	110
	db	36
	db	120
	db	113
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	995
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	996
	dw	0
	dw	0
	dw	0
?patch361	equ	@562-@@std@%ctype$c%@do_widen$xqc+2
?patch362	equ	0
?patch363	equ	@562-@@std@%ctype$c%@do_widen$xqc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@do_widen$xqpxct1pc	segment virtual
@@std@%ctype$c%@do_widen$xqpxct1pc	proc	near
?live16594@0:
 ;	
 ;	
 ;	
	?debug L 1928
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1933
@563:
	mov       eax,dword ptr [ebp+16]
	sub       eax,dword ptr [ebp+12]
	push      eax
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+20]
	call      @_memcpy
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1934
	mov       eax,dword ptr [ebp+16]
 ;	
 ;	
 ;	
	?debug L 1935
@565:
@564:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@do_widen$xqpxct1pc	endp
@std@%ctype$c%@do_widen$xqpxct1pc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	80
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch364
	dd	?patch365
	dd	?patch366
	df	@@std@%ctype$c%@do_widen$xqpxct1pc
	dw	0
	dw	5957
	dw	0
	dw	997
	dw	0
	dw	0
	dw	0
	db	33
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	119
	db	105
	db	100
	db	101
	db	110
	db	36
	db	120
	db	113
	db	112
	db	120
	db	99
	db	116
	db	49
	db	112
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	998
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	999
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	4267
	dw	0
	dw	1000
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	1136
	dw	0
	dw	1001
	dw	0
	dw	0
	dw	0
?patch364	equ	@565-@@std@%ctype$c%@do_widen$xqpxct1pc+2
?patch365	equ	0
?patch366	equ	@565-@@std@%ctype$c%@do_widen$xqpxct1pc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@do_narrow$xqcc	segment virtual
@@std@%ctype$c%@do_narrow$xqcc	proc	near
?live16595@0:
 ;	
 ;	
 ;	
	?debug L 1937
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1939
@566:
	mov       al,byte ptr [ebp+12]
 ;	
 ;	
 ;	
	?debug L 1940
@568:
@567:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@do_narrow$xqcc	endp
@std@%ctype$c%@do_narrow$xqcc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	76
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch367
	dd	?patch368
	dd	?patch369
	df	@@std@%ctype$c%@do_narrow$xqcc
	dw	0
	dw	5959
	dw	0
	dw	1002
	dw	0
	dw	0
	dw	0
	db	29
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	110
	db	97
	db	114
	db	114
	db	111
	db	119
	db	36
	db	120
	db	113
	db	99
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	1003
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	1004
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	112
	dw	0
	dw	1005
	dw	0
	dw	0
	dw	0
?patch367	equ	@568-@@std@%ctype$c%@do_narrow$xqcc+2
?patch368	equ	0
?patch369	equ	@568-@@std@%ctype$c%@do_narrow$xqcc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@do_narrow$xqpxct1cpc	segment virtual
@@std@%ctype$c%@do_narrow$xqpxct1cpc	proc	near
?live16596@0:
 ;	
 ;	
 ;	
	?debug L 1942
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1947
@569:
	mov       eax,dword ptr [ebp+16]
	sub       eax,dword ptr [ebp+12]
	push      eax
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+24]
	call      @_memcpy
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1948
	mov       eax,dword ptr [ebp+16]
 ;	
 ;	
 ;	
	?debug L 1949
@571:
@570:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@do_narrow$xqpxct1cpc	endp
@std@%ctype$c%@do_narrow$xqpxct1cpc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	82
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch370
	dd	?patch371
	dd	?patch372
	df	@@std@%ctype$c%@do_narrow$xqpxct1cpc
	dw	0
	dw	5961
	dw	0
	dw	1006
	dw	0
	dw	0
	dw	0
	db	35
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	110
	db	97
	db	114
	db	114
	db	111
	db	119
	db	36
	db	120
	db	113
	db	112
	db	120
	db	99
	db	116
	db	49
	db	99
	db	112
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5463
	dw	0
	dw	1007
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	1008
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	4267
	dw	0
	dw	1009
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	112
	dw	0
	dw	1010
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	24
	dw	0
	dw	1136
	dw	0
	dw	1011
	dw	0
	dw	0
	dw	0
?patch370	equ	@571-@@std@%ctype$c%@do_narrow$xqpxct1cpc+2
?patch371	equ	0
?patch372	equ	@571-@@std@%ctype$c%@do_narrow$xqpxct1cpc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@locale@facet@$bdtr$qv	segment virtual
@@std@locale@facet@$bdtr$qv	proc	near
?live16598@0:
 ;	
 ;	
 ;	
	?debug L 132
	push      ebp
	mov       ebp,esp
@572:
	cmp       dword ptr [ebp+8],0
	je        short @573
	mov       eax,offset @@std@locale@facet@3+12
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx],eax
	test      byte ptr [ebp+12],1
	je        short @574
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 134
@574:
@573:
@575:
	pop       ebp
	ret 
	?debug L 0
@@std@locale@facet@$bdtr$qv	endp
@std@locale@facet@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	73
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch373
	dd	?patch374
	dd	?patch375
	df	@@std@locale@facet@$bdtr$qv
	dw	0
	dw	5963
	dw	0
	dw	1012
	dw	0
	dw	0
	dw	0
	db	26
	db	64
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	102
	db	97
	db	99
	db	101
	db	116
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4944
	dw	0
	dw	1013
	dw	0
	dw	0
	dw	0
?patch373	equ	@575-@@std@locale@facet@$bdtr$qv+2
?patch374	equ	0
?patch375	equ	@575-@@std@locale@facet@$bdtr$qv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCCGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	segment virtual
	align	2
@@_$DCCGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	label	dword
	dd	@@$xt$p65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%
	dd	5
	dd	8
	dd	0
@_$DCCGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTDGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	segment virtual
	align	2
@@_$ECTDGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv
@_$ECTDGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	proc	near
?live16600@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 1055
	push      ebp
	mov       ebp,esp
	add       esp,-36
@576:
	mov       eax,offset @@_$ECTDGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-8],1
	cmp       dword ptr [ebp+8],0
	je        short @577
 ;	
 ;	
 ;	
	?debug L 1056
	mov       word ptr [ebp-20],12
	mov       edx,offset @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
	dec       dword ptr [ebp-8]
	push      0
	push      dword ptr [ebp+8]
	call      @@std@locale@facet@$bdtr$qv
	add       esp,8
	test      byte ptr [ebp+12],1
	je        short @578
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 1057
@578:
@577:
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	?debug L 1057
@579:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	122
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch376
	dd	?patch377
	dd	?patch378
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv
	dw	0
	dw	5965
	dw	0
	dw	1014
	dw	0
	dw	0
	dw	0
	db	75
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5877
	dw	0
	dw	1015
	dw	0
	dw	0
	dw	0
?patch376	equ	@579-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv+4
?patch377	equ	0
?patch378	equ	@579-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCEGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	segment virtual
	align	2
@@_$DCEGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	label	dword
	dd	@@$xt$10std@locale
	dd	4
	dd	-16
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-56
	dd	0
	dd	@@$xt$10std@locale
	dd	2052
	dd	-16
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-56
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-96
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-136
	dd	0
@_$DCEGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTFGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	segment virtual
	align	2
@@_$ECTFGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	label	dword
	dd	0
	dd	0
	dd	-172
	dw	0
	dw	5
	dd	0
	dd	@@_$DCEGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco+28
	dw	0
	dw	5
	dd	0
	dd	@@_$DCEGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco
	dw	24
	dw	5
	dd	1
	dd	@@_$DCEGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco+44
	dw	24
	dw	5
	dd	2
	dd	@@_$DCEGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco+60
	dw	24
	dw	5
	dd	2
	dd	@@_$DCEGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco+76
@_$ECTFGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	proc	near
?live16601@0:
 ;	
 ;	
 ;	
	?debug L 1134
	push      ebp
	mov       ebp,esp
	add       esp,-212
	push      ebx
@580:
	mov       eax,offset @@_$ECTFGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1138
	push      32768
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	jne       short @581
 ;	
 ;	
 ;	
	?debug L 1139
	xor       edx,edx
	mov       dl,byte ptr [ebp+40]
	push      edx
	mov       cl,byte ptr [ebp+36]
	push      ecx
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	mov       eax,dword ptr [ebp+12]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+8]
	add       esp,36
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp-172]
	mov       dword ptr fs:[0],edx
	jmp @582
 ;	
 ;	
 ;	
	?debug L 1142
@581:
@583:
	mov       word ptr [ebp-156],12
	push      dword ptr [ebp+32]
	lea       ecx,dword ptr [ebp-16]
	push      ecx
	call      @@std@ios_base@getloc$xqv
	add       esp,8
	lea       eax,dword ptr [ebp-16]
	push      eax
	inc       dword ptr [ebp-144]
	call      @@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%
	pop       ecx
	mov       dword ptr [ebp-176],eax
	mov       word ptr [ebp-156],24
 ;	
 ;	
 ;	
	?debug L 1143
	mov       word ptr [ebp-156],36
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv
	pop       ecx
	inc       dword ptr [ebp-144]
	mov       word ptr [ebp-156],24
 ;	
 ;	
 ;	
	?debug L 1144
	cmp       byte ptr [ebp+40],0
	je        short @584
 ;	
 ;	
 ;	
	?debug L 1145
	mov       word ptr [ebp-156],48
	push      dword ptr [ebp-176]
	lea       ecx,dword ptr [ebp-96]
	push      ecx
	call      @@std@%numpunct$c%@truename$xqv
	add       esp,8
	lea       eax,dword ptr [ebp-96]
	push      eax
	inc       dword ptr [ebp-144]
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	add       esp,8
	dec       dword ptr [ebp-144]
	push      2
	lea       ecx,dword ptr [ebp-96]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
	jmp short @585
 ;	
 ;	
 ;	
	?debug L 1147
@584:
	mov       word ptr [ebp-156],60
	push      dword ptr [ebp-176]
	lea       eax,dword ptr [ebp-136]
	push      eax
	call      @@std@%numpunct$c%@falsename$xqv
	add       esp,8
	lea       edx,dword ptr [ebp-136]
	push      edx
	inc       dword ptr [ebp-144]
	lea       ecx,dword ptr [ebp-56]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	add       esp,8
	dec       dword ptr [ebp-144]
	push      2
	lea       eax,dword ptr [ebp-136]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1149
@585:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	test      eax,eax
	jle       short @588
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	mov       ebx,eax
	lea       eax,dword ptr [ebp-56]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	pop       ecx
	cmp       ebx,eax
	ja        short @586
@588:
	xor       edx,edx
	jmp short @587
@586:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	push      eax
	lea       ecx,dword ptr [ebp-56]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	pop       ecx
	pop       edx
	sub       edx,eax
@587:
	mov       dword ptr [ebp-180],edx
 ;	
 ;	
 ;	
	?debug L 1151
	mov       word ptr [ebp-156],24
 ;	
 ;	
 ;	
	?debug L 1153
	push      14
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	cmp       eax,2
	je        short @589
 ;	
 ;	
 ;	
	?debug L 1155
@590:
	push      dword ptr [ebp-180]
	mov       al,byte ptr [ebp+36]
	push      eax
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-196]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp-196]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-192]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-188]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-184]
	mov       dword ptr [ebp+28],ecx
 ;	
 ;	
 ;	
	?debug L 1156
	xor       eax,eax
	mov       dword ptr [ebp-180],eax
 ;	
 ;	
 ;	
	?debug L 1158
@591:
@589:
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	pop       ecx
	push      eax
	lea       ecx,dword ptr [ebp-56]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	pop       ecx
	push      eax
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-212]
	push      eax
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	add       esp,32
	mov       edx,dword ptr [ebp-212]
	mov       dword ptr [ebp+16],edx
	mov       edx,dword ptr [ebp-208]
	mov       dword ptr [ebp+20],edx
	mov       cl,byte ptr [ebp-204]
	mov       byte ptr [ebp+24],cl
	mov       eax,dword ptr [ebp-200]
	mov       dword ptr [ebp+28],eax
 ;	
 ;	
 ;	
	?debug L 1159
	push      0
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$qi
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1160
	push      dword ptr [ebp-180]
	mov       dl,byte ptr [ebp+36]
	push      edx
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp+8]
	push      eax
	dec       dword ptr [ebp-144]
	push      2
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
	dec       dword ptr [ebp-144]
	push      2
	lea       ecx,dword ptr [ebp-16]
	push      ecx
	call      @@std@locale@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-172]
	mov       dword ptr fs:[0],edx
	jmp short @582
 ;	
 ;	
 ;	
	?debug L 1161
	mov       word ptr [ebp-156],0
 ;	
 ;	
 ;	
	?debug L 1162
@592:
@594:
@582:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	190
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch379
	dd	?patch380
	dd	?patch381
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco
	dw	0
	dw	5967
	dw	0
	dw	1016
	dw	0
	dw	0
	dw	0
	db	143
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	100
	db	111
	db	95
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	111
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1017
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1018
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1019
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1020
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1021
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	48
	dw	0
	dw	1022
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch382
	df	@583
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65356
	dw	65535
	dw	117
	dw	0
	dw	1048
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	4285
	dw	0
	dw	1049
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65360
	dw	65535
	dw	5969
	dw	0
	dw	1050
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch383
	df	@590
	dw	0
	dw	0
?patch383	equ	@591-@590
	dw	2
	dw	6
?patch382	equ	@592-@583
	dw	2
	dw	6
?patch379	equ	@594-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco+5
?patch380	equ	0
?patch381	equ	@594-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_baseco
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65320
	dw	65535
?t7 = -240
?t6 = -240
?t5 = -240
?t4 = -244
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl	proc	near
?live16602@0:
 ;	
 ;	
 ;	
	?debug L 1164
	push      ebp
	mov       ebp,esp
	add       esp,-72
 ;	
 ;	
 ;	
	?debug L 1168
@595:
	push      dword ptr [ebp+40]
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	push      offset s@+217
	lea       eax,dword ptr [ebp-8]
	push      eax
	push      dword ptr [ebp+12]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags
	add       esp,16
	push      eax
	lea       edx,dword ptr [ebp-72]
	push      edx
	call      @_sprintf
	add       esp,12
	push      eax
	lea       ecx,dword ptr [ebp-72]
	push      ecx
	mov       al,byte ptr [ebp+36]
	push      eax
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	add       esp,40
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1171
@597:
@596:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	190
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch384
	dd	?patch385
	dd	?patch386
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl
	dw	0
	dw	6031
	dw	0
	dw	1051
	dw	0
	dw	0
	dw	0
	db	143
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	100
	db	111
	db	95
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	108
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1052
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1053
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1054
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1055
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1056
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	18
	dw	0
	dw	1057
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	6033
	dw	0
	dw	1058
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65464
	dw	65535
	dw	6034
	dw	0
	dw	1059
	dw	0
	dw	0
	dw	0
?patch384	equ	@597-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl+4
?patch385	equ	0
?patch386	equ	@597-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecl
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t8 = -104
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecul	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecul	proc	near
?live16603@0:
 ;	
 ;	
 ;	
	?debug L 1173
	push      ebp
	mov       ebp,esp
	add       esp,-72
 ;	
 ;	
 ;	
	?debug L 1177
@598:
	push      dword ptr [ebp+40]
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	push      offset s@+220
	lea       eax,dword ptr [ebp-8]
	push      eax
	push      dword ptr [ebp+12]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags
	add       esp,16
	push      eax
	lea       edx,dword ptr [ebp-72]
	push      edx
	call      @_sprintf
	add       esp,12
	push      eax
	lea       ecx,dword ptr [ebp-72]
	push      ecx
	mov       al,byte ptr [ebp+36]
	push      eax
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	add       esp,40
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1180
@600:
@599:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecul	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecul	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	191
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch387
	dd	?patch388
	dd	?patch389
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecul
	dw	0
	dw	6035
	dw	0
	dw	1060
	dw	0
	dw	0
	dw	0
	db	144
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	100
	db	111
	db	95
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	117
	db	108
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1061
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1062
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1063
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1064
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1065
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	34
	dw	0
	dw	1066
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	6037
	dw	0
	dw	1067
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65464
	dw	65535
	dw	6038
	dw	0
	dw	1068
	dw	0
	dw	0
	dw	0
?patch387	equ	@600-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecul+4
?patch388	equ	0
?patch389	equ	@600-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecul
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t9 = -104
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecj	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecj	proc	near
?live16604@0:
 ;	
 ;	
 ;	
	?debug L 1183
	push      ebp
	mov       ebp,esp
	add       esp,-72
 ;	
 ;	
 ;	
	?debug L 1187
@601:
	push      dword ptr [ebp+44]
	push      dword ptr [ebp+40]
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	push      offset s@+223
	lea       edx,dword ptr [ebp-8]
	push      edx
	push      dword ptr [ebp+12]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags
	add       esp,16
	push      eax
	lea       ecx,dword ptr [ebp-72]
	push      ecx
	call      @_sprintf
	add       esp,16
	push      eax
	lea       eax,dword ptr [ebp-72]
	push      eax
	mov       dl,byte ptr [ebp+36]
	push      edx
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	add       esp,40
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1190
@603:
@602:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecj	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecj	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	190
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch390
	dd	?patch391
	dd	?patch392
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecj
	dw	0
	dw	6039
	dw	0
	dw	1069
	dw	0
	dw	0
	dw	0
	db	143
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	100
	db	111
	db	95
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	106
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1070
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1071
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1072
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1073
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1074
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	118
	dw	0
	dw	1075
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	6041
	dw	0
	dw	1076
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65464
	dw	65535
	dw	6042
	dw	0
	dw	1077
	dw	0
	dw	0
	dw	0
?patch390	equ	@603-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecj+4
?patch391	equ	0
?patch392	equ	@603-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecj
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t10 = -104
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecuj	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecuj	proc	near
?live16605@0:
 ;	
 ;	
 ;	
	?debug L 1192
	push      ebp
	mov       ebp,esp
	add       esp,-72
 ;	
 ;	
 ;	
	?debug L 1196
@604:
	push      dword ptr [ebp+44]
	push      dword ptr [ebp+40]
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	push      offset s@+226
	lea       edx,dword ptr [ebp-8]
	push      edx
	push      dword ptr [ebp+12]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags
	add       esp,16
	push      eax
	lea       ecx,dword ptr [ebp-72]
	push      ecx
	call      @_sprintf
	add       esp,16
	push      eax
	lea       eax,dword ptr [ebp-72]
	push      eax
	mov       dl,byte ptr [ebp+36]
	push      edx
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	add       esp,40
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1199
@606:
@605:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecuj	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecuj	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	191
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch393
	dd	?patch394
	dd	?patch395
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecuj
	dw	0
	dw	6043
	dw	0
	dw	1078
	dw	0
	dw	0
	dw	0
	db	144
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	100
	db	111
	db	95
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	117
	db	106
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1079
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1080
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1081
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1082
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1083
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	119
	dw	0
	dw	1084
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	6045
	dw	0
	dw	1085
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65464
	dw	65535
	dw	6046
	dw	0
	dw	1086
	dw	0
	dw	0
	dw	0
?patch393	equ	@606-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecuj+4
?patch394	equ	0
?patch395	equ	@606-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecuj
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t11 = -104
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecd	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecd	proc	near
?live16606@0:
 ;	
 ;	
 ;	
	?debug L 1202
	push      ebp
	mov       ebp,esp
	add       esp,-148
 ;	
 ;	
 ;	
	?debug L 1206
@607:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@precision$xqv
	pop       ecx
	test      eax,eax
	jg        short @608
	push      4096
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	jne       short @608
	mov       eax,6
	jmp short @609
@608:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@precision$xqv
	pop       ecx
@609:
	mov       dword ptr [ebp-12],eax
 ;	
 ;	
 ;	
	?debug L 1209
	cmp       dword ptr [ebp-12],48
	jle       short @610
	mov       edx,48
	jmp short @611
@610:
	mov       edx,dword ptr [ebp-12]
@611:
	mov       dword ptr [ebp-16],edx
 ;	
 ;	
 ;	
	?debug L 1211
	mov       eax,dword ptr [ebp-16]
	sub       dword ptr [ebp-12],eax
 ;	
 ;	
 ;	
	?debug L 1212
	xor       ecx,ecx
	mov       dword ptr [ebp-20],ecx
 ;	
 ;	
 ;	
	?debug L 1213
	xor       eax,eax
	mov       dword ptr [ebp-24],eax
 ;	
 ;	
 ;	
	?debug L 1215
	push      6144
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	cmp       eax,4096
	jne       @612
	fld       qword ptr [ebp+40]
	fmul      dword ptr [@613]
	fld       qword ptr [ebp+40]
	fxch      st(1)
	fucompp
	fnstsw ax
	test      ah,68
	jpo       @612
 ;	
 ;	
 ;	
	?debug L 1218
@614:
	fld       qword ptr [ebp+40]
	fld       dword ptr [@613+4]
	fxch      st(1)
	fucompp
	fnstsw ax
	test      ah,5
	setnp     dl
	and       edx,1
	mov       byte ptr [ebp-25],dl
 ;	
 ;	
 ;	
	?debug L 1219
	cmp       byte ptr [ebp-25],0
	je        short @617
 ;	
 ;	
 ;	
	?debug L 1220
	fld       qword ptr [ebp+40]
	fchs
	fstp      qword ptr [ebp+40]
	jmp short @617
 ;	
 ;	
 ;	
	?debug L 1223
@616:
	fld       dword ptr [@613+8]
	fdivr     qword ptr [ebp+40]
	fstp      qword ptr [ebp+40]
	?debug L 1222
	add       dword ptr [ebp-20],10
@617:
	fld       qword ptr [@613+12]
	fld       qword ptr [ebp+40]
	fxch      st(1)
	fucompp
	fnstsw ax
	test      ah,65
	jpe       short @619
	cmp       dword ptr [ebp-20],5000
	jb        short @616
 ;	
 ;	
 ;	
	?debug L 1225
@619:
	fld       dword ptr [@613+4]
	fld       qword ptr [ebp+40]
	fxch      st(1)
	fucompp
	fnstsw ax
	test      ah,5
	jpe       short @620
	jmp short @622
 ;	
 ;	
 ;	
	?debug L 1229
@621:
@623:
	fld       dword ptr [@613+8]
	fmul      qword ptr [ebp+40]
	fstp      qword ptr [ebp+40]
 ;	
 ;	
 ;	
	?debug L 1230
	sub       dword ptr [ebp-12],10
	?debug L 1227
@624:
	add       dword ptr [ebp-24],10
	?debug L 1226
@622:
	cmp       dword ptr [ebp-12],10
	jl        short @626
	fld       qword ptr [ebp+40]
	fld       qword ptr [@613+20]
	fxch      st(1)
	fucompp
	fnstsw ax
	test      ah,65
	jpe       short @626
	cmp       dword ptr [ebp-24],5000
	jb        short @621
 ;	
 ;	
 ;	
	?debug L 1233
@626:
@620:
	cmp       byte ptr [ebp-25],0
	je        short @627
 ;	
 ;	
 ;	
	?debug L 1234
	fld       qword ptr [ebp+40]
	fchs
	fstp      qword ptr [ebp+40]
 ;	
 ;	
 ;	
	?debug L 1237
@627:
@628:
@612:
	push      dword ptr [ebp+44]
	push      dword ptr [ebp+40]
	push      dword ptr [ebp-16]
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	push      0
	lea       ecx,dword ptr [ebp-8]
	push      ecx
	push      dword ptr [ebp+12]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags
	add       esp,16
	push      eax
	lea       eax,dword ptr [ebp-148]
	push      eax
	call      @_sprintf
	add       esp,20
	push      eax
	push      dword ptr [ebp-12]
	push      dword ptr [ebp-24]
	push      dword ptr [ebp-20]
	lea       edx,dword ptr [ebp-148]
	push      edx
	mov       cl,byte ptr [ebp+36]
	push      ecx
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui
	add       esp,52
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1241
@630:
@629:
	mov       esp,ebp
	pop       ebp
	ret 
	align 4        
@613:
	db	0,0,0,63,0,0,0,0,249,2,21,80,130,77,199,114
	db	97,66,51,71,15,122,248,183,165,149,170,56
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecd	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecd	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	190
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch396
	dd	?patch397
	dd	?patch398
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecd
	dw	0
	dw	6047
	dw	0
	dw	1087
	dw	0
	dw	0
	dw	0
	db	143
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	100
	db	111
	db	95
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	100
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1088
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1089
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1090
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1091
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1092
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	65
	dw	0
	dw	1093
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65512
	dw	65535
	dw	117
	dw	0
	dw	1094
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65516
	dw	65535
	dw	117
	dw	0
	dw	1095
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65520
	dw	65535
	dw	116
	dw	0
	dw	1096
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	116
	dw	0
	dw	1097
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	6049
	dw	0
	dw	1098
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65388
	dw	65535
	dw	6050
	dw	0
	dw	1099
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch399
	df	@614
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65511
	dw	65535
	dw	48
	dw	0
	dw	1100
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch400
	df	@623
	dw	0
	dw	0
?patch400	equ	@624-@623
	dw	2
	dw	6
?patch399	equ	@628-@614
	dw	2
	dw	6
?patch396	equ	@630-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecd+34
?patch397	equ	0
?patch398	equ	@630-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecd
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t12 = -192
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecg	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecg	proc	near
?live16607@0:
 ;	
 ;	
 ;	
	?debug L 1243
	push      ebp
	mov       ebp,esp
	add       esp,-148
 ;	
 ;	
 ;	
	?debug L 1247
@631:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@precision$xqv
	pop       ecx
	test      eax,eax
	jg        short @632
	push      4096
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	jne       short @632
	mov       eax,6
	jmp short @633
@632:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@precision$xqv
	pop       ecx
@633:
	mov       dword ptr [ebp-12],eax
 ;	
 ;	
 ;	
	?debug L 1250
	cmp       dword ptr [ebp-12],48
	jle       short @634
	mov       edx,48
	jmp short @635
@634:
	mov       edx,dword ptr [ebp-12]
@635:
	mov       dword ptr [ebp-16],edx
 ;	
 ;	
 ;	
	?debug L 1252
	mov       eax,dword ptr [ebp-16]
	sub       dword ptr [ebp-12],eax
 ;	
 ;	
 ;	
	?debug L 1253
	xor       ecx,ecx
	mov       dword ptr [ebp-20],ecx
 ;	
 ;	
 ;	
	?debug L 1254
	xor       eax,eax
	mov       dword ptr [ebp-24],eax
 ;	
 ;	
 ;	
	?debug L 1256
	push      6144
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	cmp       eax,4096
	jne       @636
 ;	
 ;	
 ;	
	?debug L 1258
@637:
	fld       tbyte ptr [ebp+40]
	fld       dword ptr [@638]
	fxch      st(1)
	fucompp
	fnstsw ax
	test      ah,5
	setnp     dl
	and       edx,1
	mov       byte ptr [ebp-25],dl
 ;	
 ;	
 ;	
	?debug L 1259
	cmp       byte ptr [ebp-25],0
	je        short @641
 ;	
 ;	
 ;	
	?debug L 1260
	fld       tbyte ptr [ebp+40]
	fchs
	fstp      tbyte ptr [ebp+40]
	jmp short @641
 ;	
 ;	
 ;	
	?debug L 1263
@640:
	fld       dword ptr [@638+4]
	fld       tbyte ptr [ebp+40]
	fdivrp     st(1),st
	fstp      tbyte ptr [ebp+40]
	?debug L 1262
	add       dword ptr [ebp-20],10
@641:
	fld       tbyte ptr [@638+8]
	fld       tbyte ptr [ebp+40]
	fucompp
	fnstsw ax
	test      ah,5
	jne       short @643
	cmp       dword ptr [ebp-20],5000
	jb        short @640
 ;	
 ;	
 ;	
	?debug L 1265
@643:
	fld       tbyte ptr [ebp+40]
	fld       dword ptr [@638]
	fxch      st(1)
	fucompp
	fnstsw ax
	test      ah,69
	jne       short @644
	jmp short @646
 ;	
 ;	
 ;	
	?debug L 1269
@645:
@647:
	fld       dword ptr [@638+4]
	fld       tbyte ptr [ebp+40]
	fmulp      st(1),st
	fstp      tbyte ptr [ebp+40]
 ;	
 ;	
 ;	
	?debug L 1270
	sub       dword ptr [ebp-12],10
	?debug L 1267
@648:
	add       dword ptr [ebp-24],10
	?debug L 1266
@646:
	cmp       dword ptr [ebp-12],10
	jl        short @650
	fld       tbyte ptr [ebp+40]
	fld       tbyte ptr [@638+20]
	fucompp
	fnstsw ax
	test      ah,5
	jne       short @650
	cmp       dword ptr [ebp-24],5000
	jb        short @645
 ;	
 ;	
 ;	
	?debug L 1273
@650:
@644:
	cmp       byte ptr [ebp-25],0
	je        short @651
 ;	
 ;	
 ;	
	?debug L 1274
	fld       tbyte ptr [ebp+40]
	fchs
	fstp      tbyte ptr [ebp+40]
 ;	
 ;	
 ;	
	?debug L 1277
@651:
@652:
@636:
	mov       dx,word ptr [ebp+48]
	push      edx
	push      dword ptr [ebp+44]
	push      dword ptr [ebp+40]
	push      dword ptr [ebp-16]
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	push      76
	lea       ecx,dword ptr [ebp-8]
	push      ecx
	push      dword ptr [ebp+12]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags
	add       esp,16
	push      eax
	lea       eax,dword ptr [ebp-148]
	push      eax
	call      @_sprintf
	add       esp,24
	push      eax
	push      dword ptr [ebp-12]
	push      dword ptr [ebp-24]
	push      dword ptr [ebp-20]
	lea       edx,dword ptr [ebp-148]
	push      edx
	mov       cl,byte ptr [ebp+36]
	push      ecx
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui
	add       esp,52
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1281
@654:
@653:
	mov       esp,ebp
	pop       ebp
	ret 
	align 4        
@638:
	db	0,0,0,0,249,2,21,80,0,16,108,58,150,11,19,154
	db	115,64,0,0,0,120,208,195,191,45,173,212,138,63,0,0
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecg	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecg	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	190
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch401
	dd	?patch402
	dd	?patch403
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecg
	dw	0
	dw	6051
	dw	0
	dw	1101
	dw	0
	dw	0
	dw	0
	db	143
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	100
	db	111
	db	95
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	103
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1102
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1103
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1104
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1105
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1106
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	66
	dw	0
	dw	1107
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65512
	dw	65535
	dw	117
	dw	0
	dw	1108
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65516
	dw	65535
	dw	117
	dw	0
	dw	1109
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65520
	dw	65535
	dw	116
	dw	0
	dw	1110
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	116
	dw	0
	dw	1111
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	6053
	dw	0
	dw	1112
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65388
	dw	65535
	dw	6054
	dw	0
	dw	1113
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch404
	df	@637
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65511
	dw	65535
	dw	48
	dw	0
	dw	1114
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch405
	df	@647
	dw	0
	dw	0
?patch405	equ	@648-@647
	dw	2
	dw	6
?patch404	equ	@652-@637
	dw	2
	dw	6
?patch401	equ	@654-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecg+36
?patch402	equ	0
?patch403	equ	@654-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecg
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t13 = -192
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxv	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxv	proc	near
?live16608@0:
 ;	
 ;	
 ;	
	?debug L 1283
	push      ebp
	mov       ebp,esp
	add       esp,-80
 ;	
 ;	
 ;	
	?debug L 1289
@655:
	mov       eax,dword ptr [ebp+40]
	cdq
	mov       dword ptr [ebp-16],eax
	mov       dword ptr [ebp-12],edx
 ;	
 ;	
 ;	
	?debug L 1291
	mov       eax,dword ptr [ebp-16]
	xor       edx,edx
	mov       dword ptr [ebp-16],eax
	mov       dword ptr [ebp-12],edx
 ;	
 ;	
 ;	
	?debug L 1292
	push      dword ptr [ebp-12]
	push      dword ptr [ebp-16]
	push      64
	push      offset s@+229
	lea       eax,dword ptr [ebp-8]
	push      eax
	push      dword ptr [ebp+12]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags
	add       esp,16
	push      eax
	lea       edx,dword ptr [ebp-80]
	push      edx
	call      @_sprintf
	add       esp,16
	push      eax
	lea       ecx,dword ptr [ebp-80]
	push      ecx
	mov       al,byte ptr [ebp+36]
	push      eax
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	add       esp,40
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1295
@657:
@656:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxv	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	192
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch406
	dd	?patch407
	dd	?patch408
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxv
	dw	0
	dw	6055
	dw	0
	dw	1115
	dw	0
	dw	0
	dw	0
	db	145
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	100
	db	111
	db	95
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	112
	db	120
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1116
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1117
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1118
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1119
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1120
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	4322
	dw	0
	dw	1121
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65520
	dw	65535
	dw	119
	dw	0
	dw	1122
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	6057
	dw	0
	dw	1123
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65456
	dw	65535
	dw	6058
	dw	0
	dw	1124
	dw	0
	dw	0
	dw	0
?patch406	equ	@657-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxv+4
?patch407	equ	0
?patch408	equ	@657-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t14 = -112
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ctype$c%@_Tidy$qv	segment virtual
@@std@%ctype$c%@_Tidy$qv	proc	near
?live16614@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 1887
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1889
@658:
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax+20],0
	jle       short @659
 ;	
 ;	
 ;	
	?debug L 1890
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx+16]
	call      @_free
	pop       ecx
@663:
	pop       ebp
	ret 
 ;	
 ;	
 ;	
	?debug L 1891
@659:
	mov       ecx,dword ptr [ebp+8]
	cmp       dword ptr [ecx+20],0
	jge       short @661
 ;	
 ;	
 ;	
	?debug L 1892
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax+16]
	call      @$bdla$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 1893
@661:
@660:
@662:
	pop       ebp
	ret 
	?debug L 0
@@std@%ctype$c%@_Tidy$qv	endp
@std@%ctype$c%@_Tidy$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	70
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch409
	dd	?patch410
	dd	?patch411
	df	@@std@%ctype$c%@_Tidy$qv
	dw	0
	dw	6059
	dw	0
	dw	1125
	dw	0
	dw	0
	dw	0
	db	23
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	116
	db	121
	db	112
	db	101
	db	36
	db	99
	db	37
	db	64
	db	95
	db	84
	db	105
	db	100
	db	121
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5490
	dw	0
	dw	1126
	dw	0
	dw	0
	dw	0
	dw	8
	dw	530
	dd	@663-@@std@%ctype$c%@_Tidy$qv
	dw	2
?patch409	equ	@662-@@std@%ctype$c%@_Tidy$qv+2
?patch410	equ	0
?patch411	equ	@662-@@std@%ctype$c%@_Tidy$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@_Tolower$qipx13std@_Ctypevec	segment virtual
@@std@_Tolower$qipx13std@_Ctypevec	proc	near
?live16617@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocinfo"
 ;	
 ;	
 ;	
	?debug L 158
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 163
@664:
	mov       eax,dword ptr [ebp+12]
	push      dword ptr [eax]
	mov       edx,dword ptr [ebp+8]
	and       edx,255
	push      edx
	call      @__ltolower_lcid
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 165
@666:
@665:
	pop       ebp
	ret 
	?debug L 0
@@std@_Tolower$qipx13std@_Ctypevec	endp
@std@_Tolower$qipx13std@_Ctypevec	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	80
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch412
	dd	?patch413
	dd	?patch414
	df	@@std@_Tolower$qipx13std@_Ctypevec
	dw	0
	dw	6061
	dw	0
	dw	1127
	dw	0
	dw	0
	dw	0
	db	33
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	84
	db	111
	db	108
	db	111
	db	119
	db	101
	db	114
	db	36
	db	113
	db	105
	db	112
	db	120
	db	49
	db	51
	db	115
	db	116
	db	100
	db	64
	db	95
	db	67
	db	116
	db	121
	db	112
	db	101
	db	118
	db	101
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	116
	dw	0
	dw	1128
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	6062
	dw	0
	dw	1129
	dw	0
	dw	0
	dw	0
?patch412	equ	@666-@@std@_Tolower$qipx13std@_Ctypevec+2
?patch413	equ	0
?patch414	equ	@666-@@std@_Tolower$qipx13std@_Ctypevec
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@_Toupper$qipx13std@_Ctypevec	segment virtual
@@std@_Toupper$qipx13std@_Ctypevec	proc	near
?live16618@0:
 ;	
 ;	
 ;	
	?debug L 168
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 173
@667:
	mov       eax,dword ptr [ebp+12]
	push      dword ptr [eax]
	mov       edx,dword ptr [ebp+8]
	and       edx,255
	push      edx
	call      @__ltoupper_lcid
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 175
@669:
@668:
	pop       ebp
	ret 
	?debug L 0
@@std@_Toupper$qipx13std@_Ctypevec	endp
@std@_Toupper$qipx13std@_Ctypevec	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	80
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch415
	dd	?patch416
	dd	?patch417
	df	@@std@_Toupper$qipx13std@_Ctypevec
	dw	0
	dw	6065
	dw	0
	dw	1130
	dw	0
	dw	0
	dw	0
	db	33
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	84
	db	111
	db	117
	db	112
	db	112
	db	101
	db	114
	db	36
	db	113
	db	105
	db	112
	db	120
	db	49
	db	51
	db	115
	db	116
	db	100
	db	64
	db	95
	db	67
	db	116
	db	121
	db	112
	db	101
	db	118
	db	101
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	116
	dw	0
	dw	1131
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	6062
	dw	0
	dw	1132
	dw	0
	dw	0
	dw	0
?patch415	equ	@669-@@std@_Toupper$qipx13std@_Ctypevec+2
?patch416	equ	0
?patch417	equ	@669-@@std@_Toupper$qipx13std@_Ctypevec
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCGGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	segment virtual
	align	2
@@_$DCGGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	label	dword
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$12std@bad_cast
	dd	4
	dd	-8
	dd	0
@_$DCGGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTHGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	segment virtual
	align	2
@@_$ECTHGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	label	dword
	dd	0
	dd	0
	dd	-44
	dw	0
	dw	5
	dd	0
	dd	@@_$DCGGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCGGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%
	dw	24
	dw	5
	dd	1
	dd	@@_$DCGGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%+32
@_$ECTHGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	segment virtual
@@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	proc	near
?live16621@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 310
	push      ebp
	mov       ebp,esp
	add       esp,-60
@670:
	mov       eax,offset @@_$ECTHGB$@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 312
	mov       word ptr [ebp-28],12
	push      0
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@std@_Lockit@$bctr$qi
	add       esp,8
	inc       dword ptr [ebp-16]
	mov       word ptr [ebp-28],24
 ;	
 ;	
 ;	
	?debug L 314
	mov       ecx,dword ptr [@@std@%_Facetptr$16std@%numpunct$c%%@_Psave]
	mov       dword ptr [ebp-48],ecx
 ;	
 ;	
 ;	
	?debug L 316
	push      offset @@std@%numpunct$c%@id
	call      @@std@locale@id@$oui$qv
	pop       ecx
	mov       dword ptr [ebp-52],eax
 ;	
 ;	
 ;	
	?debug L 317
	push      dword ptr [ebp-52]
	push      dword ptr [ebp+8]
	call      @@std@locale@_Getfacet$xqui
	add       esp,8
	mov       dword ptr [ebp-56],eax
 ;	
 ;	
 ;	
	?debug L 319
	cmp       dword ptr [ebp-56],0
	jne       @671
 ;	
 ;	
 ;	
	?debug L 321
	cmp       dword ptr [ebp-48],0
	je        short @672
 ;	
 ;	
 ;	
	?debug L 322
	mov       eax,dword ptr [ebp-48]
	mov       dword ptr [ebp-56],eax
	jmp short @673
 ;	
 ;	
 ;	
	?debug L 323
@672:
	push      dword ptr [ebp+8]
	lea       edx,dword ptr [ebp-48]
	push      edx
	call      @@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	add       esp,8
	cmp       eax,-1
	jne       short @674
 ;	
 ;	
 ;	
	?debug L 326
	lea       ecx,dword ptr [ebp-44]
	push      ecx
	push      0
	push      0
	push      0
	push      1
	push      offset @@std@bad_cast@$bctr$qrx12std@bad_cast
	push      0
	mov       word ptr [ebp-28],36
	lea       eax,dword ptr [ebp-8]
	push      eax
	call      @@std@exception@$bctr$qv
	pop       ecx
	inc       dword ptr [ebp-16]
	mov       edx,offset @@std@bad_cast@3+12
	mov       dword ptr [ebp-8],edx
	inc       dword ptr [ebp-16]
	lea       ecx,dword ptr [ebp-8]
	push      ecx
	push      offset @@$xt$12std@bad_cast
	call      @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1
	add       esp,36
	jmp short @673
 ;	
 ;	
 ;	
	?debug L 334
@674:
@675:
	mov       eax,dword ptr [ebp-48]
	mov       dword ptr [ebp-56],eax
 ;	
 ;	
 ;	
	?debug L 335
	mov       edx,dword ptr [ebp-48]
	mov       dword ptr [@@std@%_Facetptr$16std@%numpunct$c%%@_Psave],edx
 ;	
 ;	
 ;	
	?debug L 337
	mov       ecx,dword ptr [ebp-48]
	mov       dword ptr [ebp-60],ecx
 ;	
 ;	
 ;	
	?debug L 338
	push      dword ptr [ebp-60]
	call      @@std@locale@facet@_Incref$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 340
	push      dword ptr [ebp-60]
	call      @@std@locale@facet@_Register$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 344
@676:
@671:
@673:
	mov       eax,dword ptr [ebp-56]
	push      eax
	dec       dword ptr [ebp-16]
	push      2
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@std@_Lockit@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 345
@678:
@677:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	endp
@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	119
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch418
	dd	?patch419
	dd	?patch420
	df	@@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%
	dw	0
	dw	6067
	dw	0
	dw	1133
	dw	0
	dw	0
	dw	0
	db	72
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	117
	db	115
	db	101
	db	95
	db	102
	db	97
	db	99
	db	101
	db	116
	db	36
	db	49
	db	54
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	37
	db	36
	db	113
	db	114
	db	120
	db	49
	db	48
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	36
	db	114
	db	120
	db	49
	db	54
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5106
	dw	0
	dw	1134
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	4938
	dw	0
	dw	1135
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65484
	dw	65535
	dw	117
	dw	0
	dw	1136
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	4938
	dw	0
	dw	1137
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	5040
	dw	0
	dw	1138
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch421
	df	@675
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65476
	dw	65535
	dw	4947
	dw	0
	dw	1139
	dw	0
	dw	0
	dw	0
?patch421	equ	@676-@675
	dw	2
	dw	6
?patch418	equ	@678-@@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%+4
?patch419	equ	0
?patch420	equ	@678-@@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCIGB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	segment virtual
	align	2
@@_$DCIGB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	5
	dd	8
	dd	0
@_$DCIGB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTJGB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	segment virtual
	align	2
@@_$ECTJGB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCIGB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv
@_$ECTJGB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	proc	near
?live16622@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 399
	push      ebp
	mov       ebp,esp
	add       esp,-36
@679:
	mov       eax,offset @@_$ECTJGB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 400
	mov       word ptr [ebp-20],12
	add       esp,-8
	push      esp
	call      @@std@%allocator$c%@$bctr$qv
	pop       ecx
	push      dword ptr [ebp+8]
	call      @@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 402
	push      0
	push      0
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 403
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
	mov       eax,dword ptr [ebp+8]
	?debug L 403
@681:
@680:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	117
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch422
	dd	?patch423
	dd	?patch424
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv
	dw	0
	dw	6069
	dw	0
	dw	1140
	dw	0
	dw	0
	dw	0
	db	70
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1141
	dw	0
	dw	0
	dw	0
?patch422	equ	@681-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv+4
?patch423	equ	0
?patch424	equ	@681-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t15 = -44
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCKGB$@std@%numpunct$c%@truename$xqv	segment virtual
	align	2
@@_$DCKGB$@std@%numpunct$c%@truename$xqv	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	20
	dd	8
	dd	0
@_$DCKGB$@std@%numpunct$c%@truename$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTLGB$@std@%numpunct$c%@truename$xqv	segment virtual
	align	2
@@_$ECTLGB$@std@%numpunct$c%@truename$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCKGB$@std@%numpunct$c%@truename$xqv
@_$ECTLGB$@std@%numpunct$c%@truename$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@truename$xqv	segment virtual
@@std@%numpunct$c%@truename$xqv	proc	near
?live16623@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 90
	push      ebp
	mov       ebp,esp
	add       esp,-36
@682:
	mov       eax,offset @@_$ECTLGB$@std@%numpunct$c%@truename$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 92
	mov       word ptr [ebp-20],12
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [edx]
	call      dword ptr [ecx+20]
	add       esp,8
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [ebp-8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 93
@684:
@683:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@truename$xqv	endp
@std@%numpunct$c%@truename$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	77
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch425
	dd	?patch426
	dd	?patch427
	df	@@std@%numpunct$c%@truename$xqv
	dw	0
	dw	6071
	dw	0
	dw	1142
	dw	0
	dw	0
	dw	0
	db	30
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	116
	db	114
	db	117
	db	101
	db	110
	db	97
	db	109
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4442
	dw	0
	dw	1143
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5975
	dw	0
	dw	1144
	dw	0
	dw	0
	dw	0
?patch425	equ	@684-@@std@%numpunct$c%@truename$xqv+4
?patch426	equ	0
?patch427	equ	@684-@@std@%numpunct$c%@truename$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	proc	near
?live16624@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 564
	push      ebp
	mov       ebp,esp
	add       esp,-16
	push      ebx
 ;	
 ;	
 ;	
	?debug L 566
@685:
	mov       eax,dword ptr [ebp+8]
	cmp       eax,dword ptr [ebp+12]
	je        @687
 ;	
 ;	
 ;	
	?debug L 567
 ;	
 ;	
 ;	
	?debug L 568
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-16]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-16]
	push      ecx
	push      dword ptr [ebp+8]
	lea       eax,dword ptr [ebp-8]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv
	add       esp,8
	lea       edx,dword ptr [ebp-8]
	push      edx
	call      @@std@$bneq$qrx17std@%allocator$c%t1$o
	add       esp,8
	test      al,al
	je        short @688
	mov       ecx,dword ptr [ebp+12]
	cmp       dword ptr [ecx+36],16
	jb        short @688
 ;	
 ;	
 ;	
	?debug L 570
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	add       esp,8
	jmp short @687
 ;	
 ;	
 ;	
	?debug L 573
@688:
@689:
	push      0
	push      1
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 574
	mov       eax,dword ptr [ebp+12]
	cmp       dword ptr [eax+36],16
	jae       short @690
 ;	
 ;	
 ;	
	?debug L 575
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [edx+32]
	inc       ecx
	push      ecx
	mov       eax,dword ptr [ebp+12]
	add       eax,16
	push      eax
	mov       edx,dword ptr [ebp+8]
	add       edx,16
	push      edx
	call      @@std@%char_traits$c%@move$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 576
	jmp short @691
 ;	
 ;	
 ;	
	?debug L 579
@690:
@692:
	mov       ecx,dword ptr [ebp+12]
	mov       eax,dword ptr [ecx+16]
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx+16],eax
 ;	
 ;	
 ;	
	?debug L 580
	mov       ecx,dword ptr [ebp+12]
	xor       ebx,ebx
	mov       dword ptr [ecx+16],ebx
 ;	
 ;	
 ;	
	?debug L 582
@693:
@691:
	mov       eax,dword ptr [ebp+12]
	mov       edx,dword ptr [eax+32]
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx+32],edx
 ;	
 ;	
 ;	
	?debug L 583
	mov       eax,dword ptr [ebp+12]
	mov       edx,dword ptr [eax+36]
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx+36],edx
 ;	
 ;	
 ;	
	?debug L 585
	mov       eax,dword ptr [ebp+12]
	xor       edx,edx
	mov       dword ptr [eax+32],edx
 ;	
 ;	
 ;	
	?debug L 586
	mov       ecx,dword ptr [ebp+12]
	xor       ebx,ebx
	mov       dword ptr [ecx+36],ebx
 ;	
 ;	
 ;	
	?debug L 588
@694:
@687:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 589
@696:
@695:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	180
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch428
	dd	?patch429
	dd	?patch430
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dw	0
	dw	6073
	dw	0
	dw	1145
	dw	0
	dw	0
	dw	0
	db	133
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	97
	db	115
	db	115
	db	105
	db	103
	db	110
	db	36
	db	113
	db	104
	db	54
	db	48
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1146
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4468
	dw	0
	dw	1147
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch431
	df	@689
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch432
	df	@692
	dw	0
	dw	0
?patch432	equ	@693-@692
	dw	2
	dw	6
?patch431	equ	@694-@689
	dw	2
	dw	6
?patch428	equ	@696-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%+5
?patch429	equ	0
?patch430	equ	@696-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65516
	dw	65535
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCMGB$@std@%numpunct$c%@falsename$xqv	segment virtual
	align	2
@@_$DCMGB$@std@%numpunct$c%@falsename$xqv	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	20
	dd	8
	dd	0
@_$DCMGB$@std@%numpunct$c%@falsename$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTNGB$@std@%numpunct$c%@falsename$xqv	segment virtual
	align	2
@@_$ECTNGB$@std@%numpunct$c%@falsename$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCMGB$@std@%numpunct$c%@falsename$xqv
@_$ECTNGB$@std@%numpunct$c%@falsename$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@falsename$xqv	segment virtual
@@std@%numpunct$c%@falsename$xqv	proc	near
?live16625@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 85
	push      ebp
	mov       ebp,esp
	add       esp,-36
@697:
	mov       eax,offset @@_$ECTNGB$@std@%numpunct$c%@falsename$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 87
	mov       word ptr [ebp-20],12
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [edx]
	call      dword ptr [ecx+16]
	add       esp,8
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [ebp-8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 88
@699:
@698:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@falsename$xqv	endp
@std@%numpunct$c%@falsename$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	78
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch433
	dd	?patch434
	dd	?patch435
	df	@@std@%numpunct$c%@falsename$xqv
	dw	0
	dw	6075
	dw	0
	dw	1148
	dw	0
	dw	0
	dw	0
	db	31
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	102
	db	97
	db	108
	db	115
	db	101
	db	110
	db	97
	db	109
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4442
	dw	0
	dw	1149
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5975
	dw	0
	dw	1150
	dw	0
	dw	0
	dw	0
?patch433	equ	@699-@@std@%numpunct$c%@falsename$xqv+4
?patch434	equ	0
?patch435	equ	@699-@@std@%numpunct$c%@falsename$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui	proc	near
?live16626@0:
 ;	
 ;	
 ;	
	?debug L 1571
	push      ebp
	mov       ebp,esp
	push      ebx
 ;	
 ;	
 ;	
	?debug L 1574
@700:
	cmp       dword ptr [ebp+36],0
	jbe       short @702
 ;	
 ;	
 ;	
	?debug L 1575
@701:
	mov       al,byte ptr [ebp+32]
	push      eax
	lea       edx,dword ptr [ebp+16]
	push      edx
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv
	pop       ecx
	push      eax
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc
	add       esp,8
	?debug L 1574
	dec       dword ptr [ebp+36]
	lea       ecx,dword ptr [ebp+16]
	push      ecx
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv
	pop       ecx
	cmp       dword ptr [ebp+36],0
	ja        short @701
 ;	
 ;	
 ;	
	?debug L 1576
@702:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [eax],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [eax+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       ebx,dword ptr [ebp+8]
	mov       byte ptr [ebx+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx+12],eax
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1577
@705:
@704:
	pop       ebx
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	174
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch436
	dd	?patch437
	dd	?patch438
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	dw	0
	dw	6077
	dw	0
	dw	1151
	dw	0
	dw	0
	dw	0
	db	127
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	82
	db	101
	db	112
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1152
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1153
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1154
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	112
	dw	0
	dw	1155
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	117
	dw	0
	dw	1156
	dw	0
	dw	0
	dw	0
?patch436	equ	@705-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui+3
?patch437	equ	0
?patch438	equ	@705-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65532
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv	proc	near
?live16627@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 1316
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1318
@706:
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 1319
@708:
@707:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	118
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch439
	dd	?patch440
	dd	?patch441
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	dw	0
	dw	6079
	dw	0
	dw	1157
	dw	0
	dw	0
	dw	0
	db	71
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	99
	db	95
	db	115
	db	116
	db	114
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4622
	dw	0
	dw	1158
	dw	0
	dw	0
	dw	0
?patch439	equ	@708-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv+2
?patch440	equ	0
?patch441	equ	@708-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui	proc	near
?live16628@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 1536
	push      ebp
	mov       ebp,esp
	push      ebx
 ;	
 ;	
 ;	
	?debug L 1539
@709:
	cmp       dword ptr [ebp+36],0
	jbe       short @711
 ;	
 ;	
 ;	
	?debug L 1540
@710:
	mov       eax,dword ptr [ebp+32]
	mov       dl,byte ptr [eax]
	push      edx
	lea       ecx,dword ptr [ebp+16]
	push      ecx
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv
	pop       ecx
	push      eax
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc
	add       esp,8
	?debug L 1539
	dec       dword ptr [ebp+36]
	lea       eax,dword ptr [ebp+16]
	push      eax
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv
	pop       ecx
	inc       dword ptr [ebp+32]
	cmp       dword ptr [ebp+36],0
	ja        short @710
 ;	
 ;	
 ;	
	?debug L 1541
@711:
	mov       edx,dword ptr [ebp+8]
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [edx],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [edx+4],ecx
	mov       eax,dword ptr [ebp+8]
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [eax+8],dl
	mov       ecx,dword ptr [ebp+8]
	mov       ebx,dword ptr [ebp+28]
	mov       dword ptr [ecx+12],ebx
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1542
@714:
@713:
	pop       ebx
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	176
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch442
	dd	?patch443
	dd	?patch444
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	dw	0
	dw	6081
	dw	0
	dw	1159
	dw	0
	dw	0
	dw	0
	db	129
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	80
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	112
	db	120
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1160
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1161
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1162
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4267
	dw	0
	dw	1163
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	117
	dw	0
	dw	1164
	dw	0
	dw	0
	dw	0
?patch442	equ	@714-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui+3
?patch443	equ	0
?patch444	equ	@714-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65532
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags	proc	near
?live16631@0:
 ;	
 ;	
 ;	
	?debug L 1450
	push      ebp
	mov       ebp,esp
	add       esp,-8
 ;	
 ;	
 ;	
	?debug L 1453
@715:
	mov       eax,dword ptr [ebp+12]
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 1454
	mov       edx,dword ptr [ebp-4]
	mov       byte ptr [edx],37
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1456
	push      1024
	push      dword ptr [ebp+20]
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	je        short @716
 ;	
 ;	
 ;	
	?debug L 1457
	mov       ecx,dword ptr [ebp-4]
	mov       byte ptr [ecx],43
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1458
@716:
	push      128
	push      dword ptr [ebp+20]
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	je        short @717
 ;	
 ;	
 ;	
	?debug L 1459
	mov       eax,dword ptr [ebp-4]
	mov       byte ptr [eax],35
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1460
@717:
	mov       edx,dword ptr [ebp+16]
	movsx     ecx,byte ptr [edx]
	cmp       ecx,76
	je        short @718
 ;	
 ;	
 ;	
	?debug L 1461
	mov       eax,dword ptr [ebp+16]
	mov       dl,byte ptr [eax]
	mov       ecx,dword ptr [ebp-4]
	mov       byte ptr [ecx],dl
	inc       dword ptr [ebp-4]
	jmp short @719
 ;	
 ;	
 ;	
	?debug L 1472
@718:
@720:
	mov       eax,dword ptr [ebp-4]
	mov       byte ptr [eax],108
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1473
	mov       edx,dword ptr [ebp-4]
	mov       byte ptr [edx],108
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1477
@721:
@719:
	push      112
	push      dword ptr [ebp+20]
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	mov       dword ptr [ebp-8],eax
 ;	
 ;	
 ;	
	?debug L 1478
	cmp       dword ptr [ebp-8],32
	jne       short @722
	mov       cl,111
	jmp short @723
@722:
	cmp       dword ptr [ebp-8],64
	je        short @724
	mov       eax,dword ptr [ebp+16]
	mov       cl,byte ptr [eax+1]
	jmp short @725
@724:
	push      512
	push      dword ptr [ebp+20]
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	je        short @726
	mov       cl,88
	jmp short @727
@726:
	mov       cl,120
@727:
@725:
@723:
	mov       eax,dword ptr [ebp-4]
	mov       byte ptr [eax],cl
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1481
	mov       edx,dword ptr [ebp-4]
	mov       byte ptr [edx],0
 ;	
 ;	
 ;	
	?debug L 1482
	mov       eax,dword ptr [ebp+12]
 ;	
 ;	
 ;	
	?debug L 1483
@729:
@728:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	152
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch445
	dd	?patch446
	dd	?patch447
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags
	dw	0
	dw	6083
	dw	0
	dw	1165
	dw	0
	dw	0
	dw	0
	db	105
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	73
	db	102
	db	109
	db	116
	db	36
	db	120
	db	113
	db	112
	db	99
	db	112
	db	120
	db	99
	db	50
	db	51
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	73
	db	111
	db	115
	db	98
	db	36
	db	105
	db	37
	db	64
	db	95
	db	70
	db	109
	db	116
	db	102
	db	108
	db	97
	db	103
	db	115
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5793
	dw	0
	dw	1166
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1136
	dw	0
	dw	1167
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	4267
	dw	0
	dw	1168
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	4219
	dw	0
	dw	1169
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	4219
	dw	0
	dw	1170
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	1136
	dw	0
	dw	1171
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch448
	df	@720
	dw	0
	dw	0
?patch448	equ	@721-@720
	dw	2
	dw	6
?patch445	equ	@729-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags+4
?patch446	equ	0
?patch447	equ	@729-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt$xqpcpxc23std@%_Iosb$i%@_Fmtflags
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCOGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	segment virtual
	align	2
@@_$DCOGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	label	dword
	dd	@@$xt$10std@locale
	dd	4
	dd	-16
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-56
	dd	0
	dd	@@$xt$10std@locale
	dd	2052
	dd	-16
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-56
	dd	0
@_$DCOGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTPGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	segment virtual
	align	2
@@_$ECTPGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	label	dword
	dd	0
	dd	0
	dd	-92
	dw	0
	dw	5
	dd	0
	dd	@@_$DCOGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui+28
	dw	0
	dw	5
	dd	0
	dd	@@_$DCOGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	dw	24
	dw	5
	dd	1
	dd	@@_$DCOGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui+44
@_$ECTPGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	proc	near
?live16632@0:
 ;	
 ;	
 ;	
	?debug L 1485
	push      ebp
	mov       ebp,esp
	add       esp,-220
	push      ebx
@730:
	mov       eax,offset @@_$ECTPGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1489
	mov       word ptr [ebp-76],12
	push      dword ptr [ebp+32]
	lea       edx,dword ptr [ebp-16]
	push      edx
	call      @@std@ios_base@getloc$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-16]
	push      ecx
	inc       dword ptr [ebp-64]
	call      @@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%
	pop       ecx
	mov       dword ptr [ebp-96],eax
	mov       word ptr [ebp-76],24
 ;	
 ;	
 ;	
	?debug L 1490
	mov       word ptr [ebp-76],36
	push      dword ptr [ebp-96]
	lea       eax,dword ptr [ebp-56]
	push      eax
	call      @@std@%numpunct$c%@grouping$xqv
	add       esp,8
	inc       dword ptr [ebp-64]
	mov       word ptr [ebp-76],24
 ;	
 ;	
 ;	
	?debug L 1491
	mov       edx,dword ptr [ebp+40]
	movsx     ecx,byte ptr [edx]
	cmp       ecx,43
	je        short @733
	mov       eax,dword ptr [ebp+40]
	movsx     edx,byte ptr [eax]
	cmp       edx,45
	jne       short @731
@733:
	mov       ecx,1
	jmp short @732
@731:
	mov       eax,dword ptr [ebp+40]
	movsx     edx,byte ptr [eax]
	cmp       edx,48
	jne       short @734
	mov       ecx,dword ptr [ebp+40]
	movsx     eax,byte ptr [ecx+1]
	cmp       eax,120
	je        short @736
	mov       edx,dword ptr [ebp+40]
	movsx     ecx,byte ptr [edx+1]
	cmp       ecx,88
	jne       short @734
@736:
	mov       ecx,2
	jmp short @735
@734:
	xor       ecx,ecx
@735:
@732:
	mov       dword ptr [ebp-100],ecx
 ;	
 ;	
 ;	
	?debug L 1495
	lea       eax,dword ptr [ebp-56]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	pop       ecx
	movsx     edx,byte ptr [eax]
	cmp       edx,127
	je        @737
	lea       eax,dword ptr [ebp-56]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	pop       ecx
	cmp       byte ptr [eax],0
	jle       short @737
 ;	
 ;	
 ;	
	?debug L 1497
@738:
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	pop       ecx
	mov       dword ptr [ebp-104],eax
 ;	
 ;	
 ;	
	?debug L 1498
	mov       ecx,dword ptr [ebp+44]
	mov       dword ptr [ebp-108],ecx
	jmp short @740
 ;	
 ;	
 ;	
	?debug L 1502
@739:
@741:
	mov       eax,dword ptr [ebp-104]
	movsx     edx,byte ptr [eax]
	sub       dword ptr [ebp-108],edx
 ;	
 ;	
 ;	
	?debug L 1503
	mov       ecx,dword ptr [ebp+44]
	inc       ecx
	sub       ecx,dword ptr [ebp-108]
	push      ecx
	mov       eax,dword ptr [ebp+40]
	add       eax,dword ptr [ebp-108]
	push      eax
	mov       edx,dword ptr [ebp-108]
	inc       edx
	add       edx,dword ptr [ebp+40]
	push      edx
	call      @_memmove
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1505
	mov       ecx,dword ptr [ebp-108]
	mov       ebx,dword ptr [ebp+40]
	mov       byte ptr [ebx+ecx],0
	inc       dword ptr [ebp+44]
 ;	
 ;	
 ;	
	?debug L 1506
	mov       eax,dword ptr [ebp-104]
	cmp       byte ptr [eax+1],0
	jle       short @742
 ;	
 ;	
 ;	
	?debug L 1507
	inc       dword ptr [ebp-104]
	?debug L 1499
@742:
@743:
@740:
	mov       edx,dword ptr [ebp-104]
	movsx     ecx,byte ptr [edx]
	cmp       ecx,127
	je        short @744
	mov       eax,dword ptr [ebp-104]
	cmp       byte ptr [eax],0
	jle       short @744
	mov       edx,dword ptr [ebp-104]
	movsx     ecx,byte ptr [edx]
	mov       ebx,dword ptr [ebp-108]
	sub       ebx,dword ptr [ebp-100]
	cmp       ecx,ebx
	jb        short @739
 ;	
 ;	
 ;	
	?debug L 1511
@744:
@745:
@737:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	test      eax,eax
	jle       short @748
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	cmp       eax,dword ptr [ebp+44]
	ja        short @746
@748:
	xor       eax,eax
	jmp short @747
@746:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	sub       eax,dword ptr [ebp+44]
@747:
	mov       dword ptr [ebp-112],eax
 ;	
 ;	
 ;	
	?debug L 1513
	mov       word ptr [ebp-76],24
 ;	
 ;	
 ;	
	?debug L 1516
	push      14
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	mov       dword ptr [ebp-116],eax
 ;	
 ;	
 ;	
	?debug L 1517
	cmp       dword ptr [ebp-116],2
	je        short @749
	cmp       dword ptr [ebp-116],8
	je        short @749
 ;	
 ;	
 ;	
	?debug L 1520
@750:
	push      dword ptr [ebp-112]
	mov       dl,byte ptr [ebp+36]
	push      edx
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-172]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp-172]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-168]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-164]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-160]
	mov       dword ptr [ebp+28],ecx
 ;	
 ;	
 ;	
	?debug L 1521
	xor       eax,eax
	mov       dword ptr [ebp-112],eax
 ;	
 ;	
 ;	
	?debug L 1522
@751:
	jmp @752
 ;	
 ;	
 ;	
	?debug L 1523
@749:
	cmp       dword ptr [ebp-116],8
	jne       @753
 ;	
 ;	
 ;	
	?debug L 1525
@754:
	push      dword ptr [ebp-100]
	push      dword ptr [ebp+40]
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-188]
	push      edx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	add       esp,32
	mov       ecx,dword ptr [ebp-188]
	mov       dword ptr [ebp+16],ecx
	mov       ecx,dword ptr [ebp-184]
	mov       dword ptr [ebp+20],ecx
	mov       al,byte ptr [ebp-180]
	mov       byte ptr [ebp+24],al
	mov       edx,dword ptr [ebp-176]
	mov       dword ptr [ebp+28],edx
 ;	
 ;	
 ;	
	?debug L 1526
	mov       ecx,dword ptr [ebp-100]
	add       dword ptr [ebp+40],ecx
	mov       eax,dword ptr [ebp-100]
	sub       dword ptr [ebp+44],eax
 ;	
 ;	
 ;	
	?debug L 1527
	push      dword ptr [ebp-112]
	mov       dl,byte ptr [ebp+36]
	push      edx
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-204]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp-204]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-200]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-196]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-192]
	mov       dword ptr [ebp+28],ecx
	xor       eax,eax
	mov       dword ptr [ebp-112],eax
 ;	
 ;	
 ;	
	?debug L 1530
@755:
@753:
@752:
	push      dword ptr [ebp-96]
	call      @@std@%numpunct$c%@thousands_sep$xqv
	pop       ecx
	push      eax
	push      dword ptr [ebp+44]
	push      dword ptr [ebp+40]
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-220]
	push      edx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic
	add       esp,36
	mov       ecx,dword ptr [ebp-220]
	mov       dword ptr [ebp+16],ecx
	mov       ecx,dword ptr [ebp-216]
	mov       dword ptr [ebp+20],ecx
	mov       al,byte ptr [ebp-212]
	mov       byte ptr [ebp+24],al
	mov       edx,dword ptr [ebp-208]
	mov       dword ptr [ebp+28],edx
 ;	
 ;	
 ;	
	?debug L 1532
	push      0
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$qi
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1533
	push      dword ptr [ebp-112]
	mov       cl,byte ptr [ebp+36]
	push      ecx
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp+8]
	push      eax
	dec       dword ptr [ebp-64]
	push      2
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
	dec       dword ptr [ebp-64]
	push      2
	lea       ecx,dword ptr [ebp-16]
	push      ecx
	call      @@std@locale@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-92]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 1534
@757:
@756:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	192
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch449
	dd	?patch450
	dd	?patch451
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	dw	0
	dw	6085
	dw	0
	dw	1172
	dw	0
	dw	0
	dw	0
	db	145
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	73
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	112
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1173
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1174
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1175
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1176
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1177
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	1136
	dw	0
	dw	1178
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	44
	dw	0
	dw	117
	dw	0
	dw	1179
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65420
	dw	65535
	dw	4219
	dw	0
	dw	1180
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65424
	dw	65535
	dw	117
	dw	0
	dw	1181
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65436
	dw	65535
	dw	4548
	dw	0
	dw	1182
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	4284
	dw	0
	dw	1183
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65440
	dw	65535
	dw	5969
	dw	0
	dw	1184
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch452
	df	@738
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65428
	dw	65535
	dw	117
	dw	0
	dw	1185
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65432
	dw	65535
	dw	4267
	dw	0
	dw	1186
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch453
	df	@741
	dw	0
	dw	0
?patch453	equ	@743-@741
	dw	2
	dw	6
?patch452	equ	@745-@738
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch454
	df	@750
	dw	0
	dw	0
?patch454	equ	@751-@750
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch455
	df	@754
	dw	0
	dw	0
?patch455	equ	@755-@754
	dw	2
	dw	6
?patch449	equ	@757-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui+5
?patch450	equ	0
?patch451	equ	@757-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpcui
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65312
	dw	65535
?t20 = -248
?t19 = -252
?t18 = -248
?t17 = -248
?t16 = -248
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@ios_base@precision$xqv	segment virtual
@@std@ios_base@precision$xqv	proc	near
?live16633@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase"
 ;	
 ;	
 ;	
	?debug L 405
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 407
@758:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+28]
 ;	
 ;	
 ;	
	?debug L 408
@760:
@759:
	pop       ebp
	ret 
	?debug L 0
@@std@ios_base@precision$xqv	endp
@std@ios_base@precision$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch456
	dd	?patch457
	dd	?patch458
	df	@@std@ios_base@precision$xqv
	dw	0
	dw	6087
	dw	0
	dw	1187
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	64
	db	112
	db	114
	db	101
	db	99
	db	105
	db	115
	db	105
	db	111
	db	110
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4858
	dw	0
	dw	1188
	dw	0
	dw	0
	dw	0
?patch456	equ	@760-@@std@ios_base@precision$xqv+2
?patch457	equ	0
?patch458	equ	@760-@@std@ios_base@precision$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags	proc	near
?live16634@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 1307
	push      ebp
	mov       ebp,esp
	add       esp,-8
 ;	
 ;	
 ;	
	?debug L 1310
@761:
	mov       eax,dword ptr [ebp+12]
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 1311
	mov       edx,dword ptr [ebp-4]
	mov       byte ptr [edx],37
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1313
	push      1024
	push      dword ptr [ebp+20]
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	je        short @762
 ;	
 ;	
 ;	
	?debug L 1314
	mov       ecx,dword ptr [ebp-4]
	mov       byte ptr [ecx],43
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1315
@762:
	push      256
	push      dword ptr [ebp+20]
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	je        short @763
 ;	
 ;	
 ;	
	?debug L 1316
	mov       eax,dword ptr [ebp-4]
	mov       byte ptr [eax],35
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1317
@763:
	mov       edx,dword ptr [ebp-4]
	mov       byte ptr [edx],46
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1318
	mov       ecx,dword ptr [ebp-4]
	mov       byte ptr [ecx],42
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1319
	cmp       byte ptr [ebp+16],0
	je        short @764
 ;	
 ;	
 ;	
	?debug L 1320
	mov       al,byte ptr [ebp+16]
	mov       edx,dword ptr [ebp-4]
	mov       byte ptr [edx],al
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1322
@764:
	push      6144
	push      dword ptr [ebp+20]
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	mov       dword ptr [ebp-8],eax
 ;	
 ;	
 ;	
	?debug L 1323
	cmp       dword ptr [ebp-8],4096
	jne       short @765
	mov       cl,102
	jmp short @766
@765:
	cmp       dword ptr [ebp-8],6144
	jne       short @767
	mov       cl,97
	jmp short @768
@767:
	cmp       dword ptr [ebp-8],2048
	jne       short @769
	mov       cl,101
	jmp short @770
@769:
	mov       cl,103
@770:
@768:
@766:
	mov       eax,dword ptr [ebp-4]
	mov       byte ptr [eax],cl
	inc       dword ptr [ebp-4]
 ;	
 ;	
 ;	
	?debug L 1326
	mov       edx,dword ptr [ebp-4]
	mov       byte ptr [edx],0
 ;	
 ;	
 ;	
	?debug L 1327
	mov       eax,dword ptr [ebp+12]
 ;	
 ;	
 ;	
	?debug L 1328
@772:
@771:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	150
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch459
	dd	?patch460
	dd	?patch461
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags
	dw	0
	dw	6089
	dw	0
	dw	1189
	dw	0
	dw	0
	dw	0
	db	103
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	70
	db	102
	db	109
	db	116
	db	36
	db	120
	db	113
	db	112
	db	99
	db	99
	db	50
	db	51
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	73
	db	111
	db	115
	db	98
	db	36
	db	105
	db	37
	db	64
	db	95
	db	70
	db	109
	db	116
	db	102
	db	108
	db	97
	db	103
	db	115
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5793
	dw	0
	dw	1190
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1136
	dw	0
	dw	1191
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	112
	dw	0
	dw	1192
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	4219
	dw	0
	dw	1193
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	4219
	dw	0
	dw	1194
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	1136
	dw	0
	dw	1195
	dw	0
	dw	0
	dw	0
?patch459	equ	@772-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags+4
?patch460	equ	0
?patch461	equ	@772-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt$xqpcc23std@%_Iosb$i%@_Fmtflags
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCQGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	segment virtual
	align	2
@@_$DCQGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	label	dword
	dd	@@$xt$10std@locale
	dd	4
	dd	-16
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-56
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-96
	dd	0
	dd	@@$xt$10std@locale
	dd	2052
	dd	-16
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-56
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-96
	dd	0
@_$DCQGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTRGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	segment virtual
	align	2
@@_$ECTRGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	label	dword
	dd	0
	dd	0
	dd	-132
	dw	0
	dw	5
	dd	0
	dd	@@_$DCQGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui+40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCQGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui
	dw	24
	dw	5
	dd	1
	dd	@@_$DCQGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui+56
	dw	24
	dw	5
	dd	2
	dd	@@_$DCQGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui+72
@_$ECTRGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	proc	near
?live16635@0:
 ;	
 ;	
 ;	
	?debug L 1330
	push      ebp
	mov       ebp,esp
	add       esp,-412
@773:
	mov       eax,offset @@_$ECTRGB$@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 1336
	mov       word ptr [ebp-116],12
	push      dword ptr [ebp+32]
	lea       edx,dword ptr [ebp-16]
	push      edx
	call      @@std@ios_base@getloc$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-16]
	push      ecx
	inc       dword ptr [ebp-104]
	call      @@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%
	pop       ecx
	mov       dword ptr [ebp-136],eax
	mov       word ptr [ebp-116],24
 ;	
 ;	
 ;	
	?debug L 1337
	mov       word ptr [ebp-116],36
	push      dword ptr [ebp-136]
	lea       eax,dword ptr [ebp-56]
	push      eax
	call      @@std@%numpunct$c%@grouping$xqv
	add       esp,8
	inc       dword ptr [ebp-104]
	mov       word ptr [ebp-116],24
 ;	
 ;	
 ;	
	?debug L 1338
	push      dword ptr [ebp-136]
	call      @@std@%numpunct$c%@thousands_sep$xqv
	pop       ecx
	mov       byte ptr [ebp-137],al
 ;	
 ;	
 ;	
	?debug L 1339
	mov       word ptr [ebp-116],48
	lea       edx,dword ptr [ebp-96]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv
	pop       ecx
	inc       dword ptr [ebp-104]
	mov       word ptr [ebp-116],24
 ;	
 ;	
 ;	
	?debug L 1340
	mov       ecx,dword ptr [ebp+12]
	add       ecx,8
	push      ecx
	push      0
	push      48
	call      @@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c
	add       esp,12
	mov       byte ptr [ebp-138],al
 ;	
 ;	
 ;	
	?debug L 1341
	mov       eax,dword ptr [ebp+40]
	movsx     edx,byte ptr [eax]
	cmp       edx,43
	je        short @776
	mov       ecx,dword ptr [ebp+40]
	movsx     eax,byte ptr [ecx]
	cmp       eax,45
	jne       short @774
@776:
	mov       edx,1
	jmp short @775
@774:
	xor       edx,edx
@775:
	mov       dword ptr [ebp-144],edx
 ;	
 ;	
 ;	
	?debug L 1344
	call      @_localeconv
	mov       eax,dword ptr [eax]
	mov       cl,byte ptr [eax]
	mov       byte ptr [ebp-147],cl
 ;	
 ;	
 ;	
	?debug L 1345
	mov       byte ptr [ebp-146],101
 ;	
 ;	
 ;	
	?debug L 1346
	mov       byte ptr [ebp-145],0
 ;	
 ;	
 ;	
	?debug L 1348
	push      dword ptr [ebp+56]
	push      101
	push      dword ptr [ebp+40]
	call      @@std@memchr$qpxviui
	add       esp,12
	mov       dword ptr [ebp-152],eax
 ;	
 ;	
 ;	
	?debug L 1350
	push      dword ptr [ebp+56]
	movsx     eax,byte ptr [ebp-147]
	push      eax
	push      dword ptr [ebp+40]
	call      @@std@memchr$qpxviui
	add       esp,12
	mov       dword ptr [ebp-156],eax
 ;	
 ;	
 ;	
	?debug L 1352
	cmp       dword ptr [ebp-156],0
	jne       short @777
 ;	
 ;	
 ;	
	?debug L 1353
	xor       edx,edx
	mov       dword ptr [ebp+52],edx
 ;	
 ;	
 ;	
	?debug L 1355
@777:
	lea       ecx,dword ptr [ebp-56]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	pop       ecx
	movsx     eax,byte ptr [eax]
	cmp       eax,127
	je        @780
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	pop       ecx
	cmp       byte ptr [eax],0
	jle       @780
 ;	
 ;	
 ;	
	?debug L 1357
@781:
	push      dword ptr [ebp+56]
	push      dword ptr [ebp+40]
	lea       ecx,dword ptr [ebp-96]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1358
	cmp       dword ptr [ebp-152],0
	jne       short @782
 ;	
 ;	
 ;	
	?debug L 1359
	push      48
	push      dword ptr [ebp+52]
	lea       eax,dword ptr [ebp-96]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic
	add       esp,12
	jmp short @783
 ;	
 ;	
 ;	
	?debug L 1362
@782:
@784:
	cmp       dword ptr [ebp-156],0
	jne       short @785
 ;	
 ;	
 ;	
	?debug L 1364
@786:
	push      48
	push      dword ptr [ebp+44]
	lea       edx,dword ptr [ebp-96]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1365
	xor       ecx,ecx
	mov       dword ptr [ebp+44],ecx
 ;	
 ;	
 ;	
	?debug L 1367
@787:
@785:
	push      48
	push      dword ptr [ebp+52]
	mov       eax,dword ptr [ebp-152]
	sub       eax,dword ptr [ebp+40]
	push      eax
	lea       edx,dword ptr [ebp-96]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic
	add       esp,16
 ;	
 ;	
 ;	
	?debug L 1369
@788:
@783:
	xor       ecx,ecx
	mov       dword ptr [ebp+52],ecx
 ;	
 ;	
 ;	
	?debug L 1371
	cmp       dword ptr [ebp-156],0
	jne       short @789
 ;	
 ;	
 ;	
	?debug L 1372
	push      48
	push      dword ptr [ebp+44]
	lea       eax,dword ptr [ebp-96]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic
	add       esp,12
	jmp short @790
 ;	
 ;	
 ;	
	?debug L 1375
@789:
@791:
	push      48
	push      dword ptr [ebp+48]
	mov       edx,dword ptr [ebp-156]
	sub       edx,dword ptr [ebp+40]
	inc       edx
	push      edx
	lea       ecx,dword ptr [ebp-96]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic
	add       esp,16
 ;	
 ;	
 ;	
	?debug L 1376
	push      48
	push      dword ptr [ebp+44]
	mov       eax,dword ptr [ebp-156]
	sub       eax,dword ptr [ebp+40]
	push      eax
	lea       edx,dword ptr [ebp-96]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic
	add       esp,16
 ;	
 ;	
 ;	
	?debug L 1377
	xor       ecx,ecx
	mov       dword ptr [ebp+48],ecx
 ;	
 ;	
 ;	
	?debug L 1379
@792:
@790:
	xor       eax,eax
	mov       dword ptr [ebp+44],eax
 ;	
 ;	
 ;	
	?debug L 1381
	lea       edx,dword ptr [ebp-56]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str$xqv
	pop       ecx
	mov       dword ptr [ebp-160],eax
 ;	
 ;	
 ;	
	?debug L 1382
	lea       ecx,dword ptr [ebp-147]
	push      ecx
	push      0
	lea       eax,dword ptr [ebp-96]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui
	add       esp,8
	push      eax
	call      @_strcspn
	add       esp,8
	mov       dword ptr [ebp-164],eax
	jmp short @794
 ;	
 ;	
 ;	
	?debug L 1386
@793:
@795:
	push      0
	push      1
	mov       edx,dword ptr [ebp-160]
	movsx     ecx,byte ptr [edx]
	sub       dword ptr [ebp-164],ecx
	mov       eax,dword ptr [ebp-164]
	push      eax
	lea       edx,dword ptr [ebp-96]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic
	add       esp,16
 ;	
 ;	
 ;	
	?debug L 1387
	mov       ecx,dword ptr [ebp-160]
	cmp       byte ptr [ecx+1],0
	jle       short @796
 ;	
 ;	
 ;	
	?debug L 1388
	inc       dword ptr [ebp-160]
	?debug L 1383
@796:
@797:
@794:
	mov       eax,dword ptr [ebp-160]
	movsx     edx,byte ptr [eax]
	cmp       edx,127
	je        short @798
	mov       ecx,dword ptr [ebp-160]
	cmp       byte ptr [ecx],0
	jle       short @798
	mov       eax,dword ptr [ebp-160]
	movsx     edx,byte ptr [eax]
	mov       ecx,dword ptr [ebp-164]
	sub       ecx,dword ptr [ebp-144]
	cmp       edx,ecx
	jb        short @793
 ;	
 ;	
 ;	
	?debug L 1391
@798:
	push      0
	lea       eax,dword ptr [ebp-96]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui
	add       esp,8
	mov       dword ptr [ebp+40],eax
 ;	
 ;	
 ;	
	?debug L 1392
	xor       edx,edx
	mov       dword ptr [ebp+52],edx
 ;	
 ;	
 ;	
	?debug L 1393
	lea       ecx,dword ptr [ebp-96]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	pop       ecx
	mov       dword ptr [ebp+56],eax
 ;	
 ;	
 ;	
	?debug L 1396
@799:
@780:
	mov       eax,dword ptr [ebp+44]
	add       eax,dword ptr [ebp+48]
	add       eax,dword ptr [ebp+52]
	add       eax,dword ptr [ebp+56]
	mov       dword ptr [ebp-168],eax
	mov       word ptr [ebp-116],24
 ;	
 ;	
 ;	
	?debug L 1397
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	test      eax,eax
	jle       short @802
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	cmp       eax,dword ptr [ebp-168]
	ja        short @800
@802:
	xor       edx,edx
	jmp short @801
@800:
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$xqv
	pop       ecx
	mov       edx,eax
	sub       edx,dword ptr [ebp-168]
@801:
	mov       dword ptr [ebp-168],edx
 ;	
 ;	
 ;	
	?debug L 1401
	push      14
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	mov       dword ptr [ebp-172],eax
 ;	
 ;	
 ;	
	?debug L 1402
	cmp       dword ptr [ebp-172],2
	je        short @803
	cmp       dword ptr [ebp-172],8
	je        short @803
 ;	
 ;	
 ;	
	?debug L 1405
@804:
	push      dword ptr [ebp-168]
	mov       al,byte ptr [ebp+36]
	push      eax
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-236]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp-236]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-232]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-228]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-224]
	mov       dword ptr [ebp+28],ecx
 ;	
 ;	
 ;	
	?debug L 1406
	xor       eax,eax
	mov       dword ptr [ebp-168],eax
 ;	
 ;	
 ;	
	?debug L 1407
@805:
	jmp @806
 ;	
 ;	
 ;	
	?debug L 1408
@803:
	cmp       dword ptr [ebp-172],8
	jne       @807
 ;	
 ;	
 ;	
	?debug L 1410
@808:
	cmp       dword ptr [ebp-144],0
	jbe       short @809
 ;	
 ;	
 ;	
	?debug L 1412
@810:
	push      1
	push      dword ptr [ebp+40]
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-252]
	push      edx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	add       esp,32
	mov       ecx,dword ptr [ebp-252]
	mov       dword ptr [ebp+16],ecx
	mov       ecx,dword ptr [ebp-248]
	mov       dword ptr [ebp+20],ecx
	mov       al,byte ptr [ebp-244]
	mov       byte ptr [ebp+24],al
	mov       edx,dword ptr [ebp-240]
	mov       dword ptr [ebp+28],edx
 ;	
 ;	
 ;	
	?debug L 1413
	inc       dword ptr [ebp+40]
	dec       dword ptr [ebp+56]
 ;	
 ;	
 ;	
	?debug L 1415
@811:
@809:
	push      dword ptr [ebp-168]
	mov       cl,byte ptr [ebp+36]
	push      ecx
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-268]
	push      eax
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       edx,dword ptr [ebp-268]
	mov       dword ptr [ebp+16],edx
	mov       edx,dword ptr [ebp-264]
	mov       dword ptr [ebp+20],edx
	mov       cl,byte ptr [ebp-260]
	mov       byte ptr [ebp+24],cl
	mov       eax,dword ptr [ebp-256]
	mov       dword ptr [ebp+28],eax
 ;	
 ;	
 ;	
	?debug L 1416
	xor       edx,edx
	mov       dword ptr [ebp-168],edx
 ;	
 ;	
 ;	
	?debug L 1419
@812:
@807:
@806:
	push      dword ptr [ebp+56]
	movsx     ecx,byte ptr [ebp-147]
	push      ecx
	push      dword ptr [ebp+40]
	call      @@std@memchr$qpxviui
	add       esp,12
	mov       dword ptr [ebp-156],eax
 ;	
 ;	
 ;	
	?debug L 1421
	cmp       dword ptr [ebp-156],0
	je        @813
 ;	
 ;	
 ;	
	?debug L 1423
@814:
	mov       eax,dword ptr [ebp-156]
	sub       eax,dword ptr [ebp+40]
	inc       eax
	mov       dword ptr [ebp-176],eax
 ;	
 ;	
 ;	
	?debug L 1424
	mov       dl,byte ptr [ebp-137]
	push      edx
	mov       ecx,dword ptr [ebp-176]
	dec       ecx
	push      ecx
	push      dword ptr [ebp+40]
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-284]
	push      eax
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic
	add       esp,36
	mov       edx,dword ptr [ebp-284]
	mov       dword ptr [ebp+16],edx
	mov       edx,dword ptr [ebp-280]
	mov       dword ptr [ebp+20],edx
	mov       cl,byte ptr [ebp-276]
	mov       byte ptr [ebp+24],cl
	mov       eax,dword ptr [ebp-272]
	mov       dword ptr [ebp+28],eax
 ;	
 ;	
 ;	
	?debug L 1425
	push      dword ptr [ebp+44]
	mov       dl,byte ptr [ebp-138]
	push      edx
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-300]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp-300]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-296]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-292]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-288]
	mov       dword ptr [ebp+28],ecx
 ;	
 ;	
 ;	
	?debug L 1426
	push      1
	push      dword ptr [ebp-136]
	call      @@std@%numpunct$c%@decimal_point$xqv
	pop       ecx
	push      eax
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-316]
	push      eax
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       edx,dword ptr [ebp-316]
	mov       dword ptr [ebp+16],edx
	mov       edx,dword ptr [ebp-312]
	mov       dword ptr [ebp+20],edx
	mov       cl,byte ptr [ebp-308]
	mov       byte ptr [ebp+24],cl
	mov       eax,dword ptr [ebp-304]
	mov       dword ptr [ebp+28],eax
 ;	
 ;	
 ;	
	?debug L 1427
	push      dword ptr [ebp+48]
	mov       dl,byte ptr [ebp-138]
	push      edx
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-332]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp-332]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-328]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-324]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-320]
	mov       dword ptr [ebp+28],ecx
 ;	
 ;	
 ;	
	?debug L 1428
	mov       eax,dword ptr [ebp-176]
	add       dword ptr [ebp+40],eax
	mov       edx,dword ptr [ebp-176]
	sub       dword ptr [ebp+56],edx
 ;	
 ;	
 ;	
	?debug L 1431
@815:
@813:
	push      dword ptr [ebp+56]
	push      101
	push      dword ptr [ebp+40]
	call      @@std@memchr$qpxviui
	add       esp,12
	mov       dword ptr [ebp-152],eax
 ;	
 ;	
 ;	
	?debug L 1433
	cmp       dword ptr [ebp-152],0
	je        @816
 ;	
 ;	
 ;	
	?debug L 1435
@817:
	mov       ecx,dword ptr [ebp-152]
	sub       ecx,dword ptr [ebp+40]
	inc       ecx
	mov       dword ptr [ebp-180],ecx
 ;	
 ;	
 ;	
	?debug L 1436
	mov       al,byte ptr [ebp-137]
	push      eax
	mov       edx,dword ptr [ebp-180]
	dec       edx
	push      edx
	push      dword ptr [ebp+40]
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-348]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic
	add       esp,36
	mov       eax,dword ptr [ebp-348]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-344]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-340]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-336]
	mov       dword ptr [ebp+28],ecx
 ;	
 ;	
 ;	
	?debug L 1437
	push      dword ptr [ebp+52]
	mov       al,byte ptr [ebp-138]
	push      eax
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-364]
	push      edx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       ecx,dword ptr [ebp-364]
	mov       dword ptr [ebp+16],ecx
	mov       ecx,dword ptr [ebp-360]
	mov       dword ptr [ebp+20],ecx
	mov       al,byte ptr [ebp-356]
	mov       byte ptr [ebp+24],al
	mov       edx,dword ptr [ebp-352]
	mov       dword ptr [ebp+28],edx
	xor       ecx,ecx
	mov       dword ptr [ebp+52],ecx
 ;	
 ;	
 ;	
	?debug L 1438
	push      1
	push      512
	push      dword ptr [ebp+32]
	call      @@std@ios_base@flags$xqv
	pop       ecx
	push      eax
	call      @@std@$band$q23std@%_Iosb$i%@_Fmtflagst1
	add       esp,8
	test      eax,eax
	je        short @818
	mov       eax,offset s@+232
	jmp short @819
@818:
	mov       eax,offset s@+234
@819:
	push      eax
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-380]
	push      edx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	add       esp,32
	mov       ecx,dword ptr [ebp-380]
	mov       dword ptr [ebp+16],ecx
	mov       ecx,dword ptr [ebp-376]
	mov       dword ptr [ebp+20],ecx
	mov       al,byte ptr [ebp-372]
	mov       byte ptr [ebp+24],al
	mov       edx,dword ptr [ebp-368]
	mov       dword ptr [ebp+28],edx
 ;	
 ;	
 ;	
	?debug L 1440
	mov       ecx,dword ptr [ebp-180]
	add       dword ptr [ebp+40],ecx
	mov       eax,dword ptr [ebp-180]
	sub       dword ptr [ebp+56],eax
 ;	
 ;	
 ;	
	?debug L 1443
@820:
@816:
	mov       dl,byte ptr [ebp-137]
	push      edx
	push      dword ptr [ebp+56]
	push      dword ptr [ebp+40]
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-396]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic
	add       esp,36
	mov       eax,dword ptr [ebp-396]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-392]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-388]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-384]
	mov       dword ptr [ebp+28],ecx
 ;	
 ;	
 ;	
	?debug L 1445
	push      dword ptr [ebp+52]
	mov       al,byte ptr [ebp-138]
	push      eax
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-412]
	push      edx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       ecx,dword ptr [ebp-412]
	mov       dword ptr [ebp+16],ecx
	mov       ecx,dword ptr [ebp-408]
	mov       dword ptr [ebp+20],ecx
	mov       al,byte ptr [ebp-404]
	mov       byte ptr [ebp+24],al
	mov       edx,dword ptr [ebp-400]
	mov       dword ptr [ebp+28],edx
 ;	
 ;	
 ;	
	?debug L 1446
	push      0
	push      dword ptr [ebp+32]
	call      @@std@ios_base@width$qi
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 1447
	push      dword ptr [ebp-168]
	mov       cl,byte ptr [ebp+36]
	push      ecx
	add       esp,-16
	mov       eax,dword ptr [ebp+16]
	mov       dword ptr [esp],eax
	mov       eax,dword ptr [ebp+20]
	mov       dword ptr [esp+4],eax
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],dl
	mov       ecx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],ecx
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp+8]
	push      eax
	dec       dword ptr [ebp-104]
	push      2
	lea       edx,dword ptr [ebp-96]
	push      edx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
	dec       dword ptr [ebp-104]
	push      2
	lea       ecx,dword ptr [ebp-56]
	push      ecx
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
	dec       dword ptr [ebp-104]
	push      2
	lea       eax,dword ptr [ebp-16]
	push      eax
	call      @@std@locale@$bdtr$qv
	add       esp,8
	pop       eax
	mov       edx,dword ptr [ebp-132]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 1448
@822:
@821:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	199
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch462
	dd	?patch463
	dd	?patch464
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui
	dw	0
	dw	6091
	dw	0
	dw	1196
	dw	0
	dw	0
	dw	0
	db	152
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	70
	db	112
	db	117
	db	116
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	114
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	105
	db	111
	db	115
	db	95
	db	98
	db	97
	db	115
	db	101
	db	99
	db	112
	db	120
	db	99
	db	117
	db	105
	db	117
	db	105
	db	117
	db	105
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1197
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1198
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1199
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4240
	dw	0
	dw	1200
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	112
	dw	0
	dw	1201
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	4267
	dw	0
	dw	1202
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	44
	dw	0
	dw	117
	dw	0
	dw	1203
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	48
	dw	0
	dw	117
	dw	0
	dw	1204
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	52
	dw	0
	dw	117
	dw	0
	dw	1205
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	56
	dw	0
	dw	117
	dw	0
	dw	1206
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65364
	dw	65535
	dw	4219
	dw	0
	dw	1207
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65368
	dw	65535
	dw	117
	dw	0
	dw	1208
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65380
	dw	65535
	dw	4267
	dw	0
	dw	1209
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65384
	dw	65535
	dw	4267
	dw	0
	dw	1210
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65389
	dw	65535
	dw	6093
	dw	0
	dw	1211
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65392
	dw	65535
	dw	117
	dw	0
	dw	1212
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65398
	dw	65535
	dw	4268
	dw	0
	dw	1213
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65440
	dw	65535
	dw	4285
	dw	0
	dw	1214
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65399
	dw	65535
	dw	4268
	dw	0
	dw	1215
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	4284
	dw	0
	dw	1216
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65400
	dw	65535
	dw	5969
	dw	0
	dw	1217
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch465
	df	@781
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65372
	dw	65535
	dw	117
	dw	0
	dw	1218
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65376
	dw	65535
	dw	4267
	dw	0
	dw	1219
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch466
	df	@784
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch467
	df	@786
	dw	0
	dw	0
?patch467	equ	@787-@786
	dw	2
	dw	6
?patch466	equ	@788-@784
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch468
	df	@791
	dw	0
	dw	0
?patch468	equ	@792-@791
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch469
	df	@795
	dw	0
	dw	0
?patch469	equ	@797-@795
	dw	2
	dw	6
?patch465	equ	@799-@781
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch470
	df	@804
	dw	0
	dw	0
?patch470	equ	@805-@804
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch471
	df	@808
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch472
	df	@810
	dw	0
	dw	0
?patch472	equ	@811-@810
	dw	2
	dw	6
?patch471	equ	@812-@808
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch473
	df	@814
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65360
	dw	65535
	dw	117
	dw	0
	dw	1220
	dw	0
	dw	0
	dw	0
?patch473	equ	@815-@814
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch474
	df	@817
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65356
	dw	65535
	dw	117
	dw	0
	dw	1221
	dw	0
	dw	0
	dw	0
?patch474	equ	@820-@817
	dw	2
	dw	6
?patch462	equ	@822-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui+4
?patch463	equ	0
?patch464	equ	@822-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%r12std@ios_basecpxcuiuiuiui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t33 = -436
?t32 = -436
?t31 = -440
?t30 = -436
?t29 = -436
?t28 = -440
?t27 = -436
?t26 = -436
?t25 = -436
?t24 = -440
?t23 = -436
?t22 = -436
?t21 = -436
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCSGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
	align	2
@@_$DCSGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	label	dword
	dd	@@$xt$p16std@%numpunct$c%
	dd	8199
	dd	-4
	dd	0
	dd	@@$xt$60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	4
	dd	-44
	dd	@@$xt$12std@_Locinfo
	dd	4
	dd	-140
	dd	0
@_$DCSGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTTGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
	align	2
@@_$ECTTGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	label	dword
	dd	0
	dd	0
	dd	-176
	dw	0
	dw	5
	dd	0
	dd	0
	dw	12
	dw	5
	dd	0
	dd	@@_$DCSGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	24
	dw	5
	dd	0
	dd	@@_$DCSGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale+16
@_$ECTTGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	segment virtual
@@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	proc	near
?live16636@0:
 ;	
 ;	
 ;	
	?debug L 112
	push      ebp
	mov       ebp,esp
	add       esp,-176
@823:
	mov       eax,offset @@_$ECTTGB$@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 115
	cmp       dword ptr [ebp+8],0
	je        @824
	mov       edx,dword ptr [ebp+8]
	cmp       dword ptr [edx],0
	jne       @824
 ;	
 ;	
 ;	
	?debug L 116
	push      24
	call      @$bnew$qui
	pop       ecx
	mov       dword ptr [ebp-4],eax
	test      eax,eax
	je        short @825
	mov       word ptr [ebp-160],36
	push      0
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-44]
	push      edx
	call      @@std@locale@name$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-44]
	push      ecx
	inc       dword ptr [ebp-148]
	lea       eax,dword ptr [ebp-140]
	push      eax
	call      @@std@_Locinfo@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	add       esp,8
	push      eax
	add       dword ptr [ebp-148],4
	push      dword ptr [ebp-4]
	call      @@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui
	add       esp,12
	mov       word ptr [ebp-160],12
	mov       edx,dword ptr [ebp-4]
	jmp short @826
@825:
	mov       edx,dword ptr [ebp-4]
@826:
	mov       eax,dword ptr [ebp+8]
	mov       dword ptr [eax],edx
 ;	
 ;	
 ;	
	?debug L 117
	sub       dword ptr [ebp-148],4
	push      2
	lea       ecx,dword ptr [ebp-140]
	push      ecx
	call      @@std@_Locinfo@$bdtr$qv
	add       esp,8
	dec       dword ptr [ebp-148]
	push      2
	lea       eax,dword ptr [ebp-44]
	push      eax
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 118
@824:
	mov       eax,3
	mov       edx,dword ptr [ebp-176]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 119
@828:
@827:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	endp
@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	109
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch475
	dd	?patch476
	dd	?patch477
	df	@@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	0
	dw	6094
	dw	0
	dw	1222
	dw	0
	dw	0
	dw	0
	db	62
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	95
	db	71
	db	101
	db	116
	db	99
	db	97
	db	116
	db	36
	db	113
	db	112
	db	112
	db	120
	db	49
	db	54
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	db	64
	db	102
	db	97
	db	99
	db	101
	db	116
	db	112
	db	120
	db	49
	db	48
	db	115
	db	116
	db	100
	db	64
	db	108
	db	111
	db	99
	db	97
	db	108
	db	101
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4937
	dw	0
	dw	1223
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4940
	dw	0
	dw	1224
	dw	0
	dw	0
	dw	0
?patch475	equ	@828-@@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale+4
?patch476	equ	0
?patch477	equ	@828-@@std@%numpunct$c%@_Getcat$qppx16std@locale@facetpx10std@locale
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLUGB$@std@%allocator$c%@$bctr$qv	segment virtual
	align	2
@@_$TLUGB$@std@%allocator$c%@$bctr$qv	label	dword
	dd	0
@_$TLUGB$@std@%allocator$c%@$bctr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTVGB$@std@%allocator$c%@$bctr$qv	segment virtual
	align	2
@@_$ECTVGB$@std@%allocator$c%@$bctr$qv	label	dword
	dd	@@_$TLUGB$@std@%allocator$c%@$bctr$qv
	dd	0
	dd	-36
@_$ECTVGB$@std@%allocator$c%@$bctr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%allocator$c%@$bctr$qv	segment virtual
@@std@%allocator$c%@$bctr$qv	proc	near
?live16639@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xmemory"
 ;	
 ;	
 ;	
	?debug L 108
	push      ebp
	mov       ebp,esp
	add       esp,-36
@829:
	mov       eax,offset @@_$ECTVGB$@std@%allocator$c%@$bctr$qv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 110
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
	mov       eax,dword ptr [ebp+8]
	?debug L 110
@831:
@830:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%allocator$c%@$bctr$qv	endp
@std@%allocator$c%@$bctr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch478
	dd	?patch479
	dd	?patch480
	df	@@std@%allocator$c%@$bctr$qv
	dw	0
	dw	6096
	dw	0
	dw	1225
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4312
	dw	0
	dw	1226
	dw	0
	dw	0
	dw	0
?patch478	equ	@831-@@std@%allocator$c%@$bctr$qv+4
?patch479	equ	0
?patch480	equ	@831-@@std@%allocator$c%@$bctr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv	proc	near
?live16644@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 1715
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1717
@832:
	mov       eax,dword ptr [ebp+12]
	add       eax,8
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%allocator$c%@$bctr$qrx17std@%allocator$c%
	add       esp,8
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1718
@834:
@833:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	126
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch481
	dd	?patch482
	dd	?patch483
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv
	dw	0
	dw	6098
	dw	0
	dw	1227
	dw	0
	dw	0
	dw	0
	db	79
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	103
	db	101
	db	116
	db	95
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4311
	dw	0
	dw	1228
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4622
	dw	0
	dw	1229
	dw	0
	dw	0
	dw	0
?patch481	equ	@834-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv+2
?patch482	equ	0
?patch483	equ	@834-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator$xqv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$TLWGB$@std@$bneq$qrx17std@%allocator$c%t1$o	segment virtual
	align	2
@@_$TLWGB$@std@$bneq$qrx17std@%allocator$c%t1$o	label	dword
	dd	0
@_$TLWGB$@std@$bneq$qrx17std@%allocator$c%t1$o	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTXGB$@std@$bneq$qrx17std@%allocator$c%t1$o	segment virtual
	align	2
@@_$ECTXGB$@std@$bneq$qrx17std@%allocator$c%t1$o	label	dword
	dd	@@_$TLWGB$@std@$bneq$qrx17std@%allocator$c%t1$o
	dd	0
	dd	-36
@_$ECTXGB$@std@$bneq$qrx17std@%allocator$c%t1$o	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@$bneq$qrx17std@%allocator$c%t1$o	segment virtual
@@std@$bneq$qrx17std@%allocator$c%t1$o	proc	near
?live16645@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xmemory"
 ;	
 ;	
 ;	
	?debug L 169
	push      ebp
	mov       ebp,esp
	add       esp,-36
@835:
	mov       eax,offset @@_$ECTXGB$@std@$bneq$qrx17std@%allocator$c%t1$o
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 171
	xor       eax,eax
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 172
@837:
@836:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@$bneq$qrx17std@%allocator$c%t1$o	endp
@std@$bneq$qrx17std@%allocator$c%t1$o	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	84
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch484
	dd	?patch485
	dd	?patch486
	df	@@std@$bneq$qrx17std@%allocator$c%t1$o
	dw	0
	dw	6100
	dw	0
	dw	1230
	dw	0
	dw	0
	dw	0
	db	37
	db	64
	db	115
	db	116
	db	100
	db	64
	db	36
	db	98
	db	110
	db	101
	db	113
	db	36
	db	113
	db	114
	db	120
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	116
	db	49
	db	36
	db	111
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4315
	dw	0
	dw	1231
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4315
	dw	0
	dw	1232
	dw	0
	dw	0
	dw	0
?patch484	equ	@837-@@std@$bneq$qrx17std@%allocator$c%t1$o+4
?patch485	equ	0
?patch486	equ	@837-@@std@$bneq$qrx17std@%allocator$c%t1$o
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	proc	near
?live16646@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 629
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 631
@838:
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 632
@840:
@839:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	180
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch487
	dd	?patch488
	dd	?patch489
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dw	0
	dw	6102
	dw	0
	dw	1233
	dw	0
	dw	0
	dw	0
	db	133
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	97
	db	115
	db	103
	db	36
	db	113
	db	114
	db	120
	db	54
	db	48
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1234
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4283
	dw	0
	dw	1235
	dw	0
	dw	0
	dw	0
?patch487	equ	@840-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%+2
?patch488	equ	0
?patch489	equ	@840-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv	segment virtual
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv	proc	near
?live16649@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\streambuf"
 ;	
 ;	
 ;	
	?debug L 752
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 754
@841:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 755
@843:
@842:
	pop       ebp
	ret 
	?debug L 0
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv	endp
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	105
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch490
	dd	?patch491
	dd	?patch492
	df	@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv
	dw	0
	dw	6104
	dw	0
	dw	1236
	dw	0
	dw	0
	dw	0
	db	58
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	105
	db	110
	db	99
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5790
	dw	0
	dw	1237
	dw	0
	dw	0
	dw	0
?patch490	equ	@843-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv+2
?patch491	equ	0
?patch492	equ	@843-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv	segment virtual
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv	proc	near
?live16650@0:
 ;	
 ;	
 ;	
	?debug L 747
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 749
@844:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 750
@846:
@845:
	pop       ebp
	ret 
	?debug L 0
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv	endp
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	105
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch493
	dd	?patch494
	dd	?patch495
	df	@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv
	dw	0
	dw	6107
	dw	0
	dw	1238
	dw	0
	dw	0
	dw	0
	db	58
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	105
	db	110
	db	100
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5790
	dw	0
	dw	1239
	dw	0
	dw	0
	dw	0
?patch493	equ	@846-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv+2
?patch494	equ	0
?patch495	equ	@846-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc	segment virtual
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc	proc	near
?live16651@0:
 ;	
 ;	
 ;	
	?debug L 738
	push      ebp
	mov       ebp,esp
	add       esp,-8
 ;	
 ;	
 ;	
	?debug L 740
@847:
	mov       eax,dword ptr [ebp+8]
	cmp       dword ptr [eax+12],0
	je        short @849
	mov       dl,byte ptr [ebp+12]
	push      edx
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx+12]
	call      @@std@%basic_streambuf$c19std@%char_traits$c%%@sputc$qc
	add       esp,8
	mov       dword ptr [ebp-8],eax
	lea       eax,dword ptr [ebp-8]
	push      eax
	call      @@std@%char_traits$c%@eof$qv
	mov       dword ptr [ebp-4],eax
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@std@%char_traits$c%@eq_int_type$qrxit1
	add       esp,8
	test      al,al
	je        short @848
 ;	
 ;	
 ;	
	?debug L 743
@849:
	mov       ecx,dword ptr [ebp+8]
	mov       byte ptr [ecx+8],1
 ;	
 ;	
 ;	
	?debug L 744
@848:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 745
@851:
@850:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc	endp
@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	105
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch496
	dd	?patch497
	dd	?patch498
	df	@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc
	dw	0
	dw	6109
	dw	0
	dw	1240
	dw	0
	dw	0
	dw	0
	db	58
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	97
	db	115
	db	103
	db	36
	db	113
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5790
	dw	0
	dw	1241
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	112
	dw	0
	dw	1242
	dw	0
	dw	0
	dw	0
?patch496	equ	@851-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc+4
?patch497	equ	0
?patch498	equ	@851-@@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCYGB$@std@%numpunct$c%@grouping$xqv	segment virtual
	align	2
@@_$DCYGB$@std@%numpunct$c%@grouping$xqv	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	20
	dd	8
	dd	0
@_$DCYGB$@std@%numpunct$c%@grouping$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTZGB$@std@%numpunct$c%@grouping$xqv	segment virtual
	align	2
@@_$ECTZGB$@std@%numpunct$c%@grouping$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCYGB$@std@%numpunct$c%@grouping$xqv
@_$ECTZGB$@std@%numpunct$c%@grouping$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@grouping$xqv	segment virtual
@@std@%numpunct$c%@grouping$xqv	proc	near
?live16652@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 80
	push      ebp
	mov       ebp,esp
	add       esp,-36
@852:
	mov       eax,offset @@_$ECTZGB$@std@%numpunct$c%@grouping$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 82
	mov       word ptr [ebp-20],12
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	mov       edx,dword ptr [ebp+12]
	mov       ecx,dword ptr [edx]
	call      dword ptr [ecx+12]
	add       esp,8
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [ebp-8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 83
@854:
@853:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@grouping$xqv	endp
@std@%numpunct$c%@grouping$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	77
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch499
	dd	?patch500
	dd	?patch501
	df	@@std@%numpunct$c%@grouping$xqv
	dw	0
	dw	6111
	dw	0
	dw	1243
	dw	0
	dw	0
	dw	0
	db	30
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	103
	db	114
	db	111
	db	117
	db	112
	db	105
	db	110
	db	103
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4442
	dw	0
	dw	1244
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5975
	dw	0
	dw	1245
	dw	0
	dw	0
	dw	0
?patch499	equ	@854-@@std@%numpunct$c%@grouping$xqv+4
?patch500	equ	0
?patch501	equ	@854-@@std@%numpunct$c%@grouping$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui	proc	near
?live16653@0:
 ;	
 ;	
 ;	
	?debug L 1544
	push      ebp
	mov       ebp,esp
	push      ebx
 ;	
 ;	
 ;	
	?debug L 1547
@855:
	cmp       dword ptr [ebp+36],0
	jbe       short @857
 ;	
 ;	
 ;	
	?debug L 1548
@856:
	mov       eax,dword ptr [ebp+12]
	add       eax,8
	push      eax
	push      0
	mov       edx,dword ptr [ebp+32]
	mov       cl,byte ptr [edx]
	push      ecx
	call      @@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c
	add       esp,12
	push      eax
	lea       eax,dword ptr [ebp+16]
	push      eax
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv
	pop       ecx
	push      eax
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc
	add       esp,8
	?debug L 1547
	dec       dword ptr [ebp+36]
	lea       edx,dword ptr [ebp+16]
	push      edx
	call      @@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv
	pop       ecx
	inc       dword ptr [ebp+32]
	cmp       dword ptr [ebp+36],0
	ja        short @856
 ;	
 ;	
 ;	
	?debug L 1549
@857:
	mov       ecx,dword ptr [ebp+8]
	mov       ebx,dword ptr [ebp+16]
	mov       dword ptr [ecx],ebx
	mov       ebx,dword ptr [ebp+20]
	mov       dword ptr [ecx+4],ebx
	mov       eax,dword ptr [ebp+8]
	mov       dl,byte ptr [ebp+24]
	mov       byte ptr [eax+8],dl
	mov       ecx,dword ptr [ebp+8]
	mov       ebx,dword ptr [ebp+28]
	mov       dword ptr [ecx+12],ebx
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1550
@860:
@859:
	pop       ebx
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	177
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch502
	dd	?patch503
	dd	?patch504
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	dw	0
	dw	6113
	dw	0
	dw	1246
	dw	0
	dw	0
	dw	0
	db	130
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	80
	db	117
	db	116
	db	99
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	112
	db	120
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1247
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1248
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1249
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4267
	dw	0
	dw	1250
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	117
	dw	0
	dw	1251
	dw	0
	dw	0
	dw	0
?patch502	equ	@860-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui+3
?patch503	equ	0
?patch504	equ	@860-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65532
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@thousands_sep$xqv	segment virtual
@@std@%numpunct$c%@thousands_sep$xqv	proc	near
?live16654@0:
 ;	
 ;	
 ;	
	?debug L 75
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 77
@861:
	mov       eax,dword ptr [ebp+8]
	push      eax
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+8]
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 78
@863:
@862:
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@thousands_sep$xqv	endp
@std@%numpunct$c%@thousands_sep$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	82
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch505
	dd	?patch506
	dd	?patch507
	df	@@std@%numpunct$c%@thousands_sep$xqv
	dw	0
	dw	6115
	dw	0
	dw	1252
	dw	0
	dw	0
	dw	0
	db	35
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	116
	db	104
	db	111
	db	117
	db	115
	db	97
	db	110
	db	100
	db	115
	db	95
	db	115
	db	101
	db	112
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5975
	dw	0
	dw	1253
	dw	0
	dw	0
	dw	0
?patch505	equ	@863-@@std@%numpunct$c%@thousands_sep$xqv+2
?patch506	equ	0
?patch507	equ	@863-@@std@%numpunct$c%@thousands_sep$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic	segment virtual
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic	proc	near
?live16655@0:
 ;	
 ;	
 ;	
	?debug L 1552
	push      ebp
	mov       ebp,esp
	add       esp,-40
	push      ebx
 ;	
 ;	
 ;	
	?debug L 1558
@864:
@865:
@866:
	push      dword ptr [ebp+36]
	push      0
	push      dword ptr [ebp+32]
	call      @@std@memchr$qpxviui
	add       esp,12
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 1559
	cmp       dword ptr [ebp-4],0
	je        short @867
	mov       eax,dword ptr [ebp-4]
	sub       eax,dword ptr [ebp+32]
	jmp short @868
@867:
	mov       eax,dword ptr [ebp+36]
@868:
	mov       dword ptr [ebp-8],eax
 ;	
 ;	
 ;	
	?debug L 1561
	push      dword ptr [ebp-8]
	push      dword ptr [ebp+32]
	add       esp,-16
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [esp],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],edx
	mov       cl,byte ptr [ebp+24]
	mov       byte ptr [esp+8],cl
	mov       eax,dword ptr [ebp+28]
	mov       dword ptr [esp+12],eax
	push      dword ptr [ebp+12]
	lea       edx,dword ptr [ebp-24]
	push      edx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcui
	add       esp,32
	mov       ecx,dword ptr [ebp-24]
	mov       dword ptr [ebp+16],ecx
	mov       ecx,dword ptr [ebp-20]
	mov       dword ptr [ebp+20],ecx
	mov       al,byte ptr [ebp-16]
	mov       byte ptr [ebp+24],al
	mov       edx,dword ptr [ebp-12]
	mov       dword ptr [ebp+28],edx
 ;	
 ;	
 ;	
	?debug L 1562
	mov       ecx,dword ptr [ebp-8]
	add       dword ptr [ebp+32],ecx
	mov       eax,dword ptr [ebp-8]
	sub       dword ptr [ebp+36],eax
 ;	
 ;	
 ;	
	?debug L 1563
	cmp       dword ptr [ebp+36],0
	je        short @870
 ;	
 ;	
 ;	
	?debug L 1564
 ;	
 ;	
 ;	
	?debug L 1565
	cmp       byte ptr [ebp+40],0
	je        short @871
 ;	
 ;	
 ;	
	?debug L 1566
	push      1
	mov       dl,byte ptr [ebp+40]
	push      edx
	add       esp,-16
	mov       ecx,dword ptr [ebp+16]
	mov       dword ptr [esp],ecx
	mov       ecx,dword ptr [ebp+20]
	mov       dword ptr [esp+4],ecx
	mov       al,byte ptr [ebp+24]
	mov       byte ptr [esp+8],al
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [esp+12],edx
	push      dword ptr [ebp+12]
	lea       ecx,dword ptr [ebp-40]
	push      ecx
	call      @@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%cui
	add       esp,32
	mov       eax,dword ptr [ebp-40]
	mov       dword ptr [ebp+16],eax
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr [ebp+20],eax
	mov       dl,byte ptr [ebp-32]
	mov       byte ptr [ebp+24],dl
	mov       ecx,dword ptr [ebp-28]
	mov       dword ptr [ebp+28],ecx
	?debug L 1555
@871:
@872:
	inc       dword ptr [ebp+32]
	dec       dword ptr [ebp+36]
	jmp @865
 ;	
 ;	
 ;	
	?debug L 1568
@870:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp+16]
	mov       dword ptr [eax],edx
	mov       edx,dword ptr [ebp+20]
	mov       dword ptr [eax+4],edx
	mov       ecx,dword ptr [ebp+8]
	mov       bl,byte ptr [ebp+24]
	mov       byte ptr [ecx+8],bl
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [ebp+28]
	mov       dword ptr [eax+12],edx
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 1569
@875:
@874:
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic	endp
@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	184
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch508
	dd	?patch509
	dd	?patch510
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic
	dw	0
	dw	6117
	dw	0
	dw	1254
	dw	0
	dw	0
	dw	0
	db	137
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	95
	db	112
	db	117
	db	116
	db	36
	db	99
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	37
	db	64
	db	95
	db	80
	db	117
	db	116
	db	103
	db	114
	db	111
	db	117
	db	112
	db	101
	db	100
	db	36
	db	120
	db	113
	db	52
	db	56
	db	115
	db	116
	db	100
	db	64
	db	37
	db	111
	db	115
	db	116
	db	114
	db	101
	db	97
	db	109
	db	98
	db	117
	db	102
	db	95
	db	105
	db	116
	db	101
	db	114
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	37
	db	112
	db	120
	db	99
	db	117
	db	105
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5789
	dw	0
	dw	1255
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5793
	dw	0
	dw	1256
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	5609
	dw	0
	dw	1257
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	32
	dw	0
	dw	4267
	dw	0
	dw	1258
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	36
	dw	0
	dw	117
	dw	0
	dw	1259
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	40
	dw	0
	dw	112
	dw	0
	dw	1260
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch511
	df	@866
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	117
	dw	0
	dw	1261
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4267
	dw	0
	dw	1262
	dw	0
	dw	0
	dw	0
?patch511	equ	@872-@866
	dw	2
	dw	6
?patch508	equ	@875-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic+5
?patch509	equ	0
?patch510	equ	@875-@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped$xq48std@%ostreambuf_iterator$c19std@%char_traits$c%%pxcuic
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65492
	dw	65535
?t35 = -68
?t34 = -68
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c	segment virtual
@@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c	proc	near
?live16658@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 418
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 421
@876:
	mov       al,byte ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 422
@878:
@877:
	pop       ebp
	ret 
	?debug L 0
@@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c	endp
@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	88
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch512
	dd	?patch513
	dd	?patch514
	df	@@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c
	dw	0
	dw	6119
	dw	0
	dw	1263
	dw	0
	dw	0
	dw	0
	db	41
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	77
	db	97
	db	107
	db	108
	db	111
	db	99
	db	99
	db	104
	db	114
	db	36
	db	99
	db	37
	db	36
	db	113
	db	99
	db	112
	db	99
	db	114
	db	120
	db	49
	db	49
	db	115
	db	116
	db	100
	db	64
	db	95
	db	67
	db	118
	db	116
	db	118
	db	101
	db	99
	db	36
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	112
	dw	0
	dw	1264
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1136
	dw	0
	dw	1265
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	6120
	dw	0
	dw	1266
	dw	0
	dw	0
	dw	0
?patch512	equ	@878-@@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c+2
?patch513	equ	0
?patch514	equ	@878-@@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@memchr$qpxviui	segment virtual
@@std@memchr$qpxviui	proc	near
?live16659@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cstring"
 ;	
 ;	
 ;	
	?debug L 28
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 30
@879:
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@memchr$qpviui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 31
@881:
@880:
	pop       ebp
	ret 
	?debug L 0
@@std@memchr$qpxviui	endp
@std@memchr$qpxviui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	66
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch515
	dd	?patch516
	dd	?patch517
	df	@@std@memchr$qpxviui
	dw	0
	dw	6123
	dw	0
	dw	1267
	dw	0
	dw	0
	dw	0
	db	19
	db	64
	db	115
	db	116
	db	100
	db	64
	db	109
	db	101
	db	109
	db	99
	db	104
	db	114
	db	36
	db	113
	db	112
	db	120
	db	118
	db	105
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4322
	dw	0
	dw	1268
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	1269
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	1270
	dw	0
	dw	0
	dw	0
?patch515	equ	@881-@@std@memchr$qpxviui+2
?patch516	equ	0
?patch517	equ	@881-@@std@memchr$qpxviui
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui	proc	near
?live16660@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 684
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 692
@882:
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc
	add       esp,8
	test      al,al
	je        short @883
 ;	
 ;	
 ;	
	?debug L 693
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	mov       edx,dword ptr [ebp+12]
	sub       edx,eax
	push      edx
	push      dword ptr [ebp+8]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui
	add       esp,16
@890:
	pop       ecx
	pop       ebp
	ret 
 ;	
 ;	
 ;	
	?debug L 694
@883:
	or        eax,-1
	mov       ecx,dword ptr [ebp+8]
	sub       eax,dword ptr [ecx+32]
	cmp       eax,dword ptr [ebp+16]
	ja        short @885
 ;	
 ;	
 ;	
	?debug L 695
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xlen$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 698
@885:
	cmp       dword ptr [ebp+16],0
	jbe       short @886
	push      0
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+32]
	add       edx,dword ptr [ebp+16]
	mov       dword ptr [ebp-4],edx
	push      edx
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio
	add       esp,12
	test      al,al
	je        short @886
 ;	
 ;	
 ;	
	?debug L 700
@887:
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	mov       ecx,dword ptr [ebp+8]
	add       eax,dword ptr [ecx+32]
	push      eax
	call      @@std@%char_traits$c%@copy$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 701
	push      dword ptr [ebp-4]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 703
@888:
@886:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 704
@889:
@884:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	122
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch518
	dd	?patch519
	dd	?patch520
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui
	dw	0
	dw	6125
	dw	0
	dw	1271
	dw	0
	dw	0
	dw	0
	db	75
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	97
	db	112
	db	112
	db	101
	db	110
	db	100
	db	36
	db	113
	db	112
	db	120
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1272
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	1273
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	1274
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	1275
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch521
	df	@887
	dw	0
	dw	0
?patch521	equ	@888-@887
	dw	2
	dw	6
	dw	8
	dw	530
	dd	@890-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui
	dw	3
?patch518	equ	@889-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui+3
?patch519	equ	0
?patch520	equ	@889-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qpxcui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic	proc	near
?live16661@0:
 ;	
 ;	
 ;	
	?debug L 712
	push      ebp
	mov       ebp,esp
	push      ecx
 ;	
 ;	
 ;	
	?debug L 714
@891:
	or        eax,-1
	mov       edx,dword ptr [ebp+8]
	sub       eax,dword ptr [edx+32]
	cmp       eax,dword ptr [ebp+12]
	ja        short @892
 ;	
 ;	
 ;	
	?debug L 715
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xlen$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 718
@892:
	cmp       dword ptr [ebp+12],0
	jbe       short @893
	push      0
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+32]
	add       eax,dword ptr [ebp+12]
	mov       dword ptr [ebp-4],eax
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio
	add       esp,12
	test      al,al
	je        short @893
 ;	
 ;	
 ;	
	?debug L 720
@894:
	mov       dl,byte ptr [ebp+16]
	push      edx
	push      dword ptr [ebp+12]
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx+32]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic
	add       esp,16
 ;	
 ;	
 ;	
	?debug L 721
	push      dword ptr [ebp-4]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 723
@895:
@893:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 724
@897:
@896:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	120
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch522
	dd	?patch523
	dd	?patch524
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic
	dw	0
	dw	6127
	dw	0
	dw	1276
	dw	0
	dw	0
	dw	0
	db	73
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	97
	db	112
	db	112
	db	101
	db	110
	db	100
	db	36
	db	113
	db	117
	db	105
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1277
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	1278
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	112
	dw	0
	dw	1279
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	1280
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch525
	df	@894
	dw	0
	dw	0
?patch525	equ	@895-@894
	dw	2
	dw	6
?patch522	equ	@897-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic+3
?patch523	equ	0
?patch524	equ	@897-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$quic
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic	proc	near
?live16662@0:
 ;	
 ;	
 ;	
	?debug L 919
	push      ebp
	mov       ebp,esp
	push      ecx
	push      ebx
 ;	
 ;	
 ;	
	?debug L 922
@898:
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+32]
	cmp       edx,dword ptr [ebp+12]
	jae       short @899
 ;	
 ;	
 ;	
	?debug L 923
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xran$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 924
@899:
	or        ecx,-1
	mov       ebx,dword ptr [ebp+8]
	sub       ecx,dword ptr [ebx+32]
	cmp       ecx,dword ptr [ebp+16]
	ja        short @900
 ;	
 ;	
 ;	
	?debug L 925
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xlen$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 927
@900:
	cmp       dword ptr [ebp+16],0
	jbe       short @901
	push      0
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+32]
	add       edx,dword ptr [ebp+16]
	mov       dword ptr [ebp-4],edx
	push      edx
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio
	add       esp,12
	test      al,al
	je        short @901
 ;	
 ;	
 ;	
	?debug L 929
@902:
	mov       eax,dword ptr [ebp+8]
	mov       ecx,dword ptr [eax+32]
	sub       ecx,dword ptr [ebp+12]
	push      ecx
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	add       eax,dword ptr [ebp+12]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	add       eax,dword ptr [ebp+12]
	add       eax,dword ptr [ebp+16]
	push      eax
	call      @@std@%char_traits$c%@move$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 931
	mov       al,byte ptr [ebp+20]
	push      eax
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic
	add       esp,16
 ;	
 ;	
 ;	
	?debug L 932
	push      dword ptr [ebp-4]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 934
@903:
@901:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 935
@905:
@904:
	pop       ebx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	122
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch526
	dd	?patch527
	dd	?patch528
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic
	dw	0
	dw	6129
	dw	0
	dw	1281
	dw	0
	dw	0
	dw	0
	db	75
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	105
	db	110
	db	115
	db	101
	db	114
	db	116
	db	36
	db	113
	db	117
	db	105
	db	117
	db	105
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1282
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	1283
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	1284
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	112
	dw	0
	dw	1285
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	1286
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch529
	df	@902
	dw	0
	dw	0
?patch529	equ	@903-@902
	dw	2
	dw	6
?patch526	equ	@905-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic+4
?patch527	equ	0
?patch528	equ	@905-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert$quiuic
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65528
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui	proc	near
?live16663@0:
 ;	
 ;	
 ;	
	?debug L 1289
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1297
@906:
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	add       eax,dword ptr [ebp+12]
 ;	
 ;	
 ;	
	?debug L 1298
@908:
@907:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	119
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch530
	dd	?patch531
	dd	?patch532
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui
	dw	0
	dw	6131
	dw	0
	dw	1287
	dw	0
	dw	0
	dw	0
	db	72
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	115
	db	117
	db	98
	db	115
	db	36
	db	113
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1288
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	1289
	dw	0
	dw	0
	dw	0
?patch530	equ	@908-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui+2
?patch531	equ	0
?patch532	equ	@908-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@decimal_point$xqv	segment virtual
@@std@%numpunct$c%@decimal_point$xqv	proc	near
?live16664@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 70
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 72
@909:
	mov       eax,dword ptr [ebp+8]
	push      eax
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+4]
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 73
@911:
@910:
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@decimal_point$xqv	endp
@std@%numpunct$c%@decimal_point$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	82
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch533
	dd	?patch534
	dd	?patch535
	df	@@std@%numpunct$c%@decimal_point$xqv
	dw	0
	dw	6133
	dw	0
	dw	1290
	dw	0
	dw	0
	dw	0
	db	35
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	100
	db	101
	db	99
	db	105
	db	109
	db	97
	db	108
	db	95
	db	112
	db	111
	db	105
	db	110
	db	116
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5975
	dw	0
	dw	1291
	dw	0
	dw	0
	dw	0
?patch533	equ	@911-@@std@%numpunct$c%@decimal_point$xqv+2
?patch534	equ	0
?patch535	equ	@911-@@std@%numpunct$c%@decimal_point$xqv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCAHB$@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	segment virtual
	align	2
@@_$DCAHB$@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	label	dword
	dd	@@$xt$p16std@%numpunct$c%
	dd	5
	dd	8
	dd	0
@_$DCAHB$@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTBHB$@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	segment virtual
	align	2
@@_$ECTBHB$@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCAHB$@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui
@_$ECTBHB$@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	segment virtual
@@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	proc	near
?live16667@0:
 ;	
 ;	
 ;	
	?debug L 106
	push      ebp
	mov       ebp,esp
	add       esp,-36
@912:
	mov       eax,offset @@_$ECTBHB$@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 107
	mov       word ptr [ebp-20],12
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@locale@facet@$bctr$qui
	add       esp,8
	inc       dword ptr [ebp-8]
	mov       edx,offset @@std@%numpunct$c%@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 109
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%numpunct$c%@_Init$qrx12std@_Locinfo
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 110
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp+8]
	?debug L 110
@914:
@913:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	endp
@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	90
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch536
	dd	?patch537
	dd	?patch538
	df	@@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui
	dw	0
	dw	6135
	dw	0
	dw	1292
	dw	0
	dw	0
	dw	0
	db	43
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	114
	db	120
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5987
	dw	0
	dw	1293
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4982
	dw	0
	dw	1294
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	1295
	dw	0
	dw	0
	dw	0
?patch536	equ	@914-@@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui+4
?patch537	equ	0
?patch538	equ	@914-@@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	proc	near
?live16675@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 759
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 761
@915:
	push      -1
	push      0
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui
	add       esp,16
 ;	
 ;	
 ;	
	?debug L 762
@917:
@916:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	181
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch539
	dd	?patch540
	dd	?patch541
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dw	0
	dw	6137
	dw	0
	dw	1296
	dw	0
	dw	0
	dw	0
	db	134
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	97
	db	115
	db	115
	db	105
	db	103
	db	110
	db	36
	db	113
	db	114
	db	120
	db	54
	db	48
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1297
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4283
	dw	0
	dw	1298
	dw	0
	dw	0
	dw	0
?patch539	equ	@917-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%+2
?patch540	equ	0
?patch541	equ	@917-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@memchr$qpviui	segment virtual
@@std@memchr$qpviui	proc	near
?live16678@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cstring"
 ;	
 ;	
 ;	
	?debug L 17
	push      ebp
	mov       ebp,esp
	add       esp,-8
 ;	
 ;	
 ;	
	?debug L 19
@918:
	mov       al,byte ptr [ebp+12]
	mov       byte ptr [ebp-1],al
 ;	
 ;	
 ;	
	?debug L 20
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [ebp-8],edx
 ;	
 ;	
 ;	
	?debug L 22
	cmp       dword ptr [ebp+16],0
	jbe       short @920
 ;	
 ;	
 ;	
	?debug L 23
@919:
	mov       ecx,dword ptr [ebp-8]
	mov       al,byte ptr [ecx]
	cmp       al,byte ptr [ebp-1]
	jne       short @921
 ;	
 ;	
 ;	
	?debug L 24
	mov       eax,dword ptr [ebp-8]
	jmp short @922
	?debug L 22
@921:
	inc       dword ptr [ebp-8]
	dec       dword ptr [ebp+16]
	cmp       dword ptr [ebp+16],0
	ja        short @919
 ;	
 ;	
 ;	
	?debug L 25
@920:
	xor       eax,eax
 ;	
 ;	
 ;	
	?debug L 26
@924:
@922:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@memchr$qpviui	endp
@std@memchr$qpviui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	65
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch542
	dd	?patch543
	dd	?patch544
	df	@@std@memchr$qpviui
	dw	0
	dw	6139
	dw	0
	dw	1299
	dw	0
	dw	0
	dw	0
	db	18
	db	64
	db	115
	db	116
	db	100
	db	64
	db	109
	db	101
	db	109
	db	99
	db	104
	db	114
	db	36
	db	113
	db	112
	db	118
	db	105
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	1027
	dw	0
	dw	1300
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	1301
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	1302
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	6141
	dw	0
	dw	1303
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65535
	dw	65535
	dw	6142
	dw	0
	dw	1304
	dw	0
	dw	0
	dw	0
?patch542	equ	@924-@@std@memchr$qpviui+4
?patch543	equ	0
?patch544	equ	@924-@@std@memchr$qpviui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc	proc	near
?live16679@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 1791
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1793
@925:
	cmp       dword ptr [ebp+12],0
	je        short @927
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	cmp       eax,dword ptr [ebp+12]
	ja        short @927
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	mov       edx,dword ptr [ebp+8]
	add       eax,dword ptr [edx+32]
	cmp       eax,dword ptr [ebp+12]
	ja        short @926
 ;	
 ;	
 ;	
	?debug L 1794
@927:
	xor       eax,eax
@931:
	pop       ebp
	ret 
 ;	
 ;	
 ;	
	?debug L 1796
@926:
	mov       al,1
 ;	
 ;	
 ;	
	?debug L 1797
@930:
@928:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	121
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch545
	dd	?patch546
	dd	?patch547
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc
	dw	0
	dw	6143
	dw	0
	dw	1305
	dw	0
	dw	0
	dw	0
	db	74
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	73
	db	110
	db	115
	db	105
	db	100
	db	101
	db	36
	db	113
	db	112
	db	120
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1306
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	1307
	dw	0
	dw	0
	dw	0
	dw	8
	dw	530
	dd	@931-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc
	dw	2
?patch545	equ	@930-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc+2
?patch546	equ	0
?patch547	equ	@930-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui	proc	near
?live16680@0:
 ;	
 ;	
 ;	
	?debug L 664
	push      ebp
	mov       ebp,esp
	push      ecx
	push      ebx
 ;	
 ;	
 ;	
	?debug L 667
@932:
	push      dword ptr [ebp+12]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	pop       ecx
	cmp       eax,dword ptr [ebp+16]
	jae       short @933
 ;	
 ;	
 ;	
	?debug L 668
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xran$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 669
@933:
	push      dword ptr [ebp+12]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size$xqv
	pop       ecx
	sub       eax,dword ptr [ebp+16]
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 670
	mov       eax,dword ptr [ebp-4]
	cmp       eax,dword ptr [ebp+20]
	jae       short @934
 ;	
 ;	
 ;	
	?debug L 671
	mov       edx,dword ptr [ebp-4]
	mov       dword ptr [ebp+20],edx
 ;	
 ;	
 ;	
	?debug L 672
@934:
	or        ecx,-1
	mov       ebx,dword ptr [ebp+8]
	sub       ecx,dword ptr [ebx+32]
	cmp       ecx,dword ptr [ebp+20]
	ja        short @935
 ;	
 ;	
 ;	
	?debug L 673
	push      dword ptr [ebp+8]
	call      @@std@_String_base@_Xlen$xqv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 675
@935:
	cmp       dword ptr [ebp+20],0
	jbe       short @936
	push      0
	mov       eax,dword ptr [ebp+8]
	mov       edx,dword ptr [eax+32]
	add       edx,dword ptr [ebp+20]
	mov       dword ptr [ebp-4],edx
	push      edx
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio
	add       esp,12
	test      al,al
	je        short @936
 ;	
 ;	
 ;	
	?debug L 677
@937:
	push      dword ptr [ebp+20]
	push      dword ptr [ebp+12]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$xqv
	pop       ecx
	add       eax,dword ptr [ebp+16]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	mov       ecx,dword ptr [ebp+8]
	add       eax,dword ptr [ecx+32]
	push      eax
	call      @@std@%char_traits$c%@copy$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 679
	push      dword ptr [ebp-4]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 681
@938:
@936:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 682
@940:
@939:
	pop       ebx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	185
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch548
	dd	?patch549
	dd	?patch550
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui
	dw	0
	dw	6145
	dw	0
	dw	1308
	dw	0
	dw	0
	dw	0
	db	138
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	97
	db	112
	db	112
	db	101
	db	110
	db	100
	db	36
	db	113
	db	114
	db	120
	db	54
	db	48
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	117
	db	105
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1309
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4283
	dw	0
	dw	1310
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	1311
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	117
	dw	0
	dw	1312
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	1313
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch551
	df	@937
	dw	0
	dw	0
?patch551	equ	@938-@937
	dw	2
	dw	6
?patch548	equ	@940-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui+4
?patch549	equ	0
?patch550	equ	@940-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui
	dw	2
	dw	6
	dw	8
	dw	531
	dw	1
	dw	65528
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic	proc	near
?live16681@0:
 ;	
 ;	
 ;	
	?debug L 1733
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 1735
@941:
	cmp       dword ptr [ebp+16],1
	jne       short @942
 ;	
 ;	
 ;	
	?debug L 1736
	lea       eax,dword ptr [ebp+20]
	push      eax
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	add       eax,dword ptr [ebp+12]
	push      eax
	call      @@std@%char_traits$c%@assign$qrcrxc
	add       esp,8
@945:
	pop       ebp
	ret 
 ;	
 ;	
 ;	
	?debug L 1738
@942:
	mov       dl,byte ptr [ebp+20]
	push      edx
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	add       eax,dword ptr [ebp+12]
	push      eax
	call      @@std@%char_traits$c%@assign$qpcuic
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 1739
@943:
@944:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	125
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch552
	dd	?patch553
	dd	?patch554
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic
	dw	0
	dw	6147
	dw	0
	dw	1314
	dw	0
	dw	0
	dw	0
	db	78
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	95
	db	67
	db	104
	db	97
	db	115
	db	115
	db	105
	db	103
	db	110
	db	36
	db	113
	db	117
	db	105
	db	117
	db	105
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1315
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	1316
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	1317
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	112
	dw	0
	dw	1318
	dw	0
	dw	0
	dw	0
	dw	8
	dw	530
	dd	@945-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic
	dw	2
?patch552	equ	@944-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic+2
?patch553	equ	0
?patch554	equ	@944-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign$quiuic
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$CHCHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	segment virtual
	align	2
@@_$CHCHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	label	dword
	dd	0
	dd	0
	dd	@946
	dd	0
	dd	0
	dd	0
	dd	0
	dd	0
@_$CHCHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$DCDHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	segment virtual
	align	2
@@_$DCDHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	label	dword
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
	dd	@@$xt$11std@_Lockit
	dd	4
	dd	-4
	dd	0
@_$DCDHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTEHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	segment virtual
	align	2
@@_$ECTEHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	label	dword
	dd	0
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCDHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo+16
	dw	0
	dw	5
	dd	0
	dd	@@_$DCDHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo
	dw	24
	dw	3
	dd	@@_$CHCHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo
	dw	24
	dw	4
	dw	36
	dw	5
	dd	0
	dd	0
@_$ECTEHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@_Init$qrx12std@_Locinfo	segment virtual
@@std@%numpunct$c%@_Init$qrx12std@_Locinfo	proc	near
?live16682@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 128
	push      ebp
	mov       ebp,esp
	add       esp,-84
	push      ebx
	push      esi
	push      edi
@947:
	mov       eax,offset @@_$ECTEHB$@std@%numpunct$c%@_Init$qrx12std@_Locinfo
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 130
	mov       word ptr [ebp-24],12
	push      0
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@std@_Lockit@$bctr$qi
	add       esp,8
	inc       dword ptr [ebp-12]
	mov       word ptr [ebp-24],24
 ;	
 ;	
 ;	
	?debug L 131
	push      dword ptr [ebp+12]
	call      @@std@_Locinfo@_Getlconv$xqv
	pop       ecx
	mov       dword ptr [ebp-44],eax
 ;	
 ;	
 ;	
	?debug L 133
	mov       ecx,dword ptr [ebp+8]
	xor       ebx,ebx
	mov       dword ptr [ecx+8],ebx
 ;	
 ;	
 ;	
	?debug L 134
	mov       eax,dword ptr [ebp+8]
	xor       edx,edx
	mov       dword ptr [eax+16],edx
 ;	
 ;	
 ;	
	?debug L 135
	mov       ecx,dword ptr [ebp+8]
	xor       ebx,ebx
	mov       dword ptr [ecx+20],ebx
 ;	
 ;	
 ;	
	?debug L 137
	mov       word ptr [ebp-24],36
 ;	
 ;	
 ;	
	?debug L 138
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-52]
	push      eax
	call      @@std@_Locinfo@_Getcvt$xqv
	add       esp,8
	lea       edx,dword ptr [ebp-52]
	push      edx
	push      0
	mov       ecx,dword ptr [ebp-44]
	push      dword ptr [ecx+8]
	call      @@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc
	add       esp,12
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx+8],eax
 ;	
 ;	
 ;	
	?debug L 139
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-60]
	push      eax
	call      @@std@_Locinfo@_Getcvt$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-60]
	push      ecx
	push      0
	push      dword ptr [ebp+12]
	call      @@std@_Locinfo@_Getfalse$xqv
	pop       ecx
	push      eax
	call      @@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc
	add       esp,12
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx+16],eax
 ;	
 ;	
 ;	
	?debug L 140
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-68]
	push      eax
	call      @@std@_Locinfo@_Getcvt$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-68]
	push      ecx
	push      0
	push      dword ptr [ebp+12]
	call      @@std@_Locinfo@_Gettrue$xqv
	pop       ecx
	push      eax
	call      @@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc
	add       esp,12
	mov       edx,dword ptr [ebp+8]
	mov       dword ptr [edx+20],eax
 ;	
 ;	
 ;	
	?debug L 141
	mov       word ptr [ebp-24],24
	jmp short @948
 ;	
 ;	
 ;	
	?debug L 142
@949:
@946:
	push      dword ptr [ebp+8]
	call      @@std@%numpunct$c%@_Tidy$qv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 143
	push      0
	push      0
	call      @_ReThrowException$quipuc
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 144
@950:
	mov       word ptr [ebp-24],44
	call      @@_CatchCleanup$qv
 ;	
 ;	
 ;	
	?debug L 146
@948:
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-76]
	push      eax
	call      @@std@_Locinfo@_Getcvt$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-76]
	push      ecx
	push      0
	mov       eax,dword ptr [ebp-44]
	mov       edx,dword ptr [eax]
	mov       cl,byte ptr [edx]
	push      ecx
	call      @@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c
	add       esp,12
	mov       edx,dword ptr [ebp+8]
	mov       byte ptr [edx+12],al
 ;	
 ;	
 ;	
	?debug L 147
	push      dword ptr [ebp+12]
	lea       eax,dword ptr [ebp-84]
	push      eax
	call      @@std@_Locinfo@_Getcvt$xqv
	add       esp,8
	lea       ecx,dword ptr [ebp-84]
	push      ecx
	push      0
	mov       eax,dword ptr [ebp-44]
	mov       edx,dword ptr [eax+4]
	mov       cl,byte ptr [edx]
	push      ecx
	call      @@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c
	add       esp,12
	mov       edx,dword ptr [ebp+8]
	mov       byte ptr [edx+13],al
 ;	
 ;	
 ;	
	?debug L 159
	dec       dword ptr [ebp-12]
	push      2
	lea       eax,dword ptr [ebp-4]
	push      eax
	call      @@std@_Lockit@$bdtr$qv
	add       esp,8
	mov       ecx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],ecx
	?debug L 159
@951:
	pop       edi
	pop       esi
	pop       ebx
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@_Init$qrx12std@_Locinfo	endp
@std@%numpunct$c%@_Init$qrx12std@_Locinfo	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	88
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch555
	dd	?patch556
	dd	?patch557
	df	@@std@%numpunct$c%@_Init$qrx12std@_Locinfo
	dw	0
	dw	6149
	dw	0
	dw	1319
	dw	0
	dw	0
	dw	0
	db	41
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	95
	db	73
	db	110
	db	105
	db	116
	db	36
	db	113
	db	114
	db	120
	db	49
	db	50
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5987
	dw	0
	dw	1320
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4982
	dw	0
	dw	1321
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65492
	dw	65535
	dw	5025
	dw	0
	dw	1322
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	5040
	dw	0
	dw	1323
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch558
	df	@949
	dw	0
	dw	0
?patch558	equ	@950-@949
	dw	2
	dw	6
?patch555	equ	@951-@@std@%numpunct$c%@_Init$qrx12std@_Locinfo+7
?patch556	equ	0
?patch557	equ	@951-@@std@%numpunct$c%@_Init$qrx12std@_Locinfo
	dw	2
	dw	6
	dw	8
	dw	531
	dw	7
	dw	65440
	dw	65535
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%char_traits$c%@assign$qpcuic	segment virtual
@@std@%char_traits$c%@assign$qpcuic	proc	near
?live16685@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd"
 ;	
 ;	
 ;	
	?debug L 537
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 540
@952:
	push      dword ptr [ebp+12]
	movsx     eax,byte ptr [ebp+16]
	push      eax
	push      dword ptr [ebp+8]
	call      @_memset
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 541
@954:
@953:
	pop       ebp
	ret 
	?debug L 0
@@std@%char_traits$c%@assign$qpcuic	endp
@std@%char_traits$c%@assign$qpcuic	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	81
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch559
	dd	?patch560
	dd	?patch561
	df	@@std@%char_traits$c%@assign$qpcuic
	dw	0
	dw	6151
	dw	0
	dw	1324
	dw	0
	dw	0
	dw	0
	db	34
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	64
	db	97
	db	115
	db	115
	db	105
	db	103
	db	110
	db	36
	db	113
	db	112
	db	99
	db	117
	db	105
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	1136
	dw	0
	dw	1325
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	117
	dw	0
	dw	1326
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	112
	dw	0
	dw	1327
	dw	0
	dw	0
	dw	0
?patch559	equ	@954-@@std@%char_traits$c%@assign$qpcuic+2
?patch560	equ	0
?patch561	equ	@954-@@std@%char_traits$c%@assign$qpcuic
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@_Locinfo@_Getlconv$xqv	segment virtual
@@std@_Locinfo@_Getlconv$xqv	proc	near
?live16686@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocinfo"
 ;	
 ;	
 ;	
	?debug L 70
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 72
@955:
	call      @_localeconv
 ;	
 ;	
 ;	
	?debug L 73
@957:
@956:
	pop       ebp
	ret 
	?debug L 0
@@std@_Locinfo@_Getlconv$xqv	endp
@std@_Locinfo@_Getlconv$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch562
	dd	?patch563
	dd	?patch564
	df	@@std@_Locinfo@_Getlconv$xqv
	dw	0
	dw	6153
	dw	0
	dw	1328
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	64
	db	95
	db	71
	db	101
	db	116
	db	108
	db	99
	db	111
	db	110
	db	118
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5016
	dw	0
	dw	1329
	dw	0
	dw	0
	dw	0
?patch562	equ	@957-@@std@_Locinfo@_Getlconv$xqv+2
?patch563	equ	0
?patch564	equ	@957-@@std@_Locinfo@_Getlconv$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc	segment virtual
@@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc	proc	near
?live16687@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale"
 ;	
 ;	
 ;	
	?debug L 439
	push      ebp
	mov       ebp,esp
	add       esp,-12
 ;	
 ;	
 ;	
	?debug L 442
@958:
	push      dword ptr [ebp+8]
	call      @_strlen
	pop       ecx
	inc       eax
	mov       dword ptr [ebp-4],eax
 ;	
 ;	
 ;	
	?debug L 443
	push      dword ptr [ebp-4]
	call      @$bnwa$qui
	pop       ecx
	mov       dword ptr [ebp-8],eax
 ;	
 ;	
 ;	
	?debug L 445
@959:
	mov       eax,dword ptr [ebp-8]
	mov       dword ptr [ebp-12],eax
	cmp       dword ptr [ebp-4],0
	jbe       short @961
 ;	
 ;	
 ;	
	?debug L 446
@960:
	mov       edx,dword ptr [ebp-12]
	mov       ecx,dword ptr [ebp+8]
	mov       al,byte ptr [ecx]
	mov       byte ptr [edx],al
	?debug L 445
@962:
	dec       dword ptr [ebp-4]
	inc       dword ptr [ebp-12]
	inc       dword ptr [ebp+8]
	cmp       dword ptr [ebp-4],0
	ja        short @960
 ;	
 ;	
 ;	
	?debug L 447
@961:
	mov       eax,dword ptr [ebp-8]
 ;	
 ;	
 ;	
	?debug L 448
@965:
@964:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc	endp
@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	91
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch565
	dd	?patch566
	dd	?patch567
	df	@@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc
	dw	0
	dw	6155
	dw	0
	dw	1330
	dw	0
	dw	0
	dw	0
	db	44
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	95
	db	77
	db	97
	db	107
	db	108
	db	111
	db	99
	db	115
	db	116
	db	114
	db	36
	db	99
	db	37
	db	36
	db	113
	db	112
	db	120
	db	99
	db	112
	db	99
	db	114
	db	120
	db	49
	db	49
	db	115
	db	116
	db	100
	db	64
	db	95
	db	67
	db	118
	db	116
	db	118
	db	101
	db	99
	db	36
	db	112
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4267
	dw	0
	dw	1331
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1136
	dw	0
	dw	1332
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	6120
	dw	0
	dw	1333
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	1136
	dw	0
	dw	1334
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	1335
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch568
	df	@959
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	1136
	dw	0
	dw	1336
	dw	0
	dw	0
	dw	0
?patch568	equ	@962-@959
	dw	2
	dw	6
?patch565	equ	@965-@@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc+4
?patch566	equ	0
?patch567	equ	@965-@@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@_Locinfo@_Getfalse$xqv	segment virtual
@@std@_Locinfo@_Getfalse$xqv	proc	near
?live16688@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocinfo"
 ;	
 ;	
 ;	
	?debug L 95
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 97
@966:
	mov       eax,offset s@+236
 ;	
 ;	
 ;	
	?debug L 98
@968:
@967:
	pop       ebp
	ret 
	?debug L 0
@@std@_Locinfo@_Getfalse$xqv	endp
@std@_Locinfo@_Getfalse$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch569
	dd	?patch570
	dd	?patch571
	df	@@std@_Locinfo@_Getfalse$xqv
	dw	0
	dw	6157
	dw	0
	dw	1337
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	64
	db	95
	db	71
	db	101
	db	116
	db	102
	db	97
	db	108
	db	115
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5016
	dw	0
	dw	1338
	dw	0
	dw	0
	dw	0
?patch569	equ	@968-@@std@_Locinfo@_Getfalse$xqv+2
?patch570	equ	0
?patch571	equ	@968-@@std@_Locinfo@_Getfalse$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@_Locinfo@_Gettrue$xqv	segment virtual
@@std@_Locinfo@_Gettrue$xqv	proc	near
?live16689@0:
 ;	
 ;	
 ;	
	?debug L 100
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 102
@969:
	mov       eax,offset s@+242
 ;	
 ;	
 ;	
	?debug L 103
@971:
@970:
	pop       ebp
	ret 
	?debug L 0
@@std@_Locinfo@_Gettrue$xqv	endp
@std@_Locinfo@_Gettrue$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	73
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch572
	dd	?patch573
	dd	?patch574
	df	@@std@_Locinfo@_Gettrue$xqv
	dw	0
	dw	6159
	dw	0
	dw	1339
	dw	0
	dw	0
	dw	0
	db	26
	db	64
	db	115
	db	116
	db	100
	db	64
	db	95
	db	76
	db	111
	db	99
	db	105
	db	110
	db	102
	db	111
	db	64
	db	95
	db	71
	db	101
	db	116
	db	116
	db	114
	db	117
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5016
	dw	0
	dw	1340
	dw	0
	dw	0
	dw	0
?patch572	equ	@971-@@std@_Locinfo@_Gettrue$xqv+2
?patch573	equ	0
?patch574	equ	@971-@@std@_Locinfo@_Gettrue$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@_Tidy$qv	segment virtual
@@std@%numpunct$c%@_Tidy$qv	proc	near
?live16691@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum"
 ;	
 ;	
 ;	
	?debug L 187
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 189
@972:
	mov       eax,dword ptr [ebp+8]
	push      dword ptr [eax+8]
	call      @$bdla$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 190
	mov       edx,dword ptr [ebp+8]
	push      dword ptr [edx+16]
	call      @$bdla$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 191
	mov       ecx,dword ptr [ebp+8]
	push      dword ptr [ecx+20]
	call      @$bdla$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 192
@973:
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@_Tidy$qv	endp
@std@%numpunct$c%@_Tidy$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	73
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch575
	dd	?patch576
	dd	?patch577
	df	@@std@%numpunct$c%@_Tidy$qv
	dw	0
	dw	6161
	dw	0
	dw	1341
	dw	0
	dw	0
	dw	0
	db	26
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	95
	db	84
	db	105
	db	100
	db	121
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5987
	dw	0
	dw	1342
	dw	0
	dw	0
	dw	0
?patch575	equ	@973-@@std@%numpunct$c%@_Tidy$qv+2
?patch576	equ	0
?patch577	equ	@973-@@std@%numpunct$c%@_Tidy$qv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@std@%numpunct$c%@3	segment virtual
	align	2
@@std@%numpunct$c%@3	label	byte
	dd	@@$xt$16std@%numpunct$c%
	dd	0
	dd	0
	dd	@@std@%numpunct$c%@$bdtr$qv
	dd	@@std@%numpunct$c%@do_decimal_point$xqv
	dd	@@std@%numpunct$c%@do_thousands_sep$xqv
	dd	@@std@%numpunct$c%@do_grouping$xqv
	dd	@@std@%numpunct$c%@do_falsename$xqv
	dd	@@std@%numpunct$c%@do_truename$xqv
@std@%numpunct$c%@3	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@%_Facetptr$16std@%numpunct$c%%@_Psave	segment virtual
	align	2
@@std@%_Facetptr$16std@%numpunct$c%%@_Psave	label	dword
	dd	0
@std@%_Facetptr$16std@%numpunct$c%%@_Psave	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@std@%numpunct$c%@id	segment virtual
	align	2
@@std@%numpunct$c%@id	label	byte
	db	4	dup(?)
@std@%numpunct$c%@id	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@$xt$16std@%numpunct$c%	segment virtual
	align	2
@@$xt$16std@%numpunct$c%	label	byte
	dd	24
	dw	3
	dw	48
	dd	0
	dd	119
	dw	68
	dw	84
	dd	0
	dw	0
	dw	0
	dd	0
	dd	2
	dd	2
	dd	@@std@%numpunct$c%@$bdtr$qv
	dw	1
	dw	88
	db	115
	db	116
	db	100
	db	58
	db	58
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	60
	db	99
	db	104
	db	97
	db	114
	db	62
	db	0
	dd	@@$xt$16std@locale@facet
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$16std@%numpunct$c%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p16std@%numpunct$c%	segment virtual
	align	2
@@$xt$p16std@%numpunct$c%	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$16std@%numpunct$c%
	db	115
	db	116
	db	100
	db	58
	db	58
	db	95
	db	78
	db	112
	db	99
	db	32
	db	42
	db	0
@$xt$p16std@%numpunct$c%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$16std@_String_base	segment virtual
	align	2
@@$xt$16std@_String_base	label	byte
	dd	8
	dw	3
	dw	32
	dd	-1
	dd	4
	dw	52
	dw	68
	dd	0
	dw	0
	dw	0
	dd	0
	db	115
	db	116
	db	100
	db	58
	db	58
	db	95
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	95
	db	98
	db	97
	db	115
	db	101
	db	0
	db	0
	db	0
	dd	@@$xt$19std@_Container_base
	dd	0
	dd	3
	dd	0
	dd	0
@$xt$16std@_String_base	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$DCFHB$@std@%numpunct$c%@$bdtr$qv	segment virtual
	align	2
@@_$DCFHB$@std@%numpunct$c%@$bdtr$qv	label	dword
	dd	@@$xt$p16std@%numpunct$c%
	dd	5
	dd	8
	dd	0
@_$DCFHB$@std@%numpunct$c%@$bdtr$qv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTGHB$@std@%numpunct$c%@$bdtr$qv	segment virtual
	align	2
@@_$ECTGHB$@std@%numpunct$c%@$bdtr$qv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCFHB$@std@%numpunct$c%@$bdtr$qv
@_$ECTGHB$@std@%numpunct$c%@$bdtr$qv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@$bdtr$qv	segment virtual
@@std@%numpunct$c%@$bdtr$qv	proc	near
?live16696@0:
 ;	
 ;	
 ;	
	?debug L 122
	push      ebp
	mov       ebp,esp
	add       esp,-36
@974:
	mov       eax,offset @@_$ECTGHB$@std@%numpunct$c%@$bdtr$qv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-8],1
	cmp       dword ptr [ebp+8],0
	je        short @975
 ;	
 ;	
 ;	
	?debug L 123
	mov       word ptr [ebp-20],12
	mov       edx,offset @@std@%numpunct$c%@3+12
	mov       ecx,dword ptr [ebp+8]
	mov       dword ptr [ecx],edx
 ;	
 ;	
 ;	
	?debug L 124
	push      dword ptr [ebp+8]
	call      @@std@%numpunct$c%@_Tidy$qv
	pop       ecx
	dec       dword ptr [ebp-8]
	push      0
	push      dword ptr [ebp+8]
	call      @@std@locale@facet@$bdtr$qv
	add       esp,8
	test      byte ptr [ebp+12],1
	je        short @976
	push      dword ptr [ebp+8]
	call      @$bdele$qpv
	pop       ecx
 ;	
 ;	
 ;	
	?debug L 125
@976:
@975:
	mov       eax,dword ptr [ebp-36]
	mov       dword ptr fs:[0],eax
	?debug L 125
@977:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@$bdtr$qv	endp
@std@%numpunct$c%@$bdtr$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	73
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch578
	dd	?patch579
	dd	?patch580
	df	@@std@%numpunct$c%@$bdtr$qv
	dw	0
	dw	6163
	dw	0
	dw	1343
	dw	0
	dw	0
	dw	0
	db	26
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5987
	dw	0
	dw	1344
	dw	0
	dw	0
	dw	0
?patch578	equ	@977-@@std@%numpunct$c%@$bdtr$qv+4
?patch579	equ	0
?patch580	equ	@977-@@std@%numpunct$c%@$bdtr$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@do_decimal_point$xqv	segment virtual
@@std@%numpunct$c%@do_decimal_point$xqv	proc	near
?live16697@0:
 ;	
 ;	
 ;	
	?debug L 161
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 163
@978:
	mov       eax,dword ptr [ebp+8]
	mov       al,byte ptr [eax+12]
 ;	
 ;	
 ;	
	?debug L 164
@980:
@979:
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@do_decimal_point$xqv	endp
@std@%numpunct$c%@do_decimal_point$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	85
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch581
	dd	?patch582
	dd	?patch583
	df	@@std@%numpunct$c%@do_decimal_point$xqv
	dw	0
	dw	6165
	dw	0
	dw	1345
	dw	0
	dw	0
	dw	0
	db	38
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	100
	db	101
	db	99
	db	105
	db	109
	db	97
	db	108
	db	95
	db	112
	db	111
	db	105
	db	110
	db	116
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5975
	dw	0
	dw	1346
	dw	0
	dw	0
	dw	0
?patch581	equ	@980-@@std@%numpunct$c%@do_decimal_point$xqv+2
?patch582	equ	0
?patch583	equ	@980-@@std@%numpunct$c%@do_decimal_point$xqv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@do_thousands_sep$xqv	segment virtual
@@std@%numpunct$c%@do_thousands_sep$xqv	proc	near
?live16698@0:
 ;	
 ;	
 ;	
	?debug L 166
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 168
@981:
	mov       eax,dword ptr [ebp+8]
	mov       al,byte ptr [eax+13]
 ;	
 ;	
 ;	
	?debug L 169
@983:
@982:
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@do_thousands_sep$xqv	endp
@std@%numpunct$c%@do_thousands_sep$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	85
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch584
	dd	?patch585
	dd	?patch586
	df	@@std@%numpunct$c%@do_thousands_sep$xqv
	dw	0
	dw	6167
	dw	0
	dw	1347
	dw	0
	dw	0
	dw	0
	db	38
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	116
	db	104
	db	111
	db	117
	db	115
	db	97
	db	110
	db	100
	db	115
	db	95
	db	115
	db	101
	db	112
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	5975
	dw	0
	dw	1348
	dw	0
	dw	0
	dw	0
?patch584	equ	@983-@@std@%numpunct$c%@do_thousands_sep$xqv+2
?patch585	equ	0
?patch586	equ	@983-@@std@%numpunct$c%@do_thousands_sep$xqv
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCHHB$@std@%numpunct$c%@do_grouping$xqv	segment virtual
	align	2
@@_$DCHHB$@std@%numpunct$c%@do_grouping$xqv	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	20
	dd	8
	dd	0
@_$DCHHB$@std@%numpunct$c%@do_grouping$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTIHB$@std@%numpunct$c%@do_grouping$xqv	segment virtual
	align	2
@@_$ECTIHB$@std@%numpunct$c%@do_grouping$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCHHB$@std@%numpunct$c%@do_grouping$xqv
@_$ECTIHB$@std@%numpunct$c%@do_grouping$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@do_grouping$xqv	segment virtual
@@std@%numpunct$c%@do_grouping$xqv	proc	near
?live16699@0:
 ;	
 ;	
 ;	
	?debug L 171
	push      ebp
	mov       ebp,esp
	add       esp,-36
@984:
	mov       eax,offset @@_$ECTIHB$@std@%numpunct$c%@do_grouping$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 173
	mov       word ptr [ebp-20],12
	mov       edx,dword ptr [ebp+12]
	push      dword ptr [edx+8]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc
	add       esp,8
	inc       dword ptr [ebp-8]
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [ebp-8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 174
@986:
@985:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@do_grouping$xqv	endp
@std@%numpunct$c%@do_grouping$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	80
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch587
	dd	?patch588
	dd	?patch589
	df	@@std@%numpunct$c%@do_grouping$xqv
	dw	0
	dw	6169
	dw	0
	dw	1349
	dw	0
	dw	0
	dw	0
	db	33
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	103
	db	114
	db	111
	db	117
	db	112
	db	105
	db	110
	db	103
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4442
	dw	0
	dw	1350
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5975
	dw	0
	dw	1351
	dw	0
	dw	0
	dw	0
?patch587	equ	@986-@@std@%numpunct$c%@do_grouping$xqv+4
?patch588	equ	0
?patch589	equ	@986-@@std@%numpunct$c%@do_grouping$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCJHB$@std@%numpunct$c%@do_falsename$xqv	segment virtual
	align	2
@@_$DCJHB$@std@%numpunct$c%@do_falsename$xqv	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	20
	dd	8
	dd	0
@_$DCJHB$@std@%numpunct$c%@do_falsename$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTKHB$@std@%numpunct$c%@do_falsename$xqv	segment virtual
	align	2
@@_$ECTKHB$@std@%numpunct$c%@do_falsename$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCJHB$@std@%numpunct$c%@do_falsename$xqv
@_$ECTKHB$@std@%numpunct$c%@do_falsename$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@do_falsename$xqv	segment virtual
@@std@%numpunct$c%@do_falsename$xqv	proc	near
?live16700@0:
 ;	
 ;	
 ;	
	?debug L 176
	push      ebp
	mov       ebp,esp
	add       esp,-36
@987:
	mov       eax,offset @@_$ECTKHB$@std@%numpunct$c%@do_falsename$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 178
	mov       word ptr [ebp-20],12
	mov       edx,dword ptr [ebp+12]
	push      dword ptr [edx+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc
	add       esp,8
	inc       dword ptr [ebp-8]
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [ebp-8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 179
@989:
@988:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@do_falsename$xqv	endp
@std@%numpunct$c%@do_falsename$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	81
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch590
	dd	?patch591
	dd	?patch592
	df	@@std@%numpunct$c%@do_falsename$xqv
	dw	0
	dw	6171
	dw	0
	dw	1352
	dw	0
	dw	0
	dw	0
	db	34
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	102
	db	97
	db	108
	db	115
	db	101
	db	110
	db	97
	db	109
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4442
	dw	0
	dw	1353
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5975
	dw	0
	dw	1354
	dw	0
	dw	0
	dw	0
?patch590	equ	@989-@@std@%numpunct$c%@do_falsename$xqv+4
?patch591	equ	0
?patch592	equ	@989-@@std@%numpunct$c%@do_falsename$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCLHB$@std@%numpunct$c%@do_truename$xqv	segment virtual
	align	2
@@_$DCLHB$@std@%numpunct$c%@do_truename$xqv	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	20
	dd	8
	dd	0
@_$DCLHB$@std@%numpunct$c%@do_truename$xqv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTMHB$@std@%numpunct$c%@do_truename$xqv	segment virtual
	align	2
@@_$ECTMHB$@std@%numpunct$c%@do_truename$xqv	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCLHB$@std@%numpunct$c%@do_truename$xqv
@_$ECTMHB$@std@%numpunct$c%@do_truename$xqv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%numpunct$c%@do_truename$xqv	segment virtual
@@std@%numpunct$c%@do_truename$xqv	proc	near
?live16701@0:
 ;	
 ;	
 ;	
	?debug L 181
	push      ebp
	mov       ebp,esp
	add       esp,-36
@990:
	mov       eax,offset @@_$ECTMHB$@std@%numpunct$c%@do_truename$xqv
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 183
	mov       word ptr [ebp-20],12
	mov       edx,dword ptr [ebp+12]
	push      dword ptr [edx+20]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc
	add       esp,8
	inc       dword ptr [ebp-8]
	mov       eax,dword ptr [ebp+8]
	inc       dword ptr [ebp-8]
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
 ;	
 ;	
 ;	
	?debug L 184
@992:
@991:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%numpunct$c%@do_truename$xqv	endp
@std@%numpunct$c%@do_truename$xqv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	80
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch593
	dd	?patch594
	dd	?patch595
	df	@@std@%numpunct$c%@do_truename$xqv
	dw	0
	dw	6173
	dw	0
	dw	1355
	dw	0
	dw	0
	dw	0
	db	33
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	110
	db	117
	db	109
	db	112
	db	117
	db	110
	db	99
	db	116
	db	36
	db	99
	db	37
	db	64
	db	100
	db	111
	db	95
	db	116
	db	114
	db	117
	db	101
	db	110
	db	97
	db	109
	db	101
	db	36
	db	120
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4442
	dw	0
	dw	1356
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	5975
	dw	0
	dw	1357
	dw	0
	dw	0
	dw	0
?patch593	equ	@992-@@std@%numpunct$c%@do_truename$xqv+4
?patch594	equ	0
?patch595	equ	@992-@@std@%numpunct$c%@do_truename$xqv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCNHB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	segment virtual
	align	2
@@_$DCNHB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	label	dword
	dd	@@$xt$p60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
	dd	5
	dd	8
	dd	0
@_$DCNHB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTOHB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	segment virtual
	align	2
@@_$ECTOHB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	label	dword
	dd	0
	dd	0
	dd	-36
	dw	0
	dw	5
	dd	0
	dd	@@_$DCNHB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc
@_$ECTOHB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	proc	near
?live16708@0:
	?debug	T "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring"
 ;	
 ;	
 ;	
	?debug L 455
	push      ebp
	mov       ebp,esp
	add       esp,-36
@993:
	mov       eax,offset @@_$ECTOHB$@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc
	call      @__InitExceptBlockLDTC
 ;	
 ;	
 ;	
	?debug L 456
	mov       word ptr [ebp-20],12
	add       esp,-8
	push      esp
	call      @@std@%allocator$c%@$bctr$qv
	pop       ecx
	push      dword ptr [ebp+8]
	call      @@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 458
	push      0
	push      0
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy$qoui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 459
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxc
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 460
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
	mov       eax,dword ptr [ebp+8]
	?debug L 460
@995:
@994:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	119
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch596
	dd	?patch597
	dd	?patch598
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc
	dw	0
	dw	6175
	dw	0
	dw	1358
	dw	0
	dw	0
	dw	0
	db	72
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	112
	db	120
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1359
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	1360
	dw	0
	dw	0
	dw	0
?patch596	equ	@995-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc+4
?patch597	equ	0
?patch598	equ	@995-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
?t36 = -44
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxc	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxc	proc	near
?live16715@0:
 ;	
 ;	
 ;	
	?debug L 802
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 805
@996:
	push      dword ptr [ebp+12]
	call      @@std@%char_traits$c%@length$qpxc
	pop       ecx
	push      eax
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 806
@998:
@997:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxc	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	120
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch599
	dd	?patch600
	dd	?patch601
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxc
	dw	0
	dw	6177
	dw	0
	dw	1361
	dw	0
	dw	0
	dw	0
	db	73
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	97
	db	115
	db	115
	db	105
	db	103
	db	110
	db	36
	db	113
	db	112
	db	120
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1362
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	1363
	dw	0
	dw	0
	dw	0
?patch599	equ	@998-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxc+2
?patch600	equ	0
?patch601	equ	@998-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxc
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui	segment virtual
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui	proc	near
?live16718@0:
 ;	
 ;	
 ;	
	?debug L 783
	push      ebp
	mov       ebp,esp
 ;	
 ;	
 ;	
	?debug L 791
@999:
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside$qpxc
	add       esp,8
	test      al,al
	je        short @1000
 ;	
 ;	
 ;	
	?debug L 792
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	mov       edx,dword ptr [ebp+12]
	sub       edx,eax
	push      edx
	push      dword ptr [ebp+8]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%uiui
	add       esp,16
@1006:
	pop       ebp
	ret 
 ;	
 ;	
 ;	
	?debug L 794
@1000:
	push      0
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow$quio
	add       esp,12
	test      al,al
	je        short @1002
 ;	
 ;	
 ;	
	?debug L 796
@1003:
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+12]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr$qv
	pop       ecx
	push      eax
	call      @@std@%char_traits$c%@copy$qpcpxcui
	add       esp,12
 ;	
 ;	
 ;	
	?debug L 797
	push      dword ptr [ebp+16]
	push      dword ptr [ebp+8]
	call      @@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos$qui
	add       esp,8
 ;	
 ;	
 ;	
	?debug L 799
@1004:
@1002:
	mov       eax,dword ptr [ebp+8]
 ;	
 ;	
 ;	
	?debug L 800
@1005:
@1001:
	pop       ebp
	ret 
	?debug L 0
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui	endp
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	122
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch602
	dd	?patch603
	dd	?patch604
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui
	dw	0
	dw	6179
	dw	0
	dw	1364
	dw	0
	dw	0
	dw	0
	db	75
	db	64
	db	115
	db	116
	db	100
	db	64
	db	37
	db	98
	db	97
	db	115
	db	105
	db	99
	db	95
	db	115
	db	116
	db	114
	db	105
	db	110
	db	103
	db	36
	db	99
	db	49
	db	57
	db	115
	db	116
	db	100
	db	64
	db	37
	db	99
	db	104
	db	97
	db	114
	db	95
	db	116
	db	114
	db	97
	db	105
	db	116
	db	115
	db	36
	db	99
	db	37
	db	49
	db	55
	db	115
	db	116
	db	100
	db	64
	db	37
	db	97
	db	108
	db	108
	db	111
	db	99
	db	97
	db	116
	db	111
	db	114
	db	36
	db	99
	db	37
	db	37
	db	64
	db	97
	db	115
	db	115
	db	105
	db	103
	db	110
	db	36
	db	113
	db	112
	db	120
	db	99
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4443
	dw	0
	dw	1365
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4267
	dw	0
	dw	1366
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	117
	dw	0
	dw	1367
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch605
	df	@1003
	dw	0
	dw	0
?patch605	equ	@1004-@1003
	dw	2
	dw	6
	dw	8
	dw	530
	dd	@1006-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui
	dw	2
?patch602	equ	@1005-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui+2
?patch603	equ	0
?patch604	equ	@1005-@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign$qpxcui
	dw	2
	dw	6
$$BSYMS	ends
_INIT_	segment word public use32 'INITDATA'
	db	0
	db	32
	dd	@_STCON3_$qv
_INIT_	ends
$$BSYMS	segment byte public use32 'DEBSYM'
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@#$cf$@std@%numpunct$c%@id	segment virtual
$ielimklc	label	byte
	db	0
@#$cf$@std@%numpunct$c%@id	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@_STCON3_$qv	proc	near
@@_STCON3_$qv equ @_STCON3_$qv
?live1@48:
	?debug L 0
	push      ebp
	mov       ebp,esp
@1007:
	cmp       byte ptr [$ielimklc],0
	jne       short @1008
	push      0
	push      offset @@std@%numpunct$c%@id
	call      @@std@locale@id@$bctr$qui
	add       esp,8
	mov       byte ptr [$ielimklc],1
	?debug L 0
@1008:
@1009:
	pop       ebp
	ret 
	?debug L 0
@_STCON3_$qv	endp
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	46
	dw	516
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch606
	dd	?patch607
	dd	?patch608
	df	@_STCON3_$qv
	dw	0
	dw	6181
	dw	0
	dw	1368
	dw	0
	dw	0
	dw	0
?patch606	equ	@1009-@_STCON3_$qv+2
?patch607	equ	0
?patch608	equ	@1009-@_STCON3_$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@$xt$19std@_Container_base	segment virtual
	align	2
@@$xt$19std@_Container_base	label	byte
	dd	8
	dw	1
	dw	16
	dd	-1
	dd	0
	db	115
	db	116
	db	100
	db	58
	db	58
	db	95
	db	67
	db	111
	db	110
	db	116
	db	97
	db	105
	db	110
	db	101
	db	114
	db	95
	db	98
	db	97
	db	115
	db	101
	db	0
	db	0
	db	0
	db	0
@$xt$19std@_Container_base	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@npos	segment virtual
	align	2
@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@npos	label	dword
	dd	-1
@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@npos	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
	align	2
s@	label	byte
	;	s@+0:
	db	"C",0
	;	s@+2:
	db	"Lista Vacia...",0
	;	s@+17:
	db	"Lista Vacia...",10,0
	;	s@+33:
	db	"Lista Vacia...",0
	;	s@+48:
	db	"Error, Ultima Direccion...",0
	;	s@+75:
	db	"Lista Vacia...",0
	;	s@+90:
	db	"Error Primera Direccion",0
	;	s@+114:
	db	"Lista Vacia...",0
	;	s@+129:
	db	"Existe  Espacio de Memoria...",0
	;	s@+159:
	db	"Lista esta Vacia...",0
	;	s@+179:
	db	"Lista Vacia...",0
	;	s@+194:
	db	"<",0
	;	s@+196:
	db	", ",0,0
	;	s@+200:
	db	">",0
	;	s@+202:
	db	"Lista Vacia...",0
	;	s@+217:
	db	"ld",0
	;	s@+220:
	db	"lu",0
	;	s@+223:
	db	"Ld",0
	;	s@+226:
	db	"Lu",0
	;	s@+229:
	db	"Lu",0
	;	s@+232:
	db	"E",0
	;	s@+234:
	db	"e",0
	;	s@+236:
	db	"false",0
	;	s@+242:
	db	"true",0
	align	4
_DATA	ends
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
 extrn __Exception_list:dword
@@std@locale@id@_Id_cnt equ @std@locale@id@_Id_cnt
 extrn @std@locale@id@_Id_cnt:dword
@@std@%ctype$c%@id equ @std@%ctype$c%@id
 extrn @std@%ctype$c%@id:byte
@@std@%ctype$c%@table_size equ @std@%ctype$c%@table_size
 extrn @std@%ctype$c%@table_size:dword
 extrn @std@cout:byte
 extrn @_ThrowExceptionLDTC$qpvt1t1t1uiuiuipuct1:near
@@SMemoria@obtener_dato$qii equ @SMemoria@obtener_dato$qii
 extrn @SMemoria@obtener_dato$qii:near
@@SMemoria@new_espacio$qi equ @SMemoria@new_espacio$qi
 extrn @SMemoria@new_espacio$qi:near
@@SMemoria@poner_dato$qiii equ @SMemoria@poner_dato$qiii
 extrn @SMemoria@poner_dato$qiii:near
@@_CatchCleanup$qv equ @_CatchCleanup$qv
 extrn @_CatchCleanup$qv:near
 extrn @__InitExceptBlockLDTC:near
@_strlen equ _strlen
 extrn _strlen:near
@@std@uncaught_exception$qv equ @std@uncaught_exception$qv
 extrn @std@uncaught_exception$qv:near
 extrn @$bdele$qpv:near
@@std@locale@_Getfacet$xqui equ @std@locale@_Getfacet$xqui
 extrn @std@locale@_Getfacet$xqui:near
@@std@locale@facet@_Register$qv equ @std@locale@facet@_Register$qv
 extrn @std@locale@facet@_Register$qv:near
@@std@ios_base@clear$q22std@%_Iosb$i%@_Iostateo equ @std@ios_base@clear$q22std@%_Iosb$i%@_Iostateo
 extrn @std@ios_base@clear$q22std@%_Iosb$i%@_Iostateo:near
@__InterlockedDecrement equ __InterlockedDecrement
 extrn __InterlockedDecrement:near
@__Locksyslock equ __Locksyslock
 extrn __Locksyslock:near
@__Unlocksyslock equ __Unlocksyslock
 extrn __Unlocksyslock:near
 extrn @$bnew$qui:near
@@std@_Locinfo@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%% equ @std@_Locinfo@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%
 extrn @std@_Locinfo@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%:near
@@std@_Locinfo@$bdtr$qv equ @std@_Locinfo@$bdtr$qv
 extrn @std@_Locinfo@$bdtr$qv:near
@__InterlockedIncrement equ __InterlockedIncrement
 extrn __InterlockedIncrement:near
@@std@_String_base@_Xran$xqv equ @std@_String_base@_Xran$xqv
 extrn @std@_String_base@_Xran$xqv:near
@_memcpy equ _memcpy
 extrn _memcpy:near
@@std@_String_base@_Xlen$xqv equ @std@_String_base@_Xlen$xqv
 extrn @std@_String_base@_Xlen$xqv:near
@__Getctyptab equ __Getctyptab
 extrn __Getctyptab:near
@_memmove equ _memmove
 extrn _memmove:near
 extrn @_ReThrowException$quipuc:near
@@std@exception@$bdtr$qv equ @std@exception@$bdtr$qv
 extrn @std@exception@$bdtr$qv:near
@@std@exception@what$xqv equ @std@exception@what$xqv
 extrn @std@exception@what$xqv:near
@_sprintf equ _sprintf
 extrn _sprintf:near
@_free equ _free
 extrn _free:near
 extrn @$bdla$qpv:near
@__ltolower_lcid equ __ltolower_lcid
 extrn __ltolower_lcid:near
@__ltoupper_lcid equ __ltoupper_lcid
 extrn __ltoupper_lcid:near
@_localeconv equ _localeconv
 extrn _localeconv:near
@_strcspn equ _strcspn
 extrn _strcspn:near
@_memset equ _memset
 extrn _memset:near
 extrn @$bnwa$qui:near
	extrn	__turboFloat:word
 ?debug C FB0A5444414C697374614D656D6F72696100
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	?patch609
	dw	3
	dw	4548
	dw	0
	dw	1369
	dw	0
	dw	0
	dw	0
	dw	32772
	dw	65535
	dw	65535
?patch609	equ	20
	dw	?patch610
	dw	3
	dw	4524
	dw	0
	dw	1370
	dw	0
	dw	0
	dw	0
	dw	1
?patch610	equ	16
	dw	?patch611
	dw	3
	dw	4524
	dw	0
	dw	1371
	dw	0
	dw	0
	dw	0
	dw	2
?patch611	equ	16
	dw	?patch612
	dw	3
	dw	4524
	dw	0
	dw	1372
	dw	0
	dw	0
	dw	0
	dw	4
?patch612	equ	16
	dw	?patch613
	dw	3
	dw	4524
	dw	0
	dw	1373
	dw	0
	dw	0
	dw	0
	dw	8
?patch613	equ	16
	dw	?patch614
	dw	3
	dw	4524
	dw	0
	dw	1374
	dw	0
	dw	0
	dw	0
	dw	16
?patch614	equ	16
	dw	?patch615
	dw	3
	dw	4524
	dw	0
	dw	1375
	dw	0
	dw	0
	dw	0
	dw	32
?patch615	equ	16
	dw	?patch616
	dw	3
	dw	4524
	dw	0
	dw	1376
	dw	0
	dw	0
	dw	0
	dw	63
?patch616	equ	16
	dw	?patch617
	dw	3
	dw	4524
	dw	0
	dw	1377
	dw	0
	dw	0
	dw	0
	dw	0
?patch617	equ	16
	dw	?patch618
	dw	3
	dw	4221
	dw	0
	dw	1378
	dw	0
	dw	0
	dw	0
	dw	1
?patch618	equ	16
	dw	?patch619
	dw	3
	dw	4221
	dw	0
	dw	1379
	dw	0
	dw	0
	dw	0
	dw	8192
?patch619	equ	16
	dw	?patch620
	dw	3
	dw	4221
	dw	0
	dw	1380
	dw	0
	dw	0
	dw	0
	dw	512
?patch620	equ	16
	dw	?patch621
	dw	3
	dw	4221
	dw	0
	dw	1381
	dw	0
	dw	0
	dw	0
	dw	128
?patch621	equ	16
	dw	?patch622
	dw	3
	dw	4221
	dw	0
	dw	1382
	dw	0
	dw	0
	dw	0
	dw	256
?patch622	equ	16
	dw	?patch623
	dw	3
	dw	4221
	dw	0
	dw	1383
	dw	0
	dw	0
	dw	0
	dw	1024
?patch623	equ	16
	dw	?patch624
	dw	3
	dw	4221
	dw	0
	dw	1384
	dw	0
	dw	0
	dw	0
	dw	2
?patch624	equ	16
	dw	?patch625
	dw	3
	dw	4221
	dw	0
	dw	1385
	dw	0
	dw	0
	dw	0
	dw	4
?patch625	equ	16
	dw	?patch626
	dw	3
	dw	4221
	dw	0
	dw	1386
	dw	0
	dw	0
	dw	0
	dw	8
?patch626	equ	16
	dw	?patch627
	dw	3
	dw	4221
	dw	0
	dw	1387
	dw	0
	dw	0
	dw	0
	dw	16
?patch627	equ	16
	dw	?patch628
	dw	3
	dw	4221
	dw	0
	dw	1388
	dw	0
	dw	0
	dw	0
	dw	32
?patch628	equ	16
	dw	?patch629
	dw	3
	dw	4221
	dw	0
	dw	1389
	dw	0
	dw	0
	dw	0
	dw	64
?patch629	equ	16
	dw	?patch630
	dw	3
	dw	4221
	dw	0
	dw	1390
	dw	0
	dw	0
	dw	0
	dw	2048
?patch630	equ	16
	dw	?patch631
	dw	3
	dw	4221
	dw	0
	dw	1391
	dw	0
	dw	0
	dw	0
	dw	4096
?patch631	equ	16
	dw	?patch632
	dw	3
	dw	4221
	dw	0
	dw	1392
	dw	0
	dw	0
	dw	0
	dw	6144
?patch632	equ	16
	dw	?patch633
	dw	3
	dw	4221
	dw	0
	dw	1393
	dw	0
	dw	0
	dw	0
	dw	32770
	dw	32768
?patch633	equ	18
	dw	?patch634
	dw	3
	dw	4221
	dw	0
	dw	1394
	dw	0
	dw	0
	dw	0
	dw	16384
?patch634	equ	16
	dw	?patch635
	dw	3
	dw	4221
	dw	0
	dw	1395
	dw	0
	dw	0
	dw	0
	dw	14
?patch635	equ	16
	dw	?patch636
	dw	3
	dw	4221
	dw	0
	dw	1396
	dw	0
	dw	0
	dw	0
	dw	112
?patch636	equ	16
	dw	?patch637
	dw	3
	dw	4221
	dw	0
	dw	1397
	dw	0
	dw	0
	dw	0
	dw	6144
?patch637	equ	16
	dw	?patch638
	dw	3
	dw	4224
	dw	0
	dw	1398
	dw	0
	dw	0
	dw	0
	dw	0
?patch638	equ	16
	dw	?patch639
	dw	3
	dw	4224
	dw	0
	dw	1399
	dw	0
	dw	0
	dw	0
	dw	1
?patch639	equ	16
	dw	?patch640
	dw	3
	dw	4224
	dw	0
	dw	1400
	dw	0
	dw	0
	dw	0
	dw	2
?patch640	equ	16
	dw	?patch641
	dw	3
	dw	4224
	dw	0
	dw	1401
	dw	0
	dw	0
	dw	0
	dw	4
?patch641	equ	16
	dw	?patch642
	dw	3
	dw	4224
	dw	0
	dw	1402
	dw	0
	dw	0
	dw	0
	dw	16
?patch642	equ	16
	dw	?patch643
	dw	3
	dw	4227
	dw	0
	dw	1403
	dw	0
	dw	0
	dw	0
	dw	1
?patch643	equ	16
	dw	?patch644
	dw	3
	dw	4227
	dw	0
	dw	1404
	dw	0
	dw	0
	dw	0
	dw	2
?patch644	equ	16
	dw	?patch645
	dw	3
	dw	4227
	dw	0
	dw	1405
	dw	0
	dw	0
	dw	0
	dw	4
?patch645	equ	16
	dw	?patch646
	dw	3
	dw	4227
	dw	0
	dw	1406
	dw	0
	dw	0
	dw	0
	dw	8
?patch646	equ	16
	dw	?patch647
	dw	3
	dw	4227
	dw	0
	dw	1407
	dw	0
	dw	0
	dw	0
	dw	16
?patch647	equ	16
	dw	?patch648
	dw	3
	dw	4227
	dw	0
	dw	1408
	dw	0
	dw	0
	dw	0
	dw	32
?patch648	equ	16
	dw	?patch649
	dw	3
	dw	4227
	dw	0
	dw	1409
	dw	0
	dw	0
	dw	0
	dw	64
?patch649	equ	16
	dw	?patch650
	dw	3
	dw	4227
	dw	0
	dw	1410
	dw	0
	dw	0
	dw	0
	dw	128
?patch650	equ	16
	dw	?patch651
	dw	3
	dw	4230
	dw	0
	dw	1411
	dw	0
	dw	0
	dw	0
	dw	0
?patch651	equ	16
	dw	?patch652
	dw	3
	dw	4230
	dw	0
	dw	1412
	dw	0
	dw	0
	dw	0
	dw	1
?patch652	equ	16
	dw	?patch653
	dw	3
	dw	4230
	dw	0
	dw	1413
	dw	0
	dw	0
	dw	0
	dw	2
?patch653	equ	16
	dw	22
	dw	514
	df	@@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@npos
	dw	0
	dw	4548
	dw	0
	dw	1414
	dw	0
	dw	0
	dw	0
	dw	22
	dw	514
	df	@@std@%_Facetptr$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%@_Psave
	dw	0
	dw	4938
	dw	0
	dw	1415
	dw	0
	dw	0
	dw	0
	dw	22
	dw	514
	df	@@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id
	dw	0
	dw	4912
	dw	0
	dw	1416
	dw	0
	dw	0
	dw	0
	dw	22
	dw	514
	df	@@std@%_Facetptr$13std@%ctype$c%%@_Psave
	dw	0
	dw	4938
	dw	0
	dw	1417
	dw	0
	dw	0
	dw	0
	dw	22
	dw	514
	df	@@std@%_Facetptr$16std@%numpunct$c%%@_Psave
	dw	0
	dw	4938
	dw	0
	dw	1418
	dw	0
	dw	0
	dw	0
	dw	22
	dw	514
	df	@@std@%numpunct$c%@id
	dw	0
	dw	4912
	dw	0
	dw	1419
	dw	0
	dw	0
	dw	0
	dw	?patch654
	dw	3
	dw	4524
	dw	0
	dw	1420
	dw	0
	dw	0
	dw	0
	dw	32772
	dw	65535
	dw	65535
?patch654	equ	20
	dw	?patch655
	dw	3
	dw	4524
	dw	0
	dw	1421
	dw	0
	dw	0
	dw	0
	dw	20
?patch655	equ	16
	dw	16
	dw	4
	dw	4100
	dw	0
	dw	1
	dw	1422
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4098
	dw	0
	dw	1
	dw	1423
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4097
	dw	0
	dw	1
	dw	1424
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	1425
	dw	0
	dw	0
	dw	0
	dw	?patch656
	dw	37
	dw	1426
	dw	0
	dw	0
	dw	0
	dw	2
	dw	1427
	dw	0
	dw	1428
	dw	0
?patch656	equ	20
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	1429
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	1430
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	1431
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	1432
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	113
	dw	0
	dw	0
	dw	1433
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	113
	dw	0
	dw	0
	dw	1434
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	65
	dw	0
	dw	0
	dw	1435
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	1436
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	1437
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	1438
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	1439
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	48
	dw	0
	dw	0
	dw	1440
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	1441
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	118
	dw	0
	dw	0
	dw	1442
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	119
	dw	0
	dw	0
	dw	1443
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	113
	dw	0
	dw	0
	dw	1444
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	113
	dw	0
	dw	0
	dw	1445
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	1446
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	112
	dw	0
	dw	0
	dw	1447
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5040
	dw	0
	dw	1
	dw	1448
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5373
	dw	0
	dw	1
	dw	1449
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	1450
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	1451
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5027
	dw	0
	dw	1
	dw	1452
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5102
	dw	0
	dw	1
	dw	1453
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4248
	dw	0
	dw	1
	dw	1454
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4252
	dw	0
	dw	0
	dw	1455
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	112
	dw	0
	dw	0
	dw	1456
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	16
	dw	0
	dw	0
	dw	1457
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	1458
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	112
	dw	0
	dw	0
	dw	1459
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	1460
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	1461
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	1462
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	118
	dw	0
	dw	0
	dw	1463
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	1464
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4234
	dw	0
	dw	1
	dw	1465
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4234
	dw	0
	dw	0
	dw	1466
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4234
	dw	0
	dw	0
	dw	1467
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4503
	dw	0
	dw	1
	dw	1468
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4213
	dw	0
	dw	1
	dw	1469
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4210
	dw	0
	dw	1
	dw	1470
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4210
	dw	0
	dw	0
	dw	1471
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5239
	dw	0
	dw	1
	dw	1472
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5239
	dw	0
	dw	0
	dw	1473
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4207
	dw	0
	dw	1
	dw	1474
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4207
	dw	0
	dw	0
	dw	1475
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4299
	dw	0
	dw	1
	dw	1476
	dw	0
	dw	0
	dw	0
	dw	?patch657
	dw	37
	dw	1477
	dw	0
	dw	0
	dw	0
	dw	0
?patch657	equ	12
	dw	?patch658
	dw	37
	dw	1478
	dw	0
	dw	0
	dw	0
	dw	0
?patch658	equ	12
	dw	16
	dw	4
	dw	4288
	dw	0
	dw	1
	dw	1479
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4365
	dw	0
	dw	1
	dw	1480
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4364
	dw	0
	dw	1
	dw	1481
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4363
	dw	0
	dw	1
	dw	1482
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4362
	dw	0
	dw	1
	dw	1483
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4287
	dw	0
	dw	1
	dw	1484
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4285
	dw	0
	dw	1
	dw	1485
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4285
	dw	0
	dw	0
	dw	1486
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4286
	dw	0
	dw	1
	dw	1487
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4300
	dw	0
	dw	1
	dw	1488
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4359
	dw	0
	dw	1
	dw	1489
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4357
	dw	0
	dw	1
	dw	1490
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4437
	dw	0
	dw	1
	dw	1491
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4439
	dw	0
	dw	1
	dw	1492
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4360
	dw	0
	dw	1
	dw	1493
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4361
	dw	0
	dw	1
	dw	1494
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4245
	dw	0
	dw	1
	dw	1495
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5839
	dw	0
	dw	1
	dw	1496
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5839
	dw	0
	dw	0
	dw	1497
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	1498
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	1499
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4985
	dw	0
	dw	1
	dw	1500
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4985
	dw	0
	dw	0
	dw	1501
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4987
	dw	0
	dw	1
	dw	1502
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4987
	dw	0
	dw	0
	dw	1503
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4991
	dw	0
	dw	1
	dw	1504
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4991
	dw	0
	dw	0
	dw	1505
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4993
	dw	0
	dw	1
	dw	1506
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4984
	dw	0
	dw	1
	dw	1507
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4909
	dw	0
	dw	1
	dw	1508
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4910
	dw	0
	dw	1
	dw	1509
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5442
	dw	0
	dw	1
	dw	1510
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5439
	dw	0
	dw	1
	dw	1511
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4216
	dw	0
	dw	1
	dw	1512
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5971
	dw	0
	dw	1
	dw	1513
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5971
	dw	0
	dw	0
	dw	1514
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5609
	dw	0
	dw	1
	dw	1515
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	5611
	dw	0
	dw	1
	dw	1516
	dw	0
	dw	0
	dw	0
	dw	?patch659
	dw	38
	dw	390
	dw	1517
	dw	0
	dw	1518
	dw	0
	dw	1519
	dw	0
	dw	1520
	dw	0
	dw	1521
	dw	0
	dw	1522
	dw	0
	dw	1523
	dw	0
	dw	1524
	dw	0
	dw	1525
	dw	0
	dw	1526
	dw	0
	dw	1527
	dw	0
	dw	1528
	dw	0
	dw	1529
	dw	0
	dw	1530
	dw	0
	dw	1531
	dw	0
	dw	1532
	dw	0
	dw	1533
	dw	0
	dw	1534
	dw	0
	dw	1535
	dw	0
	dw	1536
	dw	0
	dw	1537
	dw	0
	dw	1538
	dw	0
	dw	1539
	dw	0
	dw	1540
	dw	0
	dw	1541
	dw	0
	dw	1542
	dw	0
	dw	1543
	dw	0
	dw	1544
	dw	0
	dw	1545
	dw	0
	dw	1546
	dw	0
	dw	1547
	dw	0
	dw	1548
	dw	0
	dw	1549
	dw	0
	dw	1550
	dw	0
	dw	1551
	dw	0
	dw	1552
	dw	0
	dw	1553
	dw	0
	dw	1554
	dw	0
	dw	1555
	dw	0
	dw	1556
	dw	0
	dw	1557
	dw	0
	dw	1558
	dw	0
	dw	1559
	dw	0
	dw	1560
	dw	0
	dw	1561
	dw	0
	dw	1562
	dw	0
	dw	1563
	dw	0
	dw	1564
	dw	0
	dw	1565
	dw	0
	dw	1566
	dw	0
	dw	1567
	dw	0
	dw	1568
	dw	0
	dw	1569
	dw	0
	dw	1570
	dw	0
	dw	1571
	dw	0
	dw	1572
	dw	0
	dw	1573
	dw	0
	dw	1574
	dw	0
	dw	1575
	dw	0
	dw	1576
	dw	0
	dw	1577
	dw	0
	dw	1578
	dw	0
	dw	1579
	dw	0
	dw	1580
	dw	0
	dw	1581
	dw	0
	dw	1582
	dw	0
	dw	1583
	dw	0
	dw	1584
	dw	0
	dw	1585
	dw	0
	dw	1586
	dw	0
	dw	1587
	dw	0
	dw	1588
	dw	0
	dw	1589
	dw	0
	dw	1590
	dw	0
	dw	1591
	dw	0
	dw	1592
	dw	0
	dw	1593
	dw	0
	dw	1594
	dw	0
	dw	1595
	dw	0
	dw	1596
	dw	0
	dw	1597
	dw	0
	dw	1598
	dw	0
	dw	1599
	dw	0
	dw	1600
	dw	0
	dw	1601
	dw	0
	dw	1602
	dw	0
	dw	1603
	dw	0
	dw	1604
	dw	0
	dw	1605
	dw	0
	dw	1606
	dw	0
	dw	1607
	dw	0
	dw	1608
	dw	0
	dw	1609
	dw	0
	dw	1610
	dw	0
	dw	1611
	dw	0
	dw	1612
	dw	0
	dw	1613
	dw	0
	dw	1614
	dw	0
	dw	1615
	dw	0
	dw	1616
	dw	0
	dw	1617
	dw	0
	dw	1618
	dw	0
	dw	1619
	dw	0
	dw	1620
	dw	0
	dw	1621
	dw	0
	dw	1622
	dw	0
	dw	1623
	dw	0
	dw	1624
	dw	0
	dw	1625
	dw	0
	dw	1626
	dw	0
	dw	1627
	dw	0
	dw	1628
	dw	0
	dw	1629
	dw	0
	dw	1630
	dw	0
	dw	1631
	dw	0
	dw	1632
	dw	0
	dw	1633
	dw	0
	dw	1634
	dw	0
	dw	1635
	dw	0
	dw	1636
	dw	0
	dw	1637
	dw	0
	dw	1638
	dw	0
	dw	1639
	dw	0
	dw	1640
	dw	0
	dw	1641
	dw	0
	dw	1642
	dw	0
	dw	1643
	dw	0
	dw	1644
	dw	0
	dw	1645
	dw	0
	dw	1646
	dw	0
	dw	1647
	dw	0
	dw	1648
	dw	0
	dw	1649
	dw	0
	dw	1650
	dw	0
	dw	1651
	dw	0
	dw	1652
	dw	0
	dw	1653
	dw	0
	dw	1654
	dw	0
	dw	1655
	dw	0
	dw	1656
	dw	0
	dw	1657
	dw	0
	dw	1658
	dw	0
	dw	1659
	dw	0
	dw	1660
	dw	0
	dw	1661
	dw	0
	dw	1662
	dw	0
	dw	1663
	dw	0
	dw	1664
	dw	0
	dw	1665
	dw	0
	dw	1666
	dw	0
	dw	1667
	dw	0
	dw	1668
	dw	0
	dw	1669
	dw	0
	dw	1670
	dw	0
	dw	1671
	dw	0
	dw	1672
	dw	0
	dw	1673
	dw	0
	dw	1674
	dw	0
	dw	1675
	dw	0
	dw	1676
	dw	0
	dw	1677
	dw	0
	dw	1678
	dw	0
	dw	1679
	dw	0
	dw	1680
	dw	0
	dw	1681
	dw	0
	dw	1682
	dw	0
	dw	1683
	dw	0
	dw	1684
	dw	0
	dw	1685
	dw	0
	dw	1686
	dw	0
	dw	1687
	dw	0
	dw	1688
	dw	0
	dw	1689
	dw	0
	dw	1690
	dw	0
	dw	1691
	dw	0
	dw	1692
	dw	0
	dw	1693
	dw	0
	dw	1694
	dw	0
	dw	1695
	dw	0
	dw	1696
	dw	0
	dw	1697
	dw	0
	dw	1698
	dw	0
	dw	1699
	dw	0
	dw	1700
	dw	0
	dw	1701
	dw	0
	dw	1702
	dw	0
	dw	1703
	dw	0
	dw	1704
	dw	0
	dw	1705
	dw	0
	dw	1706
	dw	0
	dw	1707
	dw	0
	dw	1708
	dw	0
	dw	1709
	dw	0
	dw	1710
	dw	0
	dw	1711
	dw	0
	dw	1712
	dw	0
	dw	1713
	dw	0
	dw	1714
	dw	0
	dw	1715
	dw	0
	dw	1716
	dw	0
	dw	1717
	dw	0
	dw	1718
	dw	0
	dw	1719
	dw	0
	dw	1720
	dw	0
	dw	1721
	dw	0
	dw	1722
	dw	0
	dw	1723
	dw	0
	dw	1724
	dw	0
	dw	1725
	dw	0
	dw	1726
	dw	0
	dw	1727
	dw	0
	dw	1728
	dw	0
	dw	1729
	dw	0
	dw	1730
	dw	0
	dw	1731
	dw	0
	dw	1732
	dw	0
	dw	1733
	dw	0
	dw	1734
	dw	0
	dw	1735
	dw	0
	dw	1736
	dw	0
	dw	1737
	dw	0
	dw	1738
	dw	0
	dw	1739
	dw	0
	dw	1740
	dw	0
	dw	1741
	dw	0
	dw	1742
	dw	0
	dw	1743
	dw	0
	dw	1744
	dw	0
	dw	1745
	dw	0
	dw	1746
	dw	0
	dw	1747
	dw	0
	dw	1748
	dw	0
	dw	1749
	dw	0
	dw	1750
	dw	0
	dw	1751
	dw	0
	dw	1752
	dw	0
	dw	1753
	dw	0
	dw	1754
	dw	0
	dw	1755
	dw	0
	dw	1756
	dw	0
	dw	1757
	dw	0
	dw	1758
	dw	0
	dw	1759
	dw	0
	dw	1760
	dw	0
	dw	1761
	dw	0
	dw	1762
	dw	0
	dw	1763
	dw	0
	dw	1764
	dw	0
	dw	1765
	dw	0
	dw	1766
	dw	0
	dw	1767
	dw	0
	dw	1768
	dw	0
	dw	1769
	dw	0
	dw	1770
	dw	0
	dw	1771
	dw	0
	dw	1772
	dw	0
	dw	1773
	dw	0
	dw	1774
	dw	0
	dw	1775
	dw	0
	dw	1776
	dw	0
	dw	1777
	dw	0
	dw	1778
	dw	0
	dw	1779
	dw	0
	dw	1780
	dw	0
	dw	1781
	dw	0
	dw	1782
	dw	0
	dw	1783
	dw	0
	dw	1784
	dw	0
	dw	1785
	dw	0
	dw	1786
	dw	0
	dw	1787
	dw	0
	dw	1788
	dw	0
	dw	1789
	dw	0
	dw	1790
	dw	0
	dw	1791
	dw	0
	dw	1792
	dw	0
	dw	1793
	dw	0
	dw	1794
	dw	0
	dw	1795
	dw	0
	dw	1796
	dw	0
	dw	1797
	dw	0
	dw	1798
	dw	0
	dw	1799
	dw	0
	dw	1800
	dw	0
	dw	1801
	dw	0
	dw	1802
	dw	0
	dw	1803
	dw	0
	dw	1804
	dw	0
	dw	1805
	dw	0
	dw	1806
	dw	0
	dw	1807
	dw	0
	dw	1808
	dw	0
	dw	1809
	dw	0
	dw	1810
	dw	0
	dw	1811
	dw	0
	dw	1812
	dw	0
	dw	1813
	dw	0
	dw	1814
	dw	0
	dw	1815
	dw	0
	dw	1816
	dw	0
	dw	1817
	dw	0
	dw	1818
	dw	0
	dw	1819
	dw	0
	dw	1820
	dw	0
	dw	1821
	dw	0
	dw	1822
	dw	0
	dw	1823
	dw	0
	dw	1824
	dw	0
	dw	1825
	dw	0
	dw	1826
	dw	0
	dw	1827
	dw	0
	dw	1828
	dw	0
	dw	1829
	dw	0
	dw	1830
	dw	0
	dw	1831
	dw	0
	dw	1832
	dw	0
	dw	1833
	dw	0
	dw	1834
	dw	0
	dw	1835
	dw	0
	dw	1836
	dw	0
	dw	1837
	dw	0
	dw	1838
	dw	0
	dw	1839
	dw	0
	dw	1840
	dw	0
	dw	1841
	dw	0
	dw	1842
	dw	0
	dw	1843
	dw	0
	dw	1844
	dw	0
	dw	1845
	dw	0
	dw	1846
	dw	0
	dw	1847
	dw	0
	dw	1848
	dw	0
	dw	1849
	dw	0
	dw	1850
	dw	0
	dw	1851
	dw	0
	dw	1852
	dw	0
	dw	1853
	dw	0
	dw	1854
	dw	0
	dw	1855
	dw	0
	dw	1856
	dw	0
	dw	1857
	dw	0
	dw	1858
	dw	0
	dw	1859
	dw	0
	dw	1860
	dw	0
	dw	1861
	dw	0
	dw	1862
	dw	0
	dw	1863
	dw	0
	dw	1864
	dw	0
	dw	1865
	dw	0
	dw	1866
	dw	0
	dw	1867
	dw	0
	dw	1868
	dw	0
	dw	1869
	dw	0
	dw	1870
	dw	0
	dw	1871
	dw	0
	dw	1872
	dw	0
	dw	1873
	dw	0
	dw	1874
	dw	0
	dw	1875
	dw	0
	dw	1876
	dw	0
	dw	1877
	dw	0
	dw	1878
	dw	0
	dw	1879
	dw	0
	dw	1880
	dw	0
	dw	1881
	dw	0
	dw	1882
	dw	0
	dw	1883
	dw	0
	dw	1884
	dw	0
	dw	1885
	dw	0
	dw	1886
	dw	0
	dw	1887
	dw	0
	dw	1888
	dw	0
	dw	1889
	dw	0
	dw	1890
	dw	0
	dw	1891
	dw	0
	dw	1892
	dw	0
	dw	1893
	dw	0
	dw	1894
	dw	0
	dw	1895
	dw	0
	dw	1896
	dw	0
	dw	1897
	dw	0
	dw	1898
	dw	0
	dw	1899
	dw	0
	dw	1900
	dw	0
	dw	1901
	dw	0
	dw	1902
	dw	0
	dw	1903
	dw	0
	dw	1904
	dw	0
	dw	1905
	dw	0
	dw	1906
	dw	0
?patch659	equ	1564
	dw	?patch660
	dw	1
	db	3
	db	1
	db	0
	db	24
	db	10
	db	66
	db	67
	db	67
	db	51
	db	50
	db	32
	db	55
	db	46
	db	51
	db	48
?patch660	equ	17
$$BSYMS	ends
$$BTYPES	segment byte public use32 'DEBTYP'
	db	2,0,0,0,26,0,9,0,3,0,0,0,1,16,0,0
	db	41,16,0,0,0,0,0,0,86,16,0,0,0,0,0,0
	db	28,0,4,0,16,0,85,16,0,0,2,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,1,0,0,0,180,0,28,0
	db	4,0,11,0,39,16,0,0,2,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,2,0,0,0,172,0,18,0,3,0
	db	4,16,0,0,17,0,0,0,0,0,0,0,168,0,21,0
	db	28,0,5,0,2,0,5,16,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,3,0,0,0,8,0,40,0
	db	4,2,6,4,116,0,0,0,3,0,4,0,0,0,0,0
	db	0,0,0,0,242,241,6,4,116,0,0,0,3,0,5,0
	db	0,0,0,0,0,0,4,0,26,0,9,0,7,16,0,0
	db	2,16,0,0,8,16,0,0,0,0,0,0,9,16,0,0
	db	0,0,0,0,8,0,2,0,10,0,2,16,0,0,8,0
	db	2,0,10,4,2,16,0,0,4,0,1,2,0,0,26,0
	db	9,0,7,16,0,0,2,16,0,0,8,16,0,0,0,0
	db	1,0,13,16,0,0,0,0,0,0,8,0,2,0,42,0
	db	12,16,0,0,8,0,1,0,1,0,2,16,0,0,8,0
	db	1,2,1,0,11,16,0,0,26,0,9,0,116,0,0,0
	db	2,16,0,0,8,16,0,0,0,0,1,0,15,16,0,0
	db	0,0,0,0,8,0,1,2,1,0,116,0,0,0,26,0
	db	9,0,3,0,0,0,2,16,0,0,8,16,0,0,0,0
	db	1,0,17,16,0,0,0,0,0,0,8,0,1,2,1,0
	db	116,0,0,0,26,0,9,0,3,0,0,0,2,16,0,0
	db	8,16,0,0,0,0,3,0,19,16,0,0,0,0,0,0
	db	16,0,1,2,3,0,116,0,0,0,116,0,0,0,116,0
	db	0,0,26,0,9,0,116,0,0,0,2,16,0,0,8,16
	db	0,0,0,0,2,0,21,16,0,0,0,0,0,0,12,0
	db	1,2,2,0,116,0,0,0,116,0,0,0,26,0,9,0
	db	3,0,0,0,2,16,0,0,8,16,0,0,0,0,0,0
	db	23,16,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,116,0,0,0,2,16,0,0,8,16,0,0,0,0
	db	0,0,25,16,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,116,0,0,0,2,16,0,0,8,16,0,0
	db	0,0,0,0,27,16,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,48,0,0,0,2,16,0,0,8,16
	db	0,0,0,0,1,0,29,16,0,0,0,0,0,0,8,0
	db	1,2,1,0,116,0,0,0,22,0,7,2,3,4,6,16
	db	0,0,0,0,0,0,35,20,10,16,0,0,0,0,0,0
	db	12,0,7,2,3,0,14,16,0,0,0,0,0,0,12,0
	db	7,2,3,0,16,16,0,0,0,0,0,0,12,0,7,2
	db	3,0,18,16,0,0,0,0,0,0,12,0,7,2,3,0
	db	20,16,0,0,0,0,0,0,12,0,7,2,3,0,22,16
	db	0,0,0,0,0,0,12,0,7,2,3,0,24,16,0,0
	db	0,0,0,0,12,0,7,2,3,0,26,16,0,0,0,0
	db	0,0,12,0,7,2,3,0,28,16,0,0,0,0,0,0
	db	150,0,4,2,6,4,116,0,0,0,3,0,6,0,0,0
	db	0,0,0,0,0,0,242,241,6,4,3,16,0,0,3,0
	db	7,0,0,0,0,0,0,0,4,0,242,241,8,4,2,0
	db	30,16,0,0,8,0,0,0,8,4,1,0,31,16,0,0
	db	9,0,0,0,8,4,1,0,32,16,0,0,10,0,0,0
	db	8,4,1,0,33,16,0,0,11,0,0,0,8,4,1,0
	db	34,16,0,0,12,0,0,0,8,4,1,0,35,16,0,0
	db	13,0,0,0,8,4,1,0,36,16,0,0,14,0,0,0
	db	8,4,1,0,37,16,0,0,15,0,0,0,8,4,1,0
	db	38,16,0,0,16,0,0,0,26,0,9,0,3,0,0,0
	db	1,16,0,0,41,16,0,0,0,0,0,0,42,16,0,0
	db	0,0,0,0,8,0,2,0,10,4,1,16,0,0,4,0
	db	1,2,0,0,26,0,9,0,116,0,0,0,1,16,0,0
	db	41,16,0,0,0,0,0,0,44,16,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,48,0,0,0,1,16
	db	0,0,41,16,0,0,0,0,0,0,46,16,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,116,0,0,0
	db	1,16,0,0,41,16,0,0,0,0,1,0,48,16,0,0
	db	0,0,0,0,8,0,1,2,1,0,116,0,0,0,26,0
	db	9,0,116,0,0,0,1,16,0,0,41,16,0,0,0,0
	db	1,0,50,16,0,0,0,0,0,0,8,0,1,2,1,0
	db	116,0,0,0,26,0,9,0,116,0,0,0,1,16,0,0
	db	41,16,0,0,0,0,0,0,52,16,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,116,0,0,0,1,16
	db	0,0,41,16,0,0,0,0,1,0,54,16,0,0,0,0
	db	0,0,8,0,1,2,1,0,116,0,0,0,26,0,9,0
	db	116,0,0,0,1,16,0,0,41,16,0,0,0,0,0,0
	db	56,16,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,3,0,0,0,1,16,0,0,41,16,0,0,0,0
	db	2,0,58,16,0,0,0,0,0,0,12,0,1,2,2,0
	db	116,0,0,0,116,0,0,0,26,0,9,0,3,0,0,0
	db	1,16,0,0,41,16,0,0,0,0,2,0,60,16,0,0
	db	0,0,0,0,12,0,1,2,2,0,116,0,0,0,116,0
	db	0,0,26,0,9,0,3,0,0,0,1,16,0,0,41,16
	db	0,0,0,0,1,0,62,16,0,0,0,0,0,0,8,0
	db	1,2,1,0,116,0,0,0,26,0,9,0,3,0,0,0
	db	1,16,0,0,41,16,0,0,0,0,0,0,64,16,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,66,16
	db	0,0,1,16,0,0,41,16,0,0,0,0,0,0,67,16
	db	0,0,0,0,0,0,8,0,2,0,10,0,1,16,0,0
	db	4,0,1,2,0,0,26,0,9,0,66,16,0,0,1,16
	db	0,0,41,16,0,0,0,0,1,0,71,16,0,0,0,0
	db	0,0,8,0,2,0,42,0,70,16,0,0,8,0,1,0
	db	1,0,1,16,0,0,8,0,1,2,1,0,69,16,0,0
	db	12,0,7,2,3,0,40,16,0,0,0,0,0,0,12,0
	db	7,2,3,0,43,16,0,0,0,0,0,0,12,0,7,2
	db	3,0,45,16,0,0,0,0,0,0,12,0,7,2,3,0
	db	47,16,0,0,0,0,0,0,12,0,7,2,3,0,49,16
	db	0,0,0,0,0,0,12,0,7,2,3,0,51,16,0,0
	db	0,0,0,0,12,0,7,2,3,0,53,16,0,0,0,0
	db	0,0,12,0,7,2,3,0,55,16,0,0,0,0,0,0
	db	12,0,7,2,3,0,57,16,0,0,0,0,0,0,12,0
	db	7,2,3,0,59,16,0,0,0,0,0,0,12,0,7,2
	db	3,0,61,16,0,0,0,0,0,0,12,0,7,2,3,0
	db	63,16,0,0,0,0,0,0,22,0,7,2,35,20,65,16
	db	0,0,0,0,0,0,35,20,68,16,0,0,0,0,0,0
	db	218,0,4,2,6,4,116,0,0,0,1,0,17,0,0,0
	db	0,0,0,0,0,0,242,241,6,4,2,16,0,0,3,0
	db	18,0,0,0,0,0,0,0,4,0,242,241,6,4,116,0
	db	0,0,3,0,19,0,0,0,0,0,0,0,176,0,242,241
	db	8,4,1,0,72,16,0,0,20,0,0,0,8,4,1,0
	db	73,16,0,0,21,0,0,0,8,4,1,0,74,16,0,0
	db	22,0,0,0,8,4,1,0,75,16,0,0,23,0,0,0
	db	8,4,1,0,76,16,0,0,24,0,0,0,8,4,1,0
	db	77,16,0,0,25,0,0,0,8,4,1,0,78,16,0,0
	db	26,0,0,0,8,4,1,0,79,16,0,0,27,0,0,0
	db	8,4,1,0,80,16,0,0,28,0,0,0,8,4,1,0
	db	81,16,0,0,29,0,0,0,8,4,1,0,82,16,0,0
	db	30,0,0,0,8,4,1,0,83,16,0,0,31,0,0,0
	db	8,4,2,0,84,16,0,0,32,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,48,0,0,0,1,16,0,0,41,16
	db	0,0,0,0,0,0,88,16,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,116,0,0,0,1,16,0,0
	db	41,16,0,0,0,0,0,0,90,16,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,116,0,0,0,1,16
	db	0,0,41,16,0,0,0,0,0,0,92,16,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,116,0,0,0
	db	1,16,0,0,41,16,0,0,0,0,1,0,94,16,0,0
	db	0,0,0,0,8,0,1,2,1,0,116,0,0,0,26,0
	db	9,0,116,0,0,0,1,16,0,0,41,16,0,0,0,0
	db	1,0,96,16,0,0,0,0,0,0,8,0,1,2,1,0
	db	116,0,0,0,26,0,9,0,116,0,0,0,1,16,0,0
	db	41,16,0,0,0,0,1,0,98,16,0,0,0,0,0,0
	db	8,0,1,2,1,0,116,0,0,0,26,0,9,0,116,0
	db	0,0,1,16,0,0,41,16,0,0,0,0,0,0,100,16
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	3,0,0,0,1,16,0,0,41,16,0,0,0,0,2,0
	db	102,16,0,0,0,0,0,0,12,0,1,2,2,0,116,0
	db	0,0,116,0,0,0,26,0,9,0,3,0,0,0,1,16
	db	0,0,41,16,0,0,0,0,2,0,104,16,0,0,0,0
	db	0,0,12,0,1,2,2,0,116,0,0,0,116,0,0,0
	db	26,0,9,0,3,0,0,0,1,16,0,0,41,16,0,0
	db	0,0,0,0,106,16,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,3,0,0,0,1,16,0,0,41,16
	db	0,0,0,0,1,0,108,16,0,0,0,0,0,0,8,0
	db	1,2,1,0,116,0,0,0,14,0,8,0,110,16,0,0
	db	0,0,2,0,108,22,0,0,8,0,2,0,42,0,111,16
	db	0,0,28,0,4,0,24,0,107,22,0,0,34,1,0,0
	db	0,0,0,0,0,0,112,16,0,0,75,0,0,0,72,0
	db	5,0,10,0,1,0,5,8,0,2,0,10,0,112,16,0
	db	0,28,0,4,0,27,0,232,21,0,0,34,1,0,0,0
	db	0,0,0,0,0,115,16,0,0,76,0,0,0,64,0,5
	db	0,10,0,1,0,5,8,0,2,0,10,0,115,16,0,0
	db	28,0,4,0,59,0,118,20,0,0,34,1,0,0,0,0
	db	0,0,0,0,118,16,0,0,77,0,0,0,48,0,5,0
	db	10,0,1,0,5,8,0,2,0,10,0,118,16,0,0,28
	db	0,4,0,42,0,137,16,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,78,0,0,0,8,0,20,0,7
	db	0,1,0,116,0,0,0,122,16,0,0,120,16,0,0,79
	db	0,0,0,32,0,4,2,3,4,0,0,80,0,0,0,0
	db	0,0,0,1,0,242,241,3,4,0,0,81,0,0,0,0
	db	0,0,0,1,0,20,0,7,0,2,0,116,0,0,0,124
	db	16,0,0,120,16,0,0,82,0,0,0,64,0,4,2,3
	db	4,0,0,83,0,0,0,0,0,0,0,2,128,255,255,3
	db	4,0,0,84,0,0,0,0,0,0,0,0,0,242,241,3
	db	4,0,0,85,0,0,0,0,0,0,0,2,128,255,255,3
	db	4,0,0,86,0,0,0,0,0,0,0,0,0,8,0,1
	db	0,1,0,123,16,0,0,20,0,7,0,1,0,116,0,0
	db	0,127,16,0,0,120,16,0,0,87,0,0,0,32,0,4
	db	2,3,4,0,0,88,0,0,0,0,0,0,0,23,0,242
	db	241,3,4,0,0,89,0,0,0,0,0,0,0,23,0,8
	db	0,1,0,1,0,126,16,0,0,20,0,7,0,1,0,116
	db	0,0,0,130,16,0,0,120,16,0,0,90,0,0,0,32
	db	0,4,2,3,4,0,0,91,0,0,0,0,0,0,0,255
	db	0,242,241,3,4,0,0,92,0,0,0,0,0,0,0,255
	db	0,8,0,1,0,1,0,129,16,0,0,20,0,7,0,1
	db	0,116,0,0,0,133,16,0,0,120,16,0,0,93,0,0
	db	0,32,0,4,2,3,4,0,0,94,0,0,0,0,0,0
	db	0,3,0,242,241,3,4,0,0,95,0,0,0,0,0,0
	db	0,3,0,8,0,1,0,1,0,132,16,0,0,20,0,7
	db	0,1,0,116,0,0,0,136,16,0,0,120,16,0,0,96
	db	0,0,0,32,0,4,2,3,4,0,0,97,0,0,0,0
	db	0,0,0,182,1,242,241,3,4,0,0,98,0,0,0,0
	db	0,0,0,182,1,160,2,4,2,9,4,121,16,0,0,99
	db	0,0,0,0,0,0,0,242,241,9,4,123,16,0,0,100
	db	0,0,0,0,0,0,0,242,241,7,4,125,16,0,0,3
	db	0,101,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,102,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,103,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,104,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,105,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,106,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,107,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,108,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,109,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,110,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,111,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,112,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,113,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,114,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,115,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,116,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,117,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,118,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,119,0,0,0,0,0,0,0,7,4,125,16,0,0,3
	db	0,120,0,0,0,0,0,0,0,9,4,126,16,0,0,121
	db	0,0,0,0,0,0,0,242,241,7,4,128,16,0,0,3
	db	0,122,0,0,0,0,0,0,0,7,4,128,16,0,0,3
	db	0,123,0,0,0,0,0,0,0,7,4,128,16,0,0,3
	db	0,124,0,0,0,0,0,0,0,7,4,128,16,0,0,3
	db	0,125,0,0,0,0,0,0,0,7,4,128,16,0,0,3
	db	0,126,0,0,0,0,0,0,0,9,4,129,16,0,0,127
	db	0,0,0,0,0,0,0,242,241,7,4,131,16,0,0,3
	db	0,128,0,0,0,0,0,0,0,7,4,131,16,0,0,3
	db	0,129,0,0,0,0,0,0,0,7,4,131,16,0,0,3
	db	0,130,0,0,0,0,0,0,0,7,4,131,16,0,0,3
	db	0,131,0,0,0,0,0,0,0,7,4,131,16,0,0,3
	db	0,132,0,0,0,0,0,0,0,7,4,131,16,0,0,3
	db	0,133,0,0,0,0,0,0,0,7,4,131,16,0,0,3
	db	0,134,0,0,0,0,0,0,0,7,4,131,16,0,0,3
	db	0,135,0,0,0,0,0,0,0,9,4,132,16,0,0,136
	db	0,0,0,0,0,0,0,242,241,7,4,134,16,0,0,3
	db	0,137,0,0,0,0,0,0,0,7,4,134,16,0,0,3
	db	0,138,0,0,0,0,0,0,0,7,4,134,16,0,0,3
	db	0,139,0,0,0,0,0,0,0,9,4,135,16,0,0,140
	db	0,0,0,0,0,0,0,28,0,4,0,0,0,139,16,0
	db	0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,141
	db	0,0,0,0,0,2,0,4,2,20,0,7,0,3,0,116
	db	0,0,0,141,16,0,0,117,16,0,0,142,0,0,0,96
	db	0,4,2,3,4,0,0,143,0,0,0,0,0,0,0,0
	db	0,242,241,3,4,0,0,144,0,0,0,0,0,0,0,1
	db	0,242,241,3,4,0,0,145,0,0,0,0,0,0,0,2
	db	0,242,241,3,4,0,0,146,0,0,0,0,0,0,0,0
	db	0,242,241,3,4,0,0,147,0,0,0,0,0,0,0,1
	db	0,242,241,3,4,0,0,148,0,0,0,0,0,0,0,2
	db	0,8,0,2,0,10,0,143,16,0,0,14,0,8,0,3
	db	0,0,0,0,0,3,0,145,16,0,0,8,0,2,0,42
	db	0,117,16,0,0,16,0,1,2,3,0,140,16,0,0,144
	db	16,0,0,116,0,0,0,28,0,4,0,5,0,229,18,0
	db	0,42,1,117,16,0,0,0,0,0,0,147,16,0,0,149
	db	0,0,0,48,0,5,0,10,0,1,0,5,8,0,2,0
	db	10,0,147,16,0,0,28,0,4,0,7,0,212,18,0,0
	db	34,1,0,0,0,0,0,0,0,0,150,16,0,0,150,0
	db	0,0,48,0,5,0,10,0,2,0,85,8,0,2,0,10
	db	0,150,16,0,0,28,0,4,0,6,0,183,16,0,0,34
	db	1,0,0,0,0,0,0,0,0,153,16,0,0,151,0,0
	db	0,4,0,5,0,10,0,2,0,85,8,0,2,0,10,0
	db	153,16,0,0,26,0,9,0,156,16,0,0,152,16,0,0
	db	0,0,0,0,0,0,1,0,161,16,0,0,0,0,0,0
	db	8,0,2,0,10,0,157,16,0,0,14,0,8,0,3,0
	db	0,0,0,0,1,0,160,16,0,0,8,0,2,0,42,0
	db	159,16,0,0,8,0,1,0,1,0,152,16,0,0,8,0
	db	1,2,1,0,158,16,0,0,8,0,1,2,1,0,156,16
	db	0,0,26,0,9,0,163,16,0,0,152,16,0,0,164,16
	db	0,0,0,0,0,0,165,16,0,0,0,0,0,0,8,0
	db	2,0,10,0,152,16,0,0,8,0,2,0,10,4,152,16
	db	0,0,4,0,1,2,0,0,26,0,9,0,163,16,0,0
	db	152,16,0,0,164,16,0,0,0,0,1,0,167,16,0,0
	db	0,0,0,0,8,0,1,2,1,0,158,16,0,0,26,0
	db	9,0,3,0,0,0,152,16,0,0,164,16,0,0,0,0
	db	0,0,169,16,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,171,16,0,0,152,16,0,0,173,16,0,0
	db	0,0,0,0,174,16,0,0,0,0,0,0,8,0,2,0
	db	10,0,172,16,0,0,8,0,1,0,1,0,112,0,0,0
	db	8,0,2,0,10,4,159,16,0,0,4,0,1,2,0,0
	db	26,0,9,0,176,16,0,0,152,16,0,0,164,16,0,0
	db	0,0,1,0,177,16,0,0,0,0,0,0,8,0,2,0
	db	42,0,152,16,0,0,8,0,1,2,1,0,158,16,0,0
	db	12,0,7,2,11,0,155,16,0,0,0,0,0,0,22,0
	db	7,2,3,4,162,16,0,0,0,0,0,0,35,20,166,16
	db	0,0,0,0,0,0,16,0,7,2,19,8,168,16,0,0
	db	0,0,0,0,0,0,0,0,16,0,7,2,19,0,170,16
	db	0,0,0,0,0,0,4,0,0,0,12,0,7,2,35,17
	db	175,16,0,0,0,0,0,0,70,0,4,2,10,4,154,16
	db	0,0,0,0,8,4,1,0,178,16,0,0,152,0,0,0
	db	8,4,2,0,179,16,0,0,153,0,0,0,8,4,1,0
	db	180,16,0,0,154,0,0,0,8,4,1,0,181,16,0,0
	db	155,0,0,0,8,4,1,0,182,16,0,0,156,0,0,0
	db	26,0,9,0,185,16,0,0,149,16,0,0,186,16,0,0
	db	0,0,1,0,195,18,0,0,0,0,0,0,8,0,2,0
	db	10,0,149,16,0,0,8,0,2,0,10,4,149,16,0,0
	db	8,0,2,0,42,0,188,16,0,0,8,0,1,0,1,0
	db	189,16,0,0,28,0,4,0,73,0,194,18,0,0,34,1
	db	0,0,0,0,0,0,0,0,0,0,0,0,157,0,0,0
	db	40,0,28,0,4,0,5,0,4,17,0,0,34,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,158,0,0,0,16,0
	db	28,0,4,0,3,0,202,16,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,159,0,0,0,8,0,28,0
	db	5,0,0,0,193,16,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,160,0,0,0,8,0,2,0,4,2
	db	26,0,9,0,3,0,0,0,191,16,0,0,195,16,0,0
	db	0,0,0,0,197,16,0,0,0,0,0,0,8,0,2,0
	db	10,4,196,16,0,0,8,0,1,0,1,0,191,16,0,0
	db	4,0,1,2,0,0,26,0,9,0,3,0,0,0,191,16
	db	0,0,195,16,0,0,0,0,0,0,199,16,0,0,0,0
	db	0,0,4,0,1,2,0,0,12,0,7,2,3,0,194,16
	db	0,0,0,0,0,0,12,0,7,2,3,0,198,16,0,0
	db	0,0,0,0,38,0,4,2,0,4,192,16,0,0,3,0
	db	0,0,242,241,8,4,1,0,200,16,0,0,161,0,0,0
	db	8,4,1,0,201,16,0,0,162,0,0,0,28,0,4,0
	db	17,0,246,16,0,0,34,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,163,0,0,0,8,0,28,0,5,0,1,0
	db	205,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,164,0,0,0,8,0,16,0,4,2,9,4,112,0
	db	0,0,165,0,0,0,0,0,0,0,8,0,2,0,42,0
	db	112,0,0,0,8,0,2,0,42,0,172,16,0,0,26,0
	db	9,0,112,4,0,0,203,16,0,0,209,16,0,0,0,0
	db	1,0,211,16,0,0,0,0,0,0,8,0,2,0,10,4
	db	210,16,0,0,8,0,1,0,1,0,203,16,0,0,8,0
	db	1,2,1,0,206,16,0,0,26,0,9,0,171,16,0,0
	db	203,16,0,0,209,16,0,0,0,0,1,0,213,16,0,0
	db	0,0,0,0,8,0,1,2,1,0,207,16,0,0,26,0
	db	9,0,215,16,0,0,203,16,0,0,216,16,0,0,0,0
	db	0,0,217,16,0,0,0,0,0,0,8,0,2,0,10,0
	db	203,16,0,0,8,0,2,0,10,4,203,16,0,0,4,0
	db	1,2,0,0,26,0,9,0,215,16,0,0,203,16,0,0
	db	216,16,0,0,0,0,1,0,220,16,0,0,0,0,0,0
	db	8,0,2,0,42,0,210,16,0,0,8,0,1,2,1,0
	db	219,16,0,0,26,0,9,0,3,0,0,0,203,16,0,0
	db	216,16,0,0,0,0,2,0,222,16,0,0,0,0,0,0
	db	12,0,1,2,2,0,112,4,0,0,117,0,0,0,26,0
	db	9,0,112,4,0,0,203,16,0,0,216,16,0,0,0,0
	db	1,0,224,16,0,0,0,0,0,0,8,0,1,2,1,0
	db	117,0,0,0,26,0,9,0,112,4,0,0,203,16,0,0
	db	216,16,0,0,0,0,2,0,228,16,0,0,0,0,0,0
	db	8,0,2,0,10,0,227,16,0,0,8,0,1,0,1,0
	db	3,0,0,0,12,0,1,2,2,0,117,0,0,0,226,16
	db	0,0,26,0,9,0,3,0,0,0,203,16,0,0,216,16
	db	0,0,0,0,2,0,230,16,0,0,0,0,0,0,12,0
	db	1,2,2,0,112,4,0,0,207,16,0,0,26,0,9,0
	db	3,0,0,0,203,16,0,0,216,16,0,0,0,0,1,0
	db	232,16,0,0,0,0,0,0,8,0,1,2,1,0,112,4
	db	0,0,26,0,9,0,117,0,0,0,203,16,0,0,209,16
	db	0,0,0,0,0,0,234,16,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,236,16,0,0,203,16,0,0
	db	216,16,0,0,0,0,1,0,237,16,0,0,0,0,0,0
	db	8,0,2,0,42,0,203,16,0,0,8,0,1,2,1,0
	db	219,16,0,0,22,0,7,2,3,0,208,16,0,0,0,0
	db	0,0,3,0,212,16,0,0,0,0,0,0,32,0,7,2
	db	3,4,214,16,0,0,0,0,0,0,3,4,218,16,0,0
	db	0,0,0,0,3,4,0,0,0,0,0,0,0,0,12,0
	db	7,2,3,0,221,16,0,0,0,0,0,0,22,0,7,2
	db	3,0,223,16,0,0,0,0,0,0,3,0,225,16,0,0
	db	0,0,0,0,12,0,7,2,3,0,229,16,0,0,0,0
	db	0,0,12,0,7,2,3,0,231,16,0,0,0,0,0,0
	db	12,0,7,2,3,0,233,16,0,0,0,0,0,0,12,0
	db	7,2,35,17,235,16,0,0,0,0,0,0,238,0,4,2
	db	0,4,204,16,0,0,3,0,0,0,242,241,9,4,204,16
	db	0,0,166,0,0,0,0,0,0,0,242,241,9,4,112,0
	db	0,0,167,0,0,0,0,0,0,0,242,241,9,4,112,4
	db	0,0,168,0,0,0,0,0,0,0,242,241,9,4,206,16
	db	0,0,169,0,0,0,0,0,0,0,242,241,9,4,171,16
	db	0,0,170,0,0,0,0,0,0,0,242,241,9,4,207,16
	db	0,0,171,0,0,0,0,0,0,0,242,241,9,4,117,0
	db	0,0,172,0,0,0,0,0,0,0,242,241,9,4,116,0
	db	0,0,173,0,0,0,0,0,0,0,242,241,8,4,2,0
	db	238,16,0,0,174,0,0,0,8,4,3,0,239,16,0,0
	db	175,0,0,0,8,4,1,0,240,16,0,0,176,0,0,0
	db	8,4,2,0,241,16,0,0,177,0,0,0,8,4,1,0
	db	242,16,0,0,178,0,0,0,8,4,1,0,243,16,0,0
	db	179,0,0,0,8,4,1,0,244,16,0,0,180,0,0,0
	db	8,4,1,0,245,16,0,0,181,0,0,0,26,0,9,0
	db	248,16,0,0,190,16,0,0,249,16,0,0,0,0,1,0
	db	250,16,0,0,0,0,0,0,8,0,2,0,10,0,190,16
	db	0,0,8,0,2,0,10,4,190,16,0,0,8,0,1,2
	db	1,0,203,16,0,0,26,0,9,0,248,16,0,0,190,16
	db	0,0,249,16,0,0,0,0,1,0,254,16,0,0,0,0
	db	0,0,8,0,2,0,42,0,253,16,0,0,8,0,1,0
	db	1,0,190,16,0,0,8,0,1,2,1,0,252,16,0,0
	db	26,0,9,0,0,17,0,0,190,16,0,0,249,16,0,0
	db	0,0,1,0,1,17,0,0,0,0,0,0,8,0,2,0
	db	42,0,190,16,0,0,8,0,1,2,1,0,252,16,0,0
	db	22,0,7,2,2,4,247,16,0,0,0,0,0,0,35,20
	db	251,16,0,0,0,0,0,0,12,0,7,2,35,17,255,16
	db	0,0,0,0,0,0,74,0,4,2,0,4,191,16,0,0
	db	3,0,0,0,242,241,9,4,203,16,0,0,182,0,0,0
	db	0,0,0,0,242,241,8,4,2,0,2,17,0,0,183,0
	db	0,0,6,4,203,16,0,0,2,0,184,0,0,0,0,0
	db	0,0,8,0,242,241,8,4,1,0,3,17,0,0,185,0
	db	0,0,28,0,4,0,0,0,6,17,0,0,2,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,186,0,0,0,0,0
	db	2,0,4,2,28,0,4,0,25,0,84,17,0,0,2,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,187,0,0,0
	db	16,0,28,0,5,0,1,0,19,17,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,188,0,0,0,8,0
	db	28,0,5,0,6,0,18,17,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,189,0,0,0,8,0,28,0
	db	5,0,1,0,17,17,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,190,0,0,0,8,0,28,0,5,0
	db	1,0,16,17,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,191,0,0,0,8,0,28,0,5,0,1,0
	db	15,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,192,0,0,0,8,0,28,0,5,0,0,0,14,17
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	193,0,0,0,8,0,2,0,4,2,12,0,4,2,0,4
	db	13,17,0,0,3,0,0,0,12,0,4,2,0,4,12,17
	db	0,0,3,0,0,0,12,0,4,2,0,4,11,17,0,0
	db	3,0,0,0,96,0,4,2,9,4,10,17,0,0,194,0
	db	0,0,0,0,0,0,242,241,9,4,112,0,0,0,195,0
	db	0,0,0,0,0,0,242,241,9,4,116,0,0,0,196,0
	db	0,0,0,0,0,0,242,241,9,4,116,0,0,0,197,0
	db	0,0,0,0,0,0,242,241,9,4,171,16,0,0,198,0
	db	0,0,0,0,0,0,242,241,9,4,207,16,0,0,199,0
	db	0,0,0,0,0,0,12,0,4,2,0,4,9,17,0,0
	db	3,0,0,0,26,0,9,0,21,17,0,0,7,17,0,0
	db	22,17,0,0,0,0,0,0,23,17,0,0,0,0,0,0
	db	8,0,2,0,10,0,7,17,0,0,8,0,2,0,10,4
	db	7,17,0,0,4,0,1,2,0,0,26,0,9,0,21,17
	db	0,0,7,17,0,0,22,17,0,0,0,0,1,0,25,17
	db	0,0,0,0,0,0,8,0,1,2,1,0,171,16,0,0
	db	26,0,9,0,21,17,0,0,7,17,0,0,22,17,0,0
	db	0,0,1,0,29,17,0,0,0,0,0,0,8,0,2,0
	db	42,0,28,17,0,0,8,0,1,0,1,0,7,17,0,0
	db	8,0,1,2,1,0,27,17,0,0,26,0,9,0,207,16
	db	0,0,7,17,0,0,31,17,0,0,0,0,0,0,32,17
	db	0,0,0,0,0,0,8,0,2,0,10,4,28,17,0,0
	db	4,0,1,2,0,0,26,0,9,0,171,16,0,0,7,17
	db	0,0,31,17,0,0,0,0,0,0,34,17,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,36,17,0,0
	db	7,17,0,0,22,17,0,0,0,0,0,0,37,17,0,0
	db	0,0,0,0,8,0,2,0,42,0,7,17,0,0,4,0
	db	1,2,0,0,26,0,9,0,7,17,0,0,7,17,0,0
	db	22,17,0,0,0,0,1,0,39,17,0,0,0,0,0,0
	db	8,0,1,2,1,0,116,0,0,0,26,0,9,0,36,17
	db	0,0,7,17,0,0,22,17,0,0,0,0,0,0,41,17
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	7,17,0,0,7,17,0,0,22,17,0,0,0,0,1,0
	db	43,17,0,0,0,0,0,0,8,0,1,2,1,0,116,0
	db	0,0,26,0,9,0,36,17,0,0,7,17,0,0,22,17
	db	0,0,0,0,1,0,45,17,0,0,0,0,0,0,8,0
	db	1,2,1,0,116,0,0,0,26,0,9,0,7,17,0,0
	db	7,17,0,0,31,17,0,0,0,0,1,0,47,17,0,0
	db	0,0,0,0,8,0,1,2,1,0,116,0,0,0,26,0
	db	9,0,36,17,0,0,7,17,0,0,22,17,0,0,0,0
	db	1,0,49,17,0,0,0,0,0,0,8,0,1,2,1,0
	db	116,0,0,0,26,0,9,0,7,17,0,0,7,17,0,0
	db	31,17,0,0,0,0,1,0,51,17,0,0,0,0,0,0
	db	8,0,1,2,1,0,116,0,0,0,26,0,9,0,116,0
	db	0,0,7,17,0,0,31,17,0,0,0,0,1,0,53,17
	db	0,0,0,0,0,0,8,0,1,2,1,0,27,17,0,0
	db	26,0,9,0,207,16,0,0,7,17,0,0,31,17,0,0
	db	0,0,1,0,55,17,0,0,0,0,0,0,8,0,1,2
	db	1,0,116,0,0,0,26,0,9,0,48,0,0,0,7,17
	db	0,0,31,17,0,0,0,0,1,0,57,17,0,0,0,0
	db	0,0,8,0,1,2,1,0,27,17,0,0,26,0,9,0
	db	48,0,0,0,7,17,0,0,31,17,0,0,0,0,1,0
	db	59,17,0,0,0,0,0,0,8,0,1,2,1,0,27,17
	db	0,0,26,0,9,0,48,0,0,0,7,17,0,0,31,17
	db	0,0,0,0,1,0,61,17,0,0,0,0,0,0,8,0
	db	1,2,1,0,27,17,0,0,26,0,9,0,48,0,0,0
	db	7,17,0,0,31,17,0,0,0,0,1,0,63,17,0,0
	db	0,0,0,0,8,0,1,2,1,0,27,17,0,0,26,0
	db	9,0,48,0,0,0,7,17,0,0,31,17,0,0,0,0
	db	1,0,65,17,0,0,0,0,0,0,8,0,1,2,1,0
	db	27,17,0,0,26,0,9,0,48,0,0,0,7,17,0,0
	db	31,17,0,0,0,0,1,0,67,17,0,0,0,0,0,0
	db	8,0,1,2,1,0,27,17,0,0,32,0,7,2,3,4
	db	20,17,0,0,0,0,0,0,3,4,24,17,0,0,0,0
	db	0,0,35,20,26,17,0,0,0,0,0,0,12,0,7,2
	db	3,1,30,17,0,0,0,0,0,0,12,0,7,2,3,1
	db	33,17,0,0,0,0,0,0,22,0,7,2,3,1,35,17
	db	0,0,0,0,0,0,3,1,38,17,0,0,0,0,0,0
	db	22,0,7,2,3,1,40,17,0,0,0,0,0,0,3,1
	db	42,17,0,0,0,0,0,0,12,0,7,2,3,1,44,17
	db	0,0,0,0,0,0,12,0,7,2,3,1,46,17,0,0
	db	0,0,0,0,12,0,7,2,3,1,48,17,0,0,0,0
	db	0,0,22,0,7,2,3,1,50,17,0,0,0,0,0,0
	db	3,1,52,17,0,0,0,0,0,0,12,0,7,2,3,1
	db	54,17,0,0,0,0,0,0,12,0,7,2,3,1,56,17
	db	0,0,0,0,0,0,12,0,7,2,3,1,58,17,0,0
	db	0,0,0,0,12,0,7,2,3,1,60,17,0,0,0,0
	db	0,0,12,0,7,2,3,1,62,17,0,0,0,0,0,0
	db	12,0,7,2,3,1,64,17,0,0,0,0,0,0,12,0
	db	7,2,3,1,66,17,0,0,0,0,0,0,80,1,4,2
	db	0,4,8,17,0,0,3,0,0,0,242,241,9,4,7,17
	db	0,0,200,0,0,0,0,0,0,0,242,241,9,4,189,16
	db	0,0,201,0,0,0,0,0,0,0,242,241,9,4,10,17
	db	0,0,202,0,0,0,0,0,0,0,242,241,9,4,112,0
	db	0,0,203,0,0,0,0,0,0,0,242,241,9,4,116,0
	db	0,0,204,0,0,0,0,0,0,0,242,241,9,4,171,16
	db	0,0,205,0,0,0,0,0,0,0,242,241,9,4,207,16
	db	0,0,206,0,0,0,0,0,0,0,242,241,8,4,3,0
	db	68,17,0,0,207,0,0,0,8,4,1,0,69,17,0,0
	db	208,0,0,0,8,4,1,0,70,17,0,0,209,0,0,0
	db	8,4,2,0,71,17,0,0,210,0,0,0,8,4,2,0
	db	72,17,0,0,211,0,0,0,8,4,1,0,73,17,0,0
	db	212,0,0,0,8,4,1,0,74,17,0,0,213,0,0,0
	db	8,4,1,0,75,17,0,0,214,0,0,0,8,4,2,0
	db	76,17,0,0,215,0,0,0,8,4,1,0,77,17,0,0
	db	216,0,0,0,8,4,1,0,78,17,0,0,217,0,0,0
	db	8,4,1,0,79,17,0,0,218,0,0,0,8,4,1,0
	db	80,17,0,0,219,0,0,0,8,4,1,0,81,17,0,0
	db	220,0,0,0,8,4,1,0,82,17,0,0,221,0,0,0
	db	8,4,1,0,83,17,0,0,222,0,0,0,6,4,171,16
	db	0,0,3,0,223,0,0,0,0,0,0,0,8,0,28,0
	db	4,0,0,0,86,17,0,0,2,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,224,0,0,0,0,0,2,0,4,2
	db	28,0,4,0,0,0,88,17,0,0,2,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,225,0,0,0,0,0,2,0
	db	4,2,26,0,9,0,90,17,0,0,189,16,0,0,91,17
	db	0,0,0,0,0,0,92,17,0,0,0,0,0,0,8,0
	db	2,0,10,0,189,16,0,0,8,0,2,0,10,4,189,16
	db	0,0,4,0,1,2,0,0,26,0,9,0,90,17,0,0
	db	189,16,0,0,91,17,0,0,0,0,1,0,94,17,0,0
	db	0,0,0,0,8,0,1,2,1,0,219,16,0,0,26,0
	db	9,0,90,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	1,0,96,17,0,0,0,0,0,0,8,0,1,2,1,0
	db	187,16,0,0,26,0,9,0,90,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,3,0,98,17,0,0,0,0,0,0
	db	16,0,1,2,3,0,187,16,0,0,117,0,0,0,117,0
	db	0,0,26,0,9,0,90,17,0,0,189,16,0,0,91,17
	db	0,0,0,0,4,0,100,17,0,0,0,0,0,0,20,0
	db	1,2,4,0,187,16,0,0,117,0,0,0,117,0,0,0
	db	219,16,0,0,26,0,9,0,90,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,2,0,102,17,0,0,0,0,0,0
	db	12,0,1,2,2,0,171,16,0,0,117,0,0,0,26,0
	db	9,0,90,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	3,0,104,17,0,0,0,0,0,0,16,0,1,2,3,0
	db	171,16,0,0,117,0,0,0,219,16,0,0,26,0,9,0
	db	90,17,0,0,189,16,0,0,91,17,0,0,0,0,1,0
	db	106,17,0,0,0,0,0,0,8,0,1,2,1,0,171,16
	db	0,0,26,0,9,0,90,17,0,0,189,16,0,0,91,17
	db	0,0,0,0,2,0,108,17,0,0,0,0,0,0,12,0
	db	1,2,2,0,171,16,0,0,219,16,0,0,26,0,9,0
	db	90,17,0,0,189,16,0,0,91,17,0,0,0,0,2,0
	db	110,17,0,0,0,0,0,0,12,0,1,2,2,0,117,0
	db	0,0,112,0,0,0,26,0,9,0,90,17,0,0,189,16
	db	0,0,91,17,0,0,0,0,3,0,112,17,0,0,0,0
	db	0,0,16,0,1,2,3,0,117,0,0,0,112,0,0,0
	db	219,16,0,0,26,0,9,0,90,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,2,0,114,17,0,0,0,0,0,0
	db	12,0,1,2,2,0,171,16,0,0,171,16,0,0,26,0
	db	9,0,90,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	1,0,117,17,0,0,0,0,0,0,8,0,2,0,42,8
	db	189,16,0,0,8,0,1,2,1,0,116,17,0,0,26,0
	db	9,0,90,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	2,0,119,17,0,0,0,0,0,0,12,0,1,2,2,0
	db	7,17,0,0,7,17,0,0,26,0,9,0,121,17,0,0
	db	189,16,0,0,91,17,0,0,0,0,1,0,122,17,0,0
	db	0,0,0,0,8,0,2,0,42,0,189,16,0,0,8,0
	db	1,2,1,0,116,17,0,0,26,0,9,0,121,17,0,0
	db	189,16,0,0,91,17,0,0,0,0,1,0,124,17,0,0
	db	0,0,0,0,8,0,1,2,1,0,187,16,0,0,26,0
	db	9,0,121,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	1,0,126,17,0,0,0,0,0,0,8,0,1,2,1,0
	db	171,16,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,1,0,128,17,0,0,0,0,0,0
	db	8,0,1,2,1,0,112,0,0,0,26,0,9,0,121,17
	db	0,0,189,16,0,0,91,17,0,0,0,0,1,0,130,17
	db	0,0,0,0,0,0,8,0,1,2,1,0,116,17,0,0
	db	26,0,9,0,121,17,0,0,189,16,0,0,91,17,0,0
	db	0,0,1,0,132,17,0,0,0,0,0,0,8,0,1,2
	db	1,0,187,16,0,0,26,0,9,0,121,17,0,0,189,16
	db	0,0,91,17,0,0,0,0,3,0,134,17,0,0,0,0
	db	0,0,16,0,1,2,3,0,187,16,0,0,117,0,0,0
	db	117,0,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,2,0,136,17,0,0,0,0,0,0
	db	12,0,1,2,2,0,171,16,0,0,117,0,0,0,26,0
	db	9,0,121,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	1,0,138,17,0,0,0,0,0,0,8,0,1,2,1,0
	db	171,16,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,2,0,140,17,0,0,0,0,0,0
	db	12,0,1,2,2,0,117,0,0,0,112,0,0,0,26,0
	db	9,0,121,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	2,0,142,17,0,0,0,0,0,0,12,0,1,2,2,0
	db	171,16,0,0,171,16,0,0,26,0,9,0,121,17,0,0
	db	189,16,0,0,91,17,0,0,0,0,2,0,144,17,0,0
	db	0,0,0,0,12,0,1,2,2,0,7,17,0,0,7,17
	db	0,0,26,0,9,0,3,0,0,0,189,16,0,0,91,17
	db	0,0,0,0,1,0,146,17,0,0,0,0,0,0,8,0
	db	1,2,1,0,116,17,0,0,26,0,9,0,3,0,0,0
	db	189,16,0,0,91,17,0,0,0,0,1,0,148,17,0,0
	db	0,0,0,0,8,0,1,2,1,0,121,17,0,0,26,0
	db	9,0,3,0,0,0,189,16,0,0,91,17,0,0,0,0
	db	0,0,150,17,0,0,0,0,0,0,4,0,1,2,0,0
	db	28,0,5,0,19,0,195,17,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,226,0,0,0,8,0,26,0
	db	9,0,3,0,0,0,151,17,0,0,0,0,0,0,0,0
	db	2,0,153,17,0,0,0,0,0,0,12,0,1,2,2,0
	db	206,16,0,0,207,16,0,0,26,0,9,0,112,4,0,0
	db	151,17,0,0,0,0,0,0,0,0,3,0,155,17,0,0
	db	0,0,0,0,16,0,1,2,3,0,112,4,0,0,117,0
	db	0,0,112,0,0,0,26,0,9,0,48,0,0,0,151,17
	db	0,0,0,0,0,0,0,0,2,0,157,17,0,0,0,0
	db	0,0,12,0,1,2,2,0,207,16,0,0,207,16,0,0
	db	26,0,9,0,48,0,0,0,151,17,0,0,0,0,0,0
	db	0,0,2,0,159,17,0,0,0,0,0,0,12,0,1,2
	db	2,0,207,16,0,0,207,16,0,0,26,0,9,0,116,0
	db	0,0,151,17,0,0,0,0,0,0,0,0,3,0,161,17
	db	0,0,0,0,0,0,16,0,1,2,3,0,171,16,0,0
	db	171,16,0,0,117,0,0,0,26,0,9,0,117,0,0,0
	db	151,17,0,0,0,0,0,0,0,0,1,0,163,17,0,0
	db	0,0,0,0,8,0,1,2,1,0,171,16,0,0,26,0
	db	9,0,112,4,0,0,151,17,0,0,0,0,0,0,0,0
	db	3,0,165,17,0,0,0,0,0,0,16,0,1,2,3,0
	db	112,4,0,0,171,16,0,0,117,0,0,0,26,0,9,0
	db	171,16,0,0,151,17,0,0,0,0,0,0,0,0,3,0
	db	167,17,0,0,0,0,0,0,16,0,1,2,3,0,171,16
	db	0,0,117,0,0,0,207,16,0,0,26,0,9,0,112,4
	db	0,0,151,17,0,0,0,0,0,0,0,0,3,0,169,17
	db	0,0,0,0,0,0,16,0,1,2,3,0,112,4,0,0
	db	171,16,0,0,117,0,0,0,26,0,9,0,112,0,0,0
	db	151,17,0,0,0,0,0,0,0,0,1,0,173,17,0,0
	db	0,0,0,0,8,0,2,0,42,0,172,17,0,0,8,0
	db	1,0,1,0,116,0,0,0,8,0,1,2,1,0,171,17
	db	0,0,26,0,9,0,116,0,0,0,151,17,0,0,0,0
	db	0,0,0,0,1,0,175,17,0,0,0,0,0,0,8,0
	db	1,2,1,0,207,16,0,0,26,0,9,0,48,0,0,0
	db	151,17,0,0,0,0,0,0,0,0,2,0,177,17,0,0
	db	0,0,0,0,12,0,1,2,2,0,171,17,0,0,171,17
	db	0,0,26,0,9,0,116,0,0,0,151,17,0,0,0,0
	db	0,0,0,0,0,0,179,17,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,116,0,0,0,151,17,0,0
	db	0,0,0,0,0,0,1,0,181,17,0,0,0,0,0,0
	db	8,0,1,2,1,0,171,17,0,0,22,0,7,2,11,0
	db	152,17,0,0,0,0,0,0,11,0,154,17,0,0,0,0
	db	0,0,12,0,7,2,11,0,156,17,0,0,0,0,0,0
	db	12,0,7,2,11,0,158,17,0,0,0,0,0,0,12,0
	db	7,2,11,0,160,17,0,0,0,0,0,0,12,0,7,2
	db	11,0,162,17,0,0,0,0,0,0,12,0,7,2,11,0
	db	164,17,0,0,0,0,0,0,12,0,7,2,11,0,166,17
	db	0,0,0,0,0,0,12,0,7,2,11,0,168,17,0,0
	db	0,0,0,0,12,0,7,2,11,0,170,17,0,0,0,0
	db	0,0,12,0,7,2,11,0,174,17,0,0,0,0,0,0
	db	12,0,7,2,11,0,176,17,0,0,0,0,0,0,12,0
	db	7,2,11,0,178,17,0,0,0,0,0,0,12,0,7,2
	db	11,0,180,17,0,0,0,0,0,0,254,0,4,2,9,4
	db	112,0,0,0,227,0,0,0,0,0,0,0,242,241,9,4
	db	112,0,0,0,228,0,0,0,0,0,0,0,242,241,9,4
	db	116,0,0,0,229,0,0,0,0,0,0,0,242,241,9,4
	db	138,16,0,0,230,0,0,0,0,0,0,0,242,241,9,4
	db	118,0,0,0,231,0,0,0,0,0,0,0,242,241,9,4
	db	116,0,0,0,232,0,0,0,0,0,0,0,242,241,8,4
	db	2,0,182,17,0,0,233,0,0,0,8,4,1,0,183,17
	db	0,0,234,0,0,0,8,4,1,0,184,17,0,0,235,0
	db	0,0,8,4,1,0,185,17,0,0,236,0,0,0,8,4
	db	1,0,186,17,0,0,237,0,0,0,8,4,1,0,187,17
	db	0,0,238,0,0,0,8,4,1,0,188,17,0,0,239,0
	db	0,0,8,4,1,0,189,17,0,0,240,0,0,0,8,4
	db	1,0,190,17,0,0,241,0,0,0,8,4,1,0,191,17
	db	0,0,242,0,0,0,8,4,1,0,192,17,0,0,243,0
	db	0,0,8,4,1,0,193,17,0,0,244,0,0,0,8,4
	db	1,0,194,17,0,0,245,0,0,0,8,0,1,0,1,0
	db	117,0,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,1,0,198,17,0,0,0,0,0,0
	db	8,0,1,2,1,0,187,16,0,0,26,0,9,0,121,17
	db	0,0,189,16,0,0,91,17,0,0,0,0,1,0,200,17
	db	0,0,0,0,0,0,8,0,1,2,1,0,171,16,0,0
	db	26,0,9,0,121,17,0,0,189,16,0,0,91,17,0,0
	db	0,0,1,0,202,17,0,0,0,0,0,0,8,0,1,2
	db	1,0,112,0,0,0,26,0,9,0,121,17,0,0,189,16
	db	0,0,91,17,0,0,0,0,1,0,204,17,0,0,0,0
	db	0,0,8,0,1,2,1,0,187,16,0,0,26,0,9,0
	db	121,17,0,0,189,16,0,0,91,17,0,0,0,0,3,0
	db	206,17,0,0,0,0,0,0,16,0,1,2,3,0,187,16
	db	0,0,117,0,0,0,117,0,0,0,26,0,9,0,121,17
	db	0,0,189,16,0,0,91,17,0,0,0,0,2,0,208,17
	db	0,0,0,0,0,0,12,0,1,2,2,0,171,16,0,0
	db	117,0,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,1,0,210,17,0,0,0,0,0,0
	db	8,0,1,2,1,0,171,16,0,0,26,0,9,0,121,17
	db	0,0,189,16,0,0,91,17,0,0,0,0,2,0,212,17
	db	0,0,0,0,0,0,12,0,1,2,2,0,117,0,0,0
	db	112,0,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,2,0,214,17,0,0,0,0,0,0
	db	12,0,1,2,2,0,171,16,0,0,171,16,0,0,26,0
	db	9,0,121,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	2,0,216,17,0,0,0,0,0,0,12,0,1,2,2,0
	db	7,17,0,0,7,17,0,0,26,0,9,0,121,17,0,0
	db	189,16,0,0,91,17,0,0,0,0,2,0,218,17,0,0
	db	0,0,0,0,12,0,1,2,2,0,117,0,0,0,187,16
	db	0,0,26,0,9,0,121,17,0,0,189,16,0,0,91,17
	db	0,0,0,0,4,0,220,17,0,0,0,0,0,0,20,0
	db	1,2,4,0,117,0,0,0,187,16,0,0,117,0,0,0
	db	117,0,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,3,0,222,17,0,0,0,0,0,0
	db	16,0,1,2,3,0,117,0,0,0,171,16,0,0,117,0
	db	0,0,26,0,9,0,121,17,0,0,189,16,0,0,91,17
	db	0,0,0,0,2,0,224,17,0,0,0,0,0,0,12,0
	db	1,2,2,0,117,0,0,0,171,16,0,0,26,0,9,0
	db	121,17,0,0,189,16,0,0,91,17,0,0,0,0,3,0
	db	226,17,0,0,0,0,0,0,16,0,1,2,3,0,117,0
	db	0,0,117,0,0,0,112,0,0,0,26,0,9,0,5,17
	db	0,0,189,16,0,0,91,17,0,0,0,0,1,0,228,17
	db	0,0,0,0,0,0,8,0,1,2,1,0,5,17,0,0
	db	26,0,9,0,5,17,0,0,189,16,0,0,91,17,0,0
	db	0,0,2,0,230,17,0,0,0,0,0,0,12,0,1,2
	db	2,0,5,17,0,0,112,0,0,0,26,0,9,0,3,0
	db	0,0,189,16,0,0,91,17,0,0,0,0,3,0,232,17
	db	0,0,0,0,0,0,16,0,1,2,3,0,5,17,0,0
	db	117,0,0,0,112,0,0,0,26,0,9,0,3,0,0,0
	db	189,16,0,0,91,17,0,0,0,0,3,0,234,17,0,0
	db	0,0,0,0,16,0,1,2,3,0,5,17,0,0,171,16
	db	0,0,171,16,0,0,26,0,9,0,3,0,0,0,189,16
	db	0,0,91,17,0,0,0,0,3,0,236,17,0,0,0,0
	db	0,0,16,0,1,2,3,0,5,17,0,0,7,17,0,0
	db	7,17,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,2,0,238,17,0,0,0,0,0,0
	db	12,0,1,2,2,0,117,0,0,0,117,0,0,0,26,0
	db	9,0,5,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	1,0,240,17,0,0,0,0,0,0,8,0,1,2,1,0
	db	5,17,0,0,26,0,9,0,5,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,2,0,242,17,0,0,0,0,0,0
	db	12,0,1,2,2,0,5,17,0,0,5,17,0,0,26,0
	db	9,0,3,0,0,0,189,16,0,0,91,17,0,0,0,0
	db	0,0,244,17,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,121,17,0,0,189,16,0,0,91,17,0,0
	db	0,0,3,0,246,17,0,0,0,0,0,0,16,0,1,2
	db	3,0,117,0,0,0,117,0,0,0,187,16,0,0,26,0
	db	9,0,121,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	5,0,248,17,0,0,0,0,0,0,24,0,1,2,5,0
	db	117,0,0,0,117,0,0,0,187,16,0,0,117,0,0,0
	db	117,0,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,4,0,250,17,0,0,0,0,0,0
	db	20,0,1,2,4,0,117,0,0,0,117,0,0,0,171,16
	db	0,0,117,0,0,0,26,0,9,0,121,17,0,0,189,16
	db	0,0,91,17,0,0,0,0,3,0,252,17,0,0,0,0
	db	0,0,16,0,1,2,3,0,117,0,0,0,117,0,0,0
	db	171,16,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,4,0,254,17,0,0,0,0,0,0
	db	20,0,1,2,4,0,117,0,0,0,117,0,0,0,117,0
	db	0,0,112,0,0,0,26,0,9,0,121,17,0,0,189,16
	db	0,0,91,17,0,0,0,0,3,0,0,18,0,0,0,0
	db	0,0,16,0,1,2,3,0,5,17,0,0,5,17,0,0
	db	187,16,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,4,0,2,18,0,0,0,0,0,0
	db	20,0,1,2,4,0,5,17,0,0,5,17,0,0,171,16
	db	0,0,117,0,0,0,26,0,9,0,121,17,0,0,189,16
	db	0,0,91,17,0,0,0,0,3,0,4,18,0,0,0,0
	db	0,0,16,0,1,2,3,0,5,17,0,0,5,17,0,0
	db	171,16,0,0,26,0,9,0,121,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,4,0,6,18,0,0,0,0,0,0
	db	20,0,1,2,4,0,5,17,0,0,5,17,0,0,117,0
	db	0,0,112,0,0,0,26,0,9,0,121,17,0,0,189,16
	db	0,0,91,17,0,0,0,0,4,0,8,18,0,0,0,0
	db	0,0,20,0,1,2,4,0,5,17,0,0,5,17,0,0
	db	171,16,0,0,171,16,0,0,26,0,9,0,121,17,0,0
	db	189,16,0,0,91,17,0,0,0,0,4,0,10,18,0,0
	db	0,0,0,0,20,0,1,2,4,0,5,17,0,0,5,17
	db	0,0,7,17,0,0,7,17,0,0,26,0,9,0,5,17
	db	0,0,189,16,0,0,91,17,0,0,0,0,0,0,12,18
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	7,17,0,0,189,16,0,0,14,18,0,0,0,0,0,0
	db	15,18,0,0,0,0,0,0,8,0,2,0,10,4,188,16
	db	0,0,4,0,1,2,0,0,26,0,9,0,5,17,0,0
	db	189,16,0,0,91,17,0,0,0,0,0,0,17,18,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,7,17
	db	0,0,189,16,0,0,14,18,0,0,0,0,0,0,19,18
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	85,17,0,0,189,16,0,0,91,17,0,0,0,0,0,0
	db	21,18,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,87,17,0,0,189,16,0,0,14,18,0,0,0,0
	db	0,0,23,18,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,85,17,0,0,189,16,0,0,91,17,0,0
	db	0,0,0,0,25,18,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,87,17,0,0,189,16,0,0,14,18
	db	0,0,0,0,0,0,27,18,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,206,16,0,0,189,16,0,0
	db	91,17,0,0,0,0,1,0,29,18,0,0,0,0,0,0
	db	8,0,1,2,1,0,117,0,0,0,26,0,9,0,207,16
	db	0,0,189,16,0,0,14,18,0,0,0,0,1,0,31,18
	db	0,0,0,0,0,0,8,0,1,2,1,0,117,0,0,0
	db	26,0,9,0,206,16,0,0,189,16,0,0,91,17,0,0
	db	0,0,1,0,33,18,0,0,0,0,0,0,8,0,1,2
	db	1,0,117,0,0,0,26,0,9,0,207,16,0,0,189,16
	db	0,0,14,18,0,0,0,0,1,0,35,18,0,0,0,0
	db	0,0,8,0,1,2,1,0,117,0,0,0,26,0,9,0
	db	3,0,0,0,189,16,0,0,91,17,0,0,0,0,1,0
	db	37,18,0,0,0,0,0,0,8,0,1,2,1,0,112,0
	db	0,0,26,0,9,0,171,16,0,0,189,16,0,0,14,18
	db	0,0,0,0,0,0,39,18,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,171,16,0,0,189,16,0,0
	db	14,18,0,0,0,0,0,0,41,18,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,117,0,0,0,189,16
	db	0,0,14,18,0,0,0,0,0,0,43,18,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,117,0,0,0
	db	189,16,0,0,14,18,0,0,0,0,0,0,45,18,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,117,0
	db	0,0,189,16,0,0,14,18,0,0,0,0,0,0,47,18
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	3,0,0,0,189,16,0,0,91,17,0,0,0,0,1,0
	db	49,18,0,0,0,0,0,0,8,0,1,2,1,0,117,0
	db	0,0,26,0,9,0,3,0,0,0,189,16,0,0,91,17
	db	0,0,0,0,2,0,51,18,0,0,0,0,0,0,12,0
	db	1,2,2,0,117,0,0,0,112,0,0,0,26,0,9,0
	db	117,0,0,0,189,16,0,0,14,18,0,0,0,0,0,0
	db	53,18,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,3,0,0,0,189,16,0,0,91,17,0,0,0,0
	db	1,0,55,18,0,0,0,0,0,0,8,0,1,2,1,0
	db	117,0,0,0,26,0,9,0,48,0,0,0,189,16,0,0
	db	14,18,0,0,0,0,0,0,57,18,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,117,0,0,0,189,16
	db	0,0,14,18,0,0,0,0,3,0,59,18,0,0,0,0
	db	0,0,16,0,1,2,3,0,112,4,0,0,117,0,0,0
	db	117,0,0,0,26,0,9,0,117,0,0,0,189,16,0,0
	db	14,18,0,0,0,0,2,0,61,18,0,0,0,0,0,0
	db	12,0,1,2,2,0,187,16,0,0,117,0,0,0,26,0
	db	9,0,117,0,0,0,189,16,0,0,14,18,0,0,0,0
	db	3,0,63,18,0,0,0,0,0,0,16,0,1,2,3,0
	db	171,16,0,0,117,0,0,0,117,0,0,0,26,0,9,0
	db	117,0,0,0,189,16,0,0,14,18,0,0,0,0,2,0
	db	65,18,0,0,0,0,0,0,12,0,1,2,2,0,171,16
	db	0,0,117,0,0,0,26,0,9,0,117,0,0,0,189,16
	db	0,0,14,18,0,0,0,0,2,0,67,18,0,0,0,0
	db	0,0,12,0,1,2,2,0,112,0,0,0,117,0,0,0
	db	26,0,9,0,117,0,0,0,189,16,0,0,14,18,0,0
	db	0,0,2,0,69,18,0,0,0,0,0,0,12,0,1,2
	db	2,0,187,16,0,0,117,0,0,0,26,0,9,0,117,0
	db	0,0,189,16,0,0,14,18,0,0,0,0,3,0,71,18
	db	0,0,0,0,0,0,16,0,1,2,3,0,171,16,0,0
	db	117,0,0,0,117,0,0,0,26,0,9,0,117,0,0,0
	db	189,16,0,0,14,18,0,0,0,0,2,0,73,18,0,0
	db	0,0,0,0,12,0,1,2,2,0,171,16,0,0,117,0
	db	0,0,26,0,9,0,117,0,0,0,189,16,0,0,14,18
	db	0,0,0,0,2,0,75,18,0,0,0,0,0,0,12,0
	db	1,2,2,0,112,0,0,0,117,0,0,0,26,0,9,0
	db	117,0,0,0,189,16,0,0,14,18,0,0,0,0,2,0
	db	77,18,0,0,0,0,0,0,12,0,1,2,2,0,187,16
	db	0,0,117,0,0,0,26,0,9,0,117,0,0,0,189,16
	db	0,0,14,18,0,0,0,0,3,0,79,18,0,0,0,0
	db	0,0,16,0,1,2,3,0,171,16,0,0,117,0,0,0
	db	117,0,0,0,26,0,9,0,117,0,0,0,189,16,0,0
	db	14,18,0,0,0,0,2,0,81,18,0,0,0,0,0,0
	db	12,0,1,2,2,0,171,16,0,0,117,0,0,0,26,0
	db	9,0,117,0,0,0,189,16,0,0,14,18,0,0,0,0
	db	2,0,83,18,0,0,0,0,0,0,12,0,1,2,2,0
	db	112,0,0,0,117,0,0,0,26,0,9,0,117,0,0,0
	db	189,16,0,0,14,18,0,0,0,0,2,0,85,18,0,0
	db	0,0,0,0,12,0,1,2,2,0,187,16,0,0,117,0
	db	0,0,26,0,9,0,117,0,0,0,189,16,0,0,14,18
	db	0,0,0,0,3,0,87,18,0,0,0,0,0,0,16,0
	db	1,2,3,0,171,16,0,0,117,0,0,0,117,0,0,0
	db	26,0,9,0,117,0,0,0,189,16,0,0,14,18,0,0
	db	0,0,2,0,89,18,0,0,0,0,0,0,12,0,1,2
	db	2,0,171,16,0,0,117,0,0,0,26,0,9,0,117,0
	db	0,0,189,16,0,0,14,18,0,0,0,0,2,0,91,18
	db	0,0,0,0,0,0,12,0,1,2,2,0,112,0,0,0
	db	117,0,0,0,26,0,9,0,117,0,0,0,189,16,0,0
	db	14,18,0,0,0,0,2,0,93,18,0,0,0,0,0,0
	db	12,0,1,2,2,0,187,16,0,0,117,0,0,0,26,0
	db	9,0,117,0,0,0,189,16,0,0,14,18,0,0,0,0
	db	3,0,95,18,0,0,0,0,0,0,16,0,1,2,3,0
	db	171,16,0,0,117,0,0,0,117,0,0,0,26,0,9,0
	db	117,0,0,0,189,16,0,0,14,18,0,0,0,0,2,0
	db	97,18,0,0,0,0,0,0,12,0,1,2,2,0,171,16
	db	0,0,117,0,0,0,26,0,9,0,117,0,0,0,189,16
	db	0,0,14,18,0,0,0,0,2,0,99,18,0,0,0,0
	db	0,0,12,0,1,2,2,0,112,0,0,0,117,0,0,0
	db	26,0,9,0,117,0,0,0,189,16,0,0,14,18,0,0
	db	0,0,2,0,101,18,0,0,0,0,0,0,12,0,1,2
	db	2,0,187,16,0,0,117,0,0,0,26,0,9,0,117,0
	db	0,0,189,16,0,0,14,18,0,0,0,0,3,0,103,18
	db	0,0,0,0,0,0,16,0,1,2,3,0,171,16,0,0
	db	117,0,0,0,117,0,0,0,26,0,9,0,117,0,0,0
	db	189,16,0,0,14,18,0,0,0,0,2,0,105,18,0,0
	db	0,0,0,0,12,0,1,2,2,0,171,16,0,0,117,0
	db	0,0,26,0,9,0,117,0,0,0,189,16,0,0,14,18
	db	0,0,0,0,2,0,107,18,0,0,0,0,0,0,12,0
	db	1,2,2,0,112,0,0,0,117,0,0,0,26,0,9,0
	db	189,16,0,0,189,16,0,0,14,18,0,0,0,0,2,0
	db	109,18,0,0,0,0,0,0,12,0,1,2,2,0,117,0
	db	0,0,117,0,0,0,26,0,9,0,116,0,0,0,189,16
	db	0,0,14,18,0,0,0,0,1,0,111,18,0,0,0,0
	db	0,0,8,0,1,2,1,0,187,16,0,0,26,0,9,0
	db	116,0,0,0,189,16,0,0,14,18,0,0,0,0,3,0
	db	113,18,0,0,0,0,0,0,16,0,1,2,3,0,117,0
	db	0,0,117,0,0,0,187,16,0,0,26,0,9,0,116,0
	db	0,0,189,16,0,0,14,18,0,0,0,0,5,0,115,18
	db	0,0,0,0,0,0,24,0,1,2,5,0,117,0,0,0
	db	117,0,0,0,187,16,0,0,117,0,0,0,117,0,0,0
	db	26,0,9,0,116,0,0,0,189,16,0,0,14,18,0,0
	db	0,0,1,0,117,18,0,0,0,0,0,0,8,0,1,2
	db	1,0,171,16,0,0,26,0,9,0,116,0,0,0,189,16
	db	0,0,14,18,0,0,0,0,3,0,119,18,0,0,0,0
	db	0,0,16,0,1,2,3,0,117,0,0,0,117,0,0,0
	db	171,16,0,0,26,0,9,0,116,0,0,0,189,16,0,0
	db	14,18,0,0,0,0,4,0,121,18,0,0,0,0,0,0
	db	20,0,1,2,4,0,117,0,0,0,117,0,0,0,171,16
	db	0,0,117,0,0,0,26,0,9,0,203,16,0,0,189,16
	db	0,0,14,18,0,0,0,0,0,0,123,18,0,0,0,0
	db	0,0,4,0,1,2,0,0,20,0,7,0,1,0,116,0
	db	0,0,125,18,0,0,189,16,0,0,246,0,0,0,32,0
	db	4,2,3,4,0,0,247,0,0,0,0,0,0,0,16,0
	db	242,241,3,4,0,0,248,0,0,0,0,0,0,0,16,0
	db	20,0,7,0,1,0,116,0,0,0,127,18,0,0,189,16
	db	0,0,249,0,0,0,32,0,4,2,3,4,0,0,250,0
	db	0,0,0,0,0,0,15,0,242,241,3,4,0,0,251,0
	db	0,0,0,0,0,0,15,0,26,0,9,0,3,0,0,0
	db	189,16,0,0,91,17,0,0,0,0,3,0,129,18,0,0
	db	0,0,0,0,16,0,1,2,3,0,117,0,0,0,117,0
	db	0,0,112,0,0,0,26,0,9,0,3,0,0,0,189,16
	db	0,0,91,17,0,0,0,0,2,0,131,18,0,0,0,0
	db	0,0,12,0,1,2,2,0,117,0,0,0,117,0,0,0
	db	26,0,9,0,3,0,0,0,189,16,0,0,91,17,0,0
	db	0,0,1,0,133,18,0,0,0,0,0,0,8,0,1,2
	db	1,0,117,0,0,0,26,0,9,0,48,0,0,0,189,16
	db	0,0,91,17,0,0,0,0,2,0,135,18,0,0,0,0
	db	0,0,12,0,1,2,2,0,117,0,0,0,48,0,0,0
	db	26,0,9,0,48,0,0,0,189,16,0,0,91,17,0,0
	db	0,0,1,0,137,18,0,0,0,0,0,0,8,0,1,2
	db	1,0,171,16,0,0,26,0,9,0,117,0,0,0,189,16
	db	0,0,0,0,0,0,0,0,2,0,139,18,0,0,0,0
	db	0,0,12,0,1,2,2,0,7,17,0,0,7,17,0,0
	db	26,0,9,0,3,0,0,0,189,16,0,0,91,17,0,0
	db	0,0,2,0,141,18,0,0,0,0,0,0,12,0,1,2
	db	2,0,48,0,0,0,117,0,0,0,20,0,6,0,2,0
	db	144,18,0,0,8,0,189,16,0,0,252,0,0,0,16,0
	db	18,0,3,0,112,0,0,0,17,0,0,0,0,0,0,0
	db	16,0,16,0,40,0,4,2,6,4,143,18,0,0,3,0
	db	253,0,0,0,0,0,0,0,0,0,242,241,6,4,112,4
	db	0,0,3,0,254,0,0,0,0,0,0,0,0,0,26,0
	db	9,0,112,4,0,0,189,16,0,0,91,17,0,0,0,0
	db	0,0,146,18,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,171,16,0,0,189,16,0,0,14,18,0,0
	db	0,0,0,0,148,18,0,0,0,0,0,0,4,0,1,2
	db	0,0,162,0,7,2,3,4,89,17,0,0,0,0,0,0
	db	3,4,93,17,0,0,0,0,0,0,3,4,95,17,0,0
	db	0,0,0,0,3,4,97,17,0,0,0,0,0,0,3,4
	db	99,17,0,0,0,0,0,0,3,4,101,17,0,0,0,0
	db	0,0,3,4,103,17,0,0,0,0,0,0,3,4,105,17
	db	0,0,0,0,0,0,3,4,107,17,0,0,0,0,0,0
	db	3,4,109,17,0,0,0,0,0,0,3,4,111,17,0,0
	db	0,0,0,0,3,4,0,0,0,0,0,0,0,0,3,4
	db	0,0,0,0,0,0,0,0,3,4,113,17,0,0,0,0
	db	0,0,3,4,115,17,0,0,0,0,0,0,3,4,118,17
	db	0,0,0,0,0,0,42,0,7,2,3,1,120,17,0,0
	db	0,0,0,0,3,1,123,17,0,0,0,0,0,0,3,1
	db	125,17,0,0,0,0,0,0,3,1,127,17,0,0,0,0
	db	0,0,92,0,7,2,3,0,129,17,0,0,0,0,0,0
	db	3,0,131,17,0,0,0,0,0,0,3,0,133,17,0,0
	db	0,0,0,0,3,0,135,17,0,0,0,0,0,0,3,0
	db	137,17,0,0,0,0,0,0,3,0,139,17,0,0,0,0
	db	0,0,3,0,0,0,0,0,0,0,0,0,3,0,141,17
	db	0,0,0,0,0,0,3,0,143,17,0,0,0,0,0,0
	db	22,0,7,2,3,0,145,17,0,0,0,0,0,0,3,0
	db	147,17,0,0,0,0,0,0,12,0,7,2,3,8,149,17
	db	0,0,0,0,0,0,32,0,7,2,3,1,197,17,0,0
	db	0,0,0,0,3,1,199,17,0,0,0,0,0,0,3,1
	db	201,17,0,0,0,0,0,0,82,0,7,2,3,0,203,17
	db	0,0,0,0,0,0,3,0,205,17,0,0,0,0,0,0
	db	3,0,207,17,0,0,0,0,0,0,3,0,209,17,0,0
	db	0,0,0,0,3,0,211,17,0,0,0,0,0,0,3,0
	db	0,0,0,0,0,0,0,0,3,0,213,17,0,0,0,0
	db	0,0,3,0,215,17,0,0,0,0,0,0,112,0,7,2
	db	3,0,217,17,0,0,0,0,0,0,3,0,219,17,0,0
	db	0,0,0,0,3,0,221,17,0,0,0,0,0,0,3,0
	db	223,17,0,0,0,0,0,0,3,0,225,17,0,0,0,0
	db	0,0,3,0,227,17,0,0,0,0,0,0,3,0,229,17
	db	0,0,0,0,0,0,3,0,231,17,0,0,0,0,0,0
	db	3,0,0,0,0,0,0,0,0,0,3,0,233,17,0,0
	db	0,0,0,0,3,0,235,17,0,0,0,0,0,0,32,0
	db	7,2,3,0,237,17,0,0,0,0,0,0,3,0,239,17
	db	0,0,0,0,0,0,3,0,241,17,0,0,0,0,0,0
	db	12,0,7,2,3,0,243,17,0,0,0,0,0,0,122,0
	db	7,2,3,0,245,17,0,0,0,0,0,0,3,0,247,17
	db	0,0,0,0,0,0,3,0,249,17,0,0,0,0,0,0
	db	3,0,251,17,0,0,0,0,0,0,3,0,253,17,0,0
	db	0,0,0,0,3,0,255,17,0,0,0,0,0,0,3,0
	db	1,18,0,0,0,0,0,0,3,0,3,18,0,0,0,0
	db	0,0,3,0,5,18,0,0,0,0,0,0,3,0,0,0
	db	0,0,0,0,0,0,3,0,7,18,0,0,0,0,0,0
	db	3,0,9,18,0,0,0,0,0,0,22,0,7,2,3,0
	db	11,18,0,0,0,0,0,0,3,0,13,18,0,0,0,0
	db	0,0,22,0,7,2,3,0,16,18,0,0,0,0,0,0
	db	3,0,18,18,0,0,0,0,0,0,22,0,7,2,3,0
	db	20,18,0,0,0,0,0,0,3,0,22,18,0,0,0,0
	db	0,0,22,0,7,2,3,0,24,18,0,0,0,0,0,0
	db	3,0,26,18,0,0,0,0,0,0,22,0,7,2,3,0
	db	28,18,0,0,0,0,0,0,3,0,30,18,0,0,0,0
	db	0,0,22,0,7,2,3,1,32,18,0,0,0,0,0,0
	db	3,1,34,18,0,0,0,0,0,0,12,0,7,2,3,0
	db	36,18,0,0,0,0,0,0,12,0,7,2,3,0,38,18
	db	0,0,0,0,0,0,12,0,7,2,3,0,40,18,0,0
	db	0,0,0,0,12,0,7,2,3,0,42,18,0,0,0,0
	db	0,0,12,0,7,2,3,0,44,18,0,0,0,0,0,0
	db	12,0,7,2,3,0,46,18,0,0,0,0,0,0,22,0
	db	7,2,3,0,48,18,0,0,0,0,0,0,3,0,50,18
	db	0,0,0,0,0,0,12,0,7,2,3,0,52,18,0,0
	db	0,0,0,0,12,0,7,2,3,0,54,18,0,0,0,0
	db	0,0,12,0,7,2,3,0,56,18,0,0,0,0,0,0
	db	12,0,7,2,3,0,58,18,0,0,0,0,0,0,42,0
	db	7,2,3,0,60,18,0,0,0,0,0,0,3,0,62,18
	db	0,0,0,0,0,0,3,0,64,18,0,0,0,0,0,0
	db	3,0,66,18,0,0,0,0,0,0,42,0,7,2,3,0
	db	68,18,0,0,0,0,0,0,3,0,70,18,0,0,0,0
	db	0,0,3,0,72,18,0,0,0,0,0,0,3,0,74,18
	db	0,0,0,0,0,0,42,0,7,2,3,0,76,18,0,0
	db	0,0,0,0,3,0,78,18,0,0,0,0,0,0,3,0
	db	80,18,0,0,0,0,0,0,3,0,82,18,0,0,0,0
	db	0,0,42,0,7,2,3,0,84,18,0,0,0,0,0,0
	db	3,0,86,18,0,0,0,0,0,0,3,0,88,18,0,0
	db	0,0,0,0,3,0,90,18,0,0,0,0,0,0,42,0
	db	7,2,3,0,92,18,0,0,0,0,0,0,3,0,94,18
	db	0,0,0,0,0,0,3,0,96,18,0,0,0,0,0,0
	db	3,0,98,18,0,0,0,0,0,0,42,0,7,2,3,0
	db	100,18,0,0,0,0,0,0,3,0,102,18,0,0,0,0
	db	0,0,3,0,104,18,0,0,0,0,0,0,3,0,106,18
	db	0,0,0,0,0,0,12,0,7,2,3,0,108,18,0,0
	db	0,0,0,0,62,0,7,2,3,0,110,18,0,0,0,0
	db	0,0,3,0,112,18,0,0,0,0,0,0,3,0,114,18
	db	0,0,0,0,0,0,3,0,116,18,0,0,0,0,0,0
	db	3,0,118,18,0,0,0,0,0,0,3,0,120,18,0,0
	db	0,0,0,0,12,0,7,2,3,0,122,18,0,0,0,0
	db	0,0,12,0,7,2,2,0,128,18,0,0,0,0,0,0
	db	12,0,7,2,2,0,130,18,0,0,0,0,0,0,12,0
	db	7,2,2,0,132,18,0,0,0,0,0,0,12,0,7,2
	db	2,0,134,18,0,0,0,0,0,0,12,0,7,2,2,0
	db	136,18,0,0,0,0,0,0,12,0,7,2,10,0,138,18
	db	0,0,0,0,0,0,12,0,7,2,2,0,140,18,0,0
	db	0,0,0,0,22,0,7,2,2,0,145,18,0,0,0,0
	db	0,0,2,0,147,18,0,0,0,0,0,0,228,3,4,2
	db	0,4,190,16,0,0,3,0,0,0,242,241,9,4,189,16
	db	0,0,255,0,0,0,0,0,0,0,242,241,9,4,190,16
	db	0,0,0,1,0,0,0,0,0,0,242,241,9,4,203,16
	db	0,0,1,1,0,0,0,0,0,0,242,241,9,4,117,0
	db	0,0,2,1,0,0,0,0,0,0,242,241,9,4,116,0
	db	0,0,3,1,0,0,0,0,0,0,242,241,9,4,116,0
	db	0,0,4,1,0,0,0,0,0,0,242,241,9,4,112,4
	db	0,0,5,1,0,0,0,0,0,0,242,241,9,4,171,16
	db	0,0,6,1,0,0,0,0,0,0,242,241,9,4,112,4
	db	0,0,7,1,0,0,0,0,0,0,242,241,9,4,171,16
	db	0,0,8,1,0,0,0,0,0,0,242,241,9,4,206,16
	db	0,0,9,1,0,0,0,0,0,0,242,241,9,4,206,16
	db	0,0,10,1,0,0,0,0,0,0,242,241,9,4,207,16
	db	0,0,11,1,0,0,0,0,0,0,242,241,9,4,112,0
	db	0,0,12,1,0,0,0,0,0,0,242,241,9,4,5,17
	db	0,0,13,1,0,0,0,0,0,0,242,241,9,4,7,17
	db	0,0,14,1,0,0,0,0,0,0,242,241,9,4,85,17
	db	0,0,15,1,0,0,0,0,0,0,242,241,9,4,87,17
	db	0,0,16,1,0,0,0,0,0,0,242,241,8,4,16,0
	db	149,18,0,0,17,1,0,0,8,4,4,0,150,18,0,0
	db	18,1,0,0,8,4,9,0,151,18,0,0,19,1,0,0
	db	8,4,2,0,152,18,0,0,20,1,0,0,8,4,1,0
	db	153,18,0,0,21,1,0,0,9,4,151,17,0,0,22,1
	db	0,0,0,0,0,0,242,241,9,4,203,16,0,0,23,1
	db	0,0,0,0,0,0,242,241,7,4,196,17,0,0,3,0
	db	24,1,0,0,0,0,0,0,8,4,3,0,154,18,0,0
	db	25,1,0,0,8,4,8,0,155,18,0,0,26,1,0,0
	db	8,4,11,0,156,18,0,0,27,1,0,0,8,4,3,0
	db	157,18,0,0,28,1,0,0,8,4,1,0,158,18,0,0
	db	29,1,0,0,8,4,12,0,159,18,0,0,30,1,0,0
	db	8,4,2,0,160,18,0,0,31,1,0,0,8,4,2,0
	db	161,18,0,0,32,1,0,0,8,4,2,0,162,18,0,0
	db	33,1,0,0,8,4,2,0,163,18,0,0,34,1,0,0
	db	8,4,2,0,164,18,0,0,35,1,0,0,8,4,2,0
	db	165,18,0,0,36,1,0,0,8,4,1,0,166,18,0,0
	db	37,1,0,0,8,4,1,0,167,18,0,0,38,1,0,0
	db	8,4,1,0,168,18,0,0,39,1,0,0,8,4,1,0
	db	169,18,0,0,40,1,0,0,8,4,1,0,170,18,0,0
	db	41,1,0,0,8,4,1,0,171,18,0,0,42,1,0,0
	db	8,4,2,0,172,18,0,0,43,1,0,0,8,4,1,0
	db	173,18,0,0,44,1,0,0,8,4,1,0,174,18,0,0
	db	45,1,0,0,8,4,1,0,175,18,0,0,46,1,0,0
	db	8,4,1,0,176,18,0,0,47,1,0,0,8,4,4,0
	db	177,18,0,0,48,1,0,0,8,4,4,0,178,18,0,0
	db	49,1,0,0,8,4,4,0,179,18,0,0,50,1,0,0
	db	8,4,4,0,180,18,0,0,51,1,0,0,8,4,4,0
	db	181,18,0,0,52,1,0,0,8,4,4,0,182,18,0,0
	db	53,1,0,0,8,4,1,0,183,18,0,0,54,1,0,0
	db	8,4,6,0,184,18,0,0,55,1,0,0,8,4,1,0
	db	185,18,0,0,56,1,0,0,9,4,124,18,0,0,57,1
	db	0,0,0,0,0,0,242,241,9,4,126,18,0,0,58,1
	db	0,0,0,0,0,0,242,241,8,4,1,0,186,18,0,0
	db	59,1,0,0,8,4,1,0,187,18,0,0,60,1,0,0
	db	8,4,1,0,188,18,0,0,61,1,0,0,8,4,1,0
	db	189,18,0,0,62,1,0,0,8,4,1,0,190,18,0,0
	db	63,1,0,0,8,4,1,0,191,18,0,0,64,1,0,0
	db	8,4,1,0,192,18,0,0,65,1,0,0,9,4,142,18
	db	0,0,66,1,0,0,0,0,0,0,242,241,6,4,142,18
	db	0,0,2,0,67,1,0,0,0,0,0,0,16,0,242,241
	db	8,4,2,0,193,18,0,0,68,1,0,0,6,4,117,0
	db	0,0,2,0,69,1,0,0,0,0,0,0,32,0,242,241
	db	6,4,117,0,0,0,2,0,70,1,0,0,0,0,0,0
	db	36,0,8,0,1,2,1,0,187,16,0,0,26,0,9,0
	db	185,16,0,0,149,16,0,0,186,16,0,0,0,0,1,0
	db	199,18,0,0,0,0,0,0,8,0,2,0,42,0,198,18
	db	0,0,8,0,1,0,1,0,149,16,0,0,8,0,1,2
	db	1,0,197,18,0,0,26,0,9,0,3,0,0,0,149,16
	db	0,0,186,16,0,0,0,0,0,0,201,18,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,171,16,0,0
	db	149,16,0,0,203,18,0,0,0,0,0,0,204,18,0,0
	db	0,0,0,0,8,0,2,0,10,4,198,18,0,0,4,0
	db	1,2,0,0,26,0,9,0,206,18,0,0,149,16,0,0
	db	186,16,0,0,0,0,1,0,207,18,0,0,0,0,0,0
	db	8,0,2,0,42,0,149,16,0,0,8,0,1,2,1,0
	db	197,18,0,0,22,0,7,2,3,4,184,16,0,0,0,0
	db	0,0,35,20,196,18,0,0,0,0,0,0,16,0,7,2
	db	19,8,200,18,0,0,0,0,0,0,0,0,0,0,16,0
	db	7,2,19,0,202,18,0,0,0,0,0,0,4,0,0,0
	db	12,0,7,2,35,17,205,18,0,0,0,0,0,0,90,0
	db	4,2,10,4,151,16,0,0,0,0,0,4,152,16,0,0
	db	3,0,0,0,242,241,8,4,2,0,208,18,0,0,71,1
	db	0,0,8,4,1,0,209,18,0,0,72,1,0,0,8,4
	db	1,0,210,18,0,0,73,1,0,0,6,4,189,16,0,0
	db	1,0,74,1,0,0,0,0,0,0,8,0,242,241,8,4
	db	1,0,211,18,0,0,75,1,0,0,26,0,9,0,214,18
	db	0,0,146,16,0,0,215,18,0,0,0,0,1,0,216,18
	db	0,0,0,0,0,0,8,0,2,0,10,0,146,16,0,0
	db	8,0,2,0,10,4,146,16,0,0,8,0,1,2,1,0
	db	187,16,0,0,26,0,9,0,214,18,0,0,146,16,0,0
	db	215,18,0,0,0,0,1,0,220,18,0,0,0,0,0,0
	db	8,0,2,0,42,0,219,18,0,0,8,0,1,0,1,0
	db	146,16,0,0,8,0,1,2,1,0,218,18,0,0,26,0
	db	9,0,3,0,0,0,146,16,0,0,215,18,0,0,0,0
	db	0,0,222,18,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,224,18,0,0,146,16,0,0,215,18,0,0
	db	0,0,1,0,225,18,0,0,0,0,0,0,8,0,2,0
	db	42,0,146,16,0,0,8,0,1,2,1,0,218,18,0,0
	db	22,0,7,2,3,4,213,18,0,0,0,0,0,0,35,20
	db	217,18,0,0,0,0,0,0,16,0,7,2,19,8,221,18
	db	0,0,0,0,0,0,0,0,0,0,12,0,7,2,35,17
	db	223,18,0,0,0,0,0,0,58,0,4,2,10,4,148,16
	db	0,0,0,0,0,4,149,16,0,0,3,0,0,0,242,241
	db	8,4,2,0,226,18,0,0,76,1,0,0,8,4,1,0
	db	227,18,0,0,77,1,0,0,8,4,1,0,228,18,0,0
	db	78,1,0,0,28,0,4,0,3,0,243,18,0,0,10,1
	db	117,16,0,0,0,0,0,0,0,0,0,0,79,1,0,0
	db	8,0,26,0,9,0,232,18,0,0,230,18,0,0,233,18
	db	0,0,0,0,0,0,234,18,0,0,0,0,0,0,8,0
	db	2,0,10,0,230,18,0,0,8,0,2,0,10,4,230,18
	db	0,0,4,0,1,2,0,0,26,0,9,0,232,18,0,0
	db	230,18,0,0,233,18,0,0,0,0,1,0,238,18,0,0
	db	0,0,0,0,8,0,2,0,42,0,237,18,0,0,8,0
	db	1,0,1,0,230,18,0,0,8,0,1,2,1,0,236,18
	db	0,0,26,0,9,0,3,0,0,0,230,18,0,0,233,18
	db	0,0,0,0,0,0,240,18,0,0,0,0,0,0,4,0
	db	1,2,0,0,22,0,7,2,3,4,231,18,0,0,0,0
	db	0,0,35,20,235,18,0,0,0,0,0,0,12,0,7,2
	db	3,8,239,18,0,0,0,0,0,0,42,0,4,2,8,4
	db	2,0,241,18,0,0,80,1,0,0,8,4,1,0,242,18
	db	0,0,81,1,0,0,7,4,116,0,0,0,1,0,82,1
	db	0,0,0,0,0,0,26,0,9,0,144,16,0,0,117,16
	db	0,0,245,18,0,0,0,0,1,0,248,18,0,0,0,0
	db	0,0,8,0,2,0,10,4,117,16,0,0,8,0,2,0
	db	42,0,247,18,0,0,8,0,1,0,1,0,117,16,0,0
	db	8,0,1,2,1,0,246,18,0,0,26,0,9,0,3,4
	db	0,0,117,16,0,0,250,18,0,0,0,0,0,0,251,18
	db	0,0,0,0,0,0,8,0,2,0,10,4,247,18,0,0
	db	4,0,1,2,0,0,26,0,9,0,48,0,0,0,117,16
	db	0,0,250,18,0,0,0,0,0,0,253,18,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,3,0,0,0
	db	117,16,0,0,245,18,0,0,0,0,2,0,255,18,0,0
	db	0,0,0,0,12,0,1,2,2,0,126,16,0,0,48,0
	db	0,0,26,0,9,0,3,0,0,0,117,16,0,0,245,18
	db	0,0,0,0,1,0,1,19,0,0,0,0,0,0,8,0
	db	1,2,1,0,126,16,0,0,26,0,9,0,3,0,0,0
	db	117,16,0,0,245,18,0,0,0,0,1,0,3,19,0,0
	db	0,0,0,0,8,0,1,2,1,0,117,0,0,0,26,0
	db	9,0,126,16,0,0,117,16,0,0,250,18,0,0,0,0
	db	0,0,5,19,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,3,0,0,0,117,16,0,0,245,18,0,0
	db	0,0,2,0,7,19,0,0,0,0,0,0,12,0,1,2
	db	2,0,126,16,0,0,48,0,0,0,26,0,9,0,3,0
	db	0,0,117,16,0,0,245,18,0,0,0,0,1,0,9,19
	db	0,0,0,0,0,0,8,0,1,2,1,0,126,16,0,0
	db	26,0,9,0,3,0,0,0,117,16,0,0,245,18,0,0
	db	0,0,1,0,11,19,0,0,0,0,0,0,8,0,1,2
	db	1,0,117,0,0,0,26,0,9,0,48,0,0,0,117,16
	db	0,0,250,18,0,0,0,0,0,0,13,19,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,48,0,0,0
	db	117,16,0,0,250,18,0,0,0,0,0,0,15,19,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,48,0
	db	0,0,117,16,0,0,250,18,0,0,0,0,0,0,17,19
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	48,0,0,0,117,16,0,0,250,18,0,0,0,0,0,0
	db	19,19,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,126,16,0,0,117,16,0,0,250,18,0,0,0,0
	db	0,0,21,19,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,3,0,0,0,117,16,0,0,245,18,0,0
	db	0,0,1,0,23,19,0,0,0,0,0,0,8,0,1,2
	db	1,0,126,16,0,0,26,0,9,0,3,0,0,0,117,16
	db	0,0,245,18,0,0,0,0,1,0,25,19,0,0,0,0
	db	0,0,8,0,1,2,1,0,117,0,0,0,26,0,9,0
	db	123,16,0,0,117,16,0,0,250,18,0,0,0,0,0,0
	db	27,19,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,123,16,0,0,117,16,0,0,245,18,0,0,0,0
	db	1,0,29,19,0,0,0,0,0,0,8,0,1,2,1,0
	db	123,16,0,0,26,0,9,0,123,16,0,0,117,16,0,0
	db	245,18,0,0,0,0,1,0,31,19,0,0,0,0,0,0
	db	8,0,1,2,1,0,123,16,0,0,26,0,9,0,123,16
	db	0,0,117,16,0,0,245,18,0,0,0,0,2,0,33,19
	db	0,0,0,0,0,0,12,0,1,2,2,0,123,16,0,0
	db	123,16,0,0,26,0,9,0,3,0,0,0,117,16,0,0
	db	245,18,0,0,0,0,1,0,35,19,0,0,0,0,0,0
	db	8,0,1,2,1,0,123,16,0,0,26,0,9,0,116,0
	db	0,0,117,16,0,0,250,18,0,0,0,0,0,0,37,19
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	116,0,0,0,117,16,0,0,245,18,0,0,0,0,1,0
	db	39,19,0,0,0,0,0,0,8,0,1,2,1,0,116,0
	db	0,0,26,0,9,0,116,0,0,0,117,16,0,0,250,18
	db	0,0,0,0,0,0,41,19,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,116,0,0,0,117,16,0,0
	db	245,18,0,0,0,0,1,0,43,19,0,0,0,0,0,0
	db	8,0,1,2,1,0,116,0,0,0,26,0,9,0,45,19
	db	0,0,117,16,0,0,250,18,0,0,0,0,0,0,30,20
	db	0,0,0,0,0,0,28,0,4,0,18,0,29,20,0,0
	db	34,1,0,0,0,0,0,0,0,0,0,0,0,0,83,1
	db	0,0,16,0,28,0,4,0,8,0,47,19,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,84,1,0,0
	db	8,0,130,0,4,2,7,4,172,17,0,0,3,0,85,1
	db	0,0,0,0,0,0,7,4,172,17,0,0,3,0,86,1
	db	0,0,0,0,0,0,7,4,172,17,0,0,3,0,87,1
	db	0,0,0,0,0,0,7,4,172,17,0,0,3,0,88,1
	db	0,0,0,0,0,0,7,4,172,17,0,0,3,0,89,1
	db	0,0,0,0,0,0,7,4,172,17,0,0,3,0,90,1
	db	0,0,0,0,0,0,7,4,172,17,0,0,3,0,91,1
	db	0,0,0,0,0,0,7,4,172,17,0,0,3,0,92,1
	db	0,0,0,0,0,0,28,0,4,0,5,0,65,19,0,0
	db	42,0,45,19,0,0,0,0,0,0,0,0,0,0,93,1
	db	0,0,4,0,26,0,9,0,50,19,0,0,48,19,0,0
	db	51,19,0,0,0,0,1,0,52,19,0,0,0,0,0,0
	db	8,0,2,0,10,0,48,19,0,0,8,0,2,0,10,4
	db	48,19,0,0,8,0,1,2,1,0,117,0,0,0,26,0
	db	9,0,50,19,0,0,48,19,0,0,51,19,0,0,0,0
	db	1,0,56,19,0,0,0,0,0,0,8,0,2,0,42,0
	db	55,19,0,0,8,0,1,0,1,0,48,19,0,0,8,0
	db	1,2,1,0,54,19,0,0,26,0,9,0,117,0,0,0
	db	48,19,0,0,51,19,0,0,0,0,0,0,58,19,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,60,19
	db	0,0,48,19,0,0,51,19,0,0,0,0,1,0,61,19
	db	0,0,0,0,0,0,8,0,2,0,42,0,48,19,0,0
	db	8,0,1,2,1,0,54,19,0,0,22,0,7,2,3,4
	db	49,19,0,0,0,0,0,0,1,4,53,19,0,0,0,0
	db	0,0,12,0,7,2,3,2,57,19,0,0,0,0,0,0
	db	12,0,7,2,1,1,59,19,0,0,0,0,0,0,74,0
	db	4,2,8,4,2,0,62,19,0,0,94,1,0,0,8,4
	db	1,0,63,19,0,0,95,1,0,0,8,4,1,0,64,19
	db	0,0,96,1,0,0,6,4,117,0,0,0,1,0,97,1
	db	0,0,0,0,0,0,0,0,242,241,7,4,116,0,0,0
	db	1,0,98,1,0,0,0,0,0,0,28,0,4,0,15,0
	db	229,19,0,0,42,1,45,19,0,0,0,0,0,0,67,19
	db	0,0,99,1,0,0,64,0,5,0,10,0,1,0,5,8
	db	0,2,0,10,0,67,19,0,0,28,0,4,0,9,0,104
	db	19,0,0,42,1,45,19,0,0,0,0,0,0,70,19,0
	db	0,100,1,0,0,8,0,5,0,10,0,1,0,5,8,0
	db	2,0,10,0,70,19,0,0,26,0,9,0,117,0,0,0
	db	69,19,0,0,0,0,0,0,0,0,2,0,78,19,0,0
	db	0,0,0,0,8,0,2,0,10,0,74,19,0,0,8,0
	db	2,0,10,0,75,19,0,0,8,0,1,0,1,0,69,19
	db	0,0,8,0,2,0,10,0,77,19,0,0,8,0,1,0
	db	1,0,45,19,0,0,12,0,1,2,2,0,73,19,0,0
	db	76,19,0,0,26,0,9,0,3,0,0,0,69,19,0,0
	db	80,19,0,0,0,0,0,0,81,19,0,0,0,0,0,0
	db	8,0,2,0,10,4,69,19,0,0,4,0,1,2,0,0
	db	26,0,9,0,83,19,0,0,69,19,0,0,80,19,0,0
	db	0,0,0,0,84,19,0,0,0,0,0,0,8,0,2,0
	db	10,0,69,19,0,0,4,0,1,2,0,0,26,0,9,0
	db	3,0,0,0,69,19,0,0,80,19,0,0,0,0,0,0
	db	86,19,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,3,0,0,0,69,19,0,0,80,19,0,0,0,0
	db	0,0,88,19,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,83,19,0,0,69,19,0,0,80,19,0,0
	db	0,0,1,0,90,19,0,0,0,0,0,0,8,0,1,2
	db	1,0,117,0,0,0,26,0,9,0,83,19,0,0,69,19
	db	0,0,80,19,0,0,0,0,1,0,93,19,0,0,0,0
	db	0,0,8,0,2,0,42,0,75,19,0,0,8,0,1,2
	db	1,0,92,19,0,0,26,0,9,0,95,19,0,0,69,19
	db	0,0,80,19,0,0,0,0,1,0,96,19,0,0,0,0
	db	0,0,8,0,2,0,42,0,69,19,0,0,8,0,1,2
	db	1,0,92,19,0,0,12,0,7,2,11,0,72,19,0,0
	db	0,0,0,0,12,0,7,2,3,0,79,19,0,0,0,0
	db	0,0,12,0,7,2,3,0,82,19,0,0,0,0,0,0
	db	12,0,7,2,3,0,85,19,0,0,0,0,0,0,16,0
	db	7,2,18,8,87,19,0,0,0,0,0,0,0,0,0,0
	db	22,0,7,2,2,4,89,19,0,0,0,0,0,0,1,4
	db	91,19,0,0,0,0,0,0,12,0,7,2,1,1,94,19
	db	0,0,0,0,0,0,112,0,4,2,10,4,71,19,0,0
	db	0,0,8,4,1,0,97,19,0,0,101,1,0,0,8,4
	db	1,0,98,19,0,0,102,1,0,0,8,4,1,0,99,19
	db	0,0,103,1,0,0,8,4,1,0,100,19,0,0,104,1
	db	0,0,8,4,1,0,101,19,0,0,105,1,0,0,8,4
	db	2,0,102,19,0,0,106,1,0,0,8,4,1,0,103,19
	db	0,0,107,1,0,0,6,4,117,0,0,0,1,0,108,1
	db	0,0,0,0,0,0,4,0,26,0,9,0,3,0,0,0
	db	66,19,0,0,106,19,0,0,0,0,0,0,107,19,0,0
	db	0,0,0,0,8,0,2,0,10,4,66,19,0,0,4,0
	db	1,2,0,0,26,0,9,0,109,19,0,0,66,19,0,0
	db	106,19,0,0,0,0,1,0,110,19,0,0,0,0,0,0
	db	8,0,2,0,10,0,66,19,0,0,8,0,1,2,1,0
	db	48,0,0,0,26,0,9,0,109,19,0,0,66,19,0,0
	db	106,19,0,0,0,0,1,0,114,19,0,0,0,0,0,0
	db	8,0,2,0,42,0,113,19,0,0,8,0,1,0,1,0
	db	66,19,0,0,8,0,1,2,1,0,112,19,0,0,26,0
	db	9,0,3,0,0,0,66,19,0,0,106,19,0,0,0,0
	db	2,0,116,19,0,0,0,0,0,0,12,0,1,2,2,0
	db	83,19,0,0,117,0,0,0,26,0,9,0,109,19,0,0
	db	66,19,0,0,0,0,0,0,0,0,4,0,213,19,0,0
	db	0,0,0,0,8,0,2,0,42,0,119,19,0,0,8,0
	db	1,0,1,0,120,19,0,0,28,0,4,0,23,0,212,19
	db	0,0,34,1,0,0,0,0,0,0,0,0,0,0,0,0
	db	109,1,0,0,96,0,28,0,5,0,2,0,122,19,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,110,1
	db	0,0,8,0,40,0,4,2,6,4,34,0,0,0,3,0
	db	111,1,0,0,0,0,0,0,0,0,242,241,6,4,117,0
	db	0,0,3,0,112,1,0,0,0,0,0,0,4,0,28,0
	db	5,0,4,0,126,19,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,113,1,0,0,16,0,8,0,2,0
	db	10,0,125,19,0,0,8,0,1,0,1,0,17,0,0,0
	db	80,0,4,2,6,4,34,0,0,0,3,0,114,1,0,0
	db	0,0,0,0,0,0,242,241,6,4,117,0,0,0,3,0
	db	115,1,0,0,0,0,0,0,4,0,242,241,6,4,124,19
	db	0,0,3,0,116,1,0,0,0,0,0,0,8,0,242,241
	db	6,4,116,0,0,0,3,0,117,1,0,0,0,0,0,0
	db	12,0,28,0,5,0,2,0,128,19,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,118,1,0,0,8,0
	db	40,0,4,2,6,4,34,0,0,0,3,0,119,1,0,0
	db	0,0,0,0,0,0,242,241,6,4,117,0,0,0,3,0
	db	120,1,0,0,0,0,0,0,4,0,28,0,4,0,2,0
	db	135,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,121,1,0,0,1,0,26,0,9,0,3,4,0,0
	db	129,19,0,0,131,19,0,0,0,0,0,0,133,19,0,0
	db	0,0,0,0,8,0,2,0,10,4,132,19,0,0,8,0
	db	1,0,1,0,129,19,0,0,4,0,1,2,0,0,12,0
	db	7,2,3,0,130,19,0,0,0,0,0,0,32,0,4,2
	db	8,4,1,0,134,19,0,0,122,1,0,0,6,4,112,0
	db	0,0,3,0,123,1,0,0,0,0,0,0,0,0,26,0
	db	9,0,137,19,0,0,120,19,0,0,138,19,0,0,0,0
	db	1,0,139,19,0,0,0,0,0,0,8,0,2,0,10,0
	db	120,19,0,0,8,0,2,0,10,4,120,19,0,0,8,0
	db	1,2,1,0,171,16,0,0,26,0,9,0,137,19,0,0
	db	120,19,0,0,138,19,0,0,0,0,1,0,141,19,0,0
	db	0,0,0,0,8,0,1,2,1,0,187,16,0,0,26,0
	db	9,0,137,19,0,0,120,19,0,0,138,19,0,0,0,0
	db	2,0,143,19,0,0,0,0,0,0,12,0,1,2,2,0
	db	116,0,0,0,171,16,0,0,26,0,9,0,137,19,0,0
	db	120,19,0,0,138,19,0,0,0,0,1,0,145,19,0,0
	db	0,0,0,0,8,0,1,2,1,0,118,19,0,0,26,0
	db	9,0,3,0,0,0,120,19,0,0,138,19,0,0,0,0
	db	0,0,147,19,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,149,19,0,0,120,19,0,0,138,19,0,0
	db	0,0,2,0,150,19,0,0,0,0,0,0,8,0,2,0
	db	42,0,120,19,0,0,12,0,1,2,2,0,116,0,0,0
	db	171,16,0,0,26,0,9,0,189,16,0,0,120,19,0,0
	db	152,19,0,0,0,0,0,0,153,19,0,0,0,0,0,0
	db	8,0,2,0,10,4,119,19,0,0,4,0,1,2,0,0
	db	26,0,9,0,121,19,0,0,120,19,0,0,152,19,0,0
	db	0,0,0,0,155,19,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,123,19,0,0,120,19,0,0,152,19
	db	0,0,0,0,0,0,157,19,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,127,19,0,0,120,19,0,0
	db	152,19,0,0,0,0,0,0,159,19,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,161,19,0,0,120,19
	db	0,0,152,19,0,0,0,0,0,0,165,19,0,0,0,0
	db	0,0,8,0,2,0,10,0,162,19,0,0,8,0,1,0
	db	1,0,163,19,0,0,28,0,5,0,18,0,164,19,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,124,1
	db	0,0,48,0,104,1,4,2,6,4,112,4,0,0,3,0
	db	125,1,0,0,0,0,0,0,0,0,242,241,6,4,112,4
	db	0,0,3,0,126,1,0,0,0,0,0,0,4,0,242,241
	db	6,4,112,4,0,0,3,0,127,1,0,0,0,0,0,0
	db	8,0,242,241,6,4,112,4,0,0,3,0,128,1,0,0
	db	0,0,0,0,12,0,242,241,6,4,112,4,0,0,3,0
	db	129,1,0,0,0,0,0,0,16,0,242,241,6,4,112,4
	db	0,0,3,0,130,1,0,0,0,0,0,0,20,0,242,241
	db	6,4,112,4,0,0,3,0,131,1,0,0,0,0,0,0
	db	24,0,242,241,6,4,112,4,0,0,3,0,132,1,0,0
	db	0,0,0,0,28,0,242,241,6,4,112,4,0,0,3,0
	db	133,1,0,0,0,0,0,0,32,0,242,241,6,4,112,4
	db	0,0,3,0,134,1,0,0,0,0,0,0,36,0,242,241
	db	6,4,112,0,0,0,3,0,135,1,0,0,0,0,0,0
	db	40,0,242,241,6,4,112,0,0,0,3,0,136,1,0,0
	db	0,0,0,0,41,0,242,241,6,4,112,0,0,0,3,0
	db	137,1,0,0,0,0,0,0,42,0,242,241,6,4,112,0
	db	0,0,3,0,138,1,0,0,0,0,0,0,43,0,242,241
	db	6,4,112,0,0,0,3,0,139,1,0,0,0,0,0,0
	db	44,0,242,241,6,4,112,0,0,0,3,0,140,1,0,0
	db	0,0,0,0,45,0,242,241,6,4,112,0,0,0,3,0
	db	141,1,0,0,0,0,0,0,46,0,242,241,6,4,112,0
	db	0,0,3,0,142,1,0,0,0,0,0,0,47,0,4,0
	db	1,2,0,0,26,0,9,0,129,19,0,0,120,19,0,0
	db	152,19,0,0,0,0,0,0,167,19,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,171,16,0,0,120,19
	db	0,0,152,19,0,0,0,0,0,0,169,19,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,171,16,0,0
	db	120,19,0,0,152,19,0,0,0,0,0,0,171,19,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,171,16
	db	0,0,120,19,0,0,152,19,0,0,0,0,0,0,173,19
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	171,16,0,0,120,19,0,0,152,19,0,0,0,0,0,0
	db	175,19,0,0,0,0,0,0,4,0,1,2,0,0,28,0
	db	4,0,4,0,195,19,0,0,34,1,0,0,0,0,0,0
	db	0,0,0,0,0,0,143,1,0,0,4,0,26,0,9,0
	db	178,19,0,0,176,19,0,0,179,19,0,0,0,0,0,0
	db	180,19,0,0,0,0,0,0,8,0,2,0,10,0,176,19
	db	0,0,8,0,2,0,10,4,176,19,0,0,4,0,1,2
	db	0,0,26,0,9,0,178,19,0,0,176,19,0,0,179,19
	db	0,0,0,0,1,0,182,19,0,0,0,0,0,0,8,0
	db	1,2,1,0,116,0,0,0,26,0,9,0,178,19,0,0
	db	176,19,0,0,179,19,0,0,0,0,1,0,186,19,0,0
	db	0,0,0,0,8,0,2,0,42,0,185,19,0,0,8,0
	db	1,0,1,0,176,19,0,0,8,0,1,2,1,0,184,19
	db	0,0,26,0,9,0,3,0,0,0,176,19,0,0,179,19
	db	0,0,0,0,0,0,188,19,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,190,19,0,0,176,19,0,0
	db	179,19,0,0,0,0,1,0,191,19,0,0,0,0,0,0
	db	8,0,2,0,42,0,176,19,0,0,8,0,1,2,1,0
	db	184,19,0,0,32,0,7,2,3,4,177,19,0,0,0,0
	db	0,0,3,4,181,19,0,0,0,0,0,0,3,4,183,19
	db	0,0,0,0,0,0,12,0,7,2,3,8,187,19,0,0
	db	0,0,0,0,12,0,7,2,3,1,189,19,0,0,0,0
	db	0,0,56,0,4,2,8,4,3,0,192,19,0,0,144,1
	db	0,0,8,4,1,0,193,19,0,0,145,1,0,0,8,4
	db	1,0,194,19,0,0,146,1,0,0,6,4,116,0,0,0
	db	1,0,147,1,0,0,0,0,0,0,0,0,26,0,9,0
	db	149,19,0,0,120,19,0,0,138,19,0,0,0,0,1,0
	db	197,19,0,0,0,0,0,0,8,0,1,2,1,0,118,19
	db	0,0,42,0,7,2,3,4,136,19,0,0,0,0,0,0
	db	3,4,140,19,0,0,0,0,0,0,3,4,142,19,0,0
	db	0,0,0,0,35,20,144,19,0,0,0,0,0,0,12,0
	db	7,2,3,8,146,19,0,0,0,0,0,0,12,0,7,2
	db	3,0,148,19,0,0,0,0,0,0,12,0,7,2,3,0
	db	151,19,0,0,0,0,0,0,12,0,7,2,3,0,154,19
	db	0,0,0,0,0,0,12,0,7,2,3,0,156,19,0,0
	db	0,0,0,0,12,0,7,2,3,0,158,19,0,0,0,0
	db	0,0,12,0,7,2,3,0,160,19,0,0,0,0,0,0
	db	12,0,7,2,3,0,166,19,0,0,0,0,0,0,12,0
	db	7,2,3,0,168,19,0,0,0,0,0,0,12,0,7,2
	db	3,0,170,19,0,0,0,0,0,0,12,0,7,2,3,0
	db	172,19,0,0,0,0,0,0,12,0,7,2,3,0,174,19
	db	0,0,0,0,0,0,12,0,7,2,35,17,196,19,0,0
	db	0,0,0,0,78,1,4,2,9,4,121,19,0,0,148,1
	db	0,0,0,0,0,0,242,241,9,4,123,19,0,0,149,1
	db	0,0,0,0,0,0,242,241,9,4,127,19,0,0,150,1
	db	0,0,0,0,0,0,242,241,9,4,129,19,0,0,151,1
	db	0,0,0,0,0,0,242,241,8,4,4,0,198,19,0,0
	db	152,1,0,0,8,4,1,0,199,19,0,0,153,1,0,0
	db	8,4,1,0,200,19,0,0,154,1,0,0,8,4,1,0
	db	201,19,0,0,155,1,0,0,8,4,1,0,202,19,0,0
	db	156,1,0,0,8,4,1,0,203,19,0,0,157,1,0,0
	db	8,4,1,0,204,19,0,0,158,1,0,0,8,4,1,0
	db	205,19,0,0,159,1,0,0,8,4,1,0,206,19,0,0
	db	160,1,0,0,8,4,1,0,207,19,0,0,161,1,0,0
	db	8,4,1,0,208,19,0,0,162,1,0,0,8,4,1,0
	db	209,19,0,0,163,1,0,0,8,4,1,0,210,19,0,0
	db	164,1,0,0,6,4,176,19,0,0,1,0,165,1,0,0
	db	0,0,0,0,0,0,242,241,6,4,189,16,0,0,1,0
	db	166,1,0,0,0,0,0,0,8,0,242,241,6,4,189,16
	db	0,0,1,0,167,1,0,0,0,0,0,0,48,0,242,241
	db	6,4,34,0,0,0,1,0,168,1,0,0,0,0,0,0
	db	88,0,242,241,6,4,117,0,0,0,1,0,169,1,0,0
	db	0,0,0,0,92,0,242,241,8,4,1,0,211,19,0,0
	db	170,1,0,0,20,0,1,2,4,0,118,19,0,0,116,0
	db	0,0,109,19,0,0,76,19,0,0,26,0,9,0,3,0
	db	0,0,66,19,0,0,0,0,0,0,0,0,4,0,215,19
	db	0,0,0,0,0,0,20,0,1,2,4,0,118,19,0,0
	db	116,0,0,0,109,19,0,0,76,19,0,0,26,0,9,0
	db	3,0,0,0,66,19,0,0,0,0,0,0,0,0,4,0
	db	217,19,0,0,0,0,0,0,20,0,1,2,4,0,118,19
	db	0,0,116,0,0,0,109,19,0,0,76,19,0,0,8,0
	db	2,0,10,0,83,19,0,0,26,0,9,0,220,19,0,0
	db	66,19,0,0,106,19,0,0,0,0,1,0,221,19,0,0
	db	0,0,0,0,8,0,2,0,42,0,66,19,0,0,8,0
	db	1,2,1,0,112,19,0,0,16,0,7,2,18,8,105,19
	db	0,0,0,0,0,0,0,0,0,0,22,0,7,2,1,4
	db	108,19,0,0,0,0,0,0,1,4,111,19,0,0,0,0
	db	0,0,12,0,7,2,1,0,115,19,0,0,0,0,0,0
	db	12,0,7,2,9,0,117,19,0,0,0,0,0,0,12,0
	db	7,2,9,0,214,19,0,0,0,0,0,0,12,0,7,2
	db	9,0,216,19,0,0,0,0,0,0,12,0,7,2,35,17
	db	219,19,0,0,0,0,0,0,222,0,4,2,10,4,68,19
	db	0,0,0,0,0,4,69,19,0,0,3,0,0,0,242,241
	db	8,4,1,0,222,19,0,0,171,1,0,0,8,4,2,0
	db	223,19,0,0,172,1,0,0,8,4,1,0,224,19,0,0
	db	173,1,0,0,8,4,1,0,225,19,0,0,174,1,0,0
	db	8,4,1,0,226,19,0,0,175,1,0,0,8,4,1,0
	db	227,19,0,0,176,1,0,0,6,4,218,19,0,0,1,0
	db	177,1,0,0,0,0,0,0,8,0,242,241,6,4,117,0
	db	0,0,1,0,178,1,0,0,0,0,0,0,12,0,242,241
	db	6,4,116,0,0,0,1,0,179,1,0,0,0,0,0,0
	db	16,0,242,241,6,4,48,0,0,0,1,0,180,1,0,0
	db	0,0,0,0,20,0,242,241,6,4,189,16,0,0,1,0
	db	181,1,0,0,0,0,0,0,24,0,242,241,7,4,109,19
	db	0,0,1,0,182,1,0,0,0,0,0,0,8,4,1,0
	db	228,19,0,0,183,1,0,0,26,0,9,0,231,19,0,0
	db	45,19,0,0,232,19,0,0,0,0,3,0,233,19,0,0
	db	0,0,0,0,8,0,2,0,42,0,45,19,0,0,8,0
	db	2,0,10,4,45,19,0,0,16,0,1,2,3,0,83,19
	db	0,0,117,0,0,0,117,0,0,0,26,0,9,0,235,19
	db	0,0,45,19,0,0,232,19,0,0,0,0,0,0,236,19
	db	0,0,0,0,0,0,8,0,2,0,10,0,45,19,0,0
	db	4,0,1,2,0,0,26,0,9,0,235,19,0,0,45,19
	db	0,0,232,19,0,0,0,0,1,0,240,19,0,0,0,0
	db	0,0,20,0,7,0,1,0,116,0,0,0,239,19,0,0
	db	0,0,0,0,184,1,0,0,32,0,4,2,3,4,0,0
	db	185,1,0,0,0,0,0,0,0,0,242,241,3,4,0,0
	db	186,1,0,0,0,0,0,0,0,0,8,0,1,2,1,0
	db	238,19,0,0,26,0,9,0,235,19,0,0,45,19,0,0
	db	232,19,0,0,0,0,1,0,243,19,0,0,0,0,0,0
	db	8,0,2,0,42,0,77,19,0,0,8,0,1,2,1,0
	db	242,19,0,0,26,0,9,0,235,19,0,0,45,19,0,0
	db	232,19,0,0,0,0,3,0,245,19,0,0,0,0,0,0
	db	16,0,1,2,3,0,242,19,0,0,242,19,0,0,116,0
	db	0,0,26,0,9,0,235,19,0,0,45,19,0,0,232,19
	db	0,0,0,0,2,0,247,19,0,0,0,0,0,0,12,0
	db	1,2,2,0,171,16,0,0,116,0,0,0,26,0,9,0
	db	235,19,0,0,45,19,0,0,232,19,0,0,0,0,3,0
	db	249,19,0,0,0,0,0,0,16,0,1,2,3,0,242,19
	db	0,0,171,16,0,0,116,0,0,0,26,0,9,0,235,19
	db	0,0,45,19,0,0,232,19,0,0,0,0,1,0,251,19
	db	0,0,0,0,0,0,8,0,1,2,1,0,109,19,0,0
	db	26,0,9,0,3,0,0,0,45,19,0,0,232,19,0,0
	db	0,0,0,0,253,19,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,231,19,0,0,45,19,0,0,232,19
	db	0,0,0,0,1,0,255,19,0,0,0,0,0,0,8,0
	db	1,2,1,0,242,19,0,0,26,0,9,0,189,16,0,0
	db	45,19,0,0,1,20,0,0,0,0,0,0,2,20,0,0
	db	0,0,0,0,8,0,2,0,10,4,77,19,0,0,4,0
	db	1,2,0,0,26,0,9,0,74,19,0,0,45,19,0,0
	db	1,20,0,0,0,0,1,0,4,20,0,0,0,0,0,0
	db	8,0,1,2,1,0,117,0,0,0,26,0,9,0,48,0
	db	0,0,45,19,0,0,1,20,0,0,0,0,1,0,6,20
	db	0,0,0,0,0,0,8,0,1,2,1,0,242,19,0,0
	db	26,0,9,0,48,0,0,0,45,19,0,0,1,20,0,0
	db	0,0,1,0,8,20,0,0,0,0,0,0,8,0,1,2
	db	1,0,242,19,0,0,26,0,9,0,242,19,0,0,45,19
	db	0,0,0,0,0,0,0,0,0,0,10,20,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,45,19,0,0
	db	45,19,0,0,0,0,0,0,0,0,1,0,12,20,0,0
	db	0,0,0,0,8,0,1,2,1,0,242,19,0,0,26,0
	db	9,0,45,19,0,0,45,19,0,0,0,0,0,0,0,0
	db	0,0,14,20,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,109,19,0,0,45,19,0,0,0,0,0,0
	db	0,0,0,0,16,20,0,0,0,0,0,0,4,0,1,2
	db	0,0,12,0,7,2,3,0,230,19,0,0,0,0,0,0
	db	72,0,7,2,3,4,234,19,0,0,0,0,0,0,3,4
	db	237,19,0,0,0,0,0,0,3,4,241,19,0,0,0,0
	db	0,0,3,4,244,19,0,0,0,0,0,0,3,4,246,19
	db	0,0,0,0,0,0,3,4,248,19,0,0,0,0,0,0
	db	1,4,250,19,0,0,0,0,0,0,12,0,7,2,3,8
	db	252,19,0,0,0,0,0,0,12,0,7,2,3,1,254,19
	db	0,0,0,0,0,0,12,0,7,2,3,0,0,20,0,0
	db	0,0,0,0,12,0,7,2,3,0,3,20,0,0,0,0
	db	0,0,12,0,7,2,3,1,5,20,0,0,0,0,0,0
	db	12,0,7,2,3,1,7,20,0,0,0,0,0,0,12,0
	db	7,2,11,0,9,20,0,0,0,0,0,0,12,0,7,2
	db	11,0,11,20,0,0,0,0,0,0,12,0,7,2,11,0
	db	13,20,0,0,0,0,0,0,12,0,7,2,9,0,15,20
	db	0,0,0,0,0,0,240,0,4,2,0,4,46,19,0,0
	db	3,0,0,0,242,241,9,4,116,0,0,0,187,1,0,0
	db	0,0,0,0,242,241,9,4,48,19,0,0,188,1,0,0
	db	0,0,0,0,242,241,9,4,66,19,0,0,189,1,0,0
	db	0,0,0,0,242,241,9,4,69,19,0,0,190,1,0,0
	db	0,0,0,0,242,241,8,4,1,0,17,20,0,0,191,1
	db	0,0,8,4,7,0,18,20,0,0,192,1,0,0,8,4
	db	1,0,19,20,0,0,193,1,0,0,8,4,1,0,20,20
	db	0,0,194,1,0,0,8,4,1,0,21,20,0,0,195,1
	db	0,0,8,4,1,0,22,20,0,0,196,1,0,0,8,4
	db	1,0,23,20,0,0,197,1,0,0,8,4,1,0,24,20
	db	0,0,198,1,0,0,8,4,1,0,25,20,0,0,199,1
	db	0,0,8,4,1,0,26,20,0,0,200,1,0,0,8,4
	db	1,0,27,20,0,0,201,1,0,0,8,4,1,0,28,20
	db	0,0,202,1,0,0,6,4,109,19,0,0,1,0,203,1
	db	0,0,0,0,0,0,8,0,4,0,1,2,0,0,26,0
	db	9,0,45,19,0,0,117,16,0,0,245,18,0,0,0,0
	db	1,0,32,20,0,0,0,0,0,0,8,0,1,2,1,0
	db	242,19,0,0,26,0,9,0,116,0,0,0,117,16,0,0
	db	0,0,0,0,0,0,0,0,34,20,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,36,20,0,0,117,16
	db	0,0,245,18,0,0,0,0,1,0,37,20,0,0,0,0
	db	0,0,8,0,2,0,42,0,18,0,0,0,8,0,1,2
	db	1,0,116,0,0,0,26,0,9,0,39,20,0,0,117,16
	db	0,0,245,18,0,0,0,0,1,0,40,20,0,0,0,0
	db	0,0,8,0,2,0,42,0,3,4,0,0,8,0,1,2
	db	1,0,116,0,0,0,26,0,9,0,3,0,0,0,117,16
	db	0,0,245,18,0,0,0,0,2,0,42,20,0,0,0,0
	db	0,0,12,0,1,2,2,0,142,16,0,0,116,0,0,0
	db	26,0,9,0,144,16,0,0,117,16,0,0,245,18,0,0
	db	0,0,1,0,44,20,0,0,0,0,0,0,8,0,1,2
	db	1,0,246,18,0,0,26,0,9,0,3,0,0,0,117,16
	db	0,0,245,18,0,0,0,0,0,0,46,20,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,48,0,0,0
	db	117,16,0,0,0,0,0,0,0,0,1,0,48,20,0,0
	db	0,0,0,0,8,0,1,2,1,0,48,0,0,0,26,0
	db	9,0,3,0,0,0,117,16,0,0,245,18,0,0,0,0
	db	0,0,50,20,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,52,20,0,0,117,16,0,0,245,18,0,0
	db	0,0,0,0,53,20,0,0,0,0,0,0,8,0,2,0
	db	10,0,117,16,0,0,4,0,1,2,0,0,26,0,9,0
	db	52,20,0,0,117,16,0,0,245,18,0,0,0,0,1,0
	db	55,20,0,0,0,0,0,0,8,0,1,2,1,0,246,18
	db	0,0,26,0,9,0,3,0,0,0,117,16,0,0,245,18
	db	0,0,0,0,0,0,57,20,0,0,0,0,0,0,4,0
	db	1,2,0,0,28,0,5,0,5,0,68,20,0,0,10,0
	db	117,16,0,0,0,0,0,0,0,0,0,0,204,1,0,0
	db	16,0,26,0,9,0,60,20,0,0,58,20,0,0,61,20
	db	0,0,0,0,2,0,62,20,0,0,0,0,0,0,8,0
	db	2,0,10,0,58,20,0,0,8,0,2,0,10,4,58,20
	db	0,0,12,0,1,2,2,0,116,0,0,0,60,20,0,0
	db	26,0,9,0,60,20,0,0,58,20,0,0,61,20,0,0
	db	0,0,1,0,66,20,0,0,0,0,0,0,8,0,2,0
	db	42,0,65,20,0,0,8,0,1,0,1,0,58,20,0,0
	db	8,0,1,2,1,0,64,20,0,0,22,0,7,2,3,4
	db	59,20,0,0,0,0,0,0,35,20,63,20,0,0,0,0
	db	0,0,92,0,4,2,8,4,2,0,67,20,0,0,205,1
	db	0,0,6,4,60,20,0,0,3,0,206,1,0,0,0,0
	db	0,0,0,0,242,241,6,4,116,0,0,0,3,0,207,1
	db	0,0,0,0,0,0,4,0,242,241,6,4,18,0,0,0
	db	3,0,208,1,0,0,0,0,0,0,8,0,242,241,6,4
	db	3,4,0,0,3,0,209,1,0,0,0,0,0,0,12,0
	db	28,0,5,0,4,0,79,20,0,0,10,0,117,16,0,0
	db	0,0,0,0,0,0,0,0,210,1,0,0,12,0,26,0
	db	9,0,71,20,0,0,69,20,0,0,72,20,0,0,0,0
	db	3,0,73,20,0,0,0,0,0,0,8,0,2,0,10,0
	db	69,20,0,0,8,0,2,0,10,4,69,20,0,0,16,0
	db	1,2,3,0,116,0,0,0,142,16,0,0,71,20,0,0
	db	26,0,9,0,71,20,0,0,69,20,0,0,72,20,0,0
	db	0,0,1,0,77,20,0,0,0,0,0,0,8,0,2,0
	db	42,0,76,20,0,0,8,0,1,0,1,0,69,20,0,0
	db	8,0,1,2,1,0,75,20,0,0,22,0,7,2,3,4
	db	70,20,0,0,0,0,0,0,35,20,74,20,0,0,0,0
	db	0,0,72,0,4,2,8,4,2,0,78,20,0,0,211,1
	db	0,0,6,4,71,20,0,0,3,0,212,1,0,0,0,0
	db	0,0,0,0,242,241,6,4,116,0,0,0,3,0,213,1
	db	0,0,0,0,0,0,4,0,242,241,6,4,142,16,0,0
	db	3,0,214,1,0,0,0,0,0,0,8,0,26,0,9,0
	db	3,0,0,0,117,16,0,0,245,18,0,0,0,0,1,0
	db	81,20,0,0,0,0,0,0,8,0,1,2,1,0,140,16
	db	0,0,26,0,9,0,83,20,0,0,117,16,0,0,245,18
	db	0,0,0,0,1,0,84,20,0,0,0,0,0,0,8,0
	db	2,0,42,0,58,20,0,0,8,0,1,2,1,0,116,0
	db	0,0,26,0,9,0,3,0,0,0,117,16,0,0,245,18
	db	0,0,0,0,0,0,86,20,0,0,0,0,0,0,4,0
	db	1,2,0,0,12,0,7,2,3,1,244,18,0,0,0,0
	db	0,0,12,0,7,2,3,2,249,18,0,0,0,0,0,0
	db	12,0,7,2,3,1,252,18,0,0,0,0,0,0,32,0
	db	7,2,3,0,254,18,0,0,0,0,0,0,3,0,0,19
	db	0,0,0,0,0,0,3,0,2,19,0,0,0,0,0,0
	db	12,0,7,2,3,0,4,19,0,0,0,0,0,0,32,0
	db	7,2,3,0,6,19,0,0,0,0,0,0,3,0,8,19
	db	0,0,0,0,0,0,3,0,10,19,0,0,0,0,0,0
	db	12,0,7,2,3,0,12,19,0,0,0,0,0,0,12,0
	db	7,2,3,0,14,19,0,0,0,0,0,0,12,0,7,2
	db	3,0,16,19,0,0,0,0,0,0,12,0,7,2,3,0
	db	18,19,0,0,0,0,0,0,32,0,7,2,3,0,20,19
	db	0,0,0,0,0,0,3,0,22,19,0,0,0,0,0,0
	db	3,0,24,19,0,0,0,0,0,0,22,0,7,2,3,0
	db	26,19,0,0,0,0,0,0,3,0,28,19,0,0,0,0
	db	0,0,22,0,7,2,3,0,30,19,0,0,0,0,0,0
	db	3,0,32,19,0,0,0,0,0,0,12,0,7,2,3,0
	db	34,19,0,0,0,0,0,0,22,0,7,2,3,0,36,19
	db	0,0,0,0,0,0,3,0,38,19,0,0,0,0,0,0
	db	22,0,7,2,3,0,40,19,0,0,0,0,0,0,3,0
	db	42,19,0,0,0,0,0,0,12,0,7,2,3,0,44,19
	db	0,0,0,0,0,0,12,0,7,2,3,0,31,20,0,0
	db	0,0,0,0,12,0,7,2,11,0,33,20,0,0,0,0
	db	0,0,12,0,7,2,3,0,35,20,0,0,0,0,0,0
	db	12,0,7,2,3,0,38,20,0,0,0,0,0,0,12,0
	db	7,2,3,0,41,20,0,0,0,0,0,0,12,0,7,2
	db	3,0,43,20,0,0,0,0,0,0,16,0,7,2,19,8
	db	45,20,0,0,0,0,0,0,0,0,0,0,12,0,7,2
	db	11,0,47,20,0,0,0,0,0,0,12,0,7,2,3,0
	db	49,20,0,0,0,0,0,0,22,0,7,2,2,4,51,20
	db	0,0,0,0,0,0,35,20,54,20,0,0,0,0,0,0
	db	12,0,7,2,2,0,56,20,0,0,0,0,0,0,12,0
	db	7,2,1,0,80,20,0,0,0,0,0,0,12,0,7,2
	db	1,0,82,20,0,0,0,0,0,0,12,0,7,2,1,0
	db	85,20,0,0,0,0,0,0,78,3,4,2,10,4,119,16
	db	0,0,8,0,0,4,120,16,0,0,3,0,0,0,242,241
	db	9,4,123,16,0,0,215,1,0,0,0,0,0,0,242,241
	db	9,4,126,16,0,0,216,1,0,0,0,0,0,0,242,241
	db	9,4,129,16,0,0,217,1,0,0,0,0,0,0,242,241
	db	9,4,132,16,0,0,218,1,0,0,0,0,0,0,242,241
	db	9,4,118,0,0,0,219,1,0,0,0,0,0,0,242,241
	db	9,4,138,16,0,0,220,1,0,0,0,0,0,0,242,241
	db	9,4,140,16,0,0,221,1,0,0,0,0,0,0,242,241
	db	9,4,142,16,0,0,222,1,0,0,0,0,0,0,242,241
	db	9,4,117,0,0,0,223,1,0,0,0,0,0,0,242,241
	db	9,4,117,0,0,0,224,1,0,0,0,0,0,0,242,241
	db	9,4,117,0,0,0,225,1,0,0,0,0,0,0,242,241
	db	9,4,146,16,0,0,226,1,0,0,0,0,0,0,242,241
	db	9,4,230,18,0,0,227,1,0,0,0,0,0,0,242,241
	db	8,4,1,0,87,20,0,0,228,1,0,0,8,4,1,0
	db	88,20,0,0,229,1,0,0,8,4,1,0,89,20,0,0
	db	230,1,0,0,8,4,3,0,90,20,0,0,231,1,0,0
	db	8,4,1,0,91,20,0,0,232,1,0,0,8,4,3,0
	db	92,20,0,0,233,1,0,0,8,4,1,0,93,20,0,0
	db	234,1,0,0,8,4,1,0,94,20,0,0,235,1,0,0
	db	8,4,1,0,95,20,0,0,236,1,0,0,8,4,1,0
	db	96,20,0,0,237,1,0,0,8,4,3,0,97,20,0,0
	db	238,1,0,0,8,4,2,0,98,20,0,0,239,1,0,0
	db	8,4,2,0,99,20,0,0,240,1,0,0,8,4,1,0
	db	100,20,0,0,241,1,0,0,8,4,2,0,101,20,0,0
	db	242,1,0,0,8,4,2,0,102,20,0,0,243,1,0,0
	db	8,4,1,0,103,20,0,0,244,1,0,0,8,4,1,0
	db	104,20,0,0,245,1,0,0,8,4,1,0,105,20,0,0
	db	246,1,0,0,8,4,1,0,106,20,0,0,247,1,0,0
	db	8,4,1,0,107,20,0,0,248,1,0,0,8,4,1,0
	db	108,20,0,0,249,1,0,0,8,4,1,0,109,20,0,0
	db	250,1,0,0,8,4,1,0,110,20,0,0,251,1,0,0
	db	8,4,1,0,111,20,0,0,252,1,0,0,8,4,1,0
	db	112,20,0,0,253,1,0,0,6,4,117,0,0,0,3,0
	db	254,1,0,0,0,0,0,0,12,0,242,241,8,4,2,0
	db	113,20,0,0,255,1,0,0,8,4,1,0,114,20,0,0
	db	0,2,0,0,9,4,58,20,0,0,1,2,0,0,0,0
	db	0,0,242,241,9,4,69,20,0,0,2,2,0,0,0,0
	db	0,0,242,241,8,4,1,0,115,20,0,0,3,2,0,0
	db	8,4,1,0,116,20,0,0,4,2,0,0,8,4,1,0
	db	117,20,0,0,5,2,0,0,6,4,126,16,0,0,1,0
	db	6,2,0,0,0,0,0,0,16,0,242,241,6,4,126,16
	db	0,0,1,0,7,2,0,0,0,0,0,0,20,0,242,241
	db	6,4,123,16,0,0,1,0,8,2,0,0,0,0,0,0
	db	24,0,242,241,6,4,116,0,0,0,1,0,9,2,0,0
	db	0,0,0,0,28,0,242,241,6,4,116,0,0,0,1,0
	db	10,2,0,0,0,0,0,0,32,0,242,241,6,4,60,20
	db	0,0,1,0,11,2,0,0,0,0,0,0,36,0,242,241
	db	6,4,71,20,0,0,1,0,12,2,0,0,0,0,0,0
	db	40,0,242,241,6,4,235,19,0,0,1,0,13,2,0,0
	db	0,0,0,0,44,0,242,241,7,4,116,0,0,0,1,0
	db	14,2,0,0,0,0,0,0,7,4,48,0,0,0,1,0
	db	15,2,0,0,0,0,0,0,28,0,4,0,76,0,61,21
	db	0,0,34,1,0,0,0,0,0,0,0,0,120,20,0,0
	db	16,2,0,0,64,0,12,0,10,0,15,0,85,85,85,85
	db	85,85,85,5,8,0,2,0,10,0,120,20,0,0,26,0
	db	9,0,123,20,0,0,119,20,0,0,124,20,0,0,0,0
	db	1,0,127,20,0,0,0,0,0,0,8,0,2,0,10,0
	db	119,20,0,0,8,0,2,0,10,4,119,20,0,0,8,0
	db	2,0,42,0,126,20,0,0,8,0,1,0,1,0,119,20
	db	0,0,8,0,1,2,1,0,125,20,0,0,26,0,9,0
	db	123,20,0,0,119,20,0,0,124,20,0,0,0,0,0,0
	db	129,20,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,123,20,0,0,119,20,0,0,124,20,0,0,0,0
	db	1,0,131,20,0,0,0,0,0,0,8,0,1,2,1,0
	db	238,19,0,0,26,0,9,0,133,20,0,0,119,20,0,0
	db	124,20,0,0,0,0,1,0,134,20,0,0,0,0,0,0
	db	8,0,2,0,42,0,119,20,0,0,8,0,1,2,1,0
	db	125,20,0,0,26,0,9,0,3,0,0,0,119,20,0,0
	db	124,20,0,0,0,0,0,0,136,20,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,138,16,0,0,119,20
	db	0,0,124,20,0,0,0,0,3,0,138,20,0,0,0,0
	db	0,0,16,0,1,2,3,0,118,0,0,0,132,16,0,0
	db	129,16,0,0,26,0,9,0,138,16,0,0,119,20,0,0
	db	124,20,0,0,0,0,3,0,140,20,0,0,0,0,0,0
	db	16,0,1,2,3,0,118,0,0,0,117,0,0,0,117,0
	db	0,0,26,0,9,0,138,16,0,0,119,20,0,0,124,20
	db	0,0,0,0,2,0,142,20,0,0,0,0,0,0,12,0
	db	1,2,2,0,138,16,0,0,129,16,0,0,26,0,9,0
	db	138,16,0,0,119,20,0,0,124,20,0,0,0,0,2,0
	db	144,20,0,0,0,0,0,0,12,0,1,2,2,0,138,16
	db	0,0,117,0,0,0,26,0,9,0,123,20,0,0,119,20
	db	0,0,124,20,0,0,0,0,2,0,146,20,0,0,0,0
	db	0,0,12,0,1,2,2,0,112,4,0,0,116,0,0,0
	db	26,0,9,0,45,19,0,0,119,20,0,0,124,20,0,0
	db	0,0,1,0,148,20,0,0,0,0,0,0,8,0,1,2
	db	1,0,242,19,0,0,26,0,9,0,45,19,0,0,119,20
	db	0,0,150,20,0,0,0,0,0,0,151,20,0,0,0,0
	db	0,0,8,0,2,0,10,4,126,20,0,0,4,0,1,2
	db	0,0,26,0,9,0,116,0,0,0,119,20,0,0,124,20
	db	0,0,0,0,0,0,153,20,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,116,0,0,0,119,20,0,0
	db	150,20,0,0,0,0,0,0,155,20,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,116,0,0,0,119,20
	db	0,0,124,20,0,0,0,0,0,0,157,20,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,116,0,0,0
	db	119,20,0,0,124,20,0,0,0,0,0,0,159,20,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,116,0
	db	0,0,119,20,0,0,124,20,0,0,0,0,0,0,161,20
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	116,0,0,0,119,20,0,0,124,20,0,0,0,0,2,0
	db	163,20,0,0,0,0,0,0,12,0,1,2,2,0,112,4
	db	0,0,116,0,0,0,26,0,9,0,116,0,0,0,119,20
	db	0,0,124,20,0,0,0,0,0,0,165,20,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,116,0,0,0
	db	119,20,0,0,124,20,0,0,0,0,1,0,167,20,0,0
	db	0,0,0,0,8,0,1,2,1,0,112,0,0,0,26,0
	db	9,0,3,0,0,0,119,20,0,0,124,20,0,0,0,0
	db	0,0,169,20,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,116,0,0,0,119,20,0,0,124,20,0,0
	db	0,0,0,0,171,20,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,116,0,0,0,119,20,0,0,124,20
	db	0,0,0,0,1,0,173,20,0,0,0,0,0,0,8,0
	db	1,2,1,0,112,0,0,0,26,0,9,0,116,0,0,0
	db	119,20,0,0,124,20,0,0,0,0,2,0,175,20,0,0
	db	0,0,0,0,12,0,1,2,2,0,171,16,0,0,116,0
	db	0,0,26,0,9,0,3,0,0,0,119,20,0,0,124,20
	db	0,0,0,0,0,0,177,20,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,3,0,0,0,119,20,0,0
	db	124,20,0,0,0,0,0,0,179,20,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,112,4,0,0,119,20
	db	0,0,150,20,0,0,0,0,0,0,181,20,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,112,4,0,0
	db	119,20,0,0,150,20,0,0,0,0,0,0,183,20,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,112,4
	db	0,0,119,20,0,0,150,20,0,0,0,0,0,0,185,20
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	112,4,0,0,119,20,0,0,150,20,0,0,0,0,0,0
	db	187,20,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,112,4,0,0,119,20,0,0,150,20,0,0,0,0
	db	0,0,189,20,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,3,0,0,0,119,20,0,0,124,20,0,0
	db	0,0,1,0,191,20,0,0,0,0,0,0,8,0,1,2
	db	1,0,116,0,0,0,26,0,9,0,3,0,0,0,119,20
	db	0,0,124,20,0,0,0,0,3,0,193,20,0,0,0,0
	db	0,0,16,0,1,2,3,0,112,4,0,0,112,4,0,0
	db	112,4,0,0,26,0,9,0,112,4,0,0,119,20,0,0
	db	150,20,0,0,0,0,0,0,195,20,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,112,4,0,0,119,20
	db	0,0,124,20,0,0,0,0,0,0,197,20,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,112,4,0,0
	db	119,20,0,0,124,20,0,0,0,0,0,0,199,20,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,112,4
	db	0,0,119,20,0,0,124,20,0,0,0,0,0,0,201,20
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	116,0,0,0,119,20,0,0,150,20,0,0,0,0,0,0
	db	203,20,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,3,0,0,0,119,20,0,0,124,20,0,0,0,0
	db	1,0,205,20,0,0,0,0,0,0,8,0,1,2,1,0
	db	116,0,0,0,26,0,9,0,3,0,0,0,119,20,0,0
	db	124,20,0,0,0,0,2,0,207,20,0,0,0,0,0,0
	db	12,0,1,2,2,0,112,4,0,0,112,4,0,0,26,0
	db	9,0,3,0,0,0,119,20,0,0,124,20,0,0,0,0
	db	3,0,209,20,0,0,0,0,0,0,16,0,1,2,3,0
	db	112,4,0,0,112,4,0,0,112,4,0,0,26,0,9,0
	db	112,4,0,0,119,20,0,0,124,20,0,0,0,0,0,0
	db	211,20,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,116,0,0,0,119,20,0,0,150,20,0,0,0,0
	db	0,0,213,20,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,3,0,0,0,119,20,0,0,124,20,0,0
	db	0,0,0,0,215,20,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,3,0,0,0,119,20,0,0,124,20
	db	0,0,0,0,6,0,218,20,0,0,0,0,0,0,8,0
	db	2,0,10,0,112,4,0,0,28,0,1,2,6,0,217,20
	db	0,0,217,20,0,0,116,4,0,0,217,20,0,0,217,20
	db	0,0,116,4,0,0,26,0,9,0,116,0,0,0,119,20
	db	0,0,124,20,0,0,0,0,0,0,220,20,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,112,4,0,0
	db	119,20,0,0,150,20,0,0,0,0,0,0,222,20,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,116,0
	db	0,0,119,20,0,0,150,20,0,0,0,0,0,0,224,20
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	116,0,0,0,119,20,0,0,150,20,0,0,0,0,0,0
	db	226,20,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,3,0,0,0,119,20,0,0,124,20,0,0,0,0
	db	3,0,228,20,0,0,0,0,0,0,16,0,1,2,3,0
	db	112,4,0,0,112,4,0,0,116,0,0,0,26,0,9,0
	db	116,0,0,0,119,20,0,0,124,20,0,0,0,0,1,0
	db	230,20,0,0,0,0,0,0,8,0,1,2,1,0,116,0
	db	0,0,26,0,9,0,116,0,0,0,119,20,0,0,124,20
	db	0,0,0,0,1,0,232,20,0,0,0,0,0,0,8,0
	db	1,2,1,0,116,0,0,0,26,0,9,0,116,0,0,0
	db	119,20,0,0,124,20,0,0,0,0,0,0,234,20,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,116,0
	db	0,0,119,20,0,0,124,20,0,0,0,0,0,0,236,20
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	116,0,0,0,119,20,0,0,124,20,0,0,0,0,0,0
	db	238,20,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,116,0,0,0,119,20,0,0,124,20,0,0,0,0
	db	2,0,240,20,0,0,0,0,0,0,12,0,1,2,2,0
	db	112,4,0,0,116,0,0,0,26,0,9,0,116,0,0,0
	db	119,20,0,0,124,20,0,0,0,0,2,0,242,20,0,0
	db	0,0,0,0,12,0,1,2,2,0,171,16,0,0,116,0
	db	0,0,26,0,9,0,138,16,0,0,119,20,0,0,124,20
	db	0,0,0,0,3,0,244,20,0,0,0,0,0,0,16,0
	db	1,2,3,0,118,0,0,0,132,16,0,0,129,16,0,0
	db	26,0,9,0,138,16,0,0,119,20,0,0,124,20,0,0
	db	0,0,2,0,246,20,0,0,0,0,0,0,12,0,1,2
	db	2,0,138,16,0,0,129,16,0,0,26,0,9,0,123,20
	db	0,0,119,20,0,0,124,20,0,0,0,0,2,0,248,20
	db	0,0,0,0,0,0,12,0,1,2,2,0,112,4,0,0
	db	116,0,0,0,26,0,9,0,116,0,0,0,119,20,0,0
	db	124,20,0,0,0,0,0,0,250,20,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,3,0,0,0,119,20
	db	0,0,124,20,0,0,0,0,1,0,252,20,0,0,0,0
	db	0,0,8,0,1,2,1,0,242,19,0,0,28,0,4,0
	db	2,0,5,21,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,17,2,0,0,8,0,26,0,9,0,3,0
	db	0,0,253,20,0,0,255,20,0,0,0,0,0,0,0,21
	db	0,0,0,0,0,0,8,0,2,0,10,4,253,20,0,0
	db	4,0,1,2,0,0,26,0,9,0,3,0,0,0,253,20
	db	0,0,255,20,0,0,0,0,0,0,2,21,0,0,0,0
	db	0,0,4,0,1,2,0,0,12,0,7,2,3,0,254,20
	db	0,0,0,0,0,0,12,0,7,2,3,0,1,21,0,0
	db	0,0,0,0,26,0,4,2,8,4,1,0,3,21,0,0
	db	18,2,0,0,8,4,1,0,4,21,0,0,19,2,0,0
	db	32,0,7,2,1,4,122,20,0,0,0,0,0,0,2,4
	db	128,20,0,0,0,0,0,0,2,4,130,20,0,0,0,0
	db	0,0,12,0,7,2,1,1,132,20,0,0,0,0,0,0
	db	16,0,7,2,19,8,135,20,0,0,0,0,0,0,0,0
	db	0,0,22,0,7,2,3,0,137,20,0,0,0,0,0,0
	db	3,0,139,20,0,0,0,0,0,0,22,0,7,2,3,0
	db	141,20,0,0,0,0,0,0,3,0,143,20,0,0,0,0
	db	0,0,12,0,7,2,3,0,145,20,0,0,0,0,0,0
	db	12,0,7,2,3,0,147,20,0,0,0,0,0,0,12,0
	db	7,2,3,0,149,20,0,0,0,0,0,0,22,0,7,2
	db	3,0,152,20,0,0,0,0,0,0,3,0,154,20,0,0
	db	0,0,0,0,12,0,7,2,3,0,156,20,0,0,0,0
	db	0,0,12,0,7,2,3,0,158,20,0,0,0,0,0,0
	db	12,0,7,2,3,0,160,20,0,0,0,0,0,0,12,0
	db	7,2,3,0,162,20,0,0,0,0,0,0,12,0,7,2
	db	3,0,164,20,0,0,0,0,0,0,12,0,7,2,3,0
	db	166,20,0,0,0,0,0,0,12,0,7,2,3,0,168,20
	db	0,0,0,0,0,0,12,0,7,2,3,0,170,20,0,0
	db	0,0,0,0,12,0,7,2,3,0,172,20,0,0,0,0
	db	0,0,12,0,7,2,3,0,174,20,0,0,0,0,0,0
	db	16,0,7,2,19,0,176,20,0,0,0,0,0,0,4,0
	db	0,0,16,0,7,2,19,0,178,20,0,0,0,0,0,0
	db	8,0,0,0,12,0,7,2,2,0,180,20,0,0,0,0
	db	0,0,12,0,7,2,2,0,182,20,0,0,0,0,0,0
	db	12,0,7,2,2,0,184,20,0,0,0,0,0,0,12,0
	db	7,2,2,0,186,20,0,0,0,0,0,0,12,0,7,2
	db	2,0,188,20,0,0,0,0,0,0,12,0,7,2,2,0
	db	190,20,0,0,0,0,0,0,12,0,7,2,2,0,192,20
	db	0,0,0,0,0,0,12,0,7,2,2,0,194,20,0,0
	db	0,0,0,0,12,0,7,2,2,0,196,20,0,0,0,0
	db	0,0,12,0,7,2,2,0,198,20,0,0,0,0,0,0
	db	12,0,7,2,2,0,200,20,0,0,0,0,0,0,12,0
	db	7,2,2,0,202,20,0,0,0,0,0,0,12,0,7,2
	db	2,0,204,20,0,0,0,0,0,0,22,0,7,2,2,0
	db	206,20,0,0,0,0,0,0,2,0,208,20,0,0,0,0
	db	0,0,12,0,7,2,2,0,210,20,0,0,0,0,0,0
	db	12,0,7,2,2,0,212,20,0,0,0,0,0,0,22,0
	db	7,2,2,0,214,20,0,0,0,0,0,0,2,0,216,20
	db	0,0,0,0,0,0,12,0,7,2,3,0,219,20,0,0
	db	0,0,0,0,12,0,7,2,3,0,221,20,0,0,0,0
	db	0,0,12,0,7,2,3,0,223,20,0,0,0,0,0,0
	db	12,0,7,2,3,0,225,20,0,0,0,0,0,0,12,0
	db	7,2,3,0,227,20,0,0,0,0,0,0,16,0,7,2
	db	19,0,229,20,0,0,0,0,0,0,12,0,0,0,16,0
	db	7,2,19,0,231,20,0,0,0,0,0,0,16,0,0,0
	db	16,0,7,2,19,0,233,20,0,0,0,0,0,0,20,0
	db	0,0,16,0,7,2,19,0,235,20,0,0,0,0,0,0
	db	24,0,0,0,16,0,7,2,19,0,237,20,0,0,0,0
	db	0,0,28,0,0,0,16,0,7,2,19,0,239,20,0,0
	db	0,0,0,0,32,0,0,0,16,0,7,2,19,0,241,20
	db	0,0,0,0,0,0,36,0,0,0,16,0,7,2,19,0
	db	243,20,0,0,0,0,0,0,40,0,0,0,16,0,7,2
	db	19,0,245,20,0,0,0,0,0,0,44,0,0,0,16,0
	db	7,2,19,0,247,20,0,0,0,0,0,0,48,0,0,0
	db	16,0,7,2,19,0,249,20,0,0,0,0,0,0,52,0
	db	0,0,16,0,7,2,19,0,251,20,0,0,0,0,0,0
	db	56,0,0,0,242,3,4,2,10,4,121,20,0,0,0,0
	db	8,4,3,0,6,21,0,0,20,2,0,0,8,4,1,0
	db	7,21,0,0,21,2,0,0,9,4,119,20,0,0,22,2
	db	0,0,0,0,0,0,242,241,9,4,112,0,0,0,23,2
	db	0,0,0,0,0,0,242,241,9,4,151,17,0,0,24,2
	db	0,0,0,0,0,0,242,241,8,4,1,0,8,21,0,0
	db	25,2,0,0,9,4,116,0,0,0,26,2,0,0,0,0
	db	0,0,242,241,9,4,138,16,0,0,27,2,0,0,0,0
	db	0,0,242,241,9,4,118,0,0,0,28,2,0,0,0,0
	db	0,0,242,241,8,4,2,0,9,21,0,0,29,2,0,0
	db	8,4,2,0,10,21,0,0,30,2,0,0,8,4,1,0
	db	11,21,0,0,31,2,0,0,8,4,1,0,12,21,0,0
	db	32,2,0,0,8,4,1,0,13,21,0,0,33,2,0,0
	db	8,4,2,0,14,21,0,0,34,2,0,0,8,4,1,0
	db	15,21,0,0,35,2,0,0,8,4,1,0,16,21,0,0
	db	36,2,0,0,8,4,1,0,17,21,0,0,37,2,0,0
	db	8,4,1,0,18,21,0,0,38,2,0,0,8,4,1,0
	db	19,21,0,0,39,2,0,0,8,4,1,0,20,21,0,0
	db	40,2,0,0,8,4,1,0,21,21,0,0,41,2,0,0
	db	8,4,1,0,22,21,0,0,42,2,0,0,8,4,1,0
	db	23,21,0,0,43,2,0,0,8,4,1,0,24,21,0,0
	db	44,2,0,0,8,4,1,0,25,21,0,0,45,2,0,0
	db	8,4,1,0,26,21,0,0,46,2,0,0,8,4,1,0
	db	27,21,0,0,47,2,0,0,8,4,1,0,28,21,0,0
	db	48,2,0,0,8,4,1,0,29,21,0,0,49,2,0,0
	db	8,4,1,0,30,21,0,0,50,2,0,0,8,4,1,0
	db	31,21,0,0,51,2,0,0,8,4,1,0,32,21,0,0
	db	52,2,0,0,8,4,1,0,33,21,0,0,53,2,0,0
	db	8,4,1,0,34,21,0,0,54,2,0,0,8,4,1,0
	db	35,21,0,0,55,2,0,0,8,4,1,0,36,21,0,0
	db	56,2,0,0,8,4,1,0,37,21,0,0,57,2,0,0
	db	8,4,1,0,38,21,0,0,58,2,0,0,8,4,1,0
	db	39,21,0,0,59,2,0,0,8,4,2,0,40,21,0,0
	db	60,2,0,0,8,4,1,0,41,21,0,0,61,2,0,0
	db	8,4,1,0,42,21,0,0,62,2,0,0,8,4,2,0
	db	43,21,0,0,63,2,0,0,8,4,1,0,44,21,0,0
	db	64,2,0,0,8,4,1,0,45,21,0,0,65,2,0,0
	db	8,4,1,0,46,21,0,0,66,2,0,0,8,4,1,0
	db	47,21,0,0,67,2,0,0,8,4,1,0,48,21,0,0
	db	68,2,0,0,8,4,1,0,49,21,0,0,69,2,0,0
	db	8,4,1,0,50,21,0,0,70,2,0,0,8,4,1,0
	db	51,21,0,0,71,2,0,0,8,4,1,0,52,21,0,0
	db	72,2,0,0,8,4,1,0,53,21,0,0,73,2,0,0
	db	8,4,1,0,54,21,0,0,74,2,0,0,8,4,1,0
	db	55,21,0,0,75,2,0,0,8,4,1,0,56,21,0,0
	db	76,2,0,0,8,4,1,0,57,21,0,0,77,2,0,0
	db	8,4,1,0,58,21,0,0,78,2,0,0,8,4,1,0
	db	59,21,0,0,79,2,0,0,8,4,1,0,60,21,0,0
	db	80,2,0,0,6,4,253,20,0,0,1,0,81,2,0,0
	db	0,0,0,0,4,0,242,241,6,4,112,4,0,0,1,0
	db	82,2,0,0,0,0,0,0,12,0,242,241,6,4,112,4
	db	0,0,1,0,83,2,0,0,0,0,0,0,16,0,242,241
	db	6,4,217,20,0,0,1,0,84,2,0,0,0,0,0,0
	db	20,0,242,241,6,4,217,20,0,0,1,0,85,2,0,0
	db	0,0,0,0,24,0,242,241,6,4,112,4,0,0,1,0
	db	86,2,0,0,0,0,0,0,28,0,242,241,6,4,112,4
	db	0,0,1,0,87,2,0,0,0,0,0,0,32,0,242,241
	db	6,4,217,20,0,0,1,0,88,2,0,0,0,0,0,0
	db	36,0,242,241,6,4,217,20,0,0,1,0,89,2,0,0
	db	0,0,0,0,40,0,242,241,6,4,116,0,0,0,1,0
	db	90,2,0,0,0,0,0,0,44,0,242,241,6,4,116,0
	db	0,0,1,0,91,2,0,0,0,0,0,0,48,0,242,241
	db	6,4,116,4,0,0,1,0,92,2,0,0,0,0,0,0
	db	52,0,5,4,62,21,0,0,40,0,4,2,6,4,116,4
	db	0,0,1,0,93,2,0,0,0,0,0,0,56,0,242,241
	db	6,4,235,19,0,0,1,0,94,2,0,0,0,0,0,0
	db	60,0,28,0,4,0,27,0,171,21,0,0,34,1,0,0
	db	0,0,0,0,0,0,64,21,0,0,95,2,0,0,24,0
	db	9,0,10,0,9,0,85,85,85,85,5,8,0,2,0,10
	db	0,64,21,0,0,28,0,5,0,6,0,85,21,0,0,34
	db	1,0,0,0,0,0,0,0,0,67,21,0,0,96,2,0
	db	0,8,0,5,0,10,0,1,0,5,8,0,2,0,10,0
	db	67,21,0,0,26,0,9,0,70,21,0,0,66,21,0,0
	db	71,21,0,0,0,0,1,0,72,21,0,0,0,0,0,0
	db	8,0,2,0,10,0,66,21,0,0,8,0,2,0,10,4
	db	66,21,0,0,8,0,1,2,1,0,117,0,0,0,26,0
	db	9,0,70,21,0,0,66,21,0,0,71,21,0,0,0,0
	db	1,0,75,21,0,0,0,0,0,0,8,0,2,0,42,0
	db	66,21,0,0,8,0,1,2,1,0,74,21,0,0,26,0
	db	9,0,3,0,0,0,66,21,0,0,71,21,0,0,0,0
	db	0,0,77,21,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,74,21,0,0,66,21,0,0,71,21,0,0
	db	0,0,1,0,81,21,0,0,0,0,0,0,8,0,2,0
	db	42,0,80,21,0,0,8,0,1,0,1,0,66,21,0,0
	db	8,0,1,2,1,0,79,21,0,0,22,0,7,2,3,4
	db	69,21,0,0,0,0,0,0,3,20,73,21,0,0,0,0
	db	0,0,16,0,7,2,19,8,76,21,0,0,0,0,0,0
	db	0,0,0,0,12,0,7,2,3,17,78,21,0,0,0,0
	db	0,0,74,0,4,2,10,4,68,21,0,0,0,0,0,4
	db	69,19,0,0,3,0,0,0,242,241,9,4,17,0,0,0
	db	97,2,0,0,0,0,0,0,242,241,8,4,2,0,82,21
	db	0,0,98,2,0,0,8,4,1,0,83,21,0,0,99,2
	db	0,0,8,4,1,0,84,21,0,0,100,2,0,0,26,0
	db	9,0,48,0,0,0,63,21,0,0,87,21,0,0,0,0
	db	2,0,89,21,0,0,0,0,0,0,8,0,2,0,10,4
	db	88,21,0,0,8,0,1,0,1,0,63,21,0,0,12,0
	db	1,2,2,0,17,0,0,0,112,0,0,0,26,0,9,0
	db	171,16,0,0,63,21,0,0,87,21,0,0,0,0,3,0
	db	91,21,0,0,0,0,0,0,16,0,1,2,3,0,171,16
	db	0,0,171,16,0,0,17,4,0,0,26,0,9,0,171,16
	db	0,0,63,21,0,0,87,21,0,0,0,0,3,0,93,21
	db	0,0,0,0,0,0,16,0,1,2,3,0,17,0,0,0
	db	171,16,0,0,171,16,0,0,26,0,9,0,171,16,0,0
	db	63,21,0,0,87,21,0,0,0,0,3,0,95,21,0,0
	db	0,0,0,0,16,0,1,2,3,0,17,0,0,0,171,16
	db	0,0,171,16,0,0,26,0,9,0,112,0,0,0,63,21
	db	0,0,87,21,0,0,0,0,1,0,97,21,0,0,0,0
	db	0,0,8,0,1,2,1,0,112,0,0,0,26,0,9,0
	db	171,16,0,0,63,21,0,0,87,21,0,0,0,0,2,0
	db	99,21,0,0,0,0,0,0,12,0,1,2,2,0,112,4
	db	0,0,171,16,0,0,26,0,9,0,112,0,0,0,63,21
	db	0,0,87,21,0,0,0,0,1,0,101,21,0,0,0,0
	db	0,0,8,0,1,2,1,0,112,0,0,0,26,0,9,0
	db	171,16,0,0,63,21,0,0,87,21,0,0,0,0,2,0
	db	103,21,0,0,0,0,0,0,12,0,1,2,2,0,112,4
	db	0,0,171,16,0,0,26,0,9,0,112,0,0,0,63,21
	db	0,0,87,21,0,0,0,0,1,0,105,21,0,0,0,0
	db	0,0,8,0,1,2,1,0,112,0,0,0,26,0,9,0
	db	171,16,0,0,63,21,0,0,87,21,0,0,0,0,3,0
	db	107,21,0,0,0,0,0,0,16,0,1,2,3,0,171,16
	db	0,0,171,16,0,0,112,4,0,0,26,0,9,0,112,0
	db	0,0,63,21,0,0,87,21,0,0,0,0,2,0,109,21
	db	0,0,0,0,0,0,12,0,1,2,2,0,112,0,0,0
	db	112,0,0,0,26,0,9,0,171,16,0,0,63,21,0,0
	db	87,21,0,0,0,0,4,0,111,21,0,0,0,0,0,0
	db	20,0,1,2,4,0,171,16,0,0,171,16,0,0,112,0
	db	0,0,112,4,0,0,26,0,9,0,113,21,0,0,63,21
	db	0,0,114,21,0,0,0,0,3,0,115,21,0,0,0,0
	db	0,0,8,0,2,0,10,0,63,21,0,0,8,0,2,0
	db	10,4,63,21,0,0,16,0,1,2,3,0,124,19,0,0
	db	48,0,0,0,117,0,0,0,26,0,9,0,113,21,0,0
	db	63,21,0,0,114,21,0,0,0,0,2,0,117,21,0,0
	db	0,0,0,0,12,0,1,2,2,0,118,19,0,0,117,0
	db	0,0,26,0,9,0,113,21,0,0,63,21,0,0,114,21
	db	0,0,0,0,1,0,120,21,0,0,0,0,0,0,8,0
	db	2,0,42,0,63,21,0,0,8,0,1,2,1,0,119,21
	db	0,0,26,0,9,0,117,0,0,0,63,21,0,0,0,0
	db	0,0,0,0,2,0,122,21,0,0,0,0,0,0,12,0
	db	1,2,2,0,73,19,0,0,76,19,0,0,26,0,9,0
	db	3,0,0,0,63,21,0,0,114,21,0,0,0,0,0,0
	db	124,21,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,3,0,0,0,63,21,0,0,114,21,0,0,0,0
	db	1,0,126,21,0,0,0,0,0,0,8,0,1,2,1,0
	db	118,19,0,0,26,0,9,0,3,0,0,0,63,21,0,0
	db	114,21,0,0,0,0,0,0,128,21,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,112,0,0,0,63,21
	db	0,0,87,21,0,0,0,0,1,0,130,21,0,0,0,0
	db	0,0,8,0,1,2,1,0,112,0,0,0,26,0,9,0
	db	171,16,0,0,63,21,0,0,87,21,0,0,0,0,2,0
	db	132,21,0,0,0,0,0,0,12,0,1,2,2,0,112,4
	db	0,0,171,16,0,0,26,0,9,0,112,0,0,0,63,21
	db	0,0,87,21,0,0,0,0,1,0,134,21,0,0,0,0
	db	0,0,8,0,1,2,1,0,112,0,0,0,26,0,9,0
	db	171,16,0,0,63,21,0,0,87,21,0,0,0,0,2,0
	db	136,21,0,0,0,0,0,0,12,0,1,2,2,0,112,4
	db	0,0,171,16,0,0,26,0,9,0,112,0,0,0,63,21
	db	0,0,87,21,0,0,0,0,1,0,138,21,0,0,0,0
	db	0,0,8,0,1,2,1,0,112,0,0,0,26,0,9,0
	db	171,16,0,0,63,21,0,0,87,21,0,0,0,0,3,0
	db	140,21,0,0,0,0,0,0,16,0,1,2,3,0,171,16
	db	0,0,171,16,0,0,112,4,0,0,26,0,9,0,112,0
	db	0,0,63,21,0,0,87,21,0,0,0,0,2,0,142,21
	db	0,0,0,0,0,0,12,0,1,2,2,0,112,0,0,0
	db	112,0,0,0,26,0,9,0,171,16,0,0,63,21,0,0
	db	87,21,0,0,0,0,4,0,144,21,0,0,0,0,0,0
	db	20,0,1,2,4,0,171,16,0,0,171,16,0,0,112,0
	db	0,0,112,4,0,0,26,0,9,0,124,19,0,0,63,21
	db	0,0,87,21,0,0,0,0,0,0,146,21,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,124,19,0,0
	db	63,21,0,0,0,0,0,0,0,0,0,0,148,21,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,119,21
	db	0,0,63,21,0,0,114,21,0,0,0,0,1,0,151,21
	db	0,0,0,0,0,0,8,0,2,0,42,0,88,21,0,0
	db	8,0,1,2,1,0,150,21,0,0,22,0,7,2,3,0
	db	86,21,0,0,0,0,0,0,3,0,90,21,0,0,0,0
	db	0,0,12,0,7,2,3,0,92,21,0,0,0,0,0,0
	db	12,0,7,2,3,0,94,21,0,0,0,0,0,0,22,0
	db	7,2,3,0,96,21,0,0,0,0,0,0,3,0,98,21
	db	0,0,0,0,0,0,22,0,7,2,3,0,100,21,0,0
	db	0,0,0,0,3,0,102,21,0,0,0,0,0,0,22,0
	db	7,2,3,0,104,21,0,0,0,0,0,0,3,0,106,21
	db	0,0,0,0,0,0,22,0,7,2,3,0,108,21,0,0
	db	0,0,0,0,3,0,110,21,0,0,0,0,0,0,32,0
	db	7,2,3,4,112,21,0,0,0,0,0,0,3,4,116,21
	db	0,0,0,0,0,0,35,20,118,21,0,0,0,0,0,0
	db	12,0,7,2,11,0,121,21,0,0,0,0,0,0,16,0
	db	7,2,18,8,123,21,0,0,0,0,0,0,0,0,0,0
	db	12,0,7,2,2,0,125,21,0,0,0,0,0,0,12,0
	db	7,2,2,0,127,21,0,0,0,0,0,0,30,0,7,2
	db	18,0,129,21,0,0,0,0,0,0,4,0,0,0,18,0
	db	131,21,0,0,0,0,0,0,8,0,0,0,30,0,7,2
	db	18,0,133,21,0,0,0,0,0,0,12,0,0,0,18,0
	db	135,21,0,0,0,0,0,0,16,0,0,0,30,0,7,2
	db	18,0,137,21,0,0,0,0,0,0,20,0,0,0,18,0
	db	139,21,0,0,0,0,0,0,24,0,0,0,30,0,7,2
	db	18,0,141,21,0,0,0,0,0,0,28,0,0,0,18,0
	db	143,21,0,0,0,0,0,0,32,0,0,0,12,0,7,2
	db	2,0,145,21,0,0,0,0,0,0,12,0,7,2,10,0
	db	147,21,0,0,0,0,0,0,12,0,7,2,35,17,149,21
	db	0,0,0,0,0,0,94,1,4,2,10,4,65,21,0,0
	db	0,0,0,4,66,21,0,0,3,0,0,0,242,241,9,4
	db	63,21,0,0,101,2,0,0,0,0,0,0,242,241,9,4
	db	112,0,0,0,102,2,0,0,0,0,0,0,242,241,9,4
	db	112,0,0,0,103,2,0,0,0,0,0,0,242,241,8,4
	db	2,0,152,21,0,0,104,2,0,0,8,4,1,0,153,21
	db	0,0,105,2,0,0,8,4,1,0,154,21,0,0,106,2
	db	0,0,8,4,2,0,155,21,0,0,107,2,0,0,8,4
	db	2,0,156,21,0,0,108,2,0,0,8,4,2,0,157,21
	db	0,0,109,2,0,0,8,4,2,0,158,21,0,0,110,2
	db	0,0,7,4,48,19,0,0,3,0,111,2,0,0,0,0
	db	0,0,8,4,3,0,159,21,0,0,112,2,0,0,8,4
	db	1,0,160,21,0,0,113,2,0,0,7,4,196,17,0,0
	db	3,0,114,2,0,0,0,0,0,0,8,4,1,0,161,21
	db	0,0,115,2,0,0,8,4,1,0,162,21,0,0,116,2
	db	0,0,8,4,1,0,163,21,0,0,117,2,0,0,8,4
	db	2,0,164,21,0,0,118,2,0,0,8,4,2,0,165,21
	db	0,0,119,2,0,0,8,4,2,0,166,21,0,0,120,2
	db	0,0,8,4,2,0,167,21,0,0,121,2,0,0,8,4
	db	1,0,168,21,0,0,122,2,0,0,8,4,1,0,169,21
	db	0,0,123,2,0,0,6,4,123,19,0,0,1,0,124,2
	db	0,0,0,0,0,0,8,0,242,241,8,4,1,0,170,21
	db	0,0,125,2,0,0,26,0,9,0,173,21,0,0,114,16
	db	0,0,174,21,0,0,0,0,1,0,175,21,0,0,0,0
	db	0,0,8,0,2,0,10,0,114,16,0,0,8,0,2,0
	db	10,4,114,16,0,0,8,0,1,2,1,0,123,20,0,0
	db	26,0,9,0,173,21,0,0,114,16,0,0,174,21,0,0
	db	0,0,0,0,177,21,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,173,21,0,0,114,16,0,0,174,21
	db	0,0,0,0,1,0,181,21,0,0,0,0,0,0,8,0
	db	2,0,42,0,180,21,0,0,8,0,1,0,1,0,114,16
	db	0,0,8,0,1,2,1,0,179,21,0,0,26,0,9,0
	db	3,0,0,0,114,16,0,0,174,21,0,0,0,0,0,0
	db	183,21,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,3,0,0,0,114,16,0,0,174,21,0,0,0,0
	db	2,0,185,21,0,0,0,0,0,0,12,0,1,2,2,0
	db	126,16,0,0,48,0,0,0,26,0,9,0,3,0,0,0
	db	114,16,0,0,174,21,0,0,0,0,1,0,187,21,0,0
	db	0,0,0,0,8,0,1,2,1,0,117,0,0,0,26,0
	db	9,0,3,0,0,0,114,16,0,0,174,21,0,0,0,0
	db	2,0,189,21,0,0,0,0,0,0,12,0,1,2,2,0
	db	126,16,0,0,48,0,0,0,26,0,9,0,3,0,0,0
	db	114,16,0,0,174,21,0,0,0,0,1,0,191,21,0,0
	db	0,0,0,0,8,0,1,2,1,0,117,0,0,0,26,0
	db	9,0,193,21,0,0,114,16,0,0,174,21,0,0,0,0
	db	1,0,194,21,0,0,0,0,0,0,8,0,2,0,42,0
	db	114,16,0,0,8,0,1,2,1,0,179,21,0,0,26,0
	db	9,0,196,21,0,0,114,16,0,0,197,21,0,0,0,0
	db	0,0,198,21,0,0,0,0,0,0,8,0,2,0,10,0
	db	111,16,0,0,8,0,2,0,10,4,180,21,0,0,4,0
	db	1,2,0,0,26,0,9,0,196,21,0,0,114,16,0,0
	db	174,21,0,0,0,0,1,0,200,21,0,0,0,0,0,0
	db	8,0,1,2,1,0,196,21,0,0,26,0,9,0,123,20
	db	0,0,114,16,0,0,197,21,0,0,0,0,0,0,202,21
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	123,20,0,0,114,16,0,0,174,21,0,0,0,0,1,0
	db	204,21,0,0,0,0,0,0,8,0,1,2,1,0,123,20
	db	0,0,26,0,9,0,45,19,0,0,114,16,0,0,174,21
	db	0,0,0,0,1,0,206,21,0,0,0,0,0,0,8,0
	db	1,2,1,0,242,19,0,0,26,0,9,0,112,0,0,0
	db	114,16,0,0,197,21,0,0,0,0,0,0,208,21,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,112,0
	db	0,0,114,16,0,0,174,21,0,0,0,0,1,0,210,21
	db	0,0,0,0,0,0,8,0,1,2,1,0,112,0,0,0
	db	26,0,9,0,112,0,0,0,114,16,0,0,197,21,0,0
	db	0,0,2,0,212,21,0,0,0,0,0,0,12,0,1,2
	db	2,0,112,0,0,0,112,0,0,0,26,0,9,0,112,0
	db	0,0,114,16,0,0,197,21,0,0,0,0,1,0,214,21
	db	0,0,0,0,0,0,8,0,1,2,1,0,112,0,0,0
	db	26,0,9,0,3,0,0,0,114,16,0,0,174,21,0,0
	db	0,0,2,0,216,21,0,0,0,0,0,0,12,0,1,2
	db	2,0,123,20,0,0,48,0,0,0,26,0,9,0,193,21
	db	0,0,114,16,0,0,174,21,0,0,0,0,1,0,218,21
	db	0,0,0,0,0,0,8,0,1,2,1,0,179,21,0,0
	db	32,0,7,2,3,4,172,21,0,0,0,0,0,0,2,4
	db	176,21,0,0,0,0,0,0,1,4,178,21,0,0,0,0
	db	0,0,16,0,7,2,19,8,182,21,0,0,0,0,0,0
	db	0,0,0,0,22,0,7,2,3,0,184,21,0,0,0,0
	db	0,0,3,0,186,21,0,0,0,0,0,0,22,0,7,2
	db	3,0,188,21,0,0,0,0,0,0,3,0,190,21,0,0
	db	0,0,0,0,12,0,7,2,3,0,192,21,0,0,0,0
	db	0,0,22,0,7,2,3,0,195,21,0,0,0,0,0,0
	db	3,0,199,21,0,0,0,0,0,0,22,0,7,2,3,0
	db	201,21,0,0,0,0,0,0,3,0,203,21,0,0,0,0
	db	0,0,12,0,7,2,3,0,205,21,0,0,0,0,0,0
	db	22,0,7,2,3,0,207,21,0,0,0,0,0,0,3,0
	db	209,21,0,0,0,0,0,0,12,0,7,2,3,0,211,21
	db	0,0,0,0,0,0,12,0,7,2,3,0,213,21,0,0
	db	0,0,0,0,12,0,7,2,2,0,215,21,0,0,0,0
	db	0,0,12,0,7,2,1,1,217,21,0,0,0,0,0,0
	db	124,1,4,2,10,4,116,16,0,0,8,0,0,4,117,16
	db	0,0,3,0,0,0,242,241,9,4,114,16,0,0,126,2
	db	0,0,0,0,0,0,242,241,9,4,111,16,0,0,127,2
	db	0,0,0,0,0,0,242,241,9,4,119,20,0,0,128,2
	db	0,0,0,0,0,0,242,241,9,4,63,21,0,0,129,2
	db	0,0,0,0,0,0,242,241,9,4,112,0,0,0,130,2
	db	0,0,0,0,0,0,242,241,9,4,151,17,0,0,131,2
	db	0,0,0,0,0,0,242,241,9,4,116,0,0,0,132,2
	db	0,0,0,0,0,0,242,241,9,4,138,16,0,0,133,2
	db	0,0,0,0,0,0,242,241,9,4,118,0,0,0,134,2
	db	0,0,0,0,0,0,242,241,8,4,3,0,219,21,0,0
	db	135,2,0,0,8,4,1,0,220,21,0,0,136,2,0,0
	db	8,4,2,0,221,21,0,0,137,2,0,0,8,4,2,0
	db	222,21,0,0,138,2,0,0,8,4,1,0,223,21,0,0
	db	139,2,0,0,8,4,2,0,224,21,0,0,140,2,0,0
	db	8,4,2,0,225,21,0,0,141,2,0,0,8,4,1,0
	db	226,21,0,0,142,2,0,0,8,4,2,0,227,21,0,0
	db	143,2,0,0,8,4,1,0,228,21,0,0,144,2,0,0
	db	8,4,1,0,229,21,0,0,145,2,0,0,8,4,1,0
	db	230,21,0,0,146,2,0,0,8,4,1,0,231,21,0,0
	db	147,2,0,0,6,4,123,20,0,0,1,0,148,2,0,0
	db	0,0,0,0,48,0,242,241,6,4,196,21,0,0,1,0
	db	149,2,0,0,0,0,0,0,52,0,242,241,6,4,112,0
	db	0,0,1,0,150,2,0,0,0,0,0,0,56,0,28,0
	db	4,0,0,0,234,21,0,0,34,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,151,2,0,0,0,0,2,0,4,2
	db	28,0,4,0,0,0,236,21,0,0,34,1,0,0,0,0
	db	0,0,0,0,0,0,0,0,152,2,0,0,0,0,2,0
	db	4,2,26,0,9,0,196,21,0,0,111,16,0,0,238,21
	db	0,0,0,0,2,0,239,21,0,0,0,0,0,0,8,0
	db	2,0,10,4,111,16,0,0,12,0,1,2,2,0,123,20
	db	0,0,48,0,0,0,26,0,9,0,196,21,0,0,111,16
	db	0,0,238,21,0,0,0,0,2,0,241,21,0,0,0,0
	db	0,0,12,0,1,2,2,0,238,19,0,0,48,0,0,0
	db	26,0,9,0,196,21,0,0,111,16,0,0,238,21,0,0
	db	0,0,1,0,243,21,0,0,0,0,0,0,8,0,1,2
	db	1,0,110,16,0,0,26,0,9,0,3,0,0,0,111,16
	db	0,0,238,21,0,0,0,0,0,0,245,21,0,0,0,0
	db	0,0,4,0,1,2,0,0,28,0,4,0,4,0,7,22
	db	0,0,42,1,111,16,0,0,0,0,0,0,0,0,0,0
	db	153,2,0,0,4,0,26,0,9,0,248,21,0,0,246,21
	db	0,0,249,21,0,0,0,0,1,0,250,21,0,0,0,0
	db	0,0,8,0,2,0,10,0,246,21,0,0,8,0,2,0
	db	10,4,246,21,0,0,8,0,1,2,1,0,110,16,0,0
	db	26,0,9,0,248,21,0,0,246,21,0,0,249,21,0,0
	db	0,0,1,0,254,21,0,0,0,0,0,0,8,0,2,0
	db	42,0,253,21,0,0,8,0,1,0,1,0,246,21,0,0
	db	8,0,1,2,1,0,252,21,0,0,26,0,9,0,3,0
	db	0,0,246,21,0,0,249,21,0,0,0,0,0,0,0,22
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	2,22,0,0,246,21,0,0,249,21,0,0,0,0,1,0
	db	3,22,0,0,0,0,0,0,8,0,2,0,42,0,246,21
	db	0,0,8,0,1,2,1,0,252,21,0,0,22,0,7,2
	db	3,4,247,21,0,0,0,0,0,0,35,20,251,21,0,0
	db	0,0,0,0,12,0,7,2,3,8,255,21,0,0,0,0
	db	0,0,12,0,7,2,3,17,1,22,0,0,0,0,0,0
	db	58,0,4,2,8,4,2,0,4,22,0,0,154,2,0,0
	db	8,4,1,0,5,22,0,0,155,2,0,0,6,4,110,16
	db	0,0,3,0,156,2,0,0,0,0,0,0,0,0,242,241
	db	8,4,1,0,6,22,0,0,157,2,0,0,28,0,4,0
	db	6,0,29,22,0,0,42,1,111,16,0,0,0,0,0,0
	db	0,0,0,0,158,2,0,0,8,0,26,0,9,0,10,22
	db	0,0,8,22,0,0,11,22,0,0,0,0,1,0,12,22
	db	0,0,0,0,0,0,8,0,2,0,10,0,8,22,0,0
	db	8,0,2,0,10,4,8,22,0,0,8,0,1,2,1,0
	db	110,16,0,0,26,0,9,0,10,22,0,0,8,22,0,0
	db	11,22,0,0,0,0,1,0,16,22,0,0,0,0,0,0
	db	8,0,2,0,42,0,15,22,0,0,8,0,1,0,1,0
	db	8,22,0,0,8,0,1,2,1,0,14,22,0,0,26,0
	db	9,0,3,0,0,0,8,22,0,0,11,22,0,0,0,0
	db	0,0,18,22,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,48,0,0,0,8,22,0,0,20,22,0,0
	db	0,0,0,0,21,22,0,0,0,0,0,0,8,0,2,0
	db	10,4,15,22,0,0,4,0,1,2,0,0,26,0,9,0
	db	23,22,0,0,8,22,0,0,11,22,0,0,0,0,1,0
	db	24,22,0,0,0,0,0,0,8,0,2,0,42,0,8,22
	db	0,0,8,0,1,2,1,0,14,22,0,0,22,0,7,2
	db	3,4,9,22,0,0,0,0,0,0,1,4,13,22,0,0
	db	0,0,0,0,12,0,7,2,3,8,17,22,0,0,0,0
	db	0,0,12,0,7,2,3,2,19,22,0,0,0,0,0,0
	db	12,0,7,2,1,1,22,22,0,0,0,0,0,0,80,0
	db	4,2,0,4,246,21,0,0,3,0,0,0,242,241,8,4
	db	2,0,25,22,0,0,159,2,0,0,8,4,1,0,26,22
	db	0,0,160,2,0,0,8,4,1,0,27,22,0,0,161,2
	db	0,0,8,4,1,0,28,22,0,0,162,2,0,0,6,4
	db	48,0,0,0,1,0,163,2,0,0,0,0,0,0,4,0
	db	26,0,9,0,48,0,0,0,111,16,0,0,238,21,0,0
	db	0,0,0,0,31,22,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,3,0,0,0,111,16,0,0,238,21
	db	0,0,0,0,0,0,33,22,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,3,0,0,0,111,16,0,0
	db	238,21,0,0,0,0,0,0,35,22,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,110,16,0,0,111,16
	db	0,0,238,21,0,0,0,0,1,0,40,22,0,0,0,0
	db	0,0,8,0,2,0,10,0,38,22,0,0,14,0,8,0
	db	110,16,0,0,0,0,1,0,39,22,0,0,8,0,1,2
	db	1,0,110,16,0,0,8,0,1,2,1,0,37,22,0,0
	db	26,0,9,0,110,16,0,0,111,16,0,0,238,21,0,0
	db	0,0,1,0,45,22,0,0,0,0,0,0,8,0,2,0
	db	10,0,43,22,0,0,14,0,8,0,193,21,0,0,0,0
	db	1,0,44,22,0,0,8,0,1,2,1,0,193,21,0,0
	db	8,0,1,2,1,0,42,22,0,0,26,0,9,0,110,16
	db	0,0,111,16,0,0,238,21,0,0,0,0,1,0,50,22
	db	0,0,0,0,0,0,8,0,2,0,10,0,48,22,0,0
	db	14,0,8,0,144,16,0,0,0,0,1,0,49,22,0,0
	db	8,0,1,2,1,0,144,16,0,0,8,0,1,2,1,0
	db	47,22,0,0,26,0,9,0,110,16,0,0,111,16,0,0
	db	238,21,0,0,0,0,1,0,52,22,0,0,0,0,0,0
	db	8,0,1,2,1,0,48,0,0,0,26,0,9,0,110,16
	db	0,0,111,16,0,0,238,21,0,0,0,0,1,0,54,22
	db	0,0,0,0,0,0,8,0,1,2,1,0,17,0,0,0
	db	26,0,9,0,110,16,0,0,111,16,0,0,238,21,0,0
	db	0,0,1,0,56,22,0,0,0,0,0,0,8,0,1,2
	db	1,0,33,0,0,0,26,0,9,0,110,16,0,0,111,16
	db	0,0,238,21,0,0,0,0,1,0,58,22,0,0,0,0
	db	0,0,8,0,1,2,1,0,116,0,0,0,26,0,9,0
	db	110,16,0,0,111,16,0,0,238,21,0,0,0,0,1,0
	db	60,22,0,0,0,0,0,0,8,0,1,2,1,0,117,0
	db	0,0,26,0,9,0,110,16,0,0,111,16,0,0,238,21
	db	0,0,0,0,1,0,62,22,0,0,0,0,0,0,8,0
	db	1,2,1,0,18,0,0,0,26,0,9,0,110,16,0,0
	db	111,16,0,0,238,21,0,0,0,0,1,0,64,22,0,0
	db	0,0,0,0,8,0,1,2,1,0,34,0,0,0,26,0
	db	9,0,110,16,0,0,111,16,0,0,238,21,0,0,0,0
	db	1,0,66,22,0,0,0,0,0,0,8,0,1,2,1,0
	db	118,0,0,0,26,0,9,0,110,16,0,0,111,16,0,0
	db	238,21,0,0,0,0,1,0,68,22,0,0,0,0,0,0
	db	8,0,1,2,1,0,119,0,0,0,26,0,9,0,110,16
	db	0,0,111,16,0,0,238,21,0,0,0,0,1,0,70,22
	db	0,0,0,0,0,0,8,0,1,2,1,0,64,0,0,0
	db	26,0,9,0,110,16,0,0,111,16,0,0,238,21,0,0
	db	0,0,1,0,72,22,0,0,0,0,0,0,8,0,1,2
	db	1,0,65,0,0,0,26,0,9,0,110,16,0,0,111,16
	db	0,0,238,21,0,0,0,0,1,0,74,22,0,0,0,0
	db	0,0,8,0,1,2,1,0,66,0,0,0,26,0,9,0
	db	110,16,0,0,111,16,0,0,238,21,0,0,0,0,1,0
	db	76,22,0,0,0,0,0,0,8,0,1,2,1,0,226,16
	db	0,0,26,0,9,0,110,16,0,0,111,16,0,0,238,21
	db	0,0,0,0,1,0,78,22,0,0,0,0,0,0,8,0
	db	1,2,1,0,123,20,0,0,26,0,9,0,110,16,0,0
	db	111,16,0,0,238,21,0,0,0,0,1,0,80,22,0,0
	db	0,0,0,0,8,0,1,2,1,0,112,0,0,0,26,0
	db	9,0,110,16,0,0,111,16,0,0,238,21,0,0,0,0
	db	2,0,82,22,0,0,0,0,0,0,12,0,1,2,2,0
	db	171,16,0,0,116,0,0,0,26,0,9,0,110,16,0,0
	db	111,16,0,0,238,21,0,0,0,0,0,0,84,22,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,110,16
	db	0,0,111,16,0,0,238,21,0,0,0,0,1,0,86,22
	db	0,0,0,0,0,0,8,0,1,2,1,0,138,16,0,0
	db	26,0,9,0,110,16,0,0,111,16,0,0,238,21,0,0
	db	0,0,2,0,88,22,0,0,0,0,0,0,12,0,1,2
	db	2,0,118,0,0,0,132,16,0,0,26,0,9,0,138,16
	db	0,0,111,16,0,0,238,21,0,0,0,0,0,0,90,22
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	110,16,0,0,111,16,0,0,238,21,0,0,0,0,1,0
	db	94,22,0,0,0,0,0,0,8,0,2,0,42,0,93,22
	db	0,0,8,0,1,0,1,0,111,16,0,0,8,0,1,2
	db	1,0,92,22,0,0,32,0,7,2,3,4,237,21,0,0
	db	0,0,0,0,3,4,240,21,0,0,0,0,0,0,3,20
	db	242,21,0,0,0,0,0,0,16,0,7,2,19,8,244,21
	db	0,0,0,0,0,0,0,0,0,0,12,0,7,2,3,0
	db	30,22,0,0,0,0,0,0,12,0,7,2,3,0,32,22
	db	0,0,0,0,0,0,12,0,7,2,3,0,34,22,0,0
	db	0,0,0,0,172,0,7,2,3,1,36,22,0,0,0,0
	db	0,0,3,1,41,22,0,0,0,0,0,0,3,1,46,22
	db	0,0,0,0,0,0,3,1,51,22,0,0,0,0,0,0
	db	3,1,53,22,0,0,0,0,0,0,3,1,55,22,0,0
	db	0,0,0,0,3,1,57,22,0,0,0,0,0,0,3,1
	db	59,22,0,0,0,0,0,0,3,1,61,22,0,0,0,0
	db	0,0,3,1,63,22,0,0,0,0,0,0,3,1,65,22
	db	0,0,0,0,0,0,3,1,67,22,0,0,0,0,0,0
	db	3,1,69,22,0,0,0,0,0,0,3,1,71,22,0,0
	db	0,0,0,0,3,1,73,22,0,0,0,0,0,0,3,1
	db	75,22,0,0,0,0,0,0,3,1,77,22,0,0,0,0
	db	0,0,12,0,7,2,3,0,79,22,0,0,0,0,0,0
	db	12,0,7,2,3,0,81,22,0,0,0,0,0,0,12,0
	db	7,2,3,0,83,22,0,0,0,0,0,0,22,0,7,2
	db	3,0,85,22,0,0,0,0,0,0,3,0,87,22,0,0
	db	0,0,0,0,12,0,7,2,3,0,89,22,0,0,0,0
	db	0,0,12,0,7,2,3,17,91,22,0,0,0,0,0,0
	db	78,1,4,2,10,4,113,16,0,0,4,0,1,4,114,16
	db	0,0,3,4,0,0,3,0,0,0,1,128,255,255,242,241
	db	9,4,111,16,0,0,164,2,0,0,0,0,0,0,242,241
	db	9,4,114,16,0,0,165,2,0,0,0,0,0,0,242,241
	db	9,4,119,20,0,0,166,2,0,0,0,0,0,0,242,241
	db	9,4,233,21,0,0,167,2,0,0,0,0,0,0,242,241
	db	9,4,235,21,0,0,168,2,0,0,0,0,0,0,242,241
	db	8,4,3,0,95,22,0,0,169,2,0,0,8,4,1,0
	db	96,22,0,0,170,2,0,0,9,4,116,0,0,0,171,2
	db	0,0,0,0,0,0,242,241,9,4,138,16,0,0,172,2
	db	0,0,0,0,0,0,242,241,9,4,118,0,0,0,173,2
	db	0,0,0,0,0,0,242,241,9,4,246,21,0,0,174,2
	db	0,0,0,0,0,0,242,241,9,4,8,22,0,0,175,2
	db	0,0,0,0,0,0,242,241,8,4,1,0,97,22,0,0
	db	176,2,0,0,8,4,1,0,98,22,0,0,177,2,0,0
	db	8,4,1,0,99,22,0,0,178,2,0,0,8,4,17,0
	db	100,22,0,0,179,2,0,0,8,4,1,0,101,22,0,0
	db	180,2,0,0,8,4,1,0,102,22,0,0,181,2,0,0
	db	8,4,1,0,103,22,0,0,182,2,0,0,8,4,2,0
	db	104,22,0,0,183,2,0,0,8,4,1,0,105,22,0,0
	db	184,2,0,0,8,4,1,0,106,22,0,0,185,2,0,0
	db	12,0,1,2,2,0,110,16,0,0,171,16,0,0,26,0
	db	9,0,110,16,0,0,111,16,0,0,238,21,0,0,0,0
	db	1,0,110,22,0,0,0,0,0,0,8,0,1,2,1,0
	db	116,0,0,0,8,0,2,0,42,0,112,22,0,0,8,0
	db	1,0,1,0,235,21,0,0,26,0,9,0,110,16,0,0
	db	111,16,0,0,238,21,0,0,0,0,1,0,114,22,0,0
	db	0,0,0,0,8,0,1,2,1,0,37,22,0,0,14,0
	db	8,0,110,16,0,0,0,0,1,0,116,22,0,0,8,0
	db	1,2,1,0,110,16,0,0,26,0,9,0,117,0,0,0
	db	151,17,0,0,0,0,0,0,0,0,1,0,118,22,0,0
	db	0,0,0,0,8,0,1,2,1,0,171,16,0,0,26,0
	db	9,0,116,0,0,0,117,16,0,0,250,18,0,0,0,0
	db	0,0,120,22,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,10,22,0,0,8,22,0,0,11,22,0,0
	db	0,0,1,0,122,22,0,0,0,0,0,0,8,0,1,2
	db	1,0,110,16,0,0,26,0,9,0,3,0,0,0,8,22
	db	0,0,11,22,0,0,0,0,0,0,124,22,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,48,0,0,0
	db	8,22,0,0,20,22,0,0,0,0,0,0,126,22,0,0
	db	0,0,0,0,4,0,1,2,0,0,14,0,8,0,128,22
	db	0,0,0,0,2,0,129,22,0,0,8,0,2,0,42,0
	db	126,16,0,0,12,0,1,2,2,0,128,22,0,0,126,16
	db	0,0,26,0,9,0,123,16,0,0,117,16,0,0,250,18
	db	0,0,0,0,0,0,131,22,0,0,0,0,0,0,4,0
	db	1,2,0,0,14,0,8,0,123,16,0,0,0,0,2,0
	db	133,22,0,0,12,0,1,2,2,0,123,16,0,0,123,16
	db	0,0,26,0,9,0,116,0,0,0,151,17,0,0,0,0
	db	0,0,0,0,0,0,135,22,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,123,20,0,0,114,16,0,0
	db	197,21,0,0,0,0,0,0,137,22,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,112,0,0,0,114,16
	db	0,0,197,21,0,0,0,0,0,0,139,22,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,116,0,0,0
	db	119,20,0,0,124,20,0,0,0,0,1,0,141,22,0,0
	db	0,0,0,0,8,0,1,2,1,0,112,0,0,0,26,0
	db	9,0,48,0,0,0,151,17,0,0,0,0,0,0,0,0
	db	2,0,143,22,0,0,0,0,0,0,12,0,1,2,2,0
	db	171,17,0,0,171,17,0,0,26,0,9,0,116,0,0,0
	db	119,20,0,0,124,20,0,0,0,0,2,0,145,22,0,0
	db	0,0,0,0,12,0,1,2,2,0,171,16,0,0,116,0
	db	0,0,26,0,9,0,116,0,0,0,117,16,0,0,245,18
	db	0,0,0,0,1,0,147,22,0,0,0,0,0,0,8,0
	db	1,2,1,0,116,0,0,0,26,0,9,0,3,0,0,0
	db	114,16,0,0,174,21,0,0,0,0,2,0,149,22,0,0
	db	0,0,0,0,12,0,1,2,2,0,126,16,0,0,48,0
	db	0,0,26,0,9,0,45,19,0,0,117,16,0,0,250,18
	db	0,0,0,0,0,0,151,22,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,3,0,0,0,45,19,0,0
	db	232,19,0,0,0,0,0,0,153,22,0,0,0,0,0,0
	db	4,0,1,2,0,0,14,0,8,0,111,22,0,0,0,0
	db	1,0,155,22,0,0,8,0,1,2,1,0,242,19,0,0
	db	26,0,9,0,157,22,0,0,233,21,0,0,158,22,0,0
	db	0,0,1,0,159,22,0,0,0,0,0,0,8,0,2,0
	db	10,0,233,21,0,0,8,0,2,0,10,4,233,21,0,0
	db	8,0,1,2,1,0,123,20,0,0,26,0,9,0,233,21
	db	0,0,235,21,0,0,161,22,0,0,0,0,4,0,162,22
	db	0,0,0,0,0,0,8,0,2,0,10,4,112,22,0,0
	db	20,0,1,2,4,0,233,21,0,0,144,16,0,0,112,0
	db	0,0,18,0,0,0,26,0,9,0,48,0,0,0,233,21
	db	0,0,164,22,0,0,0,0,0,0,166,22,0,0,0,0
	db	0,0,8,0,2,0,10,4,165,22,0,0,8,0,1,0
	db	1,0,233,21,0,0,4,0,1,2,0,0,26,0,9,0
	db	112,0,0,0,114,16,0,0,197,21,0,0,0,0,1,0
	db	168,22,0,0,0,0,0,0,8,0,1,2,1,0,112,0
	db	0,0,26,0,9,0,110,16,0,0,111,16,0,0,238,21
	db	0,0,0,0,1,0,170,22,0,0,0,0,0,0,8,0
	db	1,2,1,0,112,0,0,0,26,0,9,0,110,16,0,0
	db	111,16,0,0,238,21,0,0,0,0,0,0,172,22,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,248,21
	db	0,0,246,21,0,0,249,21,0,0,0,0,1,0,174,22
	db	0,0,0,0,0,0,8,0,1,2,1,0,110,16,0,0
	db	26,0,9,0,48,0,0,0,117,16,0,0,250,18,0,0
	db	0,0,0,0,176,22,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,196,21,0,0,114,16,0,0,197,21
	db	0,0,0,0,0,0,178,22,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,3,0,0,0,111,16,0,0
	db	238,21,0,0,0,0,0,0,180,22,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,3,0,0,0,246,21
	db	0,0,249,21,0,0,0,0,0,0,182,22,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,116,0,0,0
	db	119,20,0,0,150,20,0,0,0,0,0,0,184,22,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,112,4
	db	0,0,119,20,0,0,124,20,0,0,0,0,0,0,186,22
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	116,0,0,0,151,17,0,0,0,0,0,0,0,0,1,0
	db	188,22,0,0,0,0,0,0,8,0,1,2,1,0,207,16
	db	0,0,26,0,9,0,126,16,0,0,117,16,0,0,250,18
	db	0,0,0,0,0,0,190,22,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,3,0,0,0,114,16,0,0
	db	174,21,0,0,0,0,2,0,192,22,0,0,0,0,0,0
	db	12,0,1,2,2,0,126,16,0,0,48,0,0,0,26,0
	db	9,0,235,19,0,0,45,19,0,0,232,19,0,0,0,0
	db	1,0,194,22,0,0,0,0,0,0,8,0,1,2,1,0
	db	242,19,0,0,26,0,9,0,83,19,0,0,69,19,0,0
	db	80,19,0,0,0,0,0,0,196,22,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,178,19,0,0,176,19
	db	0,0,179,19,0,0,0,0,1,0,198,22,0,0,0,0
	db	0,0,8,0,1,2,1,0,116,0,0,0,26,0,9,0
	db	3,0,0,0,176,19,0,0,179,19,0,0,0,0,0,0
	db	200,22,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,117,0,0,0,48,19,0,0,51,19,0,0,0,0
	db	0,0,202,22,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,117,0,0,0,235,21,0,0,0,0,0,0
	db	0,0,2,0,204,22,0,0,0,0,0,0,12,0,1,2
	db	2,0,73,19,0,0,76,19,0,0,26,0,9,0,206,22
	db	0,0,207,22,0,0,211,22,0,0,0,0,1,0,226,22
	db	0,0,0,0,0,0,8,0,2,0,10,0,207,22,0,0
	db	28,0,4,0,5,0,225,22,0,0,34,1,0,0,0,0
	db	0,0,0,0,208,22,0,0,70,3,0,0,4,0,5,0
	db	10,0,1,0,5,8,0,2,0,10,0,208,22,0,0,26
	db	0,9,0,206,22,0,0,207,22,0,0,211,22,0,0,0
	db	0,0,0,212,22,0,0,0,0,0,0,8,0,2,0,10
	db	4,207,22,0,0,4,0,1,2,0,0,26,0,9,0,206
	db	22,0,0,207,22,0,0,211,22,0,0,0,0,1,0,216
	db	22,0,0,0,0,0,0,8,0,2,0,42,0,215,22,0
	db	0,8,0,1,0,1,0,207,22,0,0,8,0,1,2,1
	db	0,214,22,0,0,26,0,9,0,218,22,0,0,207,22,0
	db	0,211,22,0,0,0,0,1,0,219,22,0,0,0,0,0
	db	0,8,0,2,0,42,0,207,22,0,0,8,0,1,2,1
	db	0,214,22,0,0,26,0,9,0,3,0,0,0,207,22,0
	db	0,211,22,0,0,0,0,0,0,221,22,0,0,0,0,0
	db	0,4,0,1,2,0,0,22,0,7,2,35,20,210,22,0
	db	0,0,0,0,0,35,20,213,22,0,0,0,0,0,0,12
	db	0,7,2,35,17,217,22,0,0,0,0,0,0,16,0,7
	db	2,51,24,220,22,0,0,0,0,0,0,0,0,0,0,58
	db	0,4,2,10,4,209,22,0,0,0,0,0,4,152,16,0
	db	0,3,0,0,0,242,241,8,4,2,0,222,22,0,0,71
	db	3,0,0,8,4,1,0,223,22,0,0,72,3,0,0,8
	db	4,1,0,224,22,0,0,73,3,0,0,8,0,1,2,1
	db	0,214,22,0,0,26,0,9,0,163,16,0,0,152,16,0
	db	0,164,16,0,0,0,0,0,0,228,22,0,0,0,0,0
	db	0,4,0,1,2,0,0,26,0,9,0,3,0,0,0,69
	db	19,0,0,80,19,0,0,0,0,0,0,230,22,0,0,0
	db	0,0,0,4,0,1,2,0,0,14,0,8,0,150,21,0
	db	0,0,0,1,0,232,22,0,0,8,0,1,2,1,0,242
	db	19,0,0,26,0,9,0,112,0,0,0,63,21,0,0,87
	db	21,0,0,0,0,1,0,234,22,0,0,0,0,0,0,8
	db	0,1,2,1,0,112,0,0,0,26,0,9,0,48,0,0
	db	0,117,16,0,0,250,18,0,0,0,0,0,0,236,22,0
	db	0,0,0,0,0,4,0,1,2,0,0,26,0,9,0,116
	db	0,0,0,119,20,0,0,124,20,0,0,0,0,0,0,238
	db	22,0,0,0,0,0,0,4,0,1,2,0,0,26,0,9
	db	0,189,16,0,0,45,19,0,0,1,20,0,0,0,0,0
	db	0,240,22,0,0,0,0,0,0,4,0,1,2,0,0,26
	db	0,9,0,3,0,0,0,189,16,0,0,91,17,0,0,0
	db	0,0,0,242,22,0,0,0,0,0,0,4,0,1,2,0
	db	0,26,0,9,0,244,22,0,0,235,21,0,0,245,22,0
	db	0,0,0,2,0,246,22,0,0,0,0,0,0,8,0,2
	db	0,10,0,235,21,0,0,8,0,2,0,10,4,235,21,0
	db	0,12,0,1,2,2,0,118,19,0,0,117,0,0,0,26
	db	0,9,0,117,0,0,0,63,21,0,0,0,0,0,0,0
	db	0,2,0,248,22,0,0,0,0,0,0,12,0,1,2,2
	db	0,73,19,0,0,76,19,0,0,26,0,9,0,90,17,0
	db	0,189,16,0,0,91,17,0,0,0,0,1,0,250,22,0
	db	0,0,0,0,0,8,0,1,2,1,0,187,16,0,0,26
	db	0,9,0,3,0,0,0,189,16,0,0,91,17,0,0,0
	db	0,2,0,252,22,0,0,0,0,0,0,12,0,1,2,2
	db	0,48,0,0,0,117,0,0,0,26,0,9,0,83,19,0
	db	0,69,19,0,0,80,19,0,0,0,0,1,0,254,22,0
	db	0,0,0,0,0,8,0,1,2,1,0,117,0,0,0,26
	db	0,9,0,3,0,0,0,235,21,0,0,245,22,0,0,0
	db	0,1,0,0,23,0,0,0,0,0,0,8,0,1,2,1
	db	0,118,19,0,0,26,0,9,0,113,21,0,0,63,21,0
	db	0,114,21,0,0,0,0,2,0,2,23,0,0,0,0,0
	db	0,12,0,1,2,2,0,118,19,0,0,117,0,0,0,26
	db	0,9,0,215,16,0,0,203,16,0,0,216,16,0,0,0
	db	0,1,0,4,23,0,0,0,0,0,0,8,0,1,2,1
	db	0,219,16,0,0,26,0,9,0,248,16,0,0,190,16,0
	db	0,249,16,0,0,0,0,1,0,6,23,0,0,0,0,0
	db	0,8,0,1,2,1,0,203,16,0,0,26,0,9,0,121
	db	17,0,0,189,16,0,0,91,17,0,0,0,0,3,0,8
	db	23,0,0,0,0,0,0,16,0,1,2,3,0,187,16,0
	db	0,117,0,0,0,117,0,0,0,26,0,9,0,112,4,0
	db	0,151,17,0,0,0,0,0,0,0,0,3,0,10,23,0
	db	0,0,0,0,0,16,0,1,2,3,0,112,4,0,0,171
	db	16,0,0,117,0,0,0,26,0,9,0,3,0,0,0,203
	db	16,0,0,216,16,0,0,0,0,2,0,12,23,0,0,0
	db	0,0,0,12,0,1,2,2,0,112,4,0,0,117,0,0
	db	0,26,0,9,0,3,0,0,0,189,16,0,0,91,17,0
	db	0,0,0,1,0,14,23,0,0,0,0,0,0,8,0,1
	db	2,1,0,117,0,0,0,26,0,9,0,127,19,0,0,120
	db	19,0,0,152,19,0,0,0,0,0,0,16,23,0,0,0
	db	0,0,0,4,0,1,2,0,0,8,0,2,0,10,0,127
	db	19,0,0,26,0,9,0,70,21,0,0,66,21,0,0,71
	db	21,0,0,0,0,1,0,19,23,0,0,0,0,0,0,8
	db	0,1,2,1,0,117,0,0,0,26,0,9,0,3,0,0
	db	0,63,21,0,0,114,21,0,0,0,0,1,0,21,23,0
	db	0,0,0,0,0,8,0,1,2,1,0,118,19,0,0,26
	db	0,9,0,117,0,0,0,189,16,0,0,14,18,0,0,0
	db	0,0,0,23,23,0,0,0,0,0,0,4,0,1,2,0
	db	0,26,0,9,0,121,17,0,0,189,16,0,0,91,17,0
	db	0,0,0,2,0,25,23,0,0,0,0,0,0,12,0,1
	db	2,2,0,117,0,0,0,117,0,0,0,26,0,9,0,48
	db	0,0,0,189,16,0,0,91,17,0,0,0,0,2,0,27
	db	23,0,0,0,0,0,0,12,0,1,2,2,0,117,0,0
	db	0,48,0,0,0,26,0,9,0,112,4,0,0,189,16,0
	db	0,91,17,0,0,0,0,0,0,29,23,0,0,0,0,0
	db	0,4,0,1,2,0,0,26,0,9,0,171,16,0,0,189
	db	16,0,0,14,18,0,0,0,0,0,0,31,23,0,0,0
	db	0,0,0,4,0,1,2,0,0,26,0,9,0,3,0,0
	db	0,151,17,0,0,0,0,0,0,0,0,2,0,33,23,0
	db	0,0,0,0,0,12,0,1,2,2,0,206,16,0,0,207
	db	16,0,0,26,0,9,0,123,19,0,0,120,19,0,0,152
	db	19,0,0,0,0,0,0,35,23,0,0,0,0,0,0,4
	db	0,1,2,0,0,8,0,2,0,10,0,123,19,0,0,26
	db	0,9,0,112,4,0,0,151,17,0,0,0,0,0,0,0
	db	0,3,0,38,23,0,0,0,0,0,0,16,0,1,2,3
	db	0,112,4,0,0,171,16,0,0,117,0,0,0,26,0,9
	db	0,117,0,0,0,189,16,0,0,14,18,0,0,0,0,0
	db	0,40,23,0,0,0,0,0,0,4,0,1,2,0,0,26
	db	0,9,0,3,0,0,0,189,16,0,0,91,17,0,0,0
	db	0,2,0,42,23,0,0,0,0,0,0,12,0,1,2,2
	db	0,117,0,0,0,117,0,0,0,26,0,9,0,117,0,0
	db	0,203,16,0,0,209,16,0,0,0,0,0,0,44,23,0
	db	0,0,0,0,0,4,0,1,2,0,0,26,0,9,0,112
	db	4,0,0,203,16,0,0,216,16,0,0,0,0,1,0,46
	db	23,0,0,0,0,0,0,8,0,1,2,1,0,117,0,0
	db	0,14,0,8,0,112,4,0,0,0,0,2,0,48,23,0
	db	0,12,0,1,2,2,0,117,0,0,0,112,4,0,0,26
	db	0,9,0,50,19,0,0,48,19,0,0,51,19,0,0,0
	db	0,1,0,50,23,0,0,0,0,0,0,8,0,1,2,1
	db	0,117,0,0,0,26,0,9,0,3,0,0,0,207,22,0
	db	0,211,22,0,0,0,0,0,0,52,23,0,0,0,0,0
	db	0,4,0,1,2,0,0,14,0,8,0,3,0,0,0,0
	db	0,0,0,54,23,0,0,4,0,1,2,0,0,26,0,9
	db	0,3,0,0,0,66,21,0,0,71,21,0,0,0,0,0
	db	0,56,23,0,0,0,0,0,0,4,0,1,2,0,0,26
	db	0,9,0,3,0,0,0,63,21,0,0,114,21,0,0,0
	db	0,0,0,58,23,0,0,0,0,0,0,4,0,1,2,0
	db	0,26,0,9,0,112,0,0,0,63,21,0,0,87,21,0
	db	0,0,0,1,0,60,23,0,0,0,0,0,0,8,0,1
	db	2,1,0,112,0,0,0,26,0,9,0,171,16,0,0,63
	db	21,0,0,87,21,0,0,0,0,2,0,62,23,0,0,0
	db	0,0,0,12,0,1,2,2,0,112,4,0,0,171,16,0
	db	0,26,0,9,0,112,0,0,0,63,21,0,0,87,21,0
	db	0,0,0,1,0,64,23,0,0,0,0,0,0,8,0,1
	db	2,1,0,112,0,0,0,26,0,9,0,171,16,0,0,63
	db	21,0,0,87,21,0,0,0,0,2,0,66,23,0,0,0
	db	0,0,0,12,0,1,2,2,0,112,4,0,0,171,16,0
	db	0,26,0,9,0,112,0,0,0,63,21,0,0,87,21,0
	db	0,0,0,1,0,68,23,0,0,0,0,0,0,8,0,1
	db	2,1,0,112,0,0,0,26,0,9,0,171,16,0,0,63
	db	21,0,0,87,21,0,0,0,0,3,0,70,23,0,0,0
	db	0,0,0,16,0,1,2,3,0,171,16,0,0,171,16,0
	db	0,112,4,0,0,26,0,9,0,112,0,0,0,63,21,0
	db	0,87,21,0,0,0,0,2,0,72,23,0,0,0,0,0
	db	0,12,0,1,2,2,0,112,0,0,0,112,0,0,0,26
	db	0,9,0,171,16,0,0,63,21,0,0,87,21,0,0,0
	db	0,4,0,74,23,0,0,0,0,0,0,20,0,1,2,4
	db	0,171,16,0,0,171,16,0,0,112,0,0,0,112,4,0
	db	0,26,0,9,0,3,0,0,0,69,19,0,0,80,19,0
	db	0,0,0,0,0,76,23,0,0,0,0,0,0,4,0,1
	db	2,0,0,26,0,9,0,3,0,0,0,235,21,0,0,245
	db	22,0,0,0,0,0,0,78,23,0,0,0,0,0,0,4
	db	0,1,2,0,0,26,0,9,0,233,21,0,0,235,21,0
	db	0,161,22,0,0,0,0,4,0,80,23,0,0,0,0,0
	db	0,20,0,1,2,4,0,233,21,0,0,144,16,0,0,112
	db	0,0,0,48,0,0,0,8,0,2,0,42,0,82,23,0
	db	0,8,0,1,0,1,0,83,23,0,0,28,0,4,0,26
	db	0,142,23,0,0,34,1,0,0,0,0,0,0,0,0,84
	db	23,0,0,255,3,0,0,24,0,7,0,10,0,6,0,85
	db	85,85,8,0,2,0,10,0,84,23,0,0,26,0,9,0
	db	112,0,0,0,83,23,0,0,87,23,0,0,0,0,0,0
	db	88,23,0,0,0,0,0,0,8,0,2,0,10,4,82,23
	db	0,0,4,0,1,2,0,0,26,0,9,0,112,0,0,0
	db	83,23,0,0,87,23,0,0,0,0,0,0,90,23,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,189,16
	db	0,0,83,23,0,0,87,23,0,0,0,0,0,0,92,23
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	189,16,0,0,83,23,0,0,87,23,0,0,0,0,0,0
	db	94,23,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,189,16,0,0,83,23,0,0,87,23,0,0,0,0
	db	0,0,96,23,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,98,23,0,0,83,23,0,0,99,23,0,0
	db	0,0,1,0,100,23,0,0,0,0,0,0,8,0,2,0
	db	10,0,83,23,0,0,8,0,2,0,10,4,83,23,0,0
	db	8,0,1,2,1,0,117,0,0,0,26,0,9,0,98,23
	db	0,0,83,23,0,0,99,23,0,0,0,0,2,0,102,23
	db	0,0,0,0,0,0,12,0,1,2,2,0,118,19,0,0
	db	117,0,0,0,26,0,9,0,98,23,0,0,83,23,0,0
	db	99,23,0,0,0,0,1,0,105,23,0,0,0,0,0,0
	db	8,0,2,0,42,0,83,23,0,0,8,0,1,2,1,0
	db	104,23,0,0,26,0,9,0,117,0,0,0,83,23,0,0
	db	0,0,0,0,0,0,2,0,107,23,0,0,0,0,0,0
	db	12,0,1,2,2,0,73,19,0,0,76,19,0,0,26,0
	db	9,0,3,0,0,0,83,23,0,0,99,23,0,0,0,0
	db	0,0,109,23,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,3,0,0,0,83,23,0,0,99,23,0,0
	db	0,0,1,0,111,23,0,0,0,0,0,0,8,0,1,2
	db	1,0,118,19,0,0,26,0,9,0,112,0,0,0,83,23
	db	0,0,87,23,0,0,0,0,0,0,113,23,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,112,0,0,0
	db	83,23,0,0,87,23,0,0,0,0,0,0,115,23,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,189,16
	db	0,0,83,23,0,0,87,23,0,0,0,0,0,0,117,23
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	189,16,0,0,83,23,0,0,87,23,0,0,0,0,0,0
	db	119,23,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,189,16,0,0,83,23,0,0,87,23,0,0,0,0
	db	0,0,121,23,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,3,0,0,0,83,23,0,0,99,23,0,0
	db	0,0,0,0,123,23,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,104,23,0,0,83,23,0,0,99,23
	db	0,0,0,0,1,0,125,23,0,0,0,0,0,0,8,0
	db	1,2,1,0,81,23,0,0,12,0,7,2,3,0,86,23
	db	0,0,0,0,0,0,12,0,7,2,3,0,89,23,0,0
	db	0,0,0,0,12,0,7,2,3,0,91,23,0,0,0,0
	db	0,0,12,0,7,2,3,0,93,23,0,0,0,0,0,0
	db	12,0,7,2,3,0,95,23,0,0,0,0,0,0,32,0
	db	7,2,3,4,97,23,0,0,0,0,0,0,3,4,101,23
	db	0,0,0,0,0,0,3,20,103,23,0,0,0,0,0,0
	db	12,0,7,2,11,0,106,23,0,0,0,0,0,0,16,0
	db	7,2,18,8,108,23,0,0,0,0,0,0,0,0,0,0
	db	12,0,7,2,2,0,110,23,0,0,0,0,0,0,16,0
	db	7,2,18,0,112,23,0,0,0,0,0,0,4,0,0,0
	db	16,0,7,2,18,0,114,23,0,0,0,0,0,0,8,0
	db	0,0,16,0,7,2,18,0,116,23,0,0,0,0,0,0
	db	12,0,0,0,16,0,7,2,18,0,118,23,0,0,0,0
	db	0,0,16,0,0,0,16,0,7,2,18,0,120,23,0,0
	db	0,0,0,0,20,0,0,0,12,0,7,2,1,0,122,23
	db	0,0,0,0,0,0,12,0,7,2,3,17,124,23,0,0
	db	0,0,0,0,106,1,4,2,10,4,85,23,0,0,0,0
	db	0,4,69,19,0,0,3,0,0,0,242,241,9,4,189,16
	db	0,0,0,4,0,0,0,0,0,0,242,241,9,4,112,0
	db	0,0,1,4,0,0,0,0,0,0,242,241,7,4,48,19
	db	0,0,3,0,2,4,0,0,0,0,0,0,8,4,1,0
	db	126,23,0,0,3,4,0,0,8,4,1,0,127,23,0,0
	db	4,4,0,0,8,4,1,0,128,23,0,0,5,4,0,0
	db	8,4,1,0,129,23,0,0,6,4,0,0,8,4,1,0
	db	130,23,0,0,7,4,0,0,8,4,3,0,131,23,0,0
	db	8,4,0,0,8,4,1,0,132,23,0,0,9,4,0,0
	db	8,4,1,0,133,23,0,0,10,4,0,0,8,4,1,0
	db	134,23,0,0,11,4,0,0,8,4,1,0,135,23,0,0
	db	12,4,0,0,8,4,1,0,136,23,0,0,13,4,0,0
	db	8,4,1,0,137,23,0,0,14,4,0,0,8,4,1,0
	db	138,23,0,0,15,4,0,0,8,4,1,0,139,23,0,0
	db	16,4,0,0,8,4,1,0,140,23,0,0,17,4,0,0
	db	6,4,171,16,0,0,1,0,18,4,0,0,0,0,0,0
	db	8,0,242,241,6,4,112,0,0,0,1,0,19,4,0,0
	db	0,0,0,0,12,0,242,241,6,4,112,0,0,0,1,0
	db	20,4,0,0,0,0,0,0,13,0,242,241,6,4,171,16
	db	0,0,1,0,21,4,0,0,0,0,0,0,16,0,242,241
	db	6,4,171,16,0,0,1,0,22,4,0,0,0,0,0,0
	db	20,0,242,241,8,4,1,0,141,23,0,0,23,4,0,0
	db	26,0,9,0,233,21,0,0,235,21,0,0,161,22,0,0
	db	0,0,4,0,144,23,0,0,0,0,0,0,20,0,1,2
	db	4,0,233,21,0,0,144,16,0,0,112,0,0,0,18,0
	db	0,0,18,0,3,0,112,0,0,0,17,0,0,0,0,0
	db	0,0,6,0,6,0,18,0,3,0,112,0,0,0,17,0
	db	0,0,0,0,0,0,64,0,64,0,26,0,9,0,233,21
	db	0,0,235,21,0,0,161,22,0,0,0,0,4,0,148,23
	db	0,0,0,0,0,0,20,0,1,2,4,0,233,21,0,0
	db	144,16,0,0,112,0,0,0,34,0,0,0,18,0,3,0
	db	112,0,0,0,17,0,0,0,0,0,0,0,6,0,6,0
	db	18,0,3,0,112,0,0,0,17,0,0,0,0,0,0,0
	db	64,0,64,0,26,0,9,0,233,21,0,0,235,21,0,0
	db	161,22,0,0,0,0,4,0,152,23,0,0,0,0,0,0
	db	20,0,1,2,4,0,233,21,0,0,144,16,0,0,112,0
	db	0,0,118,0,0,0,18,0,3,0,112,0,0,0,17,0
	db	0,0,0,0,0,0,8,0,8,0,18,0,3,0,112,0
	db	0,0,17,0,0,0,0,0,0,0,64,0,64,0,26,0
	db	9,0,233,21,0,0,235,21,0,0,161,22,0,0,0,0
	db	4,0,156,23,0,0,0,0,0,0,20,0,1,2,4,0
	db	233,21,0,0,144,16,0,0,112,0,0,0,119,0,0,0
	db	18,0,3,0,112,0,0,0,17,0,0,0,0,0,0,0
	db	8,0,8,0,18,0,3,0,112,0,0,0,17,0,0,0
	db	0,0,0,0,64,0,64,0,26,0,9,0,233,21,0,0
	db	235,21,0,0,161,22,0,0,0,0,4,0,160,23,0,0
	db	0,0,0,0,20,0,1,2,4,0,233,21,0,0,144,16
	db	0,0,112,0,0,0,65,0,0,0,18,0,3,0,112,0
	db	0,0,17,0,0,0,0,0,0,0,8,0,8,0,18,0
	db	3,0,112,0,0,0,17,0,0,0,0,0,0,0,120,0
	db	120,0,26,0,9,0,233,21,0,0,235,21,0,0,161,22
	db	0,0,0,0,4,0,164,23,0,0,0,0,0,0,20,0
	db	1,2,4,0,233,21,0,0,144,16,0,0,112,0,0,0
	db	66,0,0,0,18,0,3,0,112,0,0,0,17,0,0,0
	db	0,0,0,0,8,0,8,0,18,0,3,0,112,0,0,0
	db	17,0,0,0,0,0,0,0,120,0,120,0,26,0,9,0
	db	233,21,0,0,235,21,0,0,161,22,0,0,0,0,4,0
	db	168,23,0,0,0,0,0,0,20,0,1,2,4,0,233,21
	db	0,0,144,16,0,0,112,0,0,0,226,16,0,0,18,0
	db	3,0,112,0,0,0,17,0,0,0,0,0,0,0,8,0
	db	8,0,18,0,3,0,112,0,0,0,17,0,0,0,0,0
	db	0,0,64,0,64,0,26,0,9,0,3,0,0,0,63,21
	db	0,0,114,21,0,0,0,0,0,0,172,23,0,0,0,0
	db	0,0,4,0,1,2,0,0,14,0,8,0,116,0,0,0
	db	0,0,2,0,176,23,0,0,8,0,2,0,10,0,175,23
	db	0,0,8,0,1,0,1,0,123,19,0,0,12,0,1,2
	db	2,0,116,0,0,0,174,23,0,0,14,0,8,0,116,0
	db	0,0,0,0,2,0,178,23,0,0,12,0,1,2,2,0
	db	116,0,0,0,174,23,0,0,14,0,8,0,81,23,0,0
	db	0,0,1,0,180,23,0,0,8,0,1,2,1,0,242,19
	db	0,0,26,0,9,0,90,17,0,0,189,16,0,0,91,17
	db	0,0,0,0,0,0,182,23,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,189,16,0,0,83,23,0,0
	db	87,23,0,0,0,0,0,0,184,23,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,121,17,0,0,189,16
	db	0,0,91,17,0,0,0,0,1,0,186,23,0,0,0,0
	db	0,0,8,0,1,2,1,0,116,17,0,0,26,0,9,0
	db	189,16,0,0,83,23,0,0,87,23,0,0,0,0,0,0
	db	188,23,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,233,21,0,0,235,21,0,0,161,22,0,0,0,0
	db	3,0,190,23,0,0,0,0,0,0,16,0,1,2,3,0
	db	233,21,0,0,112,0,0,0,117,0,0,0,26,0,9,0
	db	171,16,0,0,189,16,0,0,14,18,0,0,0,0,0,0
	db	192,23,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,233,21,0,0,235,21,0,0,161,22,0,0,0,0
	db	3,0,194,23,0,0,0,0,0,0,16,0,1,2,3,0
	db	233,21,0,0,171,16,0,0,117,0,0,0,26,0,9,0
	db	112,4,0,0,235,21,0,0,161,22,0,0,0,0,3,0
	db	196,23,0,0,0,0,0,0,16,0,1,2,3,0,112,4
	db	0,0,171,16,0,0,123,16,0,0,26,0,9,0,233,21
	db	0,0,235,21,0,0,161,22,0,0,0,0,5,0,198,23
	db	0,0,0,0,0,0,24,0,1,2,5,0,233,21,0,0
	db	144,16,0,0,112,0,0,0,112,4,0,0,117,0,0,0
	db	26,0,9,0,116,0,0,0,117,16,0,0,250,18,0,0
	db	0,0,0,0,200,23,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,112,4,0,0,235,21,0,0,161,22
	db	0,0,0,0,3,0,202,23,0,0,0,0,0,0,16,0
	db	1,2,3,0,112,4,0,0,112,0,0,0,123,16,0,0
	db	26,0,9,0,233,21,0,0,235,21,0,0,161,22,0,0
	db	0,0,8,0,204,23,0,0,0,0,0,0,36,0,1,2
	db	8,0,233,21,0,0,144,16,0,0,112,0,0,0,171,16
	db	0,0,117,0,0,0,117,0,0,0,117,0,0,0,117,0
	db	0,0,18,0,3,0,112,0,0,0,17,0,0,0,0,0
	db	0,0,3,0,3,0,26,0,9,0,117,0,0,0,83,23
	db	0,0,0,0,0,0,0,0,2,0,207,23,0,0,0,0
	db	0,0,12,0,1,2,2,0,73,19,0,0,76,19,0,0
	db	26,0,9,0,215,16,0,0,203,16,0,0,216,16,0,0
	db	0,0,0,0,209,23,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,203,16,0,0,189,16,0,0,14,18
	db	0,0,0,0,0,0,211,23,0,0,0,0,0,0,4,0
	db	1,2,0,0,14,0,8,0,48,0,0,0,0,0,2,0
	db	213,23,0,0,12,0,1,2,2,0,219,16,0,0,219,16
	db	0,0,26,0,9,0,121,17,0,0,189,16,0,0,91,17
	db	0,0,0,0,1,0,215,23,0,0,0,0,0,0,8,0
	db	1,2,1,0,187,16,0,0,26,0,9,0,217,23,0,0
	db	233,21,0,0,158,22,0,0,0,0,0,0,218,23,0,0
	db	0,0,0,0,8,0,2,0,42,0,233,21,0,0,4,0
	db	1,2,0,0,26,0,9,0,217,23,0,0,233,21,0,0
	db	158,22,0,0,0,0,0,0,220,23,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,217,23,0,0,233,21
	db	0,0,158,22,0,0,0,0,1,0,222,23,0,0,0,0
	db	0,0,8,0,1,2,1,0,112,0,0,0,26,0,9,0
	db	189,16,0,0,83,23,0,0,87,23,0,0,0,0,0,0
	db	224,23,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,233,21,0,0,235,21,0,0,161,22,0,0,0,0
	db	3,0,226,23,0,0,0,0,0,0,16,0,1,2,3,0
	db	233,21,0,0,171,16,0,0,117,0,0,0,26,0,9,0
	db	112,0,0,0,83,23,0,0,87,23,0,0,0,0,0,0
	db	228,23,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,233,21,0,0,235,21,0,0,161,22,0,0,0,0
	db	4,0,230,23,0,0,0,0,0,0,20,0,1,2,4,0
	db	233,21,0,0,171,16,0,0,117,0,0,0,112,0,0,0
	db	14,0,8,0,112,0,0,0,0,0,3,0,234,23,0,0
	db	8,0,2,0,42,0,233,23,0,0,8,0,1,0,1,0
	db	127,19,0,0,16,0,1,2,3,0,112,0,0,0,112,4
	db	0,0,232,23,0,0,14,0,8,0,226,16,0,0,0,0
	db	3,0,236,23,0,0,16,0,1,2,3,0,226,16,0,0
	db	116,0,0,0,117,0,0,0,26,0,9,0,121,17,0,0
	db	189,16,0,0,91,17,0,0,0,0,2,0,238,23,0,0
	db	0,0,0,0,12,0,1,2,2,0,171,16,0,0,117,0
	db	0,0,26,0,9,0,121,17,0,0,189,16,0,0,91,17
	db	0,0,0,0,2,0,240,23,0,0,0,0,0,0,12,0
	db	1,2,2,0,117,0,0,0,112,0,0,0,26,0,9,0
	db	121,17,0,0,189,16,0,0,91,17,0,0,0,0,3,0
	db	242,23,0,0,0,0,0,0,16,0,1,2,3,0,117,0
	db	0,0,117,0,0,0,112,0,0,0,26,0,9,0,206,16
	db	0,0,189,16,0,0,91,17,0,0,0,0,1,0,244,23
	db	0,0,0,0,0,0,8,0,1,2,1,0,117,0,0,0
	db	26,0,9,0,112,0,0,0,83,23,0,0,87,23,0,0
	db	0,0,0,0,246,23,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,98,23,0,0,83,23,0,0,99,23
	db	0,0,0,0,2,0,248,23,0,0,0,0,0,0,12,0
	db	1,2,2,0,118,19,0,0,117,0,0,0,26,0,9,0
	db	121,17,0,0,189,16,0,0,91,17,0,0,0,0,1,0
	db	250,23,0,0,0,0,0,0,8,0,1,2,1,0,187,16
	db	0,0,14,0,8,0,3,4,0,0,0,0,3,0,252,23
	db	0,0,16,0,1,2,3,0,3,4,0,0,116,0,0,0
	db	117,0,0,0,8,0,2,0,10,0,254,23,0,0,8,0
	db	1,0,1,0,32,0,0,0,26,0,9,0,48,0,0,0
	db	189,16,0,0,91,17,0,0,0,0,1,0,0,24,0,0
	db	0,0,0,0,8,0,1,2,1,0,171,16,0,0,26,0
	db	9,0,121,17,0,0,189,16,0,0,91,17,0,0,0,0
	db	3,0,2,24,0,0,0,0,0,0,16,0,1,2,3,0
	db	187,16,0,0,117,0,0,0,117,0,0,0,26,0,9,0
	db	3,0,0,0,189,16,0,0,91,17,0,0,0,0,3,0
	db	4,24,0,0,0,0,0,0,16,0,1,2,3,0,117,0
	db	0,0,117,0,0,0,112,0,0,0,26,0,9,0,3,0
	db	0,0,83,23,0,0,99,23,0,0,0,0,1,0,6,24
	db	0,0,0,0,0,0,8,0,1,2,1,0,118,19,0,0
	db	26,0,9,0,112,4,0,0,151,17,0,0,0,0,0,0
	db	0,0,3,0,8,24,0,0,0,0,0,0,16,0,1,2
	db	3,0,112,4,0,0,117,0,0,0,112,0,0,0,26,0
	db	9,0,161,19,0,0,120,19,0,0,152,19,0,0,0,0
	db	0,0,10,24,0,0,0,0,0,0,4,0,1,2,0,0
	db	14,0,8,0,112,4,0,0,0,0,3,0,12,24,0,0
	db	16,0,1,2,3,0,171,16,0,0,112,4,0,0,232,23
	db	0,0,26,0,9,0,171,16,0,0,120,19,0,0,152,19
	db	0,0,0,0,0,0,14,24,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,171,16,0,0,120,19,0,0
	db	152,19,0,0,0,0,0,0,16,24,0,0,0,0,0,0
	db	4,0,1,2,0,0,26,0,9,0,3,0,0,0,83,23
	db	0,0,99,23,0,0,0,0,0,0,18,24,0,0,0,0
	db	0,0,4,0,1,2,0,0,26,0,9,0,3,0,0,0
	db	83,23,0,0,99,23,0,0,0,0,0,0,20,24,0,0
	db	0,0,0,0,4,0,1,2,0,0,26,0,9,0,112,0
	db	0,0,83,23,0,0,87,23,0,0,0,0,0,0,22,24
	db	0,0,0,0,0,0,4,0,1,2,0,0,26,0,9,0
	db	112,0,0,0,83,23,0,0,87,23,0,0,0,0,0,0
	db	24,24,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db	9,0,189,16,0,0,83,23,0,0,87,23,0,0,0,0
	db	0,0,26,24,0,0,0,0,0,0,4,0,1,2,0,0
	db	26,0,9,0,189,16,0,0,83,23,0,0,87,23,0,0
	db	0,0,0,0,28,24,0,0,0,0,0,0,4,0,1,2
	db	0,0,26,0,9,0,189,16,0,0,83,23,0,0,87,23
	db	0,0,0,0,0,0,30,24,0,0,0,0,0,0,4,0
	db	1,2,0,0,26,0,9,0,90,17,0,0,189,16,0,0
	db	91,17,0,0,0,0,1,0,32,24,0,0,0,0,0,0
	db	8,0,1,2,1,0,171,16,0,0,26,0,9,0,121,17
	db	0,0,189,16,0,0,91,17,0,0,0,0,1,0,34,24
	db	0,0,0,0,0,0,8,0,1,2,1,0,171,16,0,0
	db	26,0,9,0,121,17,0,0,189,16,0,0,91,17,0,0
	db	0,0,2,0,36,24,0,0,0,0,0,0,12,0,1,2
	db	2,0,171,16,0,0,117,0,0,0,14,0,8,0,3,0
	db	0,0,0,0,0,0,38,24,0,0,4,0,1,2,0,0
	db	8,0,2,0,10,2,3,0,0,0,14,0,8,0,3,0
	db	0,0,0,0,9,0,41,24,0,0,40,0,1,2,9,0
	db	3,4,0,0,3,4,0,0,3,4,0,0,3,4,0,0
	db	117,0,0,0,117,0,0,0,117,0,0,0,32,4,0,0
	db	3,4,0,0,14,0,8,0,3,0,0,0,0,0,0,0
	db	43,24,0,0,4,0,1,2,0,0,14,0,8,0,3,0
	db	0,0,4,0,1,0,45,24,0,0,8,0,1,2,1,0
	db	3,4,0,0,14,0,8,0,117,0,0,0,0,0,1,0
	db	47,24,0,0,8,0,1,2,1,0,171,16,0,0,14,0
	db	8,0,48,0,0,0,0,0,0,0,49,24,0,0,4,0
	db	1,2,0,0,14,0,8,0,3,0,0,0,0,0,1,0
	db	51,24,0,0,8,0,1,2,1,0,3,4,0,0,8,0
	db	1,0,1,0,3,20,0,0,14,0,8,0,18,0,0,0
	db	0,0,1,0,56,24,0,0,8,0,2,0,10,0,55,24
	db	0,0,8,0,1,0,2,0,18,0,0,0,8,0,1,2
	db	1,0,54,24,0,0,14,0,8,0,3,0,0,0,0,0
	db	1,0,58,24,0,0,8,0,1,2,1,0,116,0,0,0
	db	14,0,8,0,3,0,0,0,0,0,1,0,60,24,0,0
	db	8,0,1,2,1,0,116,0,0,0,14,0,8,0,3,4
	db	0,0,0,0,1,0,62,24,0,0,8,0,1,2,1,0
	db	117,0,0,0,14,0,8,0,18,0,0,0,0,0,1,0
	db	64,24,0,0,8,0,1,2,1,0,54,24,0,0,8,0
	db	1,0,1,0,198,16,0,0,14,0,8,0,3,4,0,0
	db	0,0,3,0,67,24,0,0,16,0,1,2,3,0,3,4
	db	0,0,226,16,0,0,117,0,0,0,8,0,1,0,1,0
	db	194,16,0,0,14,0,8,0,124,19,0,0,0,0,0,0
	db	70,24,0,0,4,0,1,2,0,0,14,0,8,0,3,4
	db	0,0,0,0,3,0,72,24,0,0,16,0,1,2,3,0
	db	3,4,0,0,226,16,0,0,117,0,0,0,14,0,8,0
	db	3,0,0,0,0,0,2,0,74,24,0,0,12,0,1,2
	db	2,0,117,0,0,0,32,4,0,0,8,0,1,0,1,0
	db	170,16,0,0,14,0,8,0,116,0,0,0,64,0,3,0
	db	77,24,0,0,16,0,1,2,3,0,112,4,0,0,171,16
	db	0,0,0,0,0,0,14,0,8,0,3,0,0,0,0,0
	db	1,0,79,24,0,0,8,0,1,2,1,0,3,4,0,0
	db	14,0,8,0,116,0,0,0,0,0,2,0,81,24,0,0
	db	12,0,1,2,2,0,116,0,0,0,34,0,0,0,14,0
	db	8,0,116,0,0,0,0,0,2,0,83,24,0,0,12,0
	db	1,2,2,0,116,0,0,0,34,0,0,0,14,0,8,0
	db	85,24,0,0,0,0,0,0,86,24,0,0,8,0,2,0
	db	10,0,163,19,0,0,4,0,1,2,0,0,14,0,8,0
	db	117,0,0,0,0,0,2,0,88,24,0,0,12,0,1,2
	db	2,0,171,16,0,0,171,16,0,0,14,0,8,0,3,4
	db	0,0,0,0,3,0,90,24,0,0,16,0,1,2,3,0
	db	3,4,0,0,116,0,0,0,117,0,0,0
$$BTYPES	ends
$$BNAMES	segment byte public use32 'DEBNAM'
	db	15,'TDAListaMemoria'
	db	8,'SMemoria'
	db	5,'NodoM'
	db	4,'Dato'
	db	4,'Link'
	db	5,'Libre'
	db	3,'mem'
	db	18,'@SMemoria@$bctr$qv'
	db	11,'new_espacio'
	db	14,'delete_espacio'
	db	10,'poner_dato'
	db	12,'obtener_dato'
	db	7,'mostrar'
	db	18,'espacio_disponible'
	db	15,'espacio_ocupado'
	db	15,'direccion_libre'
	db	8,'Longitud'
	db	1,'m'
	db	11,'PtrElemento'
	db	5,'crear'
	db	7,'primero'
	db	5,'vacia'
	db	9,'siguiente'
	db	8,'anterior'
	db	3,'fin'
	db	8,'recupera'
	db	8,'longitud'
	db	7,'inserta'
	db	8,'modifica'
	db	7,'suprime'
	db	8,'imprimir'
	db	25,'@TDAListaMemoria@$bctr$qv'
	db	22,'@TDAListaMemoria@crear'
	db	4,'this'
	db	22,'@TDAListaMemoria@vacia'
	db	4,'this'
	db	20,'@TDAListaMemoria@fin'
	db	4,'this'
	db	6,'PtrFin'
	db	1,'x'
	db	24,'@TDAListaMemoria@primero'
	db	4,'this'
	db	26,'@TDAListaMemoria@siguiente'
	db	4,'this'
	db	9,'direccion'
	db	25,'@TDAListaMemoria@anterior'
	db	4,'this'
	db	9,'direccion'
	db	3,'ant'
	db	1,'x'
	db	25,'@TDAListaMemoria@recupera'
	db	4,'this'
	db	9,'direccion'
	db	25,'@TDAListaMemoria@longitud'
	db	4,'this'
	db	24,'@TDAListaMemoria@inserta'
	db	4,'this'
	db	9,'direccion'
	db	8,'elemento'
	db	1,'x'
	db	3,'ant'
	db	25,'@TDAListaMemoria@modifica'
	db	4,'this'
	db	9,'direccion'
	db	8,'elemento'
	db	25,'@TDAListaMemoria@imprimir'
	db	4,'this'
	db	1,'p'
	db	1,'e'
	db	24,'@TDAListaMemoria@suprime'
	db	4,'this'
	db	9,'direccion'
	db	1,'x'
	db	3,'ant'
	db	43,'@std@%basic_ostream$c19std@%char_traits$c%%'
	db	39,'@std@%basic_ios$c19std@%char_traits$c%%'
	db	13,'@std@ios_base'
	db	14,'@std@%_Iosb$i%'
	db	26,'@std@%_Iosb$i%@_Dummy_enum'
	db	15,'_Dummy_enum_val'
	db	15,'_Dummy_enum_val'
	db	24,'@std@%_Iosb$i%@_Fmtflags'
	db	8,'_Fmtmask'
	db	8,'_Fmtzero'
	db	8,'_Fmtmask'
	db	8,'_Fmtzero'
	db	23,'@std@%_Iosb$i%@_Iostate'
	db	9,'_Statmask'
	db	9,'_Statmask'
	db	24,'@std@%_Iosb$i%@_Openmode'
	db	9,'_Openmask'
	db	9,'_Openmask'
	db	23,'@std@%_Iosb$i%@_Seekdir'
	db	9,'_Seekmask'
	db	9,'_Seekmask'
	db	19,'@std@%_Iosb$i%@_$NP'
	db	9,'_Openprot'
	db	9,'_Openprot'
	db	11,'_Dummy_enum'
	db	9,'_Fmtflags'
	db	6,'skipws'
	db	7,'unitbuf'
	db	9,'uppercase'
	db	8,'showbase'
	db	9,'showpoint'
	db	7,'showpos'
	db	4,'left'
	db	5,'right'
	db	8,'internal'
	db	3,'dec'
	db	3,'oct'
	db	3,'hex'
	db	10,'scientific'
	db	5,'fixed'
	db	8,'hexfloat'
	db	9,'boolalpha'
	db	6,'_Stdio'
	db	11,'adjustfield'
	db	9,'basefield'
	db	10,'floatfield'
	db	8,'_Iostate'
	db	7,'goodbit'
	db	6,'eofbit'
	db	7,'failbit'
	db	6,'badbit'
	db	9,'_Hardfail'
	db	9,'_Openmode'
	db	2,'in'
	db	3,'out'
	db	3,'ate'
	db	3,'app'
	db	5,'trunc'
	db	9,'_Nocreate'
	db	10,'_Noreplace'
	db	6,'binary'
	db	8,'_Seekdir'
	db	3,'beg'
	db	3,'cur'
	db	3,'end'
	db	4,'_$NP'
	db	13,'@std@%fpos$i%'
	db	19,'@std@ios_base@event'
	db	11,'erase_event'
	db	11,'imbue_event'
	db	13,'copyfmt_event'
	db	11,'erase_event'
	db	11,'imbue_event'
	db	13,'copyfmt_event'
	db	21,'@std@ios_base@failure'
	db	18,'@std@runtime_error'
	db	14,'@std@exception'
	db	18,'_Set_raise_handler'
	db	23,'@std@exception@$bctr$qv'
	db	23,'@std@exception@$bdtr$qv'
	db	4,'what'
	db	39,'@std@exception@$basg$qrx13std@exception'
	db	61,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%'
	db	39,'@std@%_String_val$c17std@%allocator$c%%'
	db	17,'@std@_String_base'
	db	20,'@std@_Container_base'
	db	5,'_Xlen'
	db	5,'_Xran'
	db	18,'@std@%allocator$c%'
	db	24,'@std@%_Allocator_base$c%'
	db	10,'value_type'
	db	7,'_Mybase'
	db	10,'value_type'
	db	7,'pointer'
	db	9,'reference'
	db	13,'const_pointer'
	db	15,'const_reference'
	db	9,'size_type'
	db	15,'difference_type'
	db	7,'address'
	db	27,'@std@%allocator$c%@$bctr$qv'
	db	10,'deallocate'
	db	8,'allocate'
	db	9,'construct'
	db	7,'destroy'
	db	8,'max_size'
	db	47,'@std@%allocator$c%@$basg$qrx17std@%allocator$c%'
	db	5,'_Alty'
	db	66,'@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%'
	db	6,'_Alval'
	db	89,'@std@%_String_val$c17std@%allocator$c%%@$basg$qrx38std@%_String_val$c17std@%allocator$c%%'
	db	65,'@std@%_String_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	71,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	22,'@std@%_Ranit$cipxcrxc%'
	db	56,'@std@%iterator$30std@random_access_iterator_tagcipxcrxc%'
	db	31,'@std@random_access_iterator_tag'
	db	31,'@std@bidirectional_iterator_tag'
	db	25,'@std@forward_iterator_tag'
	db	23,'@std@input_iterator_tag'
	db	17,'iterator_category'
	db	10,'value_type'
	db	15,'difference_type'
	db	13,'distance_type'
	db	7,'pointer'
	db	9,'reference'
	db	4,'_Myt'
	db	9,'_Mystring'
	db	17,'iterator_category'
	db	10,'value_type'
	db	15,'difference_type'
	db	7,'pointer'
	db	9,'reference'
	db	80,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv'
	db	81,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$bind$xqv'
	db	82,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$barow$xqv'
	db	80,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$binc$qv'
	db	80,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$bdec$qv'
	db	81,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$brplu$qi'
	db	81,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$badd$xqi'
	db	81,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$brmin$qi'
	db	81,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$bsub$xqi'
	db	82,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$xqi'
	db	154,'@std@%_String_const_iterat'
	db	'or$c19std@%char_traits$c%17std@%allocator$c%%@$beql$xqrx70std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	154,'@std@%_String_const_iterat'
	db	'or$c19std@%char_traits$c%17std@%allocator$c%%@$bneq$xqrx70std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	154,'@std@%_String_const_iterat'
	db	'or$c19std@%char_traits$c%17std@%allocator$c%%@$blss$xqrx70std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	154,'@std@%_String_const_iterat'
	db	'or$c19std@%char_traits$c%17std@%allocator$c%%@$bgtr$xqrx70std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	154,'@std@%_String_const_iterat'
	db	'or$c19std@%char_traits$c%17std@%allocator$c%%@$bleq$xqrx70std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	154,'@std@%_String_const_iterat'
	db	'or$c19std@%char_traits$c%17std@%allocator$c%%@$bgeq$xqrx70std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	6,'_Myptr'
	db	90,'@std@%reverse_iterator$64std@%_String_iterator$c19std@%char_traits$c%17std@%allocator$c%%%'
	db	96,'@std@%reverse_iterator$70std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%%'
	db	20,'@std@%char_traits$c%'
	db	5,'_Elem'
	db	9,'char_type'
	db	8,'int_type'
	db	8,'pos_type'
	db	8,'off_type'
	db	10,'state_type'
	db	6,'assign'
	db	2,'eq'
	db	2,'lt'
	db	7,'compare'
	db	6,'length'
	db	4,'copy'
	db	4,'find'
	db	4,'move'
	db	12,'to_char_type'
	db	11,'to_int_type'
	db	11,'eq_int_type'
	db	3,'eof'
	db	7,'not_eof'
	db	66,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_$UM'
	db	9,'_BUF_SIZE'
	db	9,'_BUF_SIZE'
	db	66,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_$VM'
	db	11,'_ALLOC_MASK'
	db	11,'_ALLOC_MASK'
	db	67,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Bxty'
	db	4,'_Buf'
	db	4,'_Ptr'
	db	4,'_Myt'
	db	7,'_Mybase'
	db	6,'_Alloc'
	db	9,'size_type'
	db	5,'_Dift'
	db	15,'difference_type'
	db	5,'_Tptr'
	db	6,'_Ctptr'
	db	7,'pointer'
	db	13,'const_pointer'
	db	5,'_Reft'
	db	9,'reference'
	db	15,'const_reference'
	db	10,'value_type'
	db	8,'iterator'
	db	14,'const_iterator'
	db	16,'reverse_iterator'
	db	22,'const_reverse_iterator'
	db	70,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv'
	db	132,'@std'
	db	'@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qh60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%'
	db	6,'assign'
	db	4,'swap'
	db	70,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv'
	db	11,'traits_type'
	db	14,'allocator_type'
	db	4,'npos'
	db	134,'@std@%'
	db	'basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$brplu$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%'
	db	6,'append'
	db	6,'insert'
	db	5,'erase'
	db	5,'clear'
	db	7,'replace'
	db	5,'begin'
	db	3,'end'
	db	6,'rbegin'
	db	4,'rend'
	db	2,'at'
	db	72,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui'
	db	9,'push_back'
	db	5,'c_str'
	db	4,'data'
	db	6,'length'
	db	4,'size'
	db	8,'max_size'
	db	6,'resize'
	db	8,'capacity'
	db	7,'reserve'
	db	5,'empty'
	db	4,'copy'
	db	4,'find'
	db	5,'rfind'
	db	13,'find_first_of'
	db	12,'find_last_of'
	db	17,'find_first_not_of'
	db	16,'find_last_not_of'
	db	6,'substr'
	db	7,'compare'
	db	13,'get_allocator'
	db	4,'_$UM'
	db	4,'_$VM'
	db	9,'_Chassign'
	db	5,'_Copy'
	db	4,'_Eos'
	db	5,'_Grow'
	db	7,'_Inside'
	db	5,'_Pdif'
	db	5,'_Tidy'
	db	5,'_Bxty'
	db	3,'_Bx'
	db	6,'_Myptr'
	db	7,'_Mysize'
	db	6,'_Myres'
	db	90,'@std@runtime_error@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%'
	db	27,'@std@runtime_error@$bdtr$qv'
	db	4,'what'
	db	4,'_Str'
	db	47,'@std@runtime_error@$basg$qrx17std@runtime_error'
	db	93,'@std@ios_base@failure@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%'
	db	30,'@std@ios_base@failure@$bdtr$qv'
	db	53,'@std@ios_base@failure@$basg$qrx20std@ios_base@failure'
	db	18,'@std@ios_base@Init'
	db	27,'@std@ios_base@Init@$bctr$qv'
	db	27,'@std@ios_base@Init@$bdtr$qv'
	db	9,'_Init_cnt'
	db	11,'@std@locale'
	db	17,'@std@%_Locbase$i%'
	db	7,'collate'
	db	5,'ctype'
	db	8,'monetary'
	db	7,'numeric'
	db	4,'time'
	db	8,'messages'
	db	3,'all'
	db	4,'none'
	db	14,'@std@locale@id'
	db	24,'@std@locale@id@$bctr$qui'
	db	21,'operator unsigned int'
	db	39,'@std@locale@id@$basg$qrx13std@locale@id'
	db	3,'_Id'
	db	7,'_Id_cnt'
	db	19,'@std@locale@_Locimp'
	db	17,'@std@locale@facet'
	db	7,'_Getcat'
	db	7,'_Incref'
	db	7,'_Decref'
	db	9,'_Register'
	db	26,'@std@locale@facet@$bdtr$qv'
	db	27,'@std@locale@facet@$bctr$qui'
	db	45,'@std@locale@facet@$basg$qrx16std@locale@facet'
	db	5,'_Refs'
	db	13,'@std@_Locinfo'
	db	8,'_Collvec'
	db	5,'_Hand'
	db	5,'_Page'
	db	9,'_Ctypevec'
	db	5,'_Hand'
	db	5,'_Page'
	db	6,'_Table'
	db	6,'_Delfl'
	db	7,'_Cvtvec'
	db	5,'_Hand'
	db	5,'_Page'
	db	13,'@std@_Timevec'
	db	7,'_Getptr'
	db	4,'_Pad'
	db	10,'@std@lconv'
	db	13,'decimal_point'
	db	13,'thousands_sep'
	db	8,'grouping'
	db	15,'int_curr_symbol'
	db	15,'currency_symbol'
	db	17,'mon_decimal_point'
	db	17,'mon_thousands_sep'
	db	12,'mon_grouping'
	db	13,'positive_sign'
	db	13,'negative_sign'
	db	15,'int_frac_digits'
	db	11,'frac_digits'
	db	13,'p_cs_precedes'
	db	14,'p_sep_by_space'
	db	13,'n_cs_precedes'
	db	14,'n_sep_by_space'
	db	11,'p_sign_posn'
	db	11,'n_sign_posn'
	db	12,'@std@_Lockit'
	db	21,'@std@_Lockit@$bctr$qv'
	db	21,'@std@_Lockit@$bdtr$qv'
	db	35,'@std@_Lockit@$basg$qrx11std@_Lockit'
	db	9,'_Locktype'
	db	8,'_Collvec'
	db	9,'_Ctypevec'
	db	7,'_Cvtvec'
	db	8,'_Timevec'
	db	24,'@std@_Locinfo@$bctr$qpxc'
	db	22,'@std@_Locinfo@$bdtr$qv'
	db	8,'_Addcats'
	db	8,'_Getname'
	db	8,'_Getcoll'
	db	9,'_Getctype'
	db	7,'_Getcvt'
	db	9,'_Getlconv'
	db	10,'_Gettnames'
	db	8,'_Getdays'
	db	10,'_Getmonths'
	db	9,'_Getfalse'
	db	8,'_Gettrue'
	db	5,'_Lock'
	db	11,'_Oldlocname'
	db	11,'_Newlocname'
	db	7,'_Handle'
	db	5,'_Page'
	db	37,'@std@_Locinfo@$basg$qrx12std@_Locinfo'
	db	28,'@std@locale@_Locimp@$bdtr$qv'
	db	28,'@std@locale@_Locimp@$bctr$qo'
	db	7,'_Addfac'
	db	8,'_Makeloc'
	db	9,'_Makewloc'
	db	9,'_Makexloc'
	db	9,'_Facetvec'
	db	11,'_Facetcount'
	db	8,'_Catmask'
	db	8,'_Xparent'
	db	5,'_Name'
	db	8,'_Clocptr'
	db	49,'@std@locale@_Locimp@$basg$qrx18std@locale@_Locimp'
	db	19,'@std@_Uninitialized'
	db	7,'_Noinit'
	db	7,'_Noinit'
	db	8,'category'
	db	2,'id'
	db	7,'_Locimp'
	db	5,'facet'
	db	7,'_Addfac'
	db	20,'@std@locale@$bctr$qv'
	db	20,'@std@locale@$bdtr$qv'
	db	33,'@std@locale@$basg$qrx10std@locale'
	db	4,'name'
	db	9,'_Getfacet'
	db	34,'@std@locale@$beql$xqrx10std@locale'
	db	34,'@std@locale@$bneq$xqrx10std@locale'
	db	7,'classic'
	db	6,'global'
	db	5,'empty'
	db	5,'_Init'
	db	4,'_Ptr'
	db	23,'@std@ios_base@_Iosarray'
	db	57,'@std@ios_base@_Iosarray@$bctr$qip22std@ios_base@_Iosarray'
	db	5,'_Next'
	db	6,'_Index'
	db	3,'_Lo'
	db	3,'_Vp'
	db	22,'@std@ios_base@_Fnarray'
	db	95,'@std@ios_base@_Fnarray@$bctr$qipq18std@ios_base@eventr12std@ios_basei$vp21std@ios_base@_Fnarray'
	db	5,'_Next'
	db	6,'_Index'
	db	4,'_Pfn'
	db	8,'fmtflags'
	db	7,'iostate'
	db	8,'openmode'
	db	7,'seekdir'
	db	9,'streamoff'
	db	9,'streampos'
	db	5,'event'
	db	14,'event_callback'
	db	8,'io_state'
	db	9,'open_mode'
	db	8,'seek_dir'
	db	7,'failure'
	db	4,'Init'
	db	37,'@std@ios_base@$basg$qrx12std@ios_base'
	db	15,'operator void *'
	db	23,'@std@ios_base@$bnot$xqv'
	db	5,'clear'
	db	7,'rdstate'
	db	8,'setstate'
	db	4,'good'
	db	3,'eof'
	db	4,'fail'
	db	3,'bad'
	db	10,'exceptions'
	db	5,'flags'
	db	4,'setf'
	db	6,'unsetf'
	db	9,'precision'
	db	5,'width'
	db	6,'getloc'
	db	5,'imbue'
	db	6,'xalloc'
	db	5,'iword'
	db	5,'pword'
	db	17,'register_callback'
	db	7,'copyfmt'
	db	22,'@std@ios_base@$bdtr$qv'
	db	15,'sync_with_stdio'
	db	7,'_Addstd'
	db	7,'_Stdstr'
	db	22,'@std@ios_base@$bctr$qv'
	db	5,'_Init'
	db	9,'_Iosarray'
	db	8,'_Fnarray'
	db	8,'_Callfns'
	db	8,'_Findarr'
	db	5,'_Tidy'
	db	8,'_Mystate'
	db	7,'_Except'
	db	6,'_Fmtfl'
	db	5,'_Prec'
	db	5,'_Wide'
	db	4,'_Arr'
	db	6,'_Calls'
	db	5,'_Ploc'
	db	6,'_Index'
	db	5,'_Sync'
	db	45,'@std@%basic_streambuf$c19std@%char_traits$c%%'
	db	11,'@std@_Mutex'
	db	5,'_Lock'
	db	7,'_Unlock'
	db	101,'@std@%basic_streambuf$c19std@%char_traits$c%%@$bctr$qrx44std@%basic_streambuf$c19std@%char_traits$c%%'
	db	101,'@std@%basic_streambuf$c19std@%char_traits$c%%@$basg$qrx44std@%basic_streambuf$c19std@%char_traits$c%%'
	db	4,'_Myt'
	db	9,'char_type'
	db	11,'traits_type'
	db	54,'@std@%basic_streambuf$c19std@%char_traits$c%%@$bdtr$qv'
	db	8,'int_type'
	db	8,'pos_type'
	db	8,'off_type'
	db	10,'pubseekoff'
	db	10,'pubseekpos'
	db	9,'pubsetbuf'
	db	8,'pubimbue'
	db	6,'getloc'
	db	8,'in_avail'
	db	7,'pubsync'
	db	6,'sbumpc'
	db	5,'sgetc'
	db	5,'sgetn'
	db	6,'snextc'
	db	9,'sputbackc'
	db	6,'stossc'
	db	7,'sungetc'
	db	5,'sputc'
	db	5,'sputn'
	db	5,'_Lock'
	db	7,'_Unlock'
	db	5,'eback'
	db	4,'gptr'
	db	5,'pbase'
	db	4,'pptr'
	db	5,'egptr'
	db	5,'gbump'
	db	4,'setg'
	db	5,'epptr'
	db	6,'_Gndec'
	db	6,'_Gninc'
	db	9,'_Gnpreinc'
	db	8,'_Gnavail'
	db	5,'pbump'
	db	4,'setp'
	db	6,'_Pninc'
	db	8,'_Pnavail'
	db	5,'_Init'
	db	8,'allocate'
	db	4,'base'
	db	4,'blen'
	db	11,'out_waiting'
	db	4,'setb'
	db	8,'overflow'
	db	9,'pbackfail'
	db	9,'showmanyc'
	db	9,'underflow'
	db	5,'uflow'
	db	6,'xsgetn'
	db	6,'xsputn'
	db	7,'seekoff'
	db	7,'seekpos'
	db	6,'setbuf'
	db	4,'sync'
	db	5,'imbue'
	db	7,'_Mylock'
	db	7,'_Gfirst'
	db	7,'_Pfirst'
	db	8,'_IGfirst'
	db	8,'_IPfirst'
	db	6,'_Gnext'
	db	6,'_Pnext'
	db	7,'_IGnext'
	db	7,'_IPnext'
	db	7,'_Gcount'
	db	7,'_Pcount'
	db	8,'_IGcount'
	db	8,'_IPcount'
	db	8,'_Plocale'
	db	14,'@std@%ctype$c%'
	db	15,'@std@ctype_base'
	db	4,'mask'
	db	25,'@std@ctype_base@$bctr$qui'
	db	24,'@std@ctype_base@$bdtr$qv'
	db	41,'@std@ctype_base@$basg$qrx14std@ctype_base'
	db	4,'_Myt'
	db	5,'_Elem'
	db	9,'char_type'
	db	2,'is'
	db	7,'scan_is'
	db	8,'scan_not'
	db	7,'tolower'
	db	7,'toupper'
	db	5,'widen'
	db	6,'narrow'
	db	2,'id'
	db	28,'@std@%ctype$c%@$bctr$qpxsoui'
	db	7,'_Getcat'
	db	10,'table_size'
	db	23,'@std@%ctype$c%@$bdtr$qv'
	db	5,'_Init'
	db	5,'_Tidy'
	db	10,'do_tolower'
	db	10,'do_toupper'
	db	8,'do_widen'
	db	9,'do_narrow'
	db	5,'table'
	db	13,'classic_table'
	db	6,'_Ctype'
	db	39,'@std@%ctype$c%@$basg$qrx13std@%ctype$c%'
	db	4,'_Myt'
	db	5,'_Myos'
	db	5,'_Mysb'
	db	6,'_Ctype'
	db	9,'char_type'
	db	11,'traits_type'
	db	8,'int_type'
	db	8,'pos_type'
	db	8,'off_type'
	db	94,'@std@%basic_ios$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%'
	db	48,'@std@%basic_ios$c19std@%char_traits$c%%@$bdtr$qv'
	db	5,'clear'
	db	8,'setstate'
	db	7,'copyfmt'
	db	3,'tie'
	db	5,'rdbuf'
	db	5,'imbue'
	db	4,'fill'
	db	6,'narrow'
	db	5,'widen'
	db	4,'init'
	db	89,'@std@%basic_ios$c19std@%char_traits$c%%@$basg$qrx38std@%basic_ios$c19std@%char_traits$c%%'
	db	9,'_Mystrbuf'
	db	7,'_Tiestr'
	db	7,'_Fillch'
	db	49,'@std@%ostreambuf_iterator$c19std@%char_traits$c%%'
	db	66,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%'
	db	56,'@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base'
	db	109,'@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%'
	db	65,'@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv'
	db	7,'_Myostr'
	db	123,'@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$basg$qrx55std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base'
	db	50,'@std@%basic_ostream$c19std@%char_traits$c%%@sentry'
	db	103,'@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%'
	db	59,'@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv'
	db	13,'operator bool'
	db	111,'@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$basg$qrx49std@%basic_ostream$c19std@%char_traits$c%%@sentry'
	db	3,'_Ok'
	db	4,'_Myt'
	db	6,'_Myios'
	db	5,'_Mysb'
	db	5,'_Iter'
	db	5,'_Nput'
	db	99,'@std@%basic_ostream$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%o'
	db	52,'@std@%basic_ostream$c19std@%char_traits$c%%@$bdtr$qv'
	db	8,'int_type'
	db	8,'pos_type'
	db	8,'off_type'
	db	12,'_Sentry_base'
	db	6,'sentry'
	db	4,'opfx'
	db	4,'osfx'
	db	5,'_Osfx'
	db	144,'@std@%basic_ostr'
	db	'eam$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%'
	db	3,'put'
	db	5,'write'
	db	5,'flush'
	db	5,'seekp'
	db	5,'tellp'
	db	97,'@std@%basic_ostream$c19std@%char_traits$c%%@$basg$qrx42std@%basic_ostream$c19std@%char_traits$c%%'
	db	106,'@std@$blsh$qr42std@%basic_ostream$c19std@%char_traits$c%%pxc$r42std@%basic_ostream$c19std@%char_traits$c%%'
	db	5,'_Ostr'
	db	4,'_Val'
	db	3,'_Ok'
	db	4,'_Pad'
	db	6,'_Count'
	db	6,'_State'
	db	5,'_Myos'
	db	5,'_Elem'
	db	52,'@std@%basic_ostream$c19std@%char_traits$c%%@$blsh$qi'
	db	4,'this'
	db	4,'_Val'
	db	3,'_Ok'
	db	6,'_State'
	db	4,'_Tmp'
	db	4,'_Bfl'
	db	9,'_Nput_fac'
	db	144,'@std@%basic_ostr'
	db	'eam$c19std@%char_traits$c%%@$blsh$qpqr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%'
	db	4,'this'
	db	4,'_Pfn'
	db	127,'@std@%endl$c19std@%char_traits$c%%$qr42std@%basic_ostream$c19std@%char_traits$c%%$r42std@%basic_ostream$c19std@%char_traits$c%%'
	db	5,'_Ostr'
	db	27,'@std@%char_traits$c%@length'
	db	6,'_First'
	db	19,'@std@ios_base@width'
	db	4,'this'
	db	103,'@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%'
	db	4,'this'
	db	5,'_Ostr'
	db	59,'@std@%basic_ostream$c19std@%char_traits$c%%@sentry@$bdtr$qv'
	db	4,'this'
	db	64,'@std@%basic_ostream$c19std@%char_traits$c%%@sentry@operator bool'
	db	4,'this'
	db	61,'@std@$bror$qr22std@%_Iosb$i%@_Iostate22std@%_Iosb$i%@_Iostate'
	db	5,'_Left'
	db	6,'_Right'
	db	19,'@std@ios_base@flags'
	db	4,'this'
	db	39,'@std@$band$q23std@%_Iosb$i%@_Fmtflagst1'
	db	5,'_Left'
	db	6,'_Right'
	db	24,'@std@%char_traits$c%@eof'
	db	45,'@std@%basic_ios$c19std@%char_traits$c%%@rdbuf'
	db	4,'this'
	db	44,'@std@%basic_ios$c19std@%char_traits$c%%@fill'
	db	4,'this'
	db	51,'@std@%basic_streambuf$c19std@%char_traits$c%%@sputc'
	db	4,'this'
	db	3,'_Ch'
	db	32,'@std@%char_traits$c%@eq_int_type'
	db	5,'_Left'
	db	6,'_Right'
	db	51,'@std@%basic_streambuf$c19std@%char_traits$c%%@sputn'
	db	4,'this'
	db	4,'_Ptr'
	db	6,'_Count'
	db	19,'@std@ios_base@width'
	db	4,'this'
	db	9,'_Newwidth'
	db	9,'_Oldwidth'
	db	48,'@std@%basic_ios$c19std@%char_traits$c%%@setstate'
	db	4,'this'
	db	6,'_State'
	db	8,'_Reraise'
	db	20,'@std@ios_base@getloc'
	db	6,'return'
	db	4,'this'
	db	20,'@std@locale@$bdtr$qv'
	db	4,'this'
	db	170,'@std@%use_facet$65std@%num_put$c48std@%ost'
	db	'reambuf_iterator$c19std@%char_traits$c%%%%$qrx10std@locale$rx65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%'
	db	4,'_Loc'
	db	3,'_Pf'
	db	3,'_Id'
	db	6,'_Psave'
	db	5,'_Lock'
	db	6,'_Pfmod'
	db	104,'@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bctr$qp44std@%basic_streambuf$c19std@%char_traits$c%%'
	db	4,'this'
	db	3,'_Sb'
	db	70,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	56,'@std@%ostreambuf_iterator$c19std@%char_traits$c%%@failed'
	db	4,'this'
	db	45,'@std@%basic_ios$c19std@%char_traits$c%%@widen'
	db	4,'this'
	db	5,'_Byte'
	db	10,'_Ctype_fac'
	db	47,'@std@%basic_ostream$c19std@%char_traits$c%%@put'
	db	4,'this'
	db	3,'_Ch'
	db	3,'_Ok'
	db	6,'_State'
	db	49,'@std@%basic_ostream$c19std@%char_traits$c%%@flush'
	db	4,'this'
	db	6,'_State'
	db	109,'@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bctr$qr42std@%basic_ostream$c19std@%char_traits$c%%'
	db	4,'this'
	db	5,'_Ostr'
	db	18,'@std@ios_base@good'
	db	4,'this'
	db	43,'@std@%basic_ios$c19std@%char_traits$c%%@tie'
	db	4,'this'
	db	49,'@std@%basic_ostream$c19std@%char_traits$c%%@_Osfx'
	db	4,'this'
	db	65,'@std@%basic_ostream$c19std@%char_traits$c%%@_Sentry_base@$bdtr$qv'
	db	4,'this'
	db	54,'@std@%basic_streambuf$c19std@%char_traits$c%%@_Pnavail'
	db	4,'this'
	db	52,'@std@%basic_streambuf$c19std@%char_traits$c%%@_Pninc'
	db	4,'this'
	db	32,'@std@%char_traits$c%@to_int_type'
	db	3,'_Ch'
	db	21,'@std@ios_base@rdstate'
	db	4,'this'
	db	45,'@std@%basic_ios$c19std@%char_traits$c%%@clear'
	db	4,'this'
	db	6,'_State'
	db	8,'_Reraise'
	db	33,'@std@locale@$bctr$qrx10std@locale'
	db	4,'this'
	db	6,'_Right'
	db	25,'@std@locale@facet@_Decref'
	db	4,'this'
	db	1,'r'
	db	21,'@std@_Lockit@$bctr$qi'
	db	4,'this'
	db	5,'_Type'
	db	21,'@std@_Lockit@$bdtr$qv'
	db	4,'this'
	db	36,'@std@locale@id@operator unsigned int'
	db	4,'this'
	db	5,'_Lock'
	db	74,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Getcat'
	db	4,'_Ppf'
	db	5,'_Ploc'
	db	37,'@std@bad_cast@$bctr$qrx12std@bad_cast'
	db	22,'@std@bad_cast@$bctr$qv'
	db	37,'@std@bad_cast@$basg$qrx12std@bad_cast'
	db	22,'@std@bad_cast@$bdtr$qv'
	db	37,'@std@bad_cast@$bctr$qrx12std@bad_cast'
	db	4,'this'
	db	1,' '
	db	23,'@std@exception@$bctr$qv'
	db	4,'this'
	db	25,'@std@locale@facet@_Incref'
	db	4,'this'
	db	66,'@std@%use_facet$13std@%ctype$c%%$qrx10std@locale$rx13std@%ctype$c%'
	db	4,'_Loc'
	db	3,'_Pf'
	db	3,'_Id'
	db	6,'_Psave'
	db	5,'_Lock'
	db	6,'_Pfmod'
	db	20,'@std@%ctype$c%@widen'
	db	4,'this'
	db	5,'_Byte'
	db	18,'@std@ios_base@fail'
	db	4,'this'
	db	53,'@std@%basic_streambuf$c19std@%char_traits$c%%@pubsync'
	db	4,'this'
	db	16,'@std@locale@name'
	db	6,'return'
	db	4,'this'
	db	70,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bdtr$qv'
	db	4,'this'
	db	92,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bctr$qrx12std@_Locinfoui'
	db	4,'this'
	db	5,'_Lobj'
	db	5,'_Refs'
	db	22,'@std@%ctype$c%@_Getcat'
	db	4,'_Ppf'
	db	5,'_Ploc'
	db	133,'@std@'
	db	'%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%'
	db	4,'this'
	db	6,'_Right'
	db	67,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Tidy'
	db	4,'this'
	db	6,'_Built'
	db	8,'_Newsize'
	db	4,'_Ptr'
	db	27,'@std@locale@facet@$bctr$qui'
	db	4,'this'
	db	9,'_Initrefs'
	db	72,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Init'
	db	4,'this'
	db	5,'_Lobj'
	db	40,'@std@%ctype$c%@$bctr$qrx12std@_Locinfoui'
	db	4,'this'
	db	5,'_Lobj'
	db	5,'_Refs'
	db	47,'@std@%allocator$c%@$bctr$qrx17std@%allocator$c%'
	db	4,'this'
	db	1,' '
	db	66,'@std@%_String_val$c17std@%allocator$c%%@$bctr$q17std@%allocator$c%'
	db	4,'this'
	db	3,'_Al'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign'
	db	4,'this'
	db	6,'_Right'
	db	5,'_Roff'
	db	6,'_Count'
	db	4,'_Num'
	db	25,'@std@%char_traits$c%@copy'
	db	7,'_First1'
	db	7,'_First2'
	db	6,'_Count'
	db	29,'@std@%allocator$c%@deallocate'
	db	4,'this'
	db	4,'_Ptr'
	db	1,' '
	db	66,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Eos'
	db	4,'this'
	db	8,'_Newsize'
	db	21,'@std@_Locinfo@_Getcvt'
	db	6,'return'
	db	4,'this'
	db	4,'_Vec'
	db	25,'@std@ctype_base@$bctr$qui'
	db	4,'this'
	db	5,'_Refs'
	db	20,'@std@%ctype$c%@_Init'
	db	4,'this'
	db	5,'_Lobj'
	db	66,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@size'
	db	4,'this'
	db	67,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@erase'
	db	4,'this'
	db	4,'_Off'
	db	6,'_Count'
	db	8,'_Newsize'
	db	67,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Grow'
	db	4,'this'
	db	8,'_Newsize'
	db	5,'_Trim'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr'
	db	4,'this'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Myptr'
	db	4,'this'
	db	27,'@std@%char_traits$c%@assign'
	db	5,'_Left'
	db	6,'_Right'
	db	23,'@std@_Locinfo@_Getctype'
	db	6,'return'
	db	4,'this'
	db	4,'_Vec'
	db	25,'@std@%char_traits$c%@move'
	db	7,'_First1'
	db	7,'_First2'
	db	6,'_Count'
	db	70,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@max_size'
	db	4,'this'
	db	4,'_Num'
	db	67,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Copy'
	db	4,'this'
	db	8,'_Newsize'
	db	7,'_Oldlen'
	db	4,'_Ptr'
	db	7,'_Newres'
	db	27,'@std@%allocator$c%@max_size'
	db	4,'this'
	db	6,'_Count'
	db	27,'@std@%allocator$c%@allocate'
	db	4,'this'
	db	6,'_Count'
	db	27,'@std@%_Allocate$c%$quipc$pc'
	db	6,'_Count'
	db	1,' '
	db	24,'@std@locale@id@$bctr$qui'
	db	4,'this'
	db	4,'_Val'
	db	22,'@std@bad_cast@$bdtr$qv'
	db	4,'this'
	db	8,'_STCON1_'
	db	24,'@std@ctype_base@$bdtr$qv'
	db	4,'this'
	db	23,'@std@%ctype$c%@$bdtr$qv'
	db	4,'this'
	db	25,'@std@%ctype$c%@do_tolower'
	db	4,'this'
	db	3,'_Ch'
	db	25,'@std@%ctype$c%@do_tolower'
	db	4,'this'
	db	6,'_First'
	db	5,'_Last'
	db	25,'@std@%ctype$c%@do_toupper'
	db	4,'this'
	db	3,'_Ch'
	db	25,'@std@%ctype$c%@do_toupper'
	db	4,'this'
	db	6,'_First'
	db	5,'_Last'
	db	23,'@std@%ctype$c%@do_widen'
	db	4,'this'
	db	5,'_Byte'
	db	23,'@std@%ctype$c%@do_widen'
	db	4,'this'
	db	6,'_First'
	db	5,'_Last'
	db	5,'_Dest'
	db	24,'@std@%ctype$c%@do_narrow'
	db	4,'this'
	db	3,'_Ch'
	db	1,' '
	db	24,'@std@%ctype$c%@do_narrow'
	db	4,'this'
	db	6,'_First'
	db	5,'_Last'
	db	1,' '
	db	5,'_Dest'
	db	26,'@std@locale@facet@$bdtr$qv'
	db	4,'this'
	db	75,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@$bdtr$qv'
	db	4,'this'
	db	73,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	17,'@std@%numpunct$c%'
	db	11,'string_type'
	db	9,'char_type'
	db	2,'id'
	db	13,'decimal_point'
	db	13,'thousands_sep'
	db	8,'grouping'
	db	9,'falsename'
	db	8,'truename'
	db	27,'@std@%numpunct$c%@$bctr$qui'
	db	7,'_Getcat'
	db	26,'@std@%numpunct$c%@$bdtr$qv'
	db	5,'_Init'
	db	16,'do_decimal_point'
	db	16,'do_thousands_sep'
	db	11,'do_grouping'
	db	12,'do_falsename'
	db	11,'do_truename'
	db	5,'_Tidy'
	db	9,'_Grouping'
	db	3,'_Dp'
	db	11,'_Kseparator'
	db	10,'_Falsename'
	db	9,'_Truename'
	db	45,'@std@%numpunct$c%@$basg$qrx16std@%numpunct$c%'
	db	10,'_Fillcount'
	db	4,'_Str'
	db	10,'_Punct_fac'
	db	73,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	4,'_Fmt'
	db	4,'_Buf'
	db	73,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	4,'_Fmt'
	db	4,'_Buf'
	db	73,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	4,'_Fmt'
	db	4,'_Buf'
	db	73,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	4,'_Fmt'
	db	4,'_Buf'
	db	73,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	11,'_Afterpoint'
	db	12,'_Beforepoint'
	db	13,'_Significance'
	db	10,'_Precision'
	db	4,'_Fmt'
	db	4,'_Buf'
	db	7,'_Signed'
	db	73,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	11,'_Afterpoint'
	db	12,'_Beforepoint'
	db	13,'_Significance'
	db	10,'_Precision'
	db	4,'_Fmt'
	db	4,'_Buf'
	db	7,'_Signed'
	db	73,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@do_put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Val'
	db	4,'_Off'
	db	4,'_Fmt'
	db	4,'_Buf'
	db	20,'@std@%ctype$c%@_Tidy'
	db	4,'this'
	db	33,'@std@_Tolower$qipx13std@_Ctypevec'
	db	5,'_Byte'
	db	3,'_Ct'
	db	33,'@std@_Toupper$qipx13std@_Ctypevec'
	db	5,'_Byte'
	db	3,'_Ct'
	db	72,'@std@%use_facet$16std@%numpunct$c%%$qrx10std@locale$rx16std@%numpunct$c%'
	db	4,'_Loc'
	db	3,'_Pf'
	db	3,'_Id'
	db	6,'_Psave'
	db	5,'_Lock'
	db	6,'_Pfmod'
	db	70,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qv'
	db	4,'this'
	db	26,'@std@%numpunct$c%@truename'
	db	6,'return'
	db	4,'this'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign'
	db	4,'this'
	db	6,'_Right'
	db	27,'@std@%numpunct$c%@falsename'
	db	6,'return'
	db	4,'this'
	db	71,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Rep'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	3,'_Ch'
	db	6,'_Count'
	db	67,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@c_str'
	db	4,'this'
	db	71,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Put'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	4,'_Ptr'
	db	6,'_Count'
	db	72,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ifmt'
	db	4,'this'
	db	4,'_Fmt'
	db	5,'_Spec'
	db	6,'_Flags'
	db	10,'_Basefield'
	db	4,'_Ptr'
	db	72,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Iput'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Buf'
	db	6,'_Count'
	db	12,'_Adjustfield'
	db	10,'_Fillcount'
	db	7,'_Prefix'
	db	9,'_Grouping'
	db	10,'_Punct_fac'
	db	4,'_Off'
	db	3,'_Pg'
	db	23,'@std@ios_base@precision'
	db	4,'this'
	db	72,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Ffmt'
	db	4,'this'
	db	4,'_Fmt'
	db	5,'_Spec'
	db	6,'_Flags'
	db	4,'_Ffl'
	db	4,'_Ptr'
	db	72,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Fput'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	8,'_Iosbase'
	db	5,'_Fill'
	db	4,'_Buf'
	db	12,'_Beforepoint'
	db	11,'_Afterpoint'
	db	9,'_Trailing'
	db	6,'_Count'
	db	12,'_Adjustfield'
	db	10,'_Fillcount'
	db	9,'_Pointptr'
	db	5,'_Eptr'
	db	7,'_Enders'
	db	7,'_Prefix'
	db	3,'_E0'
	db	12,'_Groupstring'
	db	11,'_Kseparator'
	db	9,'_Grouping'
	db	10,'_Punct_fac'
	db	4,'_Off'
	db	3,'_Pg'
	db	11,'_Fracoffset'
	db	10,'_Expoffset'
	db	25,'@std@%numpunct$c%@_Getcat'
	db	4,'_Ppf'
	db	5,'_Ploc'
	db	27,'@std@%allocator$c%@$bctr$qv'
	db	4,'this'
	db	75,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@get_allocator'
	db	6,'return'
	db	4,'this'
	db	37,'@std@$bneq$qrx17std@%allocator$c%t1$o'
	db	1,' '
	db	1,' '
	db	133,'@std@'
	db	'%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$basg$qrx60std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%'
	db	4,'this'
	db	6,'_Right'
	db	58,'@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$binc$qv'
	db	4,'this'
	db	58,'@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$bind$qv'
	db	4,'this'
	db	58,'@std@%ostreambuf_iterator$c19std@%char_traits$c%%@$basg$qc'
	db	4,'this'
	db	6,'_Right'
	db	26,'@std@%numpunct$c%@grouping'
	db	6,'return'
	db	4,'this'
	db	72,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putc'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	4,'_Ptr'
	db	6,'_Count'
	db	31,'@std@%numpunct$c%@thousands_sep'
	db	4,'this'
	db	78,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@_Putgrouped'
	db	6,'return'
	db	4,'this'
	db	5,'_Dest'
	db	4,'_Ptr'
	db	6,'_Count'
	db	11,'_Kseparator'
	db	10,'_Groupsize'
	db	5,'_Pend'
	db	41,'@std@%_Maklocchr$c%$qcpcrx11std@_Cvtvec$c'
	db	5,'_Byte'
	db	1,' '
	db	1,' '
	db	19,'@std@memchr$qpxviui'
	db	4,'_Str'
	db	3,'_Ch'
	db	5,'_Size'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append'
	db	4,'this'
	db	4,'_Ptr'
	db	6,'_Count'
	db	4,'_Num'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append'
	db	4,'this'
	db	6,'_Count'
	db	3,'_Ch'
	db	4,'_Num'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@insert'
	db	4,'this'
	db	4,'_Off'
	db	6,'_Count'
	db	3,'_Ch'
	db	4,'_Num'
	db	72,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bsubs$qui'
	db	4,'this'
	db	4,'_Off'
	db	31,'@std@%numpunct$c%@decimal_point'
	db	4,'this'
	db	43,'@std@%numpunct$c%@$bctr$qrx12std@_Locinfoui'
	db	4,'this'
	db	5,'_Lobj'
	db	5,'_Refs'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign'
	db	4,'this'
	db	6,'_Right'
	db	18,'@std@memchr$qpviui'
	db	4,'_Str'
	db	3,'_Ch'
	db	5,'_Size'
	db	5,'_Ustr'
	db	4,'_Uch'
	db	69,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Inside'
	db	4,'this'
	db	4,'_Ptr'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@append'
	db	4,'this'
	db	6,'_Right'
	db	5,'_Roff'
	db	6,'_Count'
	db	4,'_Num'
	db	71,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@_Chassign'
	db	4,'this'
	db	4,'_Off'
	db	6,'_Count'
	db	3,'_Ch'
	db	23,'@std@%numpunct$c%@_Init'
	db	4,'this'
	db	5,'_Lobj'
	db	4,'_Ptr'
	db	4,'lock'
	db	27,'@std@%char_traits$c%@assign'
	db	6,'_First'
	db	6,'_Count'
	db	3,'_Ch'
	db	23,'@std@_Locinfo@_Getlconv'
	db	4,'this'
	db	44,'@std@%_Maklocstr$c%$qpxcpcrx11std@_Cvtvec$pc'
	db	4,'_Ptr'
	db	1,' '
	db	1,' '
	db	8,'_Ptrdest'
	db	6,'_Count'
	db	8,'_Ptrnext'
	db	23,'@std@_Locinfo@_Getfalse'
	db	4,'this'
	db	22,'@std@_Locinfo@_Gettrue'
	db	4,'this'
	db	23,'@std@%numpunct$c%@_Tidy'
	db	4,'this'
	db	26,'@std@%numpunct$c%@$bdtr$qv'
	db	4,'this'
	db	34,'@std@%numpunct$c%@do_decimal_point'
	db	4,'this'
	db	34,'@std@%numpunct$c%@do_thousands_sep'
	db	4,'this'
	db	29,'@std@%numpunct$c%@do_grouping'
	db	6,'return'
	db	4,'this'
	db	30,'@std@%numpunct$c%@do_falsename'
	db	6,'return'
	db	4,'this'
	db	29,'@std@%numpunct$c%@do_truename'
	db	6,'return'
	db	4,'this'
	db	72,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@$bctr$qpxc'
	db	4,'this'
	db	4,'_Ptr'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign'
	db	4,'this'
	db	4,'_Ptr'
	db	68,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@assign'
	db	4,'this'
	db	4,'_Ptr'
	db	6,'_Count'
	db	8,'_STCON3_'
	db	66,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@npos'
	db	25,'@std@%_Locbase$i%@collate'
	db	23,'@std@%_Locbase$i%@ctype'
	db	26,'@std@%_Locbase$i%@monetary'
	db	25,'@std@%_Locbase$i%@numeric'
	db	22,'@std@%_Locbase$i%@time'
	db	26,'@std@%_Locbase$i%@messages'
	db	21,'@std@%_Locbase$i%@all'
	db	22,'@std@%_Locbase$i%@none'
	db	21,'@std@%_Iosb$i%@skipws'
	db	22,'@std@%_Iosb$i%@unitbuf'
	db	24,'@std@%_Iosb$i%@uppercase'
	db	23,'@std@%_Iosb$i%@showbase'
	db	24,'@std@%_Iosb$i%@showpoint'
	db	22,'@std@%_Iosb$i%@showpos'
	db	19,'@std@%_Iosb$i%@left'
	db	20,'@std@%_Iosb$i%@right'
	db	23,'@std@%_Iosb$i%@internal'
	db	18,'@std@%_Iosb$i%@dec'
	db	18,'@std@%_Iosb$i%@oct'
	db	18,'@std@%_Iosb$i%@hex'
	db	25,'@std@%_Iosb$i%@scientific'
	db	20,'@std@%_Iosb$i%@fixed'
	db	23,'@std@%_Iosb$i%@hexfloat'
	db	24,'@std@%_Iosb$i%@boolalpha'
	db	21,'@std@%_Iosb$i%@_Stdio'
	db	26,'@std@%_Iosb$i%@adjustfield'
	db	24,'@std@%_Iosb$i%@basefield'
	db	25,'@std@%_Iosb$i%@floatfield'
	db	22,'@std@%_Iosb$i%@goodbit'
	db	21,'@std@%_Iosb$i%@eofbit'
	db	22,'@std@%_Iosb$i%@failbit'
	db	21,'@std@%_Iosb$i%@badbit'
	db	24,'@std@%_Iosb$i%@_Hardfail'
	db	17,'@std@%_Iosb$i%@in'
	db	18,'@std@%_Iosb$i%@out'
	db	18,'@std@%_Iosb$i%@ate'
	db	18,'@std@%_Iosb$i%@app'
	db	20,'@std@%_Iosb$i%@trunc'
	db	24,'@std@%_Iosb$i%@_Nocreate'
	db	25,'@std@%_Iosb$i%@_Noreplace'
	db	21,'@std@%_Iosb$i%@binary'
	db	18,'@std@%_Iosb$i%@beg'
	db	18,'@std@%_Iosb$i%@cur'
	db	18,'@std@%_Iosb$i%@end'
	db	66,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%@npos'
	db	91,'@std@%_Facetptr$65std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%%@_Psave'
	db	69,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%@id'
	db	39,'@std@%_Facetptr$13std@%ctype$c%%@_Psave'
	db	42,'@std@%_Facetptr$16std@%numpunct$c%%@_Psave'
	db	20,'@std@%numpunct$c%@id'
	db	4,'NULO'
	db	3,'MAX'
	db	5,'NodoM'
	db	8,'SMemoria'
	db	15,'TDAListaMemoria'
	db	7,'ssize_t'
	db	3,'std'
	db	34,'@std@tr1@hexfloat$qr12std@ios_base'
	db	9,'mbstate_t'
	db	11,'@std@size_t'
	db	12,'@std@rsize_t'
	db	12,'@std@errno_t'
	db	14,'@std@ptrdiff_t'
	db	11,'@std@wint_t'
	db	13,'@std@wctype_t'
	db	16,'@std@max_align_t'
	db	7,'_Int32t'
	db	8,'_Uint32t'
	db	9,'_Ptrdifft'
	db	6,'_Sizet'
	db	10,'@std@_Bool'
	db	12,'@std@va_list'
	db	9,'_Longlong'
	db	10,'_ULonglong'
	db	7,'_Wchart'
	db	6,'_Wintt'
	db	8,'_Va_list'
	db	13,'@std@_Sysch_t'
	db	12,'@std@_Lockit'
	db	11,'@std@_Mutex'
	db	11,'@std@fpos_t'
	db	10,'@std@off_t'
	db	10,'@std@lconv'
	db	19,'@std@_Uninitialized'
	db	14,'@std@exception'
	db	12,'@std@_Prhand'
	db	6,'_TCHAR'
	db	7,'_TSCHAR'
	db	7,'_TUCHAR'
	db	7,'_TXCHAR'
	db	5,'_TINT'
	db	9,'mbstate_t'
	db	9,'_Mbstatet'
	db	14,'@std@streamoff'
	db	15,'@std@streamsize'
	db	13,'@std@%fpos$i%'
	db	14,'@std@streampos'
	db	15,'@std@wstreampos'
	db	20,'@std@%char_traits$c%'
	db	13,'@std@ios_base'
	db	39,'@std@%basic_ios$c19std@%char_traits$c%%'
	db	8,'@std@ios'
	db	45,'@std@%basic_streambuf$c19std@%char_traits$c%%'
	db	14,'@std@streambuf'
	db	43,'@std@%basic_ostream$c19std@%char_traits$c%%'
	db	12,'@std@ostream'
	db	18,'@std@%allocator$c%'
	db	12,'@std@rel_ops'
	db	8,'@std@tr1'
	db	20,'@std@_Container_base'
	db	23,'@std@input_iterator_tag'
	db	25,'@std@forward_iterator_tag'
	db	31,'@std@bidirectional_iterator_tag'
	db	31,'@std@random_access_iterator_tag'
	db	17,'@std@_String_base'
	db	61,'@std@%basic_string$c19std@%char_traits$c%17std@%allocator$c%%'
	db	11,'@std@string'
	db	39,'@std@%_String_val$c17std@%allocator$c%%'
	db	24,'@std@%_Allocator_base$c%'
	db	71,'@std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	65,'@std@%_String_iterator$c19std@%char_traits$c%17std@%allocator$c%%'
	db	90,'@std@%reverse_iterator$64std@%_String_iterator$c19std@%char_traits$c%17std@%allocator$c%%%'
	db	96,'@std@%reverse_iterator$70std@%_String_const_iterator$c19std@%char_traits$c%17std@%allocator$c%%%'
	db	22,'@std@%_Ranit$cipxcrxc%'
	db	56,'@std@%iterator$30std@random_access_iterator_tagcipxcrxc%'
	db	18,'@std@runtime_error'
	db	13,'@std@bad_cast'
	db	8,'Bad_cast'
	db	11,'@std@time_t'
	db	12,'@std@clock_t'
	db	8,'_Collvec'
	db	8,'_Collvec'
	db	9,'_Ctypevec'
	db	9,'_Ctypevec'
	db	7,'_Cvtvec'
	db	7,'_Cvtvec'
	db	13,'@std@_Timevec'
	db	13,'@std@_Locinfo'
	db	11,'@std@locale'
	db	17,'@std@%_Locbase$i%'
	db	15,'@std@ctype_base'
	db	14,'@std@%ctype$c%'
	db	14,'@std@%_Iosb$i%'
	db	17,'@std@%numpunct$c%'
	db	9,'@std@_Npc'
	db	49,'@std@%ostreambuf_iterator$c19std@%char_traits$c%%'
	db	66,'@std@%num_put$c48std@%ostreambuf_iterator$c19std@%char_traits$c%%%'
	db	11,'_setsystime'
	db	11,'_getsystime'
	db	5,'tzset'
	db	8,'wctime_s'
	db	10,'wasctime_s'
	db	11,'localtime_s'
	db	8,'gmtime_s'
	db	7,'ctime_s'
	db	9,'asctime_s'
	db	8,'_strtime'
	db	8,'_strdate'
	db	6,'_tzset'
	db	5,'stime'
	db	7,'_wtzset'
	db	8,'wcsftime'
	db	9,'_wstrtime'
	db	9,'_wstrdate'
	db	7,'_wctime'
	db	9,'_wasctime'
	db	9,'_lstrftim'
	db	8,'strptime'
	db	8,'strftime'
	db	5,'clock'
	db	6,'mktime'
	db	4,'time'
	db	9,'localtime'
	db	6,'gmtime'
	db	8,'difftime'
	db	5,'ctime'
	db	7,'asctime'
	db	10,'_ltowlower'
	db	10,'_ltowupper'
	db	16,'@std@towupper$qb'
	db	16,'@std@towlower$qb'
	db	9,'_ltoupper'
	db	15,'@std@toupper$qi'
	db	9,'_ltolower'
	db	15,'@std@tolower$qi'
	db	8,'iswascii'
	db	9,'iswxdigit'
	db	8,'iswupper'
	db	8,'iswspace'
	db	8,'iswpunct'
	db	8,'iswprint'
	db	8,'iswlower'
	db	8,'iswgraph'
	db	8,'iswdigit'
	db	8,'iswcntrl'
	db	8,'iswblank'
	db	8,'iswalpha'
	db	8,'iswalnum'
	db	7,'isascii'
	db	8,'isxdigit'
	db	7,'isupper'
	db	7,'isspace'
	db	7,'ispunct'
	db	7,'isprint'
	db	7,'islower'
	db	7,'isgraph'
	db	7,'isdigit'
	db	7,'iscntrl'
	db	7,'isblank'
	db	7,'isalpha'
	db	7,'isalnum'
	db	5,'fwide'
	db	8,'wcstok_s'
	db	9,'wcsnlen_s'
	db	9,'wcsncpy_s'
	db	9,'wcsncat_s'
	db	8,'wcscpy_s'
	db	8,'wcscat_s'
	db	8,'strtok_s'
	db	9,'strnlen_s'
	db	9,'strncpy_s'
	db	9,'strncat_s'
	db	13,'strerrorlen_s'
	db	10,'strerror_s'
	db	8,'strcpy_s'
	db	8,'strcat_s'
	db	11,'_wcserror_s'
	db	7,'wcsxfrm'
	db	6,'wcstok'
	db	6,'wcsstr'
	db	6,'wcsspn'
	db	7,'wcsrchr'
	db	7,'wcspcpy'
	db	7,'wcspbrk'
	db	7,'wcsncpy'
	db	7,'wcsncmp'
	db	7,'wcsncat'
	db	6,'wcslen'
	db	7,'wcscspn'
	db	6,'wcscpy'
	db	7,'wcscoll'
	db	6,'wcscmp'
	db	6,'wcschr'
	db	6,'wcscat'
	db	7,'strcoll'
	db	7,'strxfrm'
	db	6,'strtok'
	db	18,'@std@strstr$qpxct1'
	db	18,'@std@strstr$qpcpxc'
	db	6,'strspn'
	db	19,'@std@strpbrk$qpxct1'
	db	19,'@std@strpbrk$qpcpxc'
	db	7,'strcspn'
	db	18,'@std@strrchr$qpxci'
	db	17,'@std@strrchr$qpci'
	db	7,'strncpy'
	db	7,'strncmp'
	db	7,'strncat'
	db	6,'strlen'
	db	6,'strcpy'
	db	6,'strcmp'
	db	17,'@std@strchr$qpxci'
	db	16,'@std@strchr$qpci'
	db	6,'strcat'
	db	10,'__wcserror'
	db	9,'_wcserror'
	db	6,'strset'
	db	6,'stpcpy'
	db	7,'strnset'
	db	7,'_wcsupr'
	db	7,'_wcsset'
	db	7,'_wcsrev'
	db	8,'_wcspcpy'
	db	8,'_wcsnset'
	db	10,'_wcsnicoll'
	db	9,'_wcsnicmp'
	db	9,'_wcsncoll'
	db	7,'_wcslwr'
	db	9,'_wcsicoll'
	db	8,'_wcsicmp'
	db	7,'_wcsdup'
	db	10,'_strnicoll'
	db	9,'_strncoll'
	db	9,'_stricoll'
	db	9,'_lwcsxfrm'
	db	8,'_lwcsupr'
	db	11,'_lwcsnicoll'
	db	10,'_lwcsncoll'
	db	8,'_lwcslwr'
	db	10,'_lwcsicoll'
	db	9,'_lwcscoll'
	db	9,'_lstrxfrm'
	db	11,'_lstrnicoll'
	db	10,'_lstrncoll'
	db	10,'_lstricoll'
	db	9,'_lstrcoll'
	db	6,'strupr'
	db	6,'strrev'
	db	8,'strnicmp'
	db	6,'strlwr'
	db	7,'stricmp'
	db	6,'strdup'
	db	7,'_stpcpy'
	db	8,'_lstrupr'
	db	8,'_lstrlwr'
	db	10,'wmemmove_s'
	db	9,'wmemcpy_s'
	db	9,'memmove_s'
	db	8,'memcpy_s'
	db	6,'memset'
	db	6,'memcpy'
	db	6,'memcmp'
	db	19,'@std@memchr$qpxviui'
	db	18,'@std@memchr$qpviui'
	db	7,'memmove'
	db	7,'memicmp'
	db	7,'memccpy'
	db	7,'wmemset'
	db	7,'wmemcpy'
	db	7,'wmemcmp'
	db	7,'wmemchr'
	db	8,'wmemmove'
	db	8,'_wmemset'
	db	8,'_wmemcpy'
	db	21,'@std@_wmemchr$qpxbiui'
	db	20,'@std@_wmemchr$qpbiui'
	db	12,'_lwsetlocale'
	db	11,'_wsetlocale'
	db	12,'_llocaleconv'
	db	10,'localeconv'
	db	11,'_lsetlocale'
	db	9,'setlocale'
	db	6,'unlink'
	db	7,'tempnam'
	db	5,'sopen'
	db	5,'rmtmp'
	db	4,'putw'
	db	4,'getw'
	db	6,'ftello'
	db	6,'fseeko'
	db	8,'fputchar'
	db	8,'flushall'
	db	6,'fileno'
	db	8,'fgetchar'
	db	6,'fdopen'
	db	9,'fcloseall'
	db	11,'_vsnwprintf'
	db	10,'_vsnprintf'
	db	10,'_snwprintf'
	db	9,'_snprintf'
	db	8,'wscanf_s'
	db	9,'wprintf_s'
	db	9,'vwscanf_s'
	db	10,'vwprintf_s'
	db	10,'vswscanf_s'
	db	11,'vswprintf_s'
	db	9,'vsscanf_s'
	db	10,'vsprintf_s'
	db	12,'vsnwprintf_s'
	db	11,'vsnprintf_s'
	db	8,'vscanf_s'
	db	9,'vprintf_s'
	db	10,'vfwscanf_s'
	db	11,'vfwprintf_s'
	db	9,'vfscanf_s'
	db	10,'vfprintf_s'
	db	8,'tmpnam_s'
	db	9,'tmpfile_s'
	db	9,'swscanf_s'
	db	10,'swprintf_s'
	db	8,'sscanf_s'
	db	9,'sprintf_s'
	db	11,'snwprintf_s'
	db	10,'snprintf_s'
	db	7,'scanf_s'
	db	8,'printf_s'
	db	6,'gets_s'
	db	9,'fwscanf_s'
	db	10,'fwprintf_s'
	db	8,'fscanf_s'
	db	9,'freopen_s'
	db	9,'fprintf_s'
	db	7,'fopen_s'
	db	10,'_wtmpnam_s'
	db	11,'_wfreopen_s'
	db	9,'_wfopen_s'
	db	8,'_getws_s'
	db	6,'wscanf'
	db	7,'wprintf'
	db	7,'vwscanf'
	db	8,'vwprintf'
	db	8,'vswscanf'
	db	9,'vswprintf'
	db	7,'vsscanf'
	db	8,'vsprintf'
	db	10,'vsnwprintf'
	db	9,'vsnprintf'
	db	6,'vscanf'
	db	7,'vprintf'
	db	8,'vfwscanf'
	db	9,'vfwprintf'
	db	7,'vfscanf'
	db	8,'vfprintf'
	db	7,'ungetwc'
	db	6,'ungetc'
	db	6,'tmpnam'
	db	7,'tmpfile'
	db	7,'swscanf'
	db	23,'@std@swprintf$qpbuipxbe'
	db	8,'swprintf'
	db	8,'strerror'
	db	6,'sscanf'
	db	7,'sprintf'
	db	9,'snwprintf'
	db	8,'snprintf'
	db	7,'setvbuf'
	db	6,'setbuf'
	db	5,'scanf'
	db	6,'rewind'
	db	6,'rename'
	db	6,'remove'
	db	8,'putwchar'
	db	5,'putwc'
	db	4,'puts'
	db	7,'putchar'
	db	4,'putc'
	db	6,'printf'
	db	6,'perror'
	db	8,'getwchar'
	db	5,'getwc'
	db	4,'gets'
	db	7,'getchar'
	db	4,'getc'
	db	7,'fwscanf'
	db	6,'fwrite'
	db	8,'fwprintf'
	db	9,'_ftelli64'
	db	5,'ftell'
	db	7,'fsetpos'
	db	9,'_fseeki64'
	db	5,'fseek'
	db	6,'fscanf'
	db	7,'freopen'
	db	5,'fread'
	db	6,'fputws'
	db	6,'fputwc'
	db	5,'fputs'
	db	5,'fputc'
	db	7,'fprintf'
	db	5,'fopen'
	db	6,'fgetws'
	db	6,'fgetwc'
	db	5,'fgets'
	db	7,'fgetpos'
	db	5,'fgetc'
	db	6,'fflush'
	db	6,'ferror'
	db	4,'feof'
	db	6,'fclose'
	db	8,'clearerr'
	db	8,'_wunlink'
	db	8,'_wtmpnam'
	db	9,'_wtempnam'
	db	7,'_wsopen'
	db	8,'_wrename'
	db	8,'_wremove'
	db	7,'_wpopen'
	db	8,'_wperror'
	db	8,'_wfsopen'
	db	9,'_wfreopen'
	db	7,'_wfopen'
	db	8,'_wfdopen'
	db	7,'_unlink'
	db	8,'_tempnam'
	db	9,'_strerror'
	db	6,'_sopen'
	db	6,'_rmtmp'
	db	6,'_putws'
	db	5,'_putw'
	db	6,'_popen'
	db	7,'_pclose'
	db	6,'_getws'
	db	5,'_getw'
	db	7,'_fsopen'
	db	10,'_fputwchar'
	db	7,'_fputwc'
	db	9,'_fputchar'
	db	6,'_fputc'
	db	9,'_flushall'
	db	7,'_fileno'
	db	10,'_fgetwchar'
	db	7,'_fgetwc'
	db	9,'_fgetchar'
	db	6,'_fgetc'
	db	7,'_fdopen'
	db	10,'_fcloseall'
	db	11,'__getStream'
	db	10,'__threadid'
	db	14,'@std@ptrdiff_t'
	db	11,'@std@size_t'
	db	11,'@std@wint_t'
	db	13,'@std@wctype_t'
	db	12,'@std@errno_t'
	db	12,'@std@rsize_t'
	db	12,'@std@va_list'
	db	9,'@std@FILE'
	db	18,'@std@_floatconvert'
	db	8,'_streams'
	db	11,'@std@fpos_t'
	db	10,'@std@off_t'
	db	10,'@std@lconv'
	db	6,'_TCHAR'
	db	7,'_TSCHAR'
	db	7,'_TUCHAR'
	db	7,'_TXCHAR'
	db	5,'_TINT'
	db	8,'@std@ios'
	db	14,'@std@streambuf'
	db	12,'@std@istream'
	db	12,'@std@ostream'
	db	13,'@std@iostream'
	db	12,'@std@filebuf'
	db	13,'@std@ifstream'
	db	13,'@std@ofstream'
	db	12,'@std@fstream'
	db	13,'@std@stdiobuf'
	db	16,'@std@stdiostream'
	db	9,'_chartype'
	db	6,'_lower'
	db	6,'_upper'
	db	11,'@std@time_t'
	db	12,'@std@clock_t'
	db	7,'@std@tm'
	db	9,'_daylight'
	db	9,'_timezone'
	db	7,'_tzname'
	db	8,'_wtzname'
$$BNAMES	ends
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iostream" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocinfo.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\time.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ctime" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\clocale" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\mbctype.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\ctype.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cctype" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocinfo" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xdebug" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\typeinfo.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\typeinfo" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xremoveref" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\tchar.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\wchar.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cwchar" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\iosfwd" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\utility" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xutility" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\new" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xmemory" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstring" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\stddef.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cstddef" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xstddef" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\exception" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\stdexcept" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\mem.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\_loc.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\locale.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\_str.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\string.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cstring" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocale" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xiosbase" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\streambuf" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\errno.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\search.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\stdlib.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cstdlib" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\_nfile.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\stdio.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cstdio" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\math.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\cmath" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\_lim.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\limits.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\stdarg.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\yvals.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\climits" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\xlocnum" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ios" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\ostream" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\istream" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\dinkumware\fstream" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\_null.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\_defs.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\_stddef.h" 19561 40672
	?debug	D "c:\program files (x86)\embarcadero\studio\19.0\include\windows\crtl\conio.h" 19561 40672
	?debug	D "SMemoria.h" 19789 37830
	?debug	D "TDAListaMemoria.h" 19788 48876
	?debug	D "TDAListaMemoria.cpp" 19741 43171
	end

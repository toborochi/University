//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAConjuntoEntero.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAConjuntoEntero::crear()
{
    elem = 0;
}

bool TDAConjuntoEntero::vacio()
{
    return(elem==0);
}

int TDAConjuntoEntero::cardinal()
{
	if(!vacio())
	{
		return int(log10(double(elem))
		+1);
    }

}

bool TDAConjuntoEntero::pertenece(int e)
{
    int aux = elem;
	while(aux>0)
	{
		if(aux%10==e)
		{
			return true;
		}
		aux/=10;
	}
    return false;
}

void TDAConjuntoEntero::insertar(int e)
{
	if(!pertenece(e))
	{
        elem = elem*10 + e;
	}else
	{
        throw("Elemento Existente...");
    }

}
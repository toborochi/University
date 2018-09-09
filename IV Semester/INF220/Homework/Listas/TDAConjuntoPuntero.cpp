//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAConjuntoPuntero.h"
// Define el NULL
#include <stddef.h>
#include <iostream>
//---------------------------------------------------------------------------
#pragma package(smart_init)

void TDAConjuntoPuntero::crear()
{
	PtrConj = NULL;
    cant = 0;
}

bool TDAConjuntoPuntero::vacio()
{
    return (cant==0);
}

int TDAConjuntoPuntero::cardinal()
{
    return cant;
}

int TDAConjuntoPuntero::ordinal(int e)
{
	int resp = 0;
	Nodo *pc = PtrConj;
	while(pc!=NULL)
	{
		resp++;
		if(pc->dato==e)
		{
			return resp;
            pc = NULL;
		}else
		{
            pc=pc->sig;
        }

    }
}

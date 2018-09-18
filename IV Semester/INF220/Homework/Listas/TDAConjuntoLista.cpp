//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAConjuntoLista.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

void TDAConjuntoLista::crear()
{
    L.crear();
}

bool TDAConjuntoLista::vacio()
{
	 return (L.vacia());
}

int TDAConjuntoLista::cardinal()
{
    return (L.longitud());
}

void TDAConjuntoLista::inserta(int e)
{
    L.insertar(L.primero(),e);
}

void TDAConjuntoLista::suprime(int e)
{
	NodoP *x = L.primero();
	bool f = false;
	while(x!=NULL)
	{
		if(x->Dato==e)
		{
			L.suprime(x);
            break;
        }
	   x=x->Sig;
	}
}

void TDAConjuntoLista::imprimir()
{
    L.mostrar();
}

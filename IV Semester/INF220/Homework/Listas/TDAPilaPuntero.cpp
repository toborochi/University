//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAPilaPuntero.h"
// Define el NULL
#include <stddef.h>
#include <iostream>
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAPilaPuntero::crear()
{
    Tope = NULL;
}

bool TDAPilaPuntero::vacia()
{
    return (Tope==NULL);
}

int TDAPilaPuntero::cima()
{
   if(vacia())
   {
       throw("Error...");
   }else
   {
       return Tope->elemento;
   }
}

void TDAPilaPuntero::meter(int elemento)
{
	Nodo *aux = new Nodo;
	if(aux!=NULL)
	{
		aux->elemento = elemento;
		aux->sig = Tope;
        Tope = aux;
	}else
	{
        throw("Error...");
    }

}

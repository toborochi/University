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


int TDAPilaPuntero::sacar()
{
	if(vacia())
	{
		throw("Error...");
	}else
	{
		Nodo *aux = Tope;
		Tope = Tope->sig;
		int x = aux->elemento;
		delete[] aux;
		return x;
    }
}

void TDAPilaPuntero::imprimir(TDAPilaPuntero &Pila)
{
	TDAPilaPuntero aux;
    int i = 0;

	std::cout << "*" << std::endl;
	while(!Pila.vacia())
	{
		int x = Pila.sacar();
		std::cout << x << std::endl;
		aux.meter(x);
        ++i;
	}
    std::cout << "*" << std::endl;
	while(i>0)
	{
        Pila.meter(aux.sacar());
		i--;
    }

}

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

bool TDAConjuntoPuntero::pertenece(int e)
{
    return (ordinal(e)>=1);
}

void TDAConjuntoPuntero::inserta(int e)
{
	if(!pertenece(e))
	{
	   Nodo *dir = new Nodo;
	   if(dir!=NULL)
	   {
		   dir->dato = e;
		   dir->sig = PtrConj;
		   PtrConj = dir;
           cant++;
	   }else
	   {
           throw("No existe espacio en Memoria...");
       }
	}else
	{
        throw("Elemento ya existente...");
    }
}

void TDAConjuntoPuntero::suprime(int e)
{
	Nodo *pc = PtrConj;
	Nodo *x = NULL;

	while(pc!=NULL)
	{

		if(pc->dato==e)
		{
			if(pc==PtrConj)
			{
				pc->dato = NULL;
				PtrConj = pc->sig;
                delete[] pc;

			}else
			{
			    pc->dato = NULL;
				x->sig = pc->sig;
                delete[] pc;
			}
			return;
		}else
		{
				pc=pc->sig;
		      	x = pc;
		}

    }
}

void TDAConjuntoPuntero::imprime()
{
	Nodo *pc = PtrConj;
	int t = 0;
	std::cout<<"[";
	while(t<cant)
	{
		std::cout<< pc->dato << ((pc->sig!=NULL)?", ":"") ;
        pc=pc->sig;
        t++;
	}
	std::cout<<"]"<<std::endl;
}

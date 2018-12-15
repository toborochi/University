//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAListaPuntero.h"
// Define el NULL
#include <stddef.h>
#include <iostream>
//---------------------------------------------------------------------------
#pragma package(smart_init)

void TDAListaPuntero::crear()
{
	Longitud = 0;
    PtrElementos = NULL;
}

bool TDAListaPuntero::vacia()
{
    return (PtrElementos == NULL);
}

int TDAListaPuntero::longitud()
{
    return Longitud;
}

NodoP *TDAListaPuntero::primero()
{
    return PtrElementos;
}


NodoP *TDAListaPuntero::fin()
{
    NodoP *PtrFin;
	if(vacia())
	{

	}else
	{
		NodoP *x = PtrElementos;
		while(x!=NULL)
		{
		   PtrFin = x;
		   x = x->Sig;
		}
        return PtrFin;
    }
}

NodoP * TDAListaPuntero::anterior(NodoP *direccion)
{
	if(vacia())
	{
        throw("Lista vacia...");
	}else
	{
		if(direccion==primero())
		{
            throw("Primera Posicion...");
		}else
		{
			NodoP *x = PtrElementos;
			NodoP *ant = NULL;
			while(x!=NULL)
			{
				if(x==direccion)
				{
                    return ant;
				}
				ant = x;
                x = x ->Sig;
            }
        }
    }
}

void TDAListaPuntero::insertar(NodoP *posicion,int elemento)
{
	NodoP *x = new NodoP;
	if(x!=NULL)
	{
	   x->Dato = elemento;
	   x->Sig  = NULL;
	   if(vacia())
	   {
		   PtrElementos = x;
           Longitud = 1;
	   }else
	   {
		   Longitud++;
		   if(posicion==primero())
		   {
				x->Sig = posicion;
				PtrElementos = x;
		   }else
		   {
			  NodoP *ant = anterior(posicion);
			  ant->Sig = x;
              x->Sig = posicion;
           }
       }
    }
}

int TDAListaPuntero::recupera(NodoP *direccion)
{
	if(vacia())
	{
        throw("Lista Vacia..");
	}else
	{
        return direccion->Dato;
    }
}

NodoP * TDAListaPuntero::siguiente(NodoP *direccion)
{
	if(vacia())
	{

	}else
	{
		if(direccion==fin())
		{

		}else
		{
            return direccion;
        }
    }
}

void TDAListaPuntero::modifica(NodoP* direccion,int elemento)
{
	if(vacia())
	{

	}else
	{
        direccion->Dato = elemento;
    }
}

void TDAListaPuntero::mostrar()
{
	NodoP *x = primero();
	std::cout<<"<";
	while(x!=NULL)
	{
	   std::cout<<x->Dato<<((x->Sig!=NULL)?", ":"");
	   x = x->Sig;
	}
	std::cout<<">"<<std::endl;
}

void TDAListaPuntero::suprime(NodoP *direccion)
{
	if(Longitud==0)
	{
        throw("Error...");
	}
	if(direccion==PtrElementos)
	{
		NodoP *x = PtrElementos;
		PtrElementos = PtrElementos->Sig;
        delete[] x;
	}else
	{
		NodoP *ant = anterior(direccion);
		ant->Sig = siguiente(direccion);
		delete[] direccion;
	}
    Longitud--;
}

//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAListaMemoria.h"
#include "SMemoria.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


TDAListaMemoria::TDAListaMemoria()
{
	Longitud = 0;
    PtrElementos = NULO;
}

bool TDAListaMemoria::vacia()
{
    return (Longitud==0);
}


int TDAListaMemoria::fin()
{
    int PtrFin;
	if(vacia())
	{

	}else
	{
		int x = PtrElementos;
		while(x!=NULO)
		{
			PtrFin = x;
            m.obtener_dato(x,2);
		}
        return PtrFin;
	}

}

int TDAListaMemoria::primero()
{
	if(!vacia())
	{
        return PtrElementos;
	}else
	{

    }

}

int TDAListaMemoria::siguiente(int direccion)
{
	if(vacia())
	{
        // Excepcion: Lista vacia...
	}else
	if(direccion==fin())
	{
	   // Excepcion: Direccion error...
	}else
	{
        return m.obtener_dato(direccion,2);
    }

}

int TDAListaMemoria::anterior(int direccion)
{
	if(vacia())
	{
        // Excepcion: Lista vacia...
	}else
	{
		if(direccion==primero()) {// Excepcion: DireccionPrimeraErr...
		}
		else
		{
		   int x = PtrElementos;
		   int ant = NULO;
		   while(x!=NULO)
		   {
			   if(x==direccion){return ant;}
			   ant = x;
               x = m.obtener_dato(x,2);
           }
		}
	}


}

int TDAListaMemoria::recupera(int direccion)
{
	if(vacia())
	{
        // Excepcion: Lista vacia...
	}else
	{
        return m.obtener_dato(direccion,1);
    }

}

int TDAListaMemoria::longitud()
{
	return Longitud;
}

void TDAListaMemoria::inserta(int direccion,int elemento)
{
	int x = m.new_espacio(2);

	if(x!=NULO)
	{
	   m.poner_dato(x,1,elemento);
	   m.poner_dato(x,2,NULO);
	   if(vacia())
	   {
		   PtrElementos = x;
           Longitud = 1;
	   }else
	   {
		   Longitud++;
		   if(direccion==primero())
		   {
			   m.poner_dato(x,2,direccion);
			   PtrElementos = x;
		   }else
		   {
			   int ant = anterior(direccion);
			   m.poner_dato(ant,2,x);
			   m.poner_dato(x,2,direccion);
           }
       }
	}else
	{
        // Excepcion: Existe espacio en Memoria...
    }

}

void TDAListaMemoria::suprime(int direccion)
{
	if(Longitud==0)
	{
        // Excepcion: Lista Vacia...
	}
	if(direccion==PtrElementos)
	{
		int x = PtrElementos;
		PtrElementos = m.obtener_dato(PtrElementos,2);
        m.delete_espacio(x);
	}else
	{
		int ant = anterior(direccion);
		m.poner_dato(ant,2,siguiente(direccion));
        m.delete_espacio(direccion);

	}
    Longitud--;

}

void TDAListaMemoria::modifica(int direccion,int elemento)
{
	if(vacia())
	{
        // Excepcion: Lista vacia..
	}
	m.poner_dato(direccion,1,elemento);

}
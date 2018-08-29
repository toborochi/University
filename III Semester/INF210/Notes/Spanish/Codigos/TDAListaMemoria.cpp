//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAListaMemoria.h"
#include <iostream>
//---------------------------------------------------------------------------
#pragma package(smart_init)


TDAListaMemoria::TDAListaMemoria()
{
	Longitud = 0;
    PtrElemento = NULO;
}

bool TDAListaMemoria::vacia()
{
    return (Longitud == 0);
}

int TDAListaMemoria::fin()
{
	int PtrFin;
	if(vacia())
	{
		throw("Error: Lista Vacia..");
	}else
	{
		int x = PtrElemento;
		while(x!=NULO)
		{
			PtrFin = x;
            x = m.obtener_dato(x,2);
		}

        return PtrFin;
	}

}

int TDAListaMemoria::primero()
{
	
        return PtrElemento;

}

int TDAListaMemoria::siguiente(int direccion)
{
	if(vacia())
	{
        throw("Error: Lista Vacia...");
	}else
	{
		if(direccion==fin())
		{
            throw("Error: Direccion Final...");
		}else
		{
            return m.obtener_dato(direccion,2);
        }
    }
}

int TDAListaMemoria::anterior(int direccion)
{
	if(vacia())
	{
        throw("Error: Lista Vacia...");
	}else
	{
		if(direccion==primero())
		{
            throw("Error: Direccion Inicial...");
		}else
		{
			int x = PtrElemento;
			int ant = NULO;
			while(x!=NULO)
			{
				if(x==direccion)
				{
                    return ant;
				}
				ant = x;
                x = m.obtener_dato(x,2);
            }
        }
    }
}

int TDAListaMemoria::longitud()
{
    return Longitud;
}

int TDAListaMemoria::recupera(int direccion)
{
	if(vacia())
	{
        throw("Error: Lista Vacia...");
	}else
	{
        return m.obtener_dato(direccion,1);
    }
}

void TDAListaMemoria::inserta(int direccion,int elemento)
{
	int x = m.new_espacio(2);
	if(x!=NULO)
	{
		m.poner_dato(direccion,1,elemento);
		m.poner_dato(direccion,2,NULO);
		if(vacia())
		{
			PtrElemento = x;
            Longitud = 1;
		}else
		{
			Longitud++;
			if(direccion==primero())
			{
				m.poner_dato(x,2,direccion);
                PtrElemento = x;
			}else
			{
				int ant = anterior(direccion);
				m.poner_dato(ant,2,x);
                m.poner_dato(x,2,direccion);

            }
		}
	}else
	{
        throw("Error: Existe Espacio en Memoria...");
	}
}

void TDAListaMemoria::mostrar()
{

}


void TDAListaMemoria::modifica(int direccion, int elemento)
{
	if(vacia())
	{

	}else
	{
        m.poner_dato(direccion,1,elemento);
    }
}

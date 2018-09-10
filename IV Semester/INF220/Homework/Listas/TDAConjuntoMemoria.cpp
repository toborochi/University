//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAConjuntoMemoria.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

void TDAConjuntoMemoria::crear()
{
    PtrConj = NULO;
	cant = 0;
}

bool TDAConjuntoMemoria::vacio()
{
    return (cant==0);
}

int TDAConjuntoMemoria::cardinal()
{
    return cant;
}

bool TDAConjuntoMemoria::pertenece(int e)
{
    return(ordinal(e)>0);
}

int TDAConjuntoMemoria::ordinal(int e)
{
	int resp = 0;
	int pc = PtrConj;
	while(pc!=NULO)
	{
		resp++;
		if(m.obtener_dato(pc,1)==e)
		{
			return resp;
            pc = NULO;
		}else
		{
            pc = m.obtener_dato(pc,2);
        }
	}
}

void TDAConjuntoMemoria::inserta(int e)
{
	if(!pertenece(e))
	{
		int dir = m.new_espacio(2);
		if(dir!=NULO)
		{
			m.poner_dato(dir,1,e);
			m.poner_dato(dir,2,PtrConj);
			PtrConj = dir;
			cant++;
        }
    }

}
//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAConjuntoPila.h"
#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAConjuntoPila::crear()
{
    P.crear();
}

void TDAConjuntoPila::inserta(int e)
{
	P.meter(e);
}

bool TDAConjuntoPila::pertenece(int e)
{
	bool ans = false;
    TDAPilaPuntero aux = P;
	while(!P.vacia())
	{
		if(P.cima()==e)
		{
			  ans = true;
		}
		aux.meter(P.cima());
        std::cout<<P.cima()<<std::endl;
		getch();
		P.sacar();
	}

	while(!aux.vacia())
	{
		P.meter(aux.cima());
		aux.sacar();
	}


	return ans;

}

void TDAConjuntoPila::suprime(int e)
{
	TDAPilaPuntero aux = P;
	while(!P.vacia())
	{
		if(P.cima()!=e)
		{
			aux.meter(P.cima());
		}
		P.sacar();
	}
	while(!aux.vacia())
	{
		P.meter(P.cima());
        aux.sacar();
	}

}

void TDAConjuntoPila::imprimir()
{


}

bool TDAConjuntoPila::vacio()
{
    return P.vacia();
}


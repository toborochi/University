//---------------------------------------------------------------------------

#pragma hdrstop

#include <iostream>
#include "TDAPilaVector.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAPila::crear()
{
	tope = 0;
}

bool TDAPila::vacia()
{
    return (tope==0);
}

void TDAPila::meter(int elemento)
{
	if(tope<max)
	{
		tope++;
        elementos[tope]=elemento;
    }
}

void TDAPila::sacar(int &elemento)
{
	if(!vacia())
	{
		elemento = elementos[tope];
        tope--;
	}else
	{
        throw("Si seras mamon...");
    }

}

void TDAPila::imprimir()
{
	for(int i=tope;i>=1;i--)
	{
        std::cout<< elementos[i] << std::endl;
    }
}

int TDAPila::cima()
{
    return elementos[tope];
}


void TDAPila::sacar()
{
    tope--;
}


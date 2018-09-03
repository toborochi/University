//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAPilaLista.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)

void TDAPilaLista::crear()
{
    L = TDAListaPuntero();
}

void TDAPilaLista::meter(int elemento)
{
	L.insertar(L.primero(),elemento);
}

void TDAPilaLista::sacar(int &elemento)
{
	elemento = L.recupera(L.primero());
    L.suprime(L.primero());
}

bool TDAPilaLista::vacia()
{
    return (L.vacia());
}

int TDAPilaLista::cima()
{
    return L.recupera(L.primero());
}

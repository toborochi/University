//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAColaVector2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAColaVector2::crear()
{
    fin = 0;
    ini = 1;

}

void TDAColaVector2::poner(int e)
{
    if(fin<MAX)
    {
        fin++;
        v[fin]=e;
    }
}

void TDAColaVector2::sacar(int &E)
{
    if(!vacia())
    {
        E = v[ini];
        for(int i=1;i<=fin-1;++i)
        {
           v[i]=v[i+1];
        }
        fin--;
    }
}

bool TDAColaVector2::vacia()
{
    return (fin==0);
}

int TDAColaVector2::primero()
{
    return v[ini];
}
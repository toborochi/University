 //---------------------------------------------------------------------------

#pragma hdrstop

#include "TDABicola.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDABicola::crear()
{
    fin = 0;
    ini = 1;

}

void TDABicola::poner(int e)
{
    if(fin<MAX)
    {
        fin++;
        v[fin]=e;
    }
}

int TDABicola::ultimo()
{
    return v[fin];
}

void TDABicola::sacar(int &E)
{
    if(!vacia())
    {
        E = v[ini];
        ini++;
    }
}

bool TDABicola::vacia()
{
    return (fin==0);
}

int TDABicola::primero()
{
    return v[ini];
}

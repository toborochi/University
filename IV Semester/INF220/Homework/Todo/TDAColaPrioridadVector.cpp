//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAColaPrioridadVector.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAColaPrioridadVector::crear()
{
    for(int i=0;i<MAX;++i)
    {
        VC[i].crear();
    }
}

void TDAColaPrioridadVector::poner(int e,int pri)
{
    VC[pri].poner(e);
}

void TDAColaPrioridadVector::sacar(int &e)
{
    if(!VC[colaAct].vacia())
    {
        if(cant<VF[colaAct])
        {
            cant++;
            VC[colaAct].sacar(e);
            if(cant==VF[colaAct])
            {
               colaAct++;
               cant = 0;
            }
        }
    }
}

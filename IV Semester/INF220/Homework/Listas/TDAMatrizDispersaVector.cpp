//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAMatrizDispersaVector.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAMatrizDispersaVector::crear()
{
    df = 0;
    dc = 0;
    nt = 0;
    repe = 0;
}

void TDAMatrizDispersaVector::poner(int f,int c,int e)
{
    int lug=0;
    for(int i=1;i<nt;++i)
    {
         if(vf[i]==f && vc[i]==c)
         {
             lug = i;
             break;
         }
    }
    if(lug>0)
    {
        vd[lug]=e;
    }else
    if(nt<max)
    {
        nt++;
        vd[nt]=e;
        vf[nt]=f;
        vc[nt]=c;
    }else
    {
        //Error
    }
}

int TDAMatrizDispersaVector::dimension_fila()
{
    return df;
}

int TDAMatrizDispersaVector::dimension_columna()
{
    return dc;
}

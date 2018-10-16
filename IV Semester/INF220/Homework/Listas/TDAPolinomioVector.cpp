//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAPolinomioVector.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

void Polinomio::crear()
{
     nt = 0;
     memset(VE,0,sizeof VE);
     memset(VC,0,sizeof VC);
}

bool Polinomio::escero()
{
    return (nt==0);
}

int Polinomio::grado()
{
    if(nt>0)
    {
        int max = VE[1];
        for(int i=1;i<=nt;++i)
        {
            if(VE[i]>max)
            {
              max = VE[i];
            }
        }
        return max;
    }else
    {
        throw("Error!");
    }

}

int Polinomio::coeficiente(int exp)
{
    if(exp>=0 && exp<=grado())
    {
        for(int i=1;i<=nt;++i)
        {
            if(VE[i]==exp)
            {
                return VC[i];
            }
        }
        throw("ERROR!");
    }
}




void Polinomio::poner_termino(int coe,int exp)
{
    int lug=-1,i=1;
    while(lug<=100 && VE[i]!=exp)
    {
       if(VE[i]==exp)lug=i;
       i++;
    }

    if(lug==-1)
    {
         nt++;
         VC[nt]=coe;
         VE[nt]=exp;

    }else
    {
        VC[lug]+=coe;
        if(VC[lug]==0)
        {
            nt--;
        }
    }
}

int Polinomio::numero_terminos()
{
    return nt;
}


void Polinomio::suma(Polinomio a,Polinomio b)
{
     for(int i=1;i<=a.numero_terminos();++i)
     {
            int exp = a.exponente(i);
            int coe = a.coeficiente(exp);
            poner_termino(coe,exp);
     }
     for(int i=1;i<=b.numero_terminos();++i)
     {
            poner_termino(a.coeficiente(b.exponente(i)),b.exponente(i));
     }
}


int Polinomio::exponente(int nro)
{
    return VE[nro];
}

void Polinomio::expresion()
{
     int VEA[100] = VE;
     int VCA[100] = VC;
     memcpy(VEA, VE, sizeof VE + 1);
     memcpy(VCA, VC, sizeof VC + 1);

     for(int i=1;i<=nt;++i)
     {

         if(VCA[i]!=0)
         {
            if(VCA[i]>0 && i>1)std::cout<<"+";

            if(VCA[i]!=1)std::cout<<VCA[i];


            if(VEA[i]>1)std::cout<<"x^"<<VEA[i]; else std::cout<<"x";

         }
     }

     std::cout<<"\n";

}
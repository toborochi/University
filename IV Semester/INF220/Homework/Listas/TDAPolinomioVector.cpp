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
    while(i<=nt)
    {
        if(VE[i]==exp)
        {
            lug = i;
            break;
        }
        i++;
    }

    if(lug!=-1)
    {
         VC[lug]+=coe;
         if(VC[lug]==0)
         {
            /*for(int i=lug;i<=nt;++i)
            {
                VE[i]=VE[i+1];
                VC[i]=VC[i+1];
            } */

            nt--;
         }
    }else
    {
         nt++;
         VC[nt]=coe;
         VE[nt]=exp;

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
             int exp = b.exponente(i);
             int coe = b.coeficiente(exp);
             poner_termino(coe,exp);
     }

}

void Polinomio::resta(Polinomio a, Polinomio b)
{
    for(int i=1;i<=a.numero_terminos();++i)
     {
            int exp = a.exponente(i);
            int coe = a.coeficiente(exp);
            poner_termino(coe,exp);
     }
     for(int i=1;i<=b.numero_terminos();++i)
     {
             int exp = b.exponente(i);
             int coe = b.coeficiente(exp);
             poner_termino(-coe,exp);
     }
}


void Polinomio::derivar()
{
    for(int i=1;i<=numero_terminos();++i)
    {
         VC[i]*=VE[i];
         VE[i]--;
    }
}



double mypow( double base, double power)
{
   double r = 1;
   for(int i=1;i<=int(power);++i)
   {
       r*=base;
   }
   return r;
}

double Polinomio::evaluar(double x)
{
    double y = 0;
    for(int i=1;i<=nt;++i)
    {
        y+= double(VC[i]) * mypow(x,double(VE[i]));
    }
    return y;
}

double Polinomio::area(double a,double b, double dx)
{
    double area = 0;
    while(a<=b)
    {
        double y = evaluar(a);
        area+=y*dx;
        a+=dx;
    }
    return area;
}


int Polinomio::exponente(int nro)
{
    return VE[nro];
}

void Polinomio::expresion()
{
    for(int i=1;i<=numero_terminos();++i)
    {

    }
}

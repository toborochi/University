//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAPolinomioPuntero.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)




void Polinomio::crear()
{
     nt = 0;
     PtrPoli = NULL;
}

bool Polinomio::escero()
{
     return (nt==0);
}

int Polinomio::numero_terminos()
{
    return nt;
}


int Polinomio::grado()
{
    int grad=0;
    Nodo *aux = PtrPoli;
    while(aux!=NULL)
    {
        grad = std::max(grad,aux->Exp);
        aux=aux->Sig;
    }
    return grad;
}

void Polinomio::mostrar()
{
    Nodo *aux = PtrPoli;

    while(aux!=NULL)
    {
        std::cout<<aux->Coef<<" "<<aux->Exp<<std::endl;
        aux=aux->Sig;
    }

}


void Polinomio::poner_termino(int coe,int exp)
{
    Nodo *x = PtrPoli;
    Nodo *prev;
    bool existe = false;
    while(x!=NULL)
    {
       if(x->Exp==exp)
       {
           existe = true;
           break;
       }
       prev = x;
       x=x->Sig;
    }


    if(!existe)
    {
        Nodo *aux = new Nodo;
        if(aux!=NULL)
        {
            aux->Coef = coe;
            aux->Exp  = exp;
            aux->Sig  = PtrPoli;
            PtrPoli = aux;
            nt++;
        }
    }else
    {
         x->Coef+=coe;

         if(x->Coef==0)
         {

             if(x==PtrPoli)
              {
                PtrPoli = x->Sig;
                delete(x);
             }else
             if(x->Sig==NULL)
             {
                prev->Sig = NULL;
                delete(x);
             }else
             {
                 prev->Sig = x->Sig;
                 delete(x);
             }

         }



    }
}


int Polinomio::coeficiente(Nodo* exp)
{
    return exp->Coef;
}


Nodo* Polinomio::exponente(int exp)
{
   Nodo *aux = PtrPoli;

    while(aux!=NULL)
    {
        if(aux->Exp==exp)
        {
            return aux;
        }
        aux=aux->Sig;
    }
    return NULL;
}

void Polinomio::suma(Polinomio a,Polinomio b)
{
    for(int i=1;i<=a.grado();++i)
    {
        Nodo *exp = a.exponente(i);
        if(exp!=NULL)
        {
          int coe  = a.coeficiente(exp);
          poner_termino(coe,exp->Exp);
        }

    }
    for(int i=1;i<=b.grado();++i)
    {
        Nodo *exp = b.exponente(i);
        if(exp!=NULL)
        {
         int coe  = b.coeficiente(exp);
         poner_termino(coe,exp->Exp);
        }

    }
}

void Polinomio::resta(Polinomio a,Polinomio b)
{
    for(int i=1;i<=a.grado();++i)
    {
        Nodo *exp = a.exponente(i);
        if(exp!=NULL)
        {
          int coe  = a.coeficiente(exp);
          poner_termino(coe,exp->Exp);
        }

    }
    for(int i=1;i<=b.grado();++i)
    {
        Nodo *exp = b.exponente(i);
        if(exp!=NULL)
        {
         int coe  = b.coeficiente(exp);
         poner_termino(-coe,exp->Exp);
        }

    }
}

void Polinomio::derivar()
{
    Nodo *aux = PtrPoli;
    while(aux!=NULL)
    {
        aux->Coef*=aux->Exp;
        aux->Exp--;
        aux=aux->Sig;
    }
}

//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAMatrizDispersaPuntero.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAMatrizDispersaPuntero::crear()
{
    PtrMatD = NULL;
    dimf = 0;
    dimc = 0;
    rep = 0;
}

void TDAMatrizDispersaPuntero::dimensionar(int f,int c)
{
    dimf = f;
    dimc = c;
}

int TDAMatrizDispersaPuntero::dimension_columna()
{
    return dimc;
}

int TDAMatrizDispersaPuntero::dimension_fila()
{
    return dimf;
}


void  TDAMatrizDispersaPuntero::definir_valor_repetido(int e)
{
    if(nt==0)
    {
        rep = e;
    }else
    {
        bool x = false;
        Nodo *aux = PtrMatD;
        while(aux!=NULL)
        {
            if(aux->dato==e)
            {
                x = true;
            }
            aux = aux->Sig;
        }
        if(x==false)
        {
            rep = e;
        }
    }
}

int TDAMatrizDispersaPuntero::elemento(int f,int c)
{
     Nodo *x = PtrMatD;
    while(x!=NULL)
    {
       if(x->fila==f && x->columna==c)
       {
           return x->dato;
       }
       x=x->Sig;
    }
    return rep;

}


void TDAMatrizDispersaPuntero::poner(int f,int c,int dato)
{
    Nodo *x = PtrMatD;
    Nodo *prev;
    bool existe = false;
    while(x!=NULL)
    {
       if(x->fila==f && x->columna==c)
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
            aux->fila = f;
            aux->columna  = c;
            aux->dato = dato;
            aux->Sig  = PtrMatD;
            PtrMatD = aux;
            nt++;
        }
    }else
    {
         x->dato = dato;

         if(dato==rep)
         {
             nt--;
             if(x==PtrMatD)
              {
                PtrMatD = x->Sig;
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

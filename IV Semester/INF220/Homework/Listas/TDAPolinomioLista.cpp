//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAPolinomioLista.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)


void TDAPolinomioLista::crear()
{
    L.crear();
}

bool TDAPolinomioLista::escero()
{
    return L.vacia();
}

int TDAPolinomioLista::numero_terminos()
{
    return L.longitud()/2;
}

void TDAPolinomioLista::poner_termino(int coe,int exp)
{
    L.insertar(L.primero(),exp);
    L.insertar(L.primero(),coe);
}

void TDAPolinomioLista::mostrar()
{
    TDAListaPuntero aux;
    aux.crear();

    while(L.longitud()>0)
    {
        int x =  L.recupera(L.primero());
        std::cout<<x<<std::endl;
        L.suprime(L.primero());
        aux.insertar(aux.primero(),x);
    }

    while(aux.longitud()>0)
    {
        int x = aux.recupera(aux.primero());
        aux.suprime(aux.primero());
        L.insertar(L.primero(),x);
    }
}

int TDAPolinomioLista::exponente(int nro)
{
    TDAListaPuntero aux;
    aux.crear();
    int i = 1,ans=0;

    while(L.longitud()>0)
    {

        int x =  L.recupera(L.primero());
        L.suprime(L.primero());
        aux.insertar(aux.primero(),x);


        x = L.recupera(L.primero());
        L.suprime(L.primero());
        aux.insertar(aux.primero(),x);

        if(nro==i)
        {
            ans = x;
        }


        i++;
    }

    while(aux.longitud()>0)
    {
        int x = aux.recupera(aux.primero());
        aux.suprime(aux.primero());
        L.insertar(L.primero(),x);
    }

    return ans;

}

int TDAPolinomioLista::coeficiente(int exp)
{

    int ans;
     TDAListaPuntero aux;
    aux.crear();

    while(L.longitud()>0)
    {
        int coe =  L.recupera(L.primero());
        L.suprime(L.primero());
        aux.insertar(aux.primero(),coe);

        int expt = L.recupera(L.primero());
        L.suprime(L.primero());
        aux.insertar(aux.primero(),expt);

        if(expt==exp)
        {
           ans = coe;
        }

    }

    while(aux.longitud()>0)
    {
        int x = aux.recupera(aux.primero());
        aux.suprime(aux.primero());
        L.insertar(L.primero(),x);
    }
    return ans;
}
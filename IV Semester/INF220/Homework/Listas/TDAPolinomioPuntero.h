//---------------------------------------------------------------------------

#ifndef TDAPolinomioPunteroH
#define TDAPolinomioPunteroH
//---------------------------------------------------------------------------
#endif

#include <iostream>
#include <string>
#include <algorithm>
#include <iterator>
#include <stdlib.h>
#include <math.h>
#include <stddef.h>

#define TDAPolinomioPuntero Polinomio


   struct Nodo
{
    int Coef;
    int Exp;
    Nodo *Sig;

};

class TDAPolinomioPuntero
{
    private:
            int nt;
            Nodo* PtrPoli;
    public:
           void crear();
           bool escero();
           int numero_terminos();
           void poner_termino(int coe,int exp);

           int coeficiente(Nodo* exp);
           Nodo* exponente(int exp);
           void mostrar();
           int grado();
           void suma(Polinomio a,Polinomio b);
           void resta(Polinomio a,Polinomio b);
           void derivar();
};


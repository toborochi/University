//---------------------------------------------------------------------------

#ifndef TDAPolinomioListaH
#define TDAPolinomioListaH
//---------------------------------------------------------------------------
#endif

#include "TDAListaPuntero.h"
#include <iostream>
#include <string>
#include <algorithm>
#include <iterator>
#include <stdlib.h>
#include <math.h>
#include <stddef.h>

#define TDAPolinomioLista Polinomio

class TDAPolinomioLista
{
    private:
            TDAListaPuntero L;
    public:
           void crear();
           bool escero();
           void poner_termino(int coe,int exp);
           void mostrar();
           int numero_terminos();
           int exponente(int nro);
           int coeficiente(int exp);

};

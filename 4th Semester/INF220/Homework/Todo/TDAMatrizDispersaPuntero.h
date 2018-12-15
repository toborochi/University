//---------------------------------------------------------------------------

#ifndef TDAMatrizDispersaPunteroH
#define TDAMatrizDispersaPunteroH
#include <iostream>
#include <string>
#include <algorithm>
#include <iterator>
#include <stdlib.h>
#include <math.h>
#include <stddef.h>
//---------------------------------------------------------------------------
#endif

struct Nodo
{
    int fila;
    int columna;
    int dato;
    Nodo* Sig;
};

class TDAMatrizDispersaPuntero
{
      private:
              int nt;
              Nodo* PtrMatD;
              int rep,dimf,dimc;
      public:
             void crear();
             void dimensionar(int df,int dc);
             int dimension_fila();
             int dimension_columna();
             void poner(int f,int c,int elemento);
             int elemento(int f,int c);
             void definir_valor_repetido(int valor);

};

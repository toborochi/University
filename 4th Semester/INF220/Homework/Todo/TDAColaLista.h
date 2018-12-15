//---------------------------------------------------------------------------

#ifndef TDAColaListaH
#define TDAColaListaH
#include "TDAListaPuntero.h"
//---------------------------------------------------------------------------
#endif

class TDAColaLista
{
      private:
              TDAListaPuntero L;
      public:
             void crear();
             bool vacia();
             void poner(int e);
             void sacar();
             int primero();

};
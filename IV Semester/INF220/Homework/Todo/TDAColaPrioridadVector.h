//---------------------------------------------------------------------------

#ifndef TDAColaPrioridadVectorH
#define TDAColaPrioridadVectorH
#include "TDAColaVector.h"
//---------------------------------------------------------------------------
#endif



class TDAColaPrioridadVector
{
      private:
              TDAColaVector VC[MAX];
              int VF[MAX];
              int colaAct;
              int cant;
      public:
              void crear();
              void poner(int e,int pri);
              void sacar(int &e);
              void frecuencia_prioridad(int frec,int pri);
              int primero();


};
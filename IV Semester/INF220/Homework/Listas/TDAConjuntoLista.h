//---------------------------------------------------------------------------

#ifndef TDAConjuntoListaH
#define TDAConjuntoListaH
//---------------------------------------------------------------------------
#endif

#include "TDAListaPuntero.h"

class TDAConjuntoLista
{
	private:
		TDAListaPuntero L;
	public:
		void crear();
		bool vacio();
		int cardinal();
        void inserta(int e);

};
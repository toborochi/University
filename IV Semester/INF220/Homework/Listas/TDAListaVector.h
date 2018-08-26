//---------------------------------------------------------------------------

#ifndef TDAListaVectorH
#define TDAListaVectorH
//---------------------------------------------------------------------------
#endif

#include <vector>

static const int Max = 100;

class TDAListaVector
{
	public:

        int Elementos[Max];
		int Longitud;

		void crear();
		int fin();
		int primero();
		int siguiente(int direccion);
		int anterior(int direccion);
		bool vacia();
		int recupera(int direccion);
		int longitud();
		void inserta(int direccion,int elemento);
        void suprime(int direccion);
};

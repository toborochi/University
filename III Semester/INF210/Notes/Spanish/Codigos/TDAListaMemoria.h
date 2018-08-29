//---------------------------------------------------------------------------

#ifndef TDAListaMemoriaH
#define TDAListaMemoriaH
//---------------------------------------------------------------------------
#endif

#include "SMemoria.h"



class TDAListaMemoria
{
    private:
		int Longitud;

	public:
		SMemoria m;

		int PtrElemento;

		TDAListaMemoria();
        bool vacia();
		int fin();
		int primero();
		int siguiente(int direccion);
		int anterior(int direccion);
		int longitud();
        int recupera(int direccion);

		void inserta(int direccion,int elemento);
        void modifica(int direccion,int elemento);

		void mostrar();

};
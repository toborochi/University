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
		int primero();
		bool vacia();
		int siguiente(int direccion);
		int anterior(int direccion);
		int fin();
		int recupera(int direccion);
		int longitud();
		void inserta(int direccion,int elemento);
		void modifica(int direccion,int elemento);
		void suprime(int direccion);        // Falta
        void imprimir();

};
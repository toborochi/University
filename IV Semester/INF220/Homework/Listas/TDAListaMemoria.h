//---------------------------------------------------------------------------

#include <SMemoria.h>
#ifndef TDAListaMemoriaH
#define TDAListaMemoriaH
//---------------------------------------------------------------------------
#endif

SMemoria m;

class TDAListaMemoria
{
	public:
	// Atributos
		int PtrElementos;
		int Longitud;

	// Metodos
		TDAListaMemoria();   // Constructor

		int fin();
		int primero();
		int siguiente(int direccion);
        int anterior(int direccion);
		bool vacia();
		int recupera(int direccion);
		int longitud();
		void inserta(int direccion, int elemento);
		void suprime(int direccion);
        void modifica(int direccion,int elemento);



};
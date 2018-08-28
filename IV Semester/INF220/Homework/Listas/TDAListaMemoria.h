//---------------------------------------------------------------------------

#ifndef ListaEH
#define ListaEH
#include "SMemoria.h"
//---------------------------------------------------------------------------
struct Nodo2{
	int Elemento;
	int Sig;
};
class ListaEnlazada{
	private:
	   Nodo2 PtrElementos;
	   int Longitud;
	public:
	   Crear();
	   int Fin();
	   int Primero();
	   int Siguiente(int dir);
	   int Anterior(int dir);
	   bool Vacia();
	   int Recupera(int dir);
	   int longitud();
	   void Inserta(int direccion, int elemento);
	   void Suprime(int direccion);
	   void Modifica(int direccion, int elemento);
	   int Localiza(int e);
	   void EliminaDato(int e);
	   void Anula();
};
extern ListaEnlazada *TDAListaE;
//---------------------------------------------------------------------------
#endif


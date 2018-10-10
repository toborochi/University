//---------------------------------------------------------------------------

#ifndef TDAConjuntoPilaH
#define TDAConjuntoPilaH
#include "TDAPilaPuntero.h"
//---------------------------------------------------------------------------
#endif

class TDAConjuntoPila
{
	private:
		TDAPilaPuntero P;
	public:
		void crear();
		void inserta(int e);
		void suprime(int e);
        void imprimir();

		bool vacio();
        bool pertenece(int e);

		int cardinal();


};

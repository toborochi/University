//---------------------------------------------------------------------------

#ifndef TDAConjuntoPunteroH
#define TDAConjuntoPunteroH
//---------------------------------------------------------------------------
#endif

struct Nodo
{
	int dato;
    Nodo *sig;
};

class TDAConjuntoPuntero
{
	private:
		int cant;
		Nodo *PtrConj;
	public:
		void crear();
		bool vacio();
		int cardinal();
		int ordinal(int e);
        void inserta(int e);

};

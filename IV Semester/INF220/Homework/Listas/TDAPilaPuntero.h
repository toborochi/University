//---------------------------------------------------------------------------

#ifndef TDAPilaPunteroH
#define TDAPilaPunteroH
//---------------------------------------------------------------------------
#endif

 struct Nodo
  {
	int elemento;
    Nodo *sig;
  };

class TDAPilaPuntero
{
	  private:
		Nodo *Tope;
	  public:
        void crear();
        bool vacia();
		int cima();
		void meter(int elemento);
		void sacar(int &dato);
        void imprimir();

};
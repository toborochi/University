//---------------------------------------------------------------------------

#ifndef TDAPilaVectorH
#define TDAPilaVectorH
//---------------------------------------------------------------------------
#endif



class TDAPila
{

	private:
        static const int max = 100;
		 int elementos[100];
		 int tope;
	public:
		void crear();
		bool vacia();
		void meter(int elemento);
		void sacar(int &elemento);
		void imprimir();
		int cima();
		void sacar();

};

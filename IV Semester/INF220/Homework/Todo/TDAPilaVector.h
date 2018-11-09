/*////////////////////////////////////////////////////////////////////////////
    U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones

    Materia: Estructura de Datos I
	Docente: Mario Lopez Winnipeg

	Autor: Leonardo H. Anez Vladimirovna
	Correo: toborochi@outlook.com

	Resumen: Implementacion de la Clase 'Pila' usando un arreglo
*/////////////////////////////////////////////////////////////////////////////

#ifndef TDAPilaVectorH
#define TDAPilaVectorH
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

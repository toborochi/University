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
		 char elementos[100];
		 int tope;
	public:
		void crear();
		bool vacia();
		void meter(char elemento);
		void sacar(char &elemento);
		void imprimir();
		char cima();
		void sacar();

};


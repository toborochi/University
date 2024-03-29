/*////////////////////////////////////////////////////////////////////////////
    U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones

    Materia: Estructura de Datos I
	Docente: Mario Lopez Winnipeg

	Autor: Leonardo H. Anez Vladimirovna
	Correo: toborochi@outlook.com

	Resumen: Implementacion de la Clase 'Pila' usando punteros
*/////////////////////////////////////////////////////////////////////////////

#ifndef TDAPilaPunteroH
#define TDAPilaPunteroH
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
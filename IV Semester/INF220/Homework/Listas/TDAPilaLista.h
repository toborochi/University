/*////////////////////////////////////////////////////////////////////////////
    U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones

    Materia: Estructura de Datos I
	Docente: Mario Lopez Winnipeg

	Autor: Leonardo H. Anez Vladimirovna
	Correo: toborochi@outlook.com

	Resumen: Implementacion de la Clase 'Pila' usando la clase 'Lista'
*/////////////////////////////////////////////////////////////////////////////

#ifndef TDAPilaListaH
#define TDAPilaListaH
#endif

#include "TDAListaPuntero.h"

class TDAPilaLista
{
	private:
        TDAListaPuntero L;
	public:
        // Constructor
        void crear();

        // Metodo para insertar elemento en la Pila
		void meter(int elemento);

        // Metodo para eliminar el elemento en el tope de la Pila
		void sacar(int &elemento);

        // Metodo para mostrar el estado de la Pila
		void imprimir(TDAPilaLista &Pila);

        // Funcion para conocer si la Pila esta vacia
		bool vacia();

        // Funcion que devuelve el elemento al tope de la Pila
		int cima();
};



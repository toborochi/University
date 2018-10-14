/*////////////////////////////////////////////////////////////////////////////
    U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones

    Materia: Estructura de Datos I
	Docente: Mario Lopez Winnipeg

	Autor: Leonardo H. Anez Vladimirovna
	Correo: toborochi@outlook.com

	Resumen: Implementacion de la Clase 'Conjunto' usando punteros
*/////////////////////////////////////////////////////////////////////////////

#ifndef TDAConjuntoPunteroH
#define TDAConjuntoPunteroH
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
        void inserta(int e);
		void suprime(int e);
		void imprime();     	//Funcion Extra

		int cardinal();
		int ordinal(int e);

		bool vacio();
		bool pertenece(int e);

};

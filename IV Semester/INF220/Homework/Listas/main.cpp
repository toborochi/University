/*////////////////////////////////////////////////////////////////////////////
	Tarea #3
	Docente: Mario Lopez Winnipeg
	U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
	Leonardo Anez Vladimirovna
*/////////////////////////////////////////////////////////////////////////////

#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>

#include "TDAPilaLista.h"

using namespace std;

int main()
{
    TDAPilaLista PL;

	PL.crear();
	PL.meter(5), PL.meter(45), PL.meter(123);

	cout<< PL.cima() <<endl;

	int x;
	PL.sacar(x);

	cout<< PL.cima()<<endl;
	PL.sacar(x);
    cout<< PL.cima()<<endl;

	getch();
	return 0;
}


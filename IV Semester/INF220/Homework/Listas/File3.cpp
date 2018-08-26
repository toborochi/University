/*////////////////////////////////////////////////////////////////////////////
	Tarea #2
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

#include "SMemoria.h"
#include "TDAListaVector.h"


using namespace std;


void MostrarOpciones()
{
 	cout<<"SIMULACION DE LA MEMORIA:\n";
	cout<<"[1] Crear\n";
	cout<<"[2] Pedir Espacio\n";
	cout<<"[3] Liberar Espacio\n";
	cout<<"[4] Poner Dato\n";
	cout<<"[5] Obtener Dato\n";
	cout<<"[6] Mostrar Memoria\n";
	cout<<"[7] Salir\n";
	cout<<"Opcion: ";
}

int _tmain(int argc, _TCHAR* argv[])
{
    TDAListaVector lv;


	getch();

	return 0;
}


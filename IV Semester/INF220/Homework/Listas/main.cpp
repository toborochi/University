/*////////////////////////////////////////////////////////////////////////////
    U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones

    Materia: Estructura de Datos I
	Docente: Mario Lopez Winnipeg

	Autor: Leonardo H. Anez Vladimirovna
	Correo: toborochi@outlook.com

	Resumen:
            Implementaciones de todas los temas de la Materia:
            --------------------------------------------------
            Listas:
                   Puntero
                   Vector
                   Simulacion Memoria
            Pila:
                   Vector
                   Puntero
                   Simulacion Memoria
                   Lista
            Conjunto:
                   Vector
                   Puntero
                   Simulacion Memoria
                   Lista
                   Entero
*/////////////////////////////////////////////////////////////////////////////


#pragma hdrstop

#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>

#pragma package(smart_init)

#include "TDAPolinomioLista.h"

using namespace std;

#pragma region Menu
void MostrarOpciones()
{
	cout<<"[1] Crear \n";
	cout<<"[2] Poner Termino \n";
	cout<<"[3] Mostrar Polinomio\n";
	cout<<"[4] Derivar\n";
	cout<<"[5] Mostrar Coordenadas\n";
	cout<<"[6] Mostrar Area\n";
	cout<<"[7] Salir\n";
	cout<<"Opcion: ";
}
#pragma end_region

#pragma region MAIN
int main()
{
    TDAPolinomioLista P;
    P.crear();
    P.poner_termino(4,1);
    P.poner_termino(5,2);


    P.mostrar();


	getch();
	return 0;
}
#pragma end_region


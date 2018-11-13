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
            Polinomio:
                   Vector
                   Puntero
                   Simulacion Memoria
                   Lista
            Matriz Dispersa:
                   Vector
                   Puntero
                   Puntero Doble Enlace
                   Comprimido
            Colas:
                   Puntero
                   Lista
                   Vector
                   Vector Desplazado
                   Vector Circular
                   Dicola
                   Cola de Prioridad usando Vector

*/////////////////////////////////////////////////////////////////////////////

#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <iomanip>

#include "TDABicola.h"


using namespace std;

void MostrarOpciones()
{
 	cout<<"POLINOMIO:\n";
	cout<<"[1] Crear\n";
    cout<<"[2] Dimensionar\n";
	cout<<"[3] Poner\n";
	cout<<"[4] Elemento\n";
	cout<<"[5] Mostrar\n";
	cout<<"[6] Repetido\n";
    cout<<"[7] Salir\n";
    cout<<"Opcion: ";
}

int main()
{


	getch();
	return 0;
}


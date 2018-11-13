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

#include "TDAMatrizDispersaPunteroDoble.h"


using namespace std;

void MostrarOpciones()
{
 	cout<<"Matriz Dispersa:\n";
	cout<<"[1] Crear\n";
    cout<<"[2] Dimensionar\n";
	cout<<"[3] Poner\n";
	cout<<"[4] Elemento\n";
	cout<<"[5] Mostrar\n";
    cout<<"[6] Salir\n";
    cout<<"Opcion: ";
}

int main()
{
    int opcion,f,c,e;
    TDAMatrizDispersaPunteroDoble MDP;


    do{
		system("cls");
		MostrarOpciones();
		cin>>opcion;
        switch(opcion)
        {
            case 1:  MDP.crear(); break;
            case 2:
                     cout<<"Dimensiones de la Matriz (Fila,Columna): ";
                     cin>>f>>c;
                     MDP.dimensionar(f,c);
                     break;
            case 3:
                     cout<<"Ingrese fila: ";
                     cin>>f;
                     cout<<"Ingrese columna: ";
                     cin>>c;
                     cout<<"Ingrese elemento: ";
                     cin>>e;
                     MDP.poner(f,c,e);
                     break;
            case 4:
                     cout<<"Ingrese fila: ";
                     cin>>f;
                     cout<<"Ingrese columna: ";
                     cin>>c;
                     cout<<MDP.elemento(f,c);
                     getch();
                     break;
            case 5:  MDP.mostrar();
                     getch();
                     break;

        }
    }while(opcion!=6);


    /*
    MDP.crear();
    MDP.dimensionar(4,4);


    int x;

    for(int i=1;i<=MDP.dimension_fila();++i)
    {
        for(int j=1;j<=MDP.dimension_columna();++j)
        {
            cin>>x;
            MDP.poner(i,j,x);
        }
    }


    MDP.mostrar();
    */


	getch();
	return 0;
}


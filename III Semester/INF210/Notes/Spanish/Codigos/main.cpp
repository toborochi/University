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

#include "SMemoria.h"
#include "TDAListaVector.h"
#include "TDAListaMemoria.h"
#include "TDAListaPuntero.h"


using namespace std;


void MostrarOpciones()
{
	cout<<"Menu Proyecto 1:\n";
	cout<<"[1] Crear Memoria\n";
	cout<<"[2] Pedir Espacio\n";
	cout<<"[3] Liberar Espacio\n";
	cout<<"[4] Crear Lista\n";
	cout<<"[5] Poner en Direccion Inicial\n";
	cout<<"[6] Poner en Direccion Fin\n";
	cout<<"[7] Mostrar Memoria\n";
	cout<<"[8] Mostrar Lista\n";
	cout<<"[9] Salir\n";
	cout<<"Opcion: ";
}

int main()
{

	int opcion;
	int direccion,lugar,valor,cantidad,dato;
	TDAListaMemoria LM;

    do
	{
		// Refresh de la Consola
		system("cls");

        // Menu de Opciones
		MostrarOpciones();

		// Opcion del Menu
		cin>>opcion;

		switch(opcion)
		{
            // Crear
			case 1:
                    LM.m = SMemoria(); // Rellamada del Constructor
					break;
			// Pedir
			case 2:
					cout<<"Digite la Cantidad de Espacio:\n";
					cin>>cantidad;

					if(LM.m.espacio_disponible()>=cantidad)
					{
						cout<<LM.m.new_espacio(cantidad)<<endl;
					}else
					{
                        cout<<"No hay Suficiente Espacio\n";
                    }
					break;
			// Liberar
			case 3:
					cout<<"Digite el Espacio a Liberar:\n";
					cin>>direccion;
					LM.m.delete_espacio(direccion);
					break;
            // Poner Dato
			case 4:

                    LM = TDAListaMemoria();
					break;
			// Obtener Dato
			case 5:
					cin>>cantidad;
					LM.inserta(LM.primero(),cantidad);

					break;
			 // Mostrar
			case 6:
					cin>>cantidad;
					LM.inserta(LM.primero(),cantidad);
					break;
			// Salir

			case 7:
					LM.m.mostrar();
					break;
			case 8:
                    LM.mostrar();

			default:
					break;
		}
		getch();

	}while(opcion!=9);


	getch();

	return 0;
}


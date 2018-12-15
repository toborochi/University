/*////////////////////////////////////////////////////////////////////////////
	Tarea #1
	Docente: Mario Lopez Winnipeg

	U.A.G.R.M.
	Facultad  de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
	Leonardo Anez Vladimirovna
*/////////////////////////////////////////////////////////////////////////////

#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <windows.h>
#include <sstream>
#include <iomanip>

#include "TDAColaPuntero.h"
#include "TDAPilaPuntero.h"



using namespace std;

// Constante que define el nombre del archivo y su extension
const char filename_in[] = "entrada.txt";

double totalSuma = 0,cant=0;

// Funcion que Indica si un caracter es Numero


int _tmain(int argc, _TCHAR* argv[])
{

	int totalNumeros = 0;

    bool esPal = true;
	string temp;
	ifstream file;
	file.open ("entrada.txt");

    TDAPilaPuntero Pila;
    TDAColaPuntero Cola;

	// Entrada del Archivo
	while (!file.eof())
	{
		getline (file, temp);
        Cola.crear();
        Pila.crear();
        for(int i=0;i<temp.size();++i)
        {
              Cola.poner(temp[i]);
              Pila.meter(temp[i]);
        }
        while(!Pila.vacia())
        {
            int a,b;
            Pila.sacar(a);
            Cola.sacar(b);
            //cout<<char(a)<<" "<<char(b)<<endl;
            if(a!=b)
            {
                esPal=false;
            }
        }
	}

    if(esPal)
    {
        cout<<"Es PALINDROMO!"<<endl;
    }
    else{
        cout<<"No es PALINDROMO!"<<endl;
    }

	

	// Abre la Pagina donde deberia estar Ubicado el .html
	//ShellExecute(NULL, "open", "http://dreamincode.net",
	 //			NULL, NULL, SW_SHOWNORMAL);

	// Esperar tecla para Finalizar
	getch();

	return 0;
}


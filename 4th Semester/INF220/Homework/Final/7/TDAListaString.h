//---------------------------------------------------------------------------

#ifndef TDAListaStringH
#define TDAListaStringH
#include <string>
//---------------------------------------------------------------------------
#endif

 using namespace std;

class TDAListaString
{
    private:
            string  s;
    public:
           void crear();
           int longitud();
	    	bool vacia();
            int fin();
            int primero();
            int siguiente(int d);
            int anterior(int d);
            void inserta(int dir,char ele);



};

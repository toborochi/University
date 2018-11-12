//---------------------------------------------------------------------------

#ifndef TDAColaVectorCircularH
#define TDAColaVectorCircularH
//---------------------------------------------------------------------------
#endif

static const int MAX = 100;

class TDAColaVectorCircular
{
        private:
            int v[MAX];
            int ini,fin;
    public:
           void crear();
           bool vacia();
           void poner(int e);
           void sacar(int &E);
           int primero();

};
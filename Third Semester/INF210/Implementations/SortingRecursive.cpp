#include <bits/stdc++.h>
#define IOS                 ios::sync_with_stdio(0);
#define ll                  long long
#define pb                  push_back
#define par(a,b)            make_pair(a,b)
#define pfor(a,b,name)      for(int i=a;i<=b;++i){cout<<name[i]<<" ";}cout<<'\n';
#define ifor(a,b,name)      for(int i=a;i<=b;++i){cin>>name[i];}
#define euclid(x1,y1,x2,y2) sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))
#define lcm(a,b)            (a*b)/(__gcd(a,b))
#define gcd(a,b)            __gcd(a,b)
#define dbg()               cout<<"umu"<<endl;

using namespace std;

const double pi = 3.14159265;
const int INF = 1<<30;
const int maxn = (1e5)+50;
const int mod = (1e9)+7;
const int lim = (1e5);

const char filename_in[] = "in.txt";
const char filename_ou[] = "ou.txt";


// Entrada de datos
void obtenerEntrada(int v[],int n)
{
   ifor(0,n-1,v);
}

// Ordenamiento tipo Burbuja
void mayorFinal(int v[],int n)
{
    if(n>1)
    {
        mayorFinal(v,n-1);
        if(v[n-2]>v[n-1])
        {
            swap(v[n-2],v[n-1]);
        }
    }
}

void burbuja(int v[],int n)
{
    if(n>1)
    {
        mayorFinal(v,n);
        burbuja(v,n-1);
    }
}

// Ordenamiento por Seleccion
int maximoRelativoPos(int v[],int n)
{
    int r=n-1;
    if(n>1)
    {
        int dat = maximoRelativoPos(v,n-1);

        if(v[dat]>v[r])
        {
            r = dat;
        }
    }
    return r;
}

void seleccion(int v[],int n)
{
    if(n>1)
    {
        int pos = maximoRelativoPos(v,n);
        swap( v[n-1], v[pos] );
        seleccion(v,n-1);
    }
}

// Ordenamiento por Insercion
void insercion(int v[], int n)
{
    if(n>1)
    {
        insercion(v,n-1);
        int ultimo = v[n-1];
        int j = n-2;

        while (j>=0 && v[j]>ultimo)
        {
            v[j+1] = v[j];
            j--;
        }
        v[j+1] = ultimo;
    }
}

int main()
{
    IOS
    cin.tie(0);
    ///freopen(filename_in,"r",stdin);
    ///freopen(filename_ou,"w",stdout);

    int n;  cin>>n;
    int v[n];
    obtenerEntrada(v,n);

    //burbuja(v,n);
    //seleccion(v,n);
    insercion(v,n);

    pfor(0,n-1,v);  //Imprimir datos ordenados

}
/// This code is less virgin than me

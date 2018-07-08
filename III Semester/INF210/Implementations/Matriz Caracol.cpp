#include<iostream>
using namespace std;

int mat[100][100],cur;
enum Direccion {arriba,abajo,derecha,izquierda};


void Llenar(int x0,int y0,int x1,int y1,Direccion direccion)
{
    int total = (y1-y0+1)*(x1-x0+1);
    if(total>0)
    {
        cur++;
        switch(direccion)
        {
            case derecha   : mat[y0][x0]=cur; Llenar(x0+1,y0,x1,y1,direccion); break;
            case abajo     : mat[y0][x1]=cur; Llenar(x0,y0+1,x1,y1,direccion); break;
            case izquierda : mat[y1][x1]=cur; Llenar(x0,y0,x1-1,y1,direccion); break;
            case arriba    : mat[y1][x0]=cur; Llenar(x0,y0,x1,y1-1,direccion); break;
        }
    }
}

void makematrix(int x0,int y0,int x1,int y1,Direccion direccion)
{
    int c = (x1-x0+1)*(y1-y0+1);
    if(c>0)
    {
        Llenar(x0,y0,x1,y1,direccion);
        switch(direccion)
        {
            case derecha   : makematrix(x0,y0+1,x1,y1,direccion=abajo);     break;
            case abajo     : makematrix(x0,y0,x1-1,y1,direccion=izquierda); break;
            case izquierda : makematrix(x0,y0,x1,y1-1,direccion=arriba);    break;
            case arriba    : makematrix(x0+1,y0,x1,y1,direccion=derecha);   break;
        }
    }
}

int main()
{
    int n;
    cin>>n;
    Direccion dir;
    dir = derecha;

    makematrix(0,0,n-1,n-1,dir);

    for(int i=0;i<n;++i)
    {
       for(int j=0;j<n;++j)
       {
            cout<<mat[i][j]<<" ";
       }
       cout<<'\n';
    }
}

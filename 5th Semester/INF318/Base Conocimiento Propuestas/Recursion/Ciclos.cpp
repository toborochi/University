#include <iostream>

using namespace std;

/// ITERATIVO
bool primo(int N)
{
    int i=2,lim=N/2;

    if(N==1)return false;

    while(i<=lim){
        if(N%i==0)return false;
        i++;
    }

    return true;
}
/// RECURSIVO
bool primo(int N,int i)
{
    if(i>N/2)return true;
    if(N%i==0)return false;
    return primo(N,i+1);
}

/// ITERATIVO
void mostrarDivisores(int n){
    int i=2;
    while(i<=n)
    {
        if(n%i==0)cout<<i<<endl;
        ++i;
    }
}

/// RECURSIVO
void mostrarDivisores(int n,int i)
{
    if(i>n)return;

    if(n%i==0)
        cout<<i<<endl;

    mostrarDivisores(n,i+1);

}
/// ITERATIVO
void mostrarDivisoresPrimos(int n){
    int i=1;
    while(i<=n)
    {
        if(n%i==0 && primo(i))cout<<i<<endl;
        ++i;
    }
}

/// RECURSIVO
void mostrarDivisoresPrimos(int n,int i=2)
{
    if(i>n)return;

    if(n%i==0 && primo(i))
    {
        cout<<i<<endl;
    }
    mostrarDivisoresPrimos(n,i+1);

}

/// ITERATIVO
void mostrarPrimos(int a, int b){
    for(;a<=b;a++)
    {
        if(primo(a))cout<<a<<endl;
    }
}

/// RECURSIVO
void mostrarPrimosSob(int a,int b)
{
    if(a>b)return;

    if(primo(a))cout<<a<<endl;

    mostrarPrimos(a+1,b);

}



int main()
{
  
    return 0;
}


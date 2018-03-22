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

//N/2 IZQQ
int NumeroEspacios(string x)
{
	int n = x.size();
	int c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		string z = x.substr(0,int(n/2));
		x = x.substr(int(n/2) ,n);
		c = NumeroEspacios(x) + NumeroEspacios(z);
	}

	return c;
}

//N/2 DER
int NumeroEspacios2(string x)
{
	int n = x.size();
	int c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		string z = x.substr(int(n/2),n);
		x = x.substr(0,int(n/2));
		c = NumeroEspacios2(x) + NumeroEspacios2(z);
	}

	return c;
}
//b)2.
int NumeroEspaciosb2(string x)
{
	int n = x.size();
	int c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		char z1 = x[0];
		char z2 = x[n-1];
        x = x.substr(1,n-1);
        c = NumeroEspaciosb2(x);
        if(z1==' ')c++;
        if(z2==' ')c++;
	}
	return c;
}
//b)1.
int NumeroEspaciosb1(string x)
{
	int n = x.size();
	int c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		char z1 = x[0];
		char z2 = x[1];
        x = x.substr(2,n);
        c = NumeroEspaciosb1(x);
        if(z1==' ')c++;
        if(z2==' ')c++;
	}
	return c;
}

//b)3.
int NumeroEspaciosb3(string x)
{
	int n = x.size();
	int c = 0;

	if(n==0)
	{
		c=0;
	}else
	if(n==1)
	{
		if(x==" ")c++;
	}else
	{
		char z1 = x[n-1];
		char z2 = x[n-2];
        x = x.substr(0,n-2);
        c = NumeroEspaciosb3(x);
        if(z1==' ')c++;
        if(z2==' ')c++;
	}
	return c;
}

int NumeroEspaciosa1(string x)
{
    int c=0;
    int n = x.size();
    if(n==1)
    {
        if(x==" ")c++;
    }else
    {
        char z = x[0];
        x = x.substr(1,n);

        c = NumeroEspaciosa1(x);

        if(z==' ')c++;
    }
    return c;
}


int NumeroEspaciosa2(string x)
{
    int c=0;
    int n = x.size();
    if(n==1)
    {
        if(x==" ")c++;
    }else
    {
        char z = x[n-1];
        x = x.substr(0,n-1);

        c = NumeroEspaciosa2(x);

        if(z==' ')c++;
    }
    return c;
}

int main()
{
    IOS
    cin.tie(0);
    ///freopen(filename_in,"r",stdin);
    ///freopen(filename_ou,"w",stdout);
    string p;
    getline(cin,p);
    cout<<NumeroEspaciosa2(p)<<endl;
}
/// This code is less virgin than me

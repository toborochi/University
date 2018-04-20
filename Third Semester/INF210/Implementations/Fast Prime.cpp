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

bool isPrime(int n)
{
    int s=0;
    for(int i=1;i<=sqrt(n);++i)
    {
        if(n%i==0)s+=2;
    }
    return !(s>2 || n==1);
}


int main()
{
    IOS
    cin.tie(0);
    ///freopen(filename_in,"r",stdin);
    ///freopen(filename_ou,"w",stdout);
    bool pnp = isPrime(1000000);
    cout<<pnp<<endl;
}
/// This code is less virgin than me

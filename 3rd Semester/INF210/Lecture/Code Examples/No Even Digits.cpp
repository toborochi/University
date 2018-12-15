#include <iostream>

using namespace std;

//Function to get a number without even digits
int f(int n)
{
    int newnumber;
    //Base Case
    if(n<10)
    {
        newnumber = n%2 * n;
    }else
    //General Case
    {
        newnumber = f(n/10);
        if(n%2==1)
        {
            newnumber = newnumber*10 + n%10;
        }
    }
    return newnumber;
}

int main()
{
    int x;
    cin>>x;
    cout<<"Number without even digits: "<< f(x) <<endl;

}
/// During third semester




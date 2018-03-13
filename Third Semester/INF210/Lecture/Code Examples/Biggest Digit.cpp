//Code to get the biggest digit in a natural number

#include <iostream>

using namespace std;

//Recursive function to get greatest digit in a natural number
int f(int n)
{
    int digit=-1;
    //Base Case
    if(n<10)
    {
        digit = n;
    }else
    //General Case
    {
        digit = f(n/10);
        if(n%10>digit)
        {
            digit = n
            %10;
        }
    }
    return digit;
}

int main()
{
    int x;
    cin>>x;
    cout<<"Greatest digit is: "<< f(x) <<endl;

}
/// During third semester




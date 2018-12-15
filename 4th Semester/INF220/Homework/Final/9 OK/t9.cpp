#include <iostream.h>
#include <conio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <algorithm>
#include <iomanip>

#include "TDAPilaPuntero.h"

using namespace std;

const char filename_in[] = "entrada.txt";


int main()
{

    string temp;
	ifstream file;
	file.open ("entrada.txt");

    TDAPilaPuntero A;
    TDAPilaPuntero B;
    TDAPilaPuntero R;

    A.crear();
    B.crear();
    R.crear();

    vector<string> v;

    while (!file.eof())
	{
		getline (file, temp);
        v.push_back(temp);
    }

    for(int i=0;i<v.size();++i)
    {
        if(A.vacia())
        {
           for(int j=0;j<v[i].size();++j)
            {
              int x = v[i][j] - 48;
              A.meter(x);
            }
        }else
        {
           string aux = v[i];
           int p = aux.size()-1;

               int carry=0;

           while(!A.vacia())
           {
               int x;
               A.sacar(x);

               int tmp = 0;
               if(p>=0)
               {
                 tmp = aux[p]-48;
                 p--;
               }


               int s = tmp+x+carry;

               if(s>=10)
               {
                   carry=1;
               }else
               {
                   carry=0;
               }


               B.meter(s%10);
           }
           if(carry!=0&&p<0)B.meter(1);
           while(p>=0)
           {
               int x = aux[p] - 48;
               int s = x+carry;

               if(s>=10)
               {
                   carry=1;
               }else
               {
                   carry=0;
               }
               B.meter(s%10);
               p--;
           }

           while(!B.vacia())
           {
               int x;
               B.sacar(x);
               A.meter(x);
           }

        }


    }

    string ans = "";
    while(!A.vacia())
    {
        int x;
        A.sacar(x);
        ans+=char(x+48);
    }

    reverse(ans.begin(),ans.end());
    cout<<ans<<endl;

	getch();
	return 0;
}



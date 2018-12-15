int SumaElementos(int v[],int n)
{
    int i,s;
    i=0, s=0;
    while(i<n)
    {
        s = s + v[i];
        i++;
    }
    return s;
}
//---------------------------------------------------------------------------

#pragma hdrstop

#include "TDAMatrizDispersaPunteroDoble.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

void TDAMatrizDispersaPunteroDoble::crear()
{
    PtrFil = NULL;
    vrep = 0;
}

void TDAMatrizDispersaPunteroDoble::dimensionar(int f,int c)
{
    nf = f;
    nc = c;
}

int TDAMatrizDispersaPunteroDoble::dimension_columna()
{
    return nc;
}

int TDAMatrizDispersaPunteroDoble::dimension_fila()
{
    return nf;
}

void TDAMatrizDispersaPunteroDoble::poner(int f,int c,int e)
{
    if(f>=1 && f<=nf && c>=1 && c<=nc)
    {
         if(elemento(f,c)==vrep)
         {
             // Si el elemento no existe buscamos si ya
             // hay una fila donde se quiere insertar
             NodoF *filp = PtrFil;
             while(filp!=NULL)
             {
                 if(filp->Fil==f)
                 {
                    break;
                 }
                 filp=filp->SigF;
             }

             if(filp==NULL)
             {
                NodoF *fp = new NodoF;
                NodoC *cp = new NodoC;

                fp->Fil = f;
                fp->PtrCol=cp;
                fp->AntF=PtrFil;
                fp->SigF=NULL;

                PtrFil = fp;


                cp->Col = c;
                cp->Dato=e;
                cp->SigCol=NULL;

             }else
             {
                 NodoC *cp = new NodoC;
                 NodoC *colp = filp->PtrCol;
                 while(colp->SigCol!=NULL)
                 {
                     colp=colp->SigCol;
                 }
                 colp->SigCol=cp;
                 cp->Col=c;
                 cp->Dato=e;
                 cp->SigCol=NULL;
             }

         }else
         {
             NodoF *filp = PtrFil;
             while(filp!=NULL)
             {
                 if(filp->Fil==f)
                 {
                     NodoC * colp = filp->PtrCol;
                     while(colp!=NULL)
                     {
                         if(colp->Col==c)
                         {
                             colp->Dato = e;
                             break;
                         }
                         colp=colp->SigCol;
                     }
                 }
                 filp=filp->SigF;
             }
         }
    }
}

int TDAMatrizDispersaPunteroDoble::elemento(int f,int c)
{
   if(f>=1 && f<=nf && c>=1 && c<=nc)
    {
        NodoF *filp = PtrFil;
        while(filp!=NULL)
        {
            if(filp->Fil==f)
            {
                NodoC *colp = filp->PtrCol;
                while(colp!=NULL)
                {
                    if(colp->Col==c)
                    {
                        return colp->Dato;
                    }
                    colp=colp->SigCol;
                }
            }
            filp=filp->SigF;
        }
        return vrep;
    }

}

void TDAMatrizDispersaPunteroDoble::definir_valor_repetido(int v)
{
    vrep = v;
}

void TDAMatrizDispersaPunteroDoble::mostrar()
{
    for(int i=1;i<=dimension_fila();++i)
    {
        for(int j=1;j<=dimension_columna();++j)
        {
            std::cout<<elemento(i,j)<<" ";
        }std::cout<<std::endl;
    }
}



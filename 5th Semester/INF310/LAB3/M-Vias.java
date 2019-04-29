/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Arbol;

/**
 *
 * @author Estudiante
 */
public class Arbol {
    private NodoM Raiz;
    private int m;
    
    public Arbol()
    {
        Raiz = null;
        m = 0;
    }
    
   private boolean Hoja(NodoM t)
   {
       if(t==null)
       {
           return false;
       }
       for(int i=1;i<=m;++i)
       {
           if(t.getHijo(i)!=null)
           {
               return false;
           }
       }
       return true;
   }
   
   /*
    Dado el nodo t (!=null) devuelve el nro de hijo por donde se desciende al insertar x
    Ver mi ejemplo en apuntes esta etiquetado con una estrella
   */
   private int HijoDesc(NodoM T,int x)
   {
       for(int i=1;i<=NodoM.M-1;++i)
       {
           if(x==T.getData(i))
           {
               return -1;
           }
           if(x < T.getData(i))
           {
               return i;
           }
       }
       return NodoM.M;
   }
    
}

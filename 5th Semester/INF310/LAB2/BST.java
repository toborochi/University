/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bst;

/**
 *
 * @author Estudiante
 */
public class Arbol {
    private Nodo Raiz;
    private int n;
    
    public Arbol()
    {
        Raiz = null;
        n = 0;
    }
    
    public void add(int x){
        if(Raiz==null){ 
            Raiz = new Nodo(x);
            n = 1; 
        }else // Caso general de la insercion
        {
            Nodo ant = null;
            Nodo p   = Raiz;
            while(p!=null)
            {
                ant = p;
                if(x<p.Data)
                {
                    p = p.HI;
                }else
                if(x>p.Data)
                {
                    p = p.HD;
                }else
                {
                    // Si es igual, ya existe y se sale de la insercion
                    return;
                }                  
            }
        }
    }
}

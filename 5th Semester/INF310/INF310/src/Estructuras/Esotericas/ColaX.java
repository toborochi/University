/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Estructuras.Esotericas;

import Estructuras.Listas.Nodo;

/**
 *
 * @author Asus
 */
public class ColaX {
    private Nodo L;
    private int n;
    
    public ColaX(){
     L = null;
     n = 0;
    }
    
    public void add(int dato){
        if(L==null){
            L = new Nodo(dato);
        }else
        {
            if(L.getData()==dato)return;
            
            Nodo Anterior = null;
            Nodo Actual   = L;
            while(Actual!=null){
                if(Actual.getData()==dato){break;}
                Anterior = Actual;              
                Actual = Actual.getLink();
            }
            
            if(Actual==null){
                Nodo Nuevo = new Nodo(dato);
                Anterior.setLink(Nuevo);
            }else
            {
                int x = Anterior.getData();
                Anterior.setData(Actual.getData());
                Actual.setData(x);
            }
        }
            
    }
    
    public void mostrar(){
        Nodo aux = L;
        while(aux!=null){
            System.out.print(aux.getData()+" ");
            aux=aux.getLink();
        }
        System.out.println();
    }
    
    
}

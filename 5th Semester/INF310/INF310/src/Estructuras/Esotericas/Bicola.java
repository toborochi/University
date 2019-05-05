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
public class Bicola {
    private Nodo L;
    private int n;
    
    public Bicola(){
        L = null;
        n = 0;
    }
    
    public void add(int dato){
        if(L==null){
            L = new Nodo(dato);
            L.setLink(L);
            n = 1;
            
        }else{
            Nodo p = new Nodo(dato);
            p.setLink(L.getLink());
            L.setLink(p);
            L = p;
            n++;
        }
            
    }
    
    public void addToFront(int dato){
        if(L==null){
            L = new Nodo(dato);
            L.setLink(L);
            n = 1;
        }else{
            Nodo tmp = new Nodo(dato);
            tmp.setLink(L.getLink());
            L.setLink(tmp);
            n++;
        }
    }
    
    public int pop(){
        if(n==1){
           int r = L.getData();
           L = null;
           n=0;
           return r;
        }
        int r = L.getLink().getData();
        L.setLink(L.getLink().getLink());
        n--;
        return r;
    }
    
    public int popLast(){
        Nodo pivote = L;
        int r = pivote.getData();
        while(pivote.getLink()!=L){
            pivote = pivote.getLink();
        }
        pivote.setLink(L.getLink());
        L = pivote;
        n--;
        return r;
    }
        
    
    public void mostrar(){
        Nodo p = L;
        int i=0;
        while(i<n){
            System.out.print(p.getData()+" ");
            p = p.getLink();
            ++i;
        }
        System.out.println();
    }
    
    public int lenght(){
        return n;
    }
        
        
}

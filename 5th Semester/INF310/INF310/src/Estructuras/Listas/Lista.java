/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Estructuras.Listas;

/**
 *
 * @author Asus
 */
public class Lista {
    
    private Nodo L;
    private int n;
    
    public Lista(){
        L = null;
        n = 0;
    }
    
    public boolean isVacia()
    {
        return (L==null);
    }
}

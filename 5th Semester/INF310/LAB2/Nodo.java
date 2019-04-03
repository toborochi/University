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
public class Nodo {
    
    // Atributos de un Arbol
    // Data=Dato, HI = Hijo Izquierdo, HD=Hijo Derecho
    public int Data;
    public Nodo HI;
    public Nodo HD;
    
    public Nodo()
    {
        // Constructor que llama al otro constructor Nodo(int x)
        this(0);
    }
    
    public Nodo(int x)
    {
        Data = x;
        HI = null;       
        HD = null;
    }
    
}

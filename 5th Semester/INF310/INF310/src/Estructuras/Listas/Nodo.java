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
public class Nodo {
    
    private int Data;
    private Nodo Link;
    
    // Constructor Mascara
    public Nodo()
    {
        this(0);
    }
    // Constructor de la Clase
    public Nodo(int dato)
    {
        Data = dato;
        Link = null;
    }
    
    // Getters y setters
    
    public int getData()
    {
        return Data;
    }
    
    public void setData(int Data){
        this.Data = Data;
    }
    
    public Nodo getLink()
    {
        return Link;
    }
    
    public void setLink(Nodo Link)
    {
        this.Link = Link;
    }
        
        
}

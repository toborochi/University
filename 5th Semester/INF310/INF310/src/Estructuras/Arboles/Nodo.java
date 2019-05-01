/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Estructuras.Arboles;

/**
 *
 * @author Asus
 */
public class Nodo {
    private int Data;
    private Nodo HI;
    private Nodo HD;
    
    public Nodo(){
        this(0);
    }
    
    public Nodo(int Data){
        this.Data = Data;
        HI = HD = null;
    }
    
    public void setData(int Data){
        this.Data = Data;
    }
    
    public int getData(){
        return Data;
    }
    
    public void setHI(Nodo N){
        HI = N;
    }
    
    public Nodo getHI(){
        return HI;
    }
    
    public void setHD(Nodo N){
        HD = N;
    }
    
    public Nodo getHD(){
        return HD;
    }
    
    public int cantidadHijos(){
        return ((HI!=null)?1:0)+ ((HD!=null)?1:0);
    }
}

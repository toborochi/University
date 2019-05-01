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
    
    public boolean isEmpty(){
        return (L==null);
    }
    
    public boolean elementExist(int dato){
        Nodo Actual = L;
        while(Actual!=null)
        {
            if(Actual.getData()==dato){
                return true;
            }
            Actual = Actual.getLink();
        }
        
        return false;
    }  
    
    public boolean elementExistRec(int dato){
        return exist(dato,L);
    }
            
    public void add(int dato){
        Nodo Anterior = null;
        Nodo Actual   = L;
        
        while(Actual!=null && dato>=Actual.getData())
        {
            Anterior = Actual;
            Actual = Actual.getLink();
        }
        
        Nodo Nuevo;
        if(Anterior==null){
            Nuevo = new Nodo(dato);
            Nuevo.setLink(L);
            L = Nuevo;
            n++;
        }else if(Anterior.getData()!=dato){
            Nuevo = new Nodo(dato);
            Anterior.setLink(Nuevo);
            Nuevo.setLink(Actual);
            n++;
        }    
    } 
    
    // Elimina un elemento en la lista
    public void eliminar(int x){
        Nodo Anterior = null;
        Nodo Actual   = L;
        
        while (Actual != null && x > Actual.getData()){
            Anterior = Actual;
            Actual = Actual.getLink();
        }
        
        if (Actual != null && Actual.getData() == x){  //x existe en la Lista 
            if (Anterior == null)
                L = L.getLink();    //x era el primero de la Lista
            else
                Anterior.setLink(Actual.getLink());
            
            Actual.setLink(null);
            n--;    
        }
    }
  
    public int length(){
        return n;
    }
    
    public int get(int position){
        Nodo N=L;
        int i=0;
        while (N != null){
            if (i==position)
                return N.getData();
            
            N = N.getLink();
            i++;
        }
        
        //La posición 'position' no existe
        String s = (isEmpty()? "la Lista está vacía" : "las posiciones válidas van de 0 a "+(length()-1));
        System.err.println("Lista.get: La posicion "+position+" está fuera de rango ("+ s +").");
        return -1;
    }
    
    // Ej. 3. del Practico
    public void del(int position){
        if(position<length()){
            Nodo Anterior = null;
            Nodo Actual = L;
            int i =0;
            while(Actual!=null && i<position){
                Anterior = Actual;
                Actual = Actual.getLink();
                ++i;
               
            }
             n--;
            Anterior.setLink(Actual.getLink());
            Actual.setLink(null);
            
        }else
        {
            System.err.println("La posicion excede el largo de la Lista");
        }
            
    }
        
    // EJ. 4. del Practico
   private boolean exist(int dato,Nodo nod){
        if(nod==null)
            return false;
        
        if(nod.getData()==dato)
            return true;
        
        return exist(dato,nod.getLink());     
    }
    
   @Override
   public String toString(){
       String t = "[";
       for(int i=0;i<length();++i)
       {
           t+=get(i);
           t+= (i==length()-1)? "":",";
       }
       t+="]";
       return t;
   }
}

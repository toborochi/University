package Lista;

import java.io.BufferedReader; 
import java.io.IOException; 
import java.io.InputStreamReader; 

public class Main {
    
    public static void main(String[] args) throws IOException   {    
       Parser parser = new Parser();
       
       
               
       
         
    
       String lista = "";
       
       while(lista.compareTo("kill")!=0){
            BufferedReader reader =  
                   new BufferedReader(new InputStreamReader(System.in)); 
            lista = reader.readLine(); 
            
            int r = parser.evaluar(lista);

        if (parser.getError() != 0){
           System.out.println("Error de sintaxis");
             System.out.println(parser.getError());}
        else
            System.out.println("El valor de la Lista es " + r);    
            
            
       }
       
       
        
    }
    
}

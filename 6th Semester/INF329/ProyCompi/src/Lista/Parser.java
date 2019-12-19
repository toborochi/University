
/**
 * Faculty of Engineering in Computer Science and Telecomunications
 * Author: Anez Vladimirovna Leonardo
 */

package Lista;

import java.util.List;
import java.util.ArrayList; 
import java.util.Arrays;

public class Parser {
    private Cinta cinta;
    private Analex analex;
    
    private int error;          //Si error=0, la expresión es correcta
    
    public Parser(){
        cinta  = new Cinta();
        analex = new Analex(cinta);
    }
    
    public int evaluar(String list){
        cinta.init(list);
        analex.init();
        error = 0;          //No hay error aún
        int ans = Lista();     //Llamar al símbolo inicial.
        match(Token.FIN);
        return ans;
    }
    
    public int getError(){
        return error;
    }
    
    private void setError(int e){
        if (error == 0)
            error = e;      //Solo aceptar el 1er error.
    }
    
    /*
        BNF
        Lista -> [elem]
         elem -> expr iter | Lista iter | lambda
         iter -> , elem | lambda
         expr -> NUM expr1
        expr1 -> op NUM expr1 | lambda
           op -> + | -
    */
    
    //Escribir las demás producciones....
    //private algo(){  //Algo ->...
    
    private int Lista(){//Lista ->... Símbolo inicial. Devuelve el resultado de la Lista.
        int r=0;
        match(Token.CA);
        r = elem();
        match(Token.CC);
        return r;
    }
     
     
     private int elem(){
         int r = 0;
         List<Integer> lista1 = Arrays.asList(Token.NUM);
         List<Integer> lista2 = Arrays.asList(Token.CA);
          if(lista1.contains(analex.Preanalisis().getNom())){
            r += expr();
            r +=iter();
         }else 
          if(lista2.contains(analex.Preanalisis().getNom())){
            r-=Lista();
            r+=iter();
         }else{
              // LAMBDA
               return r;
         }
        return r;
     }
     
     private int iter(){
         int r = 0;
         List<Integer> lista1 = Arrays.asList(Token.COMA);
         if(lista1.contains(analex.Preanalisis().getNom())){
             match(Token.COMA);
             r+=elem();
         }else
         {
             // LAMBDA
             return r;
         }
         return r;
     }
     
     private int expr(){
         int r = analex.Preanalisis().getAtr();
         match(Token.NUM);
         r += expr1();
         return r;
     }
     
     private int expr1(){
         int r =0;
         List<Integer> lista1 = Arrays.asList(Token.MAS,Token.MENOS);
         if(lista1.contains(analex.Preanalisis().getNom())){
             boolean signo;
             if(analex.Preanalisis().getNom()==Token.MAS){
                 signo = true;
             }else{
                 signo = false;
             }
             op();
             
             r = analex.Preanalisis().getAtr() * ((signo)?1:-1);
             
             
             match(Token.NUM);
             r += expr1();
         }else{
             // LAMBDA
             return r;
         }
         return r;
     }

     private void op(){
          List<Integer> lista1 = Arrays.asList(Token.MAS);
          List<Integer> lista2 = Arrays.asList(Token.MENOS);
          
          if(lista1.contains(analex.Preanalisis().getNom())){
              match(Token.MAS);
          }else
          if(lista2.contains(analex.Preanalisis().getNom())){
              match(Token.MENOS);
          }
     }
     
     /*
     private void com(){
          List<Integer> lista1 = Arrays.asList(Token.COMA);
          
          if(lista1.contains(analex.Preanalisis().getNom())){
              match(Token.COMA);
          }else{
              // LAMBDA
          }
     }
    */
    
    
    private void match(int nomToken){
        if (analex.Preanalisis().getNom() != nomToken)
            setError(1);   //u otro valor
        else
            analex.avanzar();
    }
    
    // SINTAXIS, EVALUACION , LUJOS Orden de hacer cosas segun GINNO
    
    public String getErroMsg(int erroCode){
        switch(erroCode){
            case 1: return "Falta cerrar [";
            case 2: return "Falta cerrar ]";
        }
        return "";
    }
    
    private void matchOpcional(int nomToken){
        if(analex.Preanalisis().getNom()==nomToken){
            analex.avanzar();
        }else
            if(nomToken==Token.CA)
                setError(2); // Falta abrir  [
        else
            if(nomToken==Token.CC)
                setError(1); // Falta abrir  ]
    }
}

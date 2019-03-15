
package complex;

public class Complejo {

    // Representacion (como guardamos los datos)
    private float a,b;
    

    public Complejo()
    {
        a = b = 0f;
    }

    // Constructor de la Clase
    public Complejo(float a, float b)
    {
        this.a = a;
        this.b = b;
    }
    
    public float modulo()
    {
        return (float) Math.sqrt(a*a + b*b);
    }
  
    public Complejo Suma(Complejo x, Complejo y)
    {        
        return new Complejo(x.a + y.a,x.b+y.b); 
    }
    
    public Complejo Resta(Complejo x, Complejo y)
    {        
        return new Complejo(x.a - y.a,x.b - y.b); 
    }
    
    /**
     * Funcion que retorna la parte real de un numero complejo.
     * @return 
     */
    public float getReal(){
        return a;
    }
    
    /**
    * Funcion que retorna la parte imaginaria adjunta de un numero complejo. 
    * @return 
    */
    public float getImaginario(){
        return b;
    }
}

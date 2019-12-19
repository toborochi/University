package Lista;

import java.util.logging.Level;
import java.util.logging.Logger;

public class Cinta {
    private static final char CR = 13;   //Carry-Return
    private static final char LF = 10;   //Line-Feed

        //Declaración de los chars EOF y EOLN
    public static final char EOF  = 0;
    public static final char EOLN = LF;     //Usar EOLN de Linux.
    
        //Campos principales de la class.
    private String celdas;
    private int cabezal;
    
        //Campos secundarios
    private int fila, col;
    private char charAnt;
    
    public Cinta(){ //Construye una cinta vacía (solo tiene el EOF).
        this("");
    }
    
    public Cinta(String progFuente){
       init(progFuente);
    }
    
    /**(Re)Carga la cinta con un nuevo programa fuente y pone el cabezal
     * al principio de la cinta.
     * @param progFuente el nuevo codigo fuente a secuenciar.
     */
    public final void init(String progFuente){  
        celdas = (progFuente==null ? "" : progFuente);
        init();
    }
    
    public void init(){ //Rewind.
        fila = col = 0;
        charAnt = EOF;
        
        cabezal = 0;
        ignoreCR(); 
    }
    
    public char cc(){
        if (cabezal < celdas.length())        
            return celdas.charAt(cabezal);
        
        return EOF;
    }
    
    public void avanzar(){
        char c = cc();
        if (c==EOF){  
            String msj = "Cinta.avanzar: No se puede avanzar más allá del EOF.";
           
            try {
                throw new Exception(msj);
            } catch (Exception ex) {
                Logger.getLogger(Cinta.class.getName()).log(Level.INFO, msj, ex);
            }          
            return;
        }
        
        if (charAnt==EOLN){  //Se terminó de secuenciar la fila actual.
            fila++;         
            col = 0;
        }    
        
        charAnt = c;
        forward();
        ignoreCR();
    }

    
    /** Devuelve la fila donde se encuentra el cabezal.  Las filas se enumeran
     *  desde el cero
     * @return la fila donde se encuentra el cabezal
     */
    public int getFila() {
        return fila;
    }

    public int getColumna() {
        return col;
    }
    
    /**Devuelve el número de celda donde se encuentra el cabezal. Las celdas
     * se enumeran desde el 0.
     * @return la posición del cabezal.
     */
    public int getPos(){
        return cabezal;
    }
     
    public void onComunicate(int pos, String lexema){ //Overridable. Para la interfaz
        
    }
    
    public void comunicate(int pos, String lexema){ //Usado por el Procesador de Errores.
        onComunicate(pos, lexema);
    }
    
       
    private void ignoreCR(){    //Mueve el cabezal, con la intención de pasar los Carry-returns
        while (cc()==CR)
            forward();
    }
    
    private void forward(){ //Mueve el cabezal una posición a la derecha.
        cabezal++;
        col++;
    }    
}

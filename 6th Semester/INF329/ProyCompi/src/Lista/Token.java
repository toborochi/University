
package Lista;

public class Token {
        //Para el NOMBRE del token. No modifique estos valores.
    public static final int FIN   = 0;
    public static final int ERROR = 1;
    public static final int CA    = 2;    //"["  corchete abierto.
    public static final int CC    = 3;    //"]"  corchete cerrado
    public static final int MAS   = 4;
    public static final int MENOS = 5;
    public static final int COMA  = 6;
    public static final int NUM   = 7;
  
      
        //Campos de la class
    private int nom, atr;   //<nom, atr>
    
    public Token(){
       this(FIN); 
    }
    
    public Token(int nombre){
        this(nombre, 0);
    }
    
    public Token(int nombre, int atributo){
        nom = nombre;   atr=atributo;
    }

    
    public void set(int nombre, int atributo){
        nom = nombre;   atr=atributo;
    }

    public void setNom(int nom) {
        this.nom = nom;
    }

    public void setAtr(int atr) {
        this.atr = atr;
    }

    public int getNom() {
        return nom;
    }

    public int getAtr() {
        return atr;
    }
    
    
    public String getLexem(){   //Devuelve el lexema que caracteriza a éste token
        try {
            return LEXEM[nom]; 
        } catch (Exception e) {
            return "";
        }
    }
    
    public static int getNomToken(char cc){    //Dado el char cc, devuelve el nombre del token (solo para tokens monosímbolos)
        for (int i=0; i<LEXEM.length; i++){
            if (LEXEM[i].length()== 1 && LEXEM[i].charAt(0)==cc)
                return i;
        }
        return -1;      //cc no forma un token
    }
    
    @Override
    public String toString(){
        String atrS = (nom == NUM ? ""+atr : "_");
        return "<" + getNomStr(nom) + "," + atrS + ">";
    }
       
   
    private String getNomStr(int i){
        try {
            return NOMtokenSTR[i]; 
        } catch (Exception e) {
            return DESCONOCIDO;
        }
    }
    
    
    private static final String DESCONOCIDO = "??";
      
    private static final String NOMtokenSTR[] ={
       "FIN", "ERROR", "CA", "CC", "MAS", "MENOS", "COMA", "NUM"
    };  
    
    private static final String LEXEM[] ={
        "", "", "[", "]", "+", "-", ",", ""
    };
}

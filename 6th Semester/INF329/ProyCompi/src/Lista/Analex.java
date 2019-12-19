package Lista;

public class Analex {
    private Cinta M;
    private Token R;
    private String ac;
    private int pos;        //Posición de inicio del lexema del preanalisis(), calculado en el dt(). 
    
    public Analex(Cinta c){
        M = c;
        R = new Token();
        init();
    }
    
    public final void init(){
        M.init();
        avanzar();      //Calcular el primer preanalisis.
    }
    
    public Token Preanalisis(){
        return R;
    }
    
    public String lexema(){
        return ac;
    }
    
    public void avanzar(){
       dt();
    }
    
    private void dt(){
        int estado = 0;
        int nom;
        ac = "";
       
            //Quitar espacios iniciales
        while (isEspacio(M.cc())){  
            M.avanzar();
        }
        
        pos = M.getPos();       //Posición de inicio del lexem que se formará en ac.
       
        while (true){
            char c = M.cc();
           
            switch (estado){
                case 0:  
                        if (c == Cinta.EOF){
                           R.setNom(Token.FIN);
                           return;
                        }
                        
                        ac = ""+c;      //Empezar a formar el lexem
                        
                        if ( (nom=Token.getNomToken(c)) != -1){     //M.cc() es un token monosímbolo
                            R.setNom(nom);
                            M.avanzar();
                            return;
                        }
                        
                        if (Character.isDigit(c)){  //Empezar a formar el NUM
                            M.avanzar();
                            estado = 10;
                        }
                        else{   //Otro
                            R.setNom(Token.ERROR);
                            M.avanzar();            //Avanzar para salir del error léxico.
                            return;
                        }                       
                        break;
                
                case 10:        //Reconocer NUM
                            while ( Character.isDigit(M.cc()) ){
                              ac += M.cc();
                              M.avanzar();
                            }
                            R.set(Token.NUM, Integer.parseInt(ac));
                            return;
            } //End switch
        }
    }
    
    
    private boolean isEspacio(char cc){
        return (cc==Cinta.EOLN || cc==32 || cc==9);
    }
    
}

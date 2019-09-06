package codigo_3;

public class OPCODE {
//******* CONSTANTES PARA el Codigo de Operación (usan el prefijo "OP" de "OPeration").  ¡¡NO MODIFIQUE SUS VALORES!!
    public static final int NOP       = 0;      //No-Operation  
    public static final int OPNL      = 1;      //Salto de línea.
    public static final int OPRET     = 2;      //return.
    
    public static final int OPCALL    = 3;      //e.g. CALL Proc
    public static final int OPGOTO    = 4;      //e.g. GOTO Etiqueta
    
    public static final int OPINC     = 5;      //e.g. INC Var
    public static final int OPDEC     = 6;      //e.g. DEC Var
    
    public static final int OPWRITE   = 7;      //e.g. WRITE(VAR)
    public static final int OPREAD    = 8;      //e.g. READ(Var)
    public static final int OPWRITES  = 9;      //e.g. WRITES(StringCtte)
    
    public static final int ETIQUETA  = 10;     //e.g.  E1
    
    public static final int OPMINUS   = 11;     // -  unario aritmético.
    public static final int OPNOT     = 12;     // !  (not)
    public static final int OPAND     = 13;     // &&   e.g. var = var and var
    public static final int OPOR      = 14;     // ||

    public static final int OPSUMA    = 15;     // +    e.g. var = var + var
    public static final int OPMENOS   = 16;     // -
    public static final int OPPOR     = 17;     // *
    public static final int OPDIV     = 18;     // DIV  (división entera)
    public static final int OPMOD     = 19;     // MOD
    
    public static final int OPMEN     = 20;     // <    e.g. var = (var < var)
    public static final int OPMAY     = 21;     // >
    public static final int OPIGUAL   = 22;     // ==
    public static final int OPDIS     = 23;     // !=  (distinto)
    public static final int OPMEI     = 24;     // <=
    public static final int OPMAI     = 25;     // >=
    
    public static final int OPIF0     = 26;     //e.g. IF (Var=0) => GOTO Etiqueta
    public static final int OPIF1     = 27;     //e.g. IF (Var=1) => GOTO Etiqueta 
    
    public static final int OPASIGNID = 28;     //e.g. Var=Var
    public static final int OPASIGNNUM= 29;     //e.g. Var=Número
//*******    
    
    public static boolean isOpCodeValido(int OpCode){
        return (NOP <= OpCode && OpCode <= OPASIGNNUM);
    }
    
    
    public static int getCantDirs(int OpCode){  //Devuelve la cantidad de Direcciones que usa la OpCode dada.            
        if (OPCALL <= OpCode && OpCode <=ETIQUETA)
            return 1;   //Estas OP usan una dirección.  Por ejemplo:  CALL Dir1. 
        
        if (OPAND <= OpCode && OpCode <=OPMAI)
            return 3;   //Estas OP usan 3 direcciones. (e.g. OPSUMA: Dir1 = Dir2 + Dir3)
                
        if ((OPIF0 <= OpCode && OpCode <=OPASIGNNUM) || OpCode == OPMINUS || OpCode == OPNOT)
            return 2;   //Estas OP usan 3 direcciones. (e.g. OPNOT: Dir1 = NOT Dir2)
        
        return 0;   
    }    

    
//*******    
    public static final String DESCONOCIDO = "??";
    
    public static String Mnemonico(int OpCode){    //Devuelve el nombre de ctte del OpCode dado (vease arriba las "public static final int")
        final String M[]={"NOP", "OPNL", "OPRET", 
                          "OPCALL", "OPGOTO", "OPINC", "OPDEC", "OPWRITE", "OPREAD", "OPWRITES", "ETIQUETA", 
                          "OPMINUS", "OPNOT", "OPAND", "OPOR", "OPSUMA", "OPMENOS", "OPPOR", "OPDIV", "OPMOD", 
                          "OPMEN", "OPMAY", "OPIGUAL", "OPDIS", "OPMEI", "OPMAI", "OPIF0", "OPIF1", "OPASIGNID", "OPASIGNNUM"};
        
        if (isOpCodeValido(OpCode))
            return M[OpCode];
        
        return DESCONOCIDO;        
    }

    
    public static String OpCodeToStr(int OpCode){    //Devuelve el lexema que caracteriza al OpCode dado.
        final String Simbolo[]={"NOP", "NL", "RET", "CALL", "GOTO", "INC", "DEC", "WRITE", "READ", "WriteS", "E", "-", 
                                "NOT", "AND", "OR", "+", "-", "*", "DIV", "MOD", "<", ">", "==", "!=", "<=", ">=", "IF", "IF"};        
        
        if (NOP <= OpCode && OpCode <= OPIF1)
            return Simbolo[OpCode];
        
        return DESCONOCIDO;        
    }
    
}

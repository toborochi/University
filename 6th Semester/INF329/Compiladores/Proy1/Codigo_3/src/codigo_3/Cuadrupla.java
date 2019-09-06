package codigo_3;


public class Cuadrupla {
    private int OpCode;          //Código de Operación (usa las constantes definidas en la class OPCODE).
    private int Dir[];           //Direcciones de memoria.    
        
    public Cuadrupla(){
       Dir = new int[3];
       set(OPCODE.NOP, 0, 0, 0);
    }

    public Cuadrupla(int TipoOp, int Dir1, int Dir2, int Dir3){
        Dir = new int[3]; 
        set(TipoOp, Dir1, Dir2, Dir3);    
    }
    

    public void setOpCode(int OpCode) { //Setter del Tipo de Operación
        this.OpCode = validar(OpCode);
    }
    
    public void setDir(int Index, int dir){  //Setter de la Dir de Memoria Index (1<=Index<=3)
        if (1 <= Index && Index <= 3)        //e.g  C.setDir(1, 2), actualizará la 1era. Dir. de Mem con 2.
            Dir[Index-1] = dir;
    }

    
    public int getTipoOp() { //Getter del Tipo de Operación
        return OpCode;
    }
    
    public int getDir(int Index){  //Getter de la Dir de Memoria Index (1<=Index<=3)
        if (1 <= Index && Index <= 3)
            return Dir[Index-1];
        
        return 0;
    }

    
    public final void set(int opCode, int Dir1, int Dir2, int Dir3){  //Actualiza TODOS los campos de la Cuadrupla.
       this.OpCode = opCode;
       this.Dir[0] = Dir1;
       this.Dir[1] = Dir2;
       this.Dir[2] = Dir3;
    }

    
    private int validar(int OpCode){ //Valida el Codigo de Operación
        if (OPCODE.isOpCodeValido(OpCode))
            return OpCode;
        
        return OPCODE.NOP;
    }
    
 
    
//*******    
    private static final String DESCONOCIDO="??";
    
    @Override
    public String toString(){   //Para usar con System.out.print
        switch (OPCODE.getCantDirs(OpCode)){
            case 1 : return toString1();
            case 2 : return toString2();
            case 3 : return toString3();                
        }
        
        return OPCODE.OpCodeToStr(OpCode);      //El OpCode de la Cuadrupla usa 0 direcciones.        
    }    
    

        
    private String toString1(){ //Devuelve la Cuadrupla as String sii su OpCode usa una sola Dir.
        int Dir1  = getDir(1);
        String op = OPCODE.OpCodeToStr(OpCode);     //op = lexema de la Operacion (e.g. op="CALL")
        switch (OpCode){
            case OPCODE.OPCALL   : return op+" "+getNombreProc(Dir1);
            case OPCODE.ETIQUETA : return etiqueta(Dir1)+":";
            case OPCODE.OPGOTO   : return op +" "+etiqueta(Dir1);
            case OPCODE.OPWRITES : return op +"("+getStrCtte(Dir1)+")";
        }
        
        String Var = getNombreVar(Dir1);
        
        if (OpCode==OPCODE.OPWRITE || OpCode==OPCODE.OPREAD)
            return op + "("+Var+")";
        
        return op+" "+Var;      //Para INC y DEC.
    }
    
    
    private String toString2(){ //Devuelve la Cuadrupla as String sii su OpCode usa 2 Dir's.
        int Dir2     = getDir(2);
        String SDir1 = getNombreVar( getDir(1) );
        String SDir2 = getNombreVar( Dir2 );
        
        switch (OpCode){
            case OPCODE.OPIF0      : return "IF ("+SDir1+"=0) => GOTO "+etiqueta(Dir2);
            case OPCODE.OPIF1      : return "IF ("+SDir1+"=1) => GOTO "+etiqueta(Dir2);
            case OPCODE.OPASIGNNUM : return SDir1+" = "+Dir2;    
        }
        
            //Producir el String para OPASIGNID, OPMINUS y OPNOT.
        String op = OPCODE.OpCodeToStr(OpCode)+" ";
        if (OpCode == OPCODE.OPASIGNID)
            op ="";
        
        return SDir1+ " = "+ op + SDir2;
    }   
    
    
    private String toString3(){ //Devuelve la Cuadrupla as String sii su OpCode usa 3 Dir's.
        String op = OPCODE.OpCodeToStr(OpCode);     //Símbolo de la Operacion (e.g "AND")
        
        String SDir1 = getNombreVar( getDir(1) );
        String SDir2 = getNombreVar( getDir(2) );
        String SDir3 = getNombreVar( getDir(3) );
        
        if (OPCODE.OPAND <= OpCode && OpCode <=OPCODE.OPMOD)
            return SDir1+" = "+SDir2+" "+op+" "+SDir3;
        
        return SDir1+" = ("+SDir2+" "+op+" "+SDir3+")";     //Para las OPREL (<, >, =, <=, >=, !=).
    }
     
    
    private String etiqueta(int Dir){   //Corrutina de toString1 y toString2. 
        if (Dir<=0)
            return "E "+DESCONOCIDO;
        
        return "E"+Dir;
    }
    
    
    private String getNombreVar(int Dir){   //Devuelve el Nombre de la variable dada por su Dir.
        if (Dir > 0)
            return "t"+Dir;     //La variable es un temporal
        
        Dir = -Dir;
        
        TSID TsID = TS.getTSID();   //Obtener la TSID.        
        if (TsID.isVar(Dir))    //Verificar si en la posicion Dir de la TSID hay una Variable
            return TsID.getNombreID(Dir);
        
        return DESCONOCIDO;
    }

    
    
    private String getNombreProc(int Dir){  //Devuelve el Nombre del Proc dado por su Dir.  
        Dir = -Dir;
        TSID TsID = TS.getTSID();   //Obtener la TSID.        
        if (TsID.isProc(Dir))
           return TsID.getNombreID(Dir);

        return DESCONOCIDO;        
    }

    
    private String getStrCtte(int Dir){
        Dir = -Dir;
        TSS Tss = TS.getTSS();      //Obtener la tabla de StringCtte´'s
        if (Tss.posValida(Dir))
            return '"'+Tss.getStr(Dir)+'"';
   
        return DESCONOCIDO;                
    }
    
    
}



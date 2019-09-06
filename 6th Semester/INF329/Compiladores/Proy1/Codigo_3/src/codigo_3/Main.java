package codigo_3;


public class Main {
    
    private static void programar(Codigo3 c3){
        TS.Init(); // Ambas tablas inician vacias (TSID & TSS)
        TSID tsid = TS.getTSID();
        TSS tss   = TS.getTSS();
        
        
        
        
        
        tsid.addProc("Lectura");
        tsid.addVar("N", TSID.TIPOINT);
        tsid.addProc("$Main");
        
        tsid.addVar("i", TSID.TIPOINT);
        tss.add("N=");
        tss.add("*");
        
        
        
        c3.add(OPCODE.ETIQUETA,1);      // E1
        c3.add(OPCODE.OPWRITES,0);      // WRITES("N=")
        c3.add(OPCODE.OPREAD,-1);       // READ(N)
        c3.add(OPCODE.OPASIGNNUM,1,0);  // t1 = 0
        c3.add(OPCODE.OPMEN,2,-1,1);    // t2 = (N<t1)
        c3.add(OPCODE.OPIF1,2,1);       // IF(t2=t1) => GOTO E1
        c3.add(OPCODE.OPRET);           // RET
        
        
        // $Main
        c3.add(OPCODE.OPCALL,0);        // CALL Lectura
        c3.add(OPCODE.OPASIGNNUM,-3,1); // i=1
        c3.add(OPCODE.ETIQUETA,2);      // E2:
        c3.add(OPCODE.OPMEI,1,-3,-1);   // t1 = (i<=N)
        c3.add(OPCODE.OPIF0,1,3);       // IF(t1=0)=> GOTO E3
        c3.add(OPCODE.OPWRITES,-1);     // WRITES("*")
        c3.add(OPCODE.OPINC,-3);        // INC i
        c3.add(OPCODE.OPGOTO,2);        // GOTO E2
        c3.add(OPCODE.ETIQUETA,3);      // E3
        c3.add(OPCODE.OPRET);           // RET
        
        // Actualizar las tablas
        tsid.setBoundsProc(0, 0, 2); //0=Lectura (En la Tabla), 0=Inicio (C3), 2=Cantidad de Temporales
    
        tsid.setBoundsProc(2, 17, 1);//2=Lectura (En la Tabla), 17=Inicio (C3), 1=Cantidad de Temporales
    
        c3.save("reptiliano.c3");
        
    }
    
    public static void main(String[] args) {
        Codigo3 c3 = new Codigo3();
        programar(c3);
        
        c3.println();
    }
    
}

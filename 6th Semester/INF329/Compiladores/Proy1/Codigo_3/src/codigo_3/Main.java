package codigo_3;


public class Main {
    
    private static void programar(Codigo3 c3){
        TS.Init(); // Ambas tablas inician vacias (TSID & TSS)
        TSID tsid = TS.getTSID();
        TSS tss   = TS.getTSS();
        
        
        
        tsid.addProc("$Main");
        tsid.addVar("n", TSID.TIPOINT);
        tsid.addVar("i", TSID.TIPOINT);
        
        c3.add(OPCODE.OPASIGNNUM,-2,0);
        c3.add(OPCODE.OPREAD,-1);
        c3.add(OPCODE.OPASIGNNUM,1,5);
        c3.add(OPCODE.ETIQUETA,1);
        c3.add(OPCODE.OPMEN,2,-2,1);
        c3.add(OPCODE.OPIF1,2,2);
        c3.add(OPCODE.OPINC,-2);
        c3.add(OPCODE.OPGOTO,1);
        c3.add(OPCODE.ETIQUETA,2);
        c3.add(OPCODE.OPRET);
        
        
        c3.save("codigo.c3");
        
    }
    
    public static void main(String[] args) {
        Codigo3 c3 = new Codigo3();
        programar(c3);
        
        c3.println();
    }
    
}

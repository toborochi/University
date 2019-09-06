package codigo_3;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/** Esta class implementa el MODULO Tabla de Simbolos.  Desde esta
   class se manipulan todas las Tablas.
   
   Esta class, en realidad trabaja como un objeto.  Por lo tanto, no se debe instanciar esta class.
 */

public class TS {   
    private static TSID TsID;
    private static TSS  Tss;
    
    static {
        TsID = new TSID();
        Tss  = new TSS();
    }
    
    
    /** Inicializa TODAS las Tablas de Símbolos del Compilador. 
     *  Es decir, hace TSS = TSID = (vacía)
     */
    static public void Init(){  //Inicializar las tablas.
        TsID.Init();
        Tss.Init();
    }
    
    
    static public TSID getTSID(){
        return TsID;
    }
    
    
    static public TSS getTSS(){
        return Tss;
    }
    
    
    static public void println(){   //Para mostrar las Tablas en consola.
        System.out.println(TsID);
        System.out.println(Tss);
    }

    
    
//*******    
    static public boolean Save(DataOutputStream F){    //Guarda las Tablas al Flujo F. Si hubo error al guardar, devuelve false.
        return TsID.Save(F) && Tss.save(F);
    }
    
    
    private static boolean Clipboard = false;
    private static TSID AuxTsID;
    private static TSS AuxTss;
            
    static public boolean Copy(DataInputStream F){  //Lee Tablas TSID y TSS del flujo F y las deposita en auxiliares.
        AuxTsID = TSID.Open(F);
        AuxTss  = TSS.open(F);
        
        Clipboard = (AuxTsID != null && AuxTss != null);
        return Clipboard;
    }
    
    
    static public void Paste(){     //Copia las Tablas Auxiliares a las originales.
        if (Clipboard){
            TsID = AuxTsID;
            Tss  = AuxTss;
            Clipboard = false;
        }
    }
    
}

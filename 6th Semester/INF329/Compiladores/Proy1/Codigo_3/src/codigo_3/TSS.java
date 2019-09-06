package codigo_3;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.ArrayList;

/** Esta class manipula la Tabla de Simbolos de las String Constantes.
 *  No instancie esta class, porque la class TS lo hace.
 */

public class TSS {
    private ArrayList <String> L;
    
    TSS(){
        L = new ArrayList<String>();
    }
   
    
    public void Init(){ //Inicializa la TSS.  Es decir, TSS=(Vacía).
        L.clear();
    }
    
    
    public int length(){
        return L.size();
    }
    
    
    public int Existe(String Str){ //Devuelve la posición (índice de L) donde se encuentra la StringCtte Str.  Si no existe devuelve -1.
        for (int i=0; i<=length()-1; i++){
            if (L.get(i).equals(Str))
                return i;
        }
        return -1;
    }

    
    public int add(String Str){ //Inserta una nueva StringCtte. Devuelve la posición donde está/fue alojada.
        int pos = Existe(Str);
        if (pos != -1)
            return pos;     //La Str ya existe en la TSS.
        
        L.add(Str);            
        return L.size()-1;  //La Str fue insertada al final.
    }
    
    
    public String getStr(int Index){ //Devuelve la StingCtte de la posición Index
        if (!posValida(Index)){ //Diverge.
            System.err.println("TSS.getStr: La Posición "+ Index +" no existe en la TSS.");
            return "";
        }    
        return L.get(Index);
    }
    
    
    public boolean posValida(int Index){
        return (0 <= Index && Index <= length()-1);
    }


    
//*******
    boolean save(DataOutputStream F){    //Guarda la TSS al Flujo F. Si hay error, return false.
        try{            
                //Guardar la Cant. de StringCtte's.
            int n=length();
            F.writeInt( n );
            
                //Guardar los StringCtte's.
            for (int i=0; i<n; i++)
                F.writeUTF(L.get(i));
            
            return true;                
        }catch(Exception e){}
        
        return false;
    }

    
    static TSS open(DataInputStream F){    //Lee una TSS del Flujo F.        
        TSS Tabla = new TSS();
        
        try{            
                //Leer la Cantidad de StringCtte's almacenadas.            
            int n = F.readInt();
            
                //Leer las StringCtte's y depositarlas en la lista Tabla.L
            for (int i=1; i<=n; i++)
                Tabla.L.add( F.readUTF() );
           
            return Tabla;                
        }
        catch(Exception e){ }
        
        Tabla = null;   //Ayudar a la liberacion de memoria.
        return Tabla;   //return null. Porque no se pudo leer una TSS del Flujo F.
    }
//*******
    

    
    private static final String TITLE = "TSS";
    
    @Override
    public String toString(){ //Para mostrar la TSS con System.out.print
        if (length()==0)
            return "("+TITLE+" Vacía)";
       
        final char   LF ='\n';
        final String PADDLEFT = "   ";
        
        String Result;
        int n = LongitudFila();
        
        String BordeSup  = PADDLEFT+' '+Utils.RL('_', n);
        String Titulo    = PADDLEFT+'|'+Utils.FieldCenter(TITLE, n)+'|';
        String BordeInf  = PADDLEFT+'+'+Utils.RL('-', n)+'+';
        
        Result = BordeSup + LF + Titulo + LF + BordeInf + LF;
        
        int FieldPos = PADDLEFT.length();
        for (int i=0; i<=length()-1; i++){
                String Posicion = Utils.FieldRight(""+i, FieldPos);
                String Fila     = '|' +  Utils.FieldLeft('"'+L.get(i)+'"', n) + '|';
                Result += Posicion + Fila + LF;
        }
        
        return Result+BordeInf+LF; 
    }
    
    
    private int LongitudFila(){ //Corrutina de print().
        int May=TITLE.length();
        for (int i=0; i<=length()-1; i++){
            int LonStr = L.get(i).length();
            if (LonStr > May)
                May = LonStr;
        }
        
        return May+2;   //+2 comillas
    }    

}

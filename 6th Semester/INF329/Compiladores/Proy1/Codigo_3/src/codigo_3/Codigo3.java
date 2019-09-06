package codigo_3;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class Codigo3 {
    private int V[];        //"ByteCode" del C3.
    private int n;          //Dimensión de V[].
       
    private int CantTmp;    //Contador de temporales.
    private int CantLbl;    //Contador de Etiquetas.
    
    private Cuadrupla C;    //Para uso auxiliar de add y toString.
            
    public static final int MAXBYTECODE=1500;
    
    
    public Codigo3(){
        V = new int[MAXBYTECODE+1];
        n = -1;
        CantLbl = 0;
        CantTmp = 0;
        C = new Cuadrupla();
    }   
 
           
    public int lenght(){ //Devuelve la cantidad de bytecodes insertados en el Codigo3.
        return n+1;
    }
    
    public int[] getByteCode(){ //Devuelve el byteCode.
        return V;
    }
    
    public int add(int OpCode){         //Inserta un instrucción que no usa direcciones. 
        return add(OpCode, 0, 0, 0);    //Devuelve la posición (índice) de V[] donde fue insertado.
    }

    
    public int add(int OpCode, int Dir1){   //Inserta un instrucción que usa una dirección.
        return add(OpCode, Dir1, 0, 0);     //Devuelve la posición (índice) de V[] donde fue insertado.
    }

    
    public int add(int OpCode, int Dir1, int Dir2){ //Inserta un instrucción que usa 2 direcciones.
        return add(OpCode, Dir1, Dir2, 0);          //Devuelve la posición (índice) de V[] donde fue insertado.
    }
    

    public int add(int OpCode, int Dir1, int Dir2, int Dir3){   //Inserta un instrucción que usa 3 direcciones.
        int CantDirs = OPCODE.getCantDirs(OpCode);
        
        if (n+CantDirs+1 > MAXBYTECODE || !OPCODE.isOpCodeValido(OpCode))
            return -1;  //No hay más espacio en el bytecode o el OpCode es inválido.
        
        C.set(OpCode, Dir1, Dir2, Dir3);   //Pasar la instrucción a una Cuadrupla.
        
            //Cuardar en el bytecode el OpCode y sus direcciones.
        n++;
        V[n] = OpCode;
        for (int i=1; i<=CantDirs; i++){  //Guardar las Direcciones que usa la instrucción.
            n++;
            V[n] = C.getDir(i);
        }
        
        return n-CantDirs;
    }

    
    
    public boolean IndexCorrecto(int Index){
        return (0 <= Index && Index <= n);
    }
    
     public void println(){          //Para mostrar éste c3 y las Tablas en consola.
        TS.println();
        System.out.println(this);
    }
    
    public boolean save(String Filename){  //Guarda el C3, con sus tablas TSID y TSS. Si hay error, devuelve false.
        DataOutputStream Out = OpenToWrite(Filename);
        if (Out == null)
            return false;
                
        boolean b = TS.Save(Out);   //Guardar las Tablas.
        if (b){ //Las tablas se guardaron correctamente.  Guardar el C3
            try{
                Out.writeInt( lenght() );       //Guardar cantidad de casillas de V[].
            
                    //Guardar las casillas            
                for (int i=0; i <=n; i++) 
                    Out.writeInt(V[i]);
                 
                    //Guardar cantidad de Temporales y Etiquetas.
                Out.writeInt(CantTmp);
                Out.writeInt(CantLbl);
                Out.close();
            }catch(Exception e){ 
                b=false;
            }
        } //End if
        
        if (!b)
            System.err.println("Codigo3.Save: Error al escribir en el archivo "+'"'+Filename+'"');
        
        return b;
    }
    
    
    public boolean Open(String Filename){        
        DataInputStream in = OpenToRead(Filename);
        if (in==null)
            return false;
        
        boolean b = TS.Copy(in);    //Leer Tablas, pero no actualizarlas.
        
        if (b){ //Las tablas se leyeron correctamente.  Leer el C3.
            try{
                Codigo3 C3 = new Codigo3();
                
                C3.n = in.readInt() - 1;       //Leer cantidad de casillas.
            
                    //Leer las casillas.
                for (int i=0; i <=C3.n; i++) 
                    C3.V[i] = in.readInt();
                            
                    //Leer Temporales y Etiquetas
                C3.CantTmp = in.readInt();
                C3.CantLbl = in.readInt();
                in.close();
            
                    //Todo se leyo bien.  Cambiar a lo nuevo.
                this.n = C3.n;
                for (int i=0; i<=this.n; i++)
                    this.V[i]=C3.V[i];
                
                this.CantTmp = C3.CantTmp;
                this.CantLbl = C3.CantLbl;
                
                TS.Paste();     //Actualizar las tablas.
            
            }catch(Exception e){
                b=false;
            }
        } //End if
        
        if (!b)
            System.err.println("Codigo3.Open: El archivo "+'"'+Filename+'"'+ " no tiene el formato de un .c3");
        
        return b;
    
    }    
    
    
//***** MANEJO DE LOS TEMPORALES y ETIQUETAS (Usado por el Compiler).
    public int getNextLabel(){  //Devuelve el número de la prox. etiqueta.
        return ++CantLbl;
    }

    public void InitTmp(){  //Inicializa el contador de temporales.
        CantTmp = 0;
    }
    
    public int getNextTmp(){    //Devuelve el número del prox. temporal.
        return ++CantTmp;
    }
    
    public int getCantTmp() {  //Getter de la cantidad de temporales utilizados.
        return CantTmp;
    }
    
    public int getCantLabel(){  //Getter de la cantidad de etiquetas utiiizadas.
        return CantLbl;
    }
    
    public void setCantTemp(int CantTemp) {  //Setter de la cantidad de temporales utilizados.
        this.CantTmp = CantTemp;
    }
    
    public void setCantLabel(int CantLabel) {  //Setter de la cantidad de etiquetas utilizadas.
        this.CantLbl = CantLabel;
    }
    
//***** END Manejo de Temporales y Etiquetas.
    
    
        
    @Override
    public String toString(){  //Para usar con Sytem.out.Print.
        if (lenght()==0)
            return "(Código3 Vacio)";
        
        final char LF ='\n';
        String S = "";
        for ( int i=0; i<=n; i+=OPCODE.getCantDirs(V[i])+1 ){
          C.set(V[i], V[i+1], V[i+2], V[i+3]);
          S += Utils.FieldRight(""+i, 3)+" "+C+LF;
        }
        return S;
    }  

    
    
    private DataOutputStream OpenToWrite(String Filename){ //Abre, para escribir, el archivo FileName, retornando el flujo abierto.
        try{
            FileOutputStream F   = new FileOutputStream(Filename);    //Crear archivo (sobreescribiendo si existiese).
            DataOutputStream Out = new DataOutputStream(F);     
            return Out;
        }catch(IOException e){
            System.err.println("Codigo3.Save: Error al guardar "+e.getMessage());
        }

        return null;
    }
    
    private DataInputStream OpenToRead(String Filename){ //Abre, para leer, el archivo FileName, retornando el flujo abierto.
        try{
            FileInputStream F  = new FileInputStream(Filename);     
            DataInputStream in = new DataInputStream(F);
            return in;
        }catch(IOException e){
            System.err.println("Codigo3.Open: Error al abrir "+e.getMessage());
        }
        
        return null;
    }    
    
}


  

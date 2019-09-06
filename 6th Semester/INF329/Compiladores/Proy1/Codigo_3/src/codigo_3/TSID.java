package codigo_3;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/** Esta class manipula la Tabla de Simbolos de los ID's.
 *  No instancie esta class, porque la class TS lo hace.
 */

public class TSID {
    
        /* CONSTANTES QUE DEFINEN LOS TIPOS DE LAS VARIABLES */
    public static final int TIPOINT     = -2;
    public static final int TIPOBOOLEAN = -3;
    
        /* CAMPOS DE LA CLASS */
    private Tupla V[];      //Almacenará las entradas (tuplas) de la tabla (mejor si se usa una Lista).
    private int n;          //Dimensión de V[].
    
        /* METODOS DE LA CLASS */
    public static final int MAXIDS = 100;
    
    TSID(){     //Construye una tabla vacía        
        V = new Tupla[MAXIDS+1];
        n = -1;
    }
    
    
    public void Init(){ //Inicializa la TSID.  Es decir, TSID=(Vacía).
        n=-1;
    }
    
    public int lenght(){    //Devuelve la cantidad de elementos de la tabla.
        return n+1;
    }
    
    
    /**
     * @param NombreID lexema del identificador.
     * @return la posición donde se encuentra alojado el ID cuyo nombre es NombreID. Si no existe, devuelve -1.
     */
    public int indexOf(String NombreID){ //Devuelve el índice de V[], donde se encuentra el ID con NombreID.
        NombreID = toNameID(NombreID);
        for (int i=0; i<=n; i++){
            if (V[i].getNombreID().equals(NombreID))
                return i;
        }
        return -1;      //El ID no existe en la tabla.
    }
    
    public int indexOfMain(){       //Devuelve el índice de V[], donde se encuentra el $MAIN.
        return indexOf(MAINid);     //(si no existe, devuelve -1)
    }
    
    public int addProc(String NombreID){    //Inserta un nuevo Proc a la TSID con Valor=CantTmp=0.                                             
        return addTupla(NombreID, 0, 0);    //Devuelve la posición donde está/fue alojado.
    }
    
    
    public int addVar(String NombreID, int Tipo){ //Inserta una nueva Var con su Tipo  a la TSID. Devuelve la posición donde está/fue alojada.
        if (TipoCorrecto(Tipo))
            return addTupla(NombreID, 0, Tipo);
        
        return -1;      //Devolver -1 para que el llamante sepa que la Variable no se insertó a la tabla.        
    }
    
    
    public boolean isProc(int Index){  //Devuelve true sii la tupla de la posición Index es un Proc
        return (PosValida(Index) && V[Index].isProc());
    }

    
    public boolean isVar(int Index){  //Devuelve true sii la tupla de la posición Index es una Var.
        return (PosValida(Index) && V[Index].isVar());
    }

    
    public boolean TipoCorrecto(int Tipo){ //Devuelve true sii el int especificado, corresponde a TIPOBOOLEAN o TIPOINT.
        return (TIPOBOOLEAN <= Tipo && Tipo <= TIPOINT);
    }  

    
    public boolean PosValida(int Index){
        return (0 <= Index && Index <= n);
    }
    
    
//**************** SETTER's & GETTER's de la Tupla V[Index] ********************
    public void setValor(int Index, int Valor){   //Actualiza el campo Valor de la Tupla Index (sii es una Var).
        if (isVar(Index))
            V[Index].setValor(Valor);        
    }
    
    public void setTipo(int Index, int Tipo){   //Actualiza el campo CantTmp de la Tupla Index (sii es una Var).
        if (isVar(Index) && TipoCorrecto(Tipo))
            V[Index].setCantTmp(Tipo);        
    }
    
    
    public void setDirC3(int Index, int dirC3){   //Actualiza el campo Valor de la Tupla Index (sii es un Proc).
        if (isProc(Index))
            V[Index].setValor(Math.abs(dirC3) );
    }
    

    public void setCantTmp(int Index, int cantTmp){   //Actualiza el campo CantTmp de la Tupla Index (sii es un Proc).
        if (isProc(Index))
            V[Index].setCantTmp( Math.abs(cantTmp) );        
    }
    
    public void setBoundsProc(int index, int inicioC3, int cantTmp){
        if (isProc(index)){
            V[index].setValor(Math.abs(inicioC3) );
            V[index].setCantTmp( Math.abs(cantTmp) );
        }        
    }
    
    public Tupla getTupla(int Index){ //Devuelve una COPIA de la Tupla de la posición Index.
        if (PosValida(Index))
            return V[Index].clone();
        
        return null;
    }
  
    
    public String getNombreID(int Index){ //Devuelve el nombre del ID alojado en la posición Index
        if (PosValida(Index))
            return V[Index].getNombreID();
        
        return "";
    }
    

    public int getValor(int Index){ //Devuelve el campo Valor de la tupla Index
        if (PosValida(Index))
            return V[Index].getValor();
        
        return 0;
    }
    
    public int getCantTmp(int Index){ //Devuelve el campo CantTmp de la tupla Index
        if (PosValida(Index))
            return V[Index].getCantTmp();
        
        return -1;
    }
//****** END Setter's & Getter's de la tupla especificada en la pTS Index ******    
    
    
    
    
    boolean Save(DataOutputStream F){    //Guarda la TSID al Flujo F. Si hubo error al guardar, devuelve false.        
        try{
                //Guardar la Cant. de Tuplas.
            F.writeInt( lenght() );

                //Guardar las Tuplas.
            boolean b = true;
            int i=0;
            while (b && i<=n){
                b = V[i].Save(F);   //Guarda la tupla.
                i++;
            }
            
            return b;                
        }catch(Exception e){}
        
        return false;
    }

    
    static public TSID Open(DataInputStream F){    //Lee una TSID desde el Flujo F.
        TSID Tabla = new TSID();
        boolean b  = true;
        
        try{            
                //Leer la Cantidad de tuplas almacenadas.            
            Tabla.n = F.readInt()-1;
            
                //Leer las tuplas y depositarlas en el Vector Tabla.V[].            
            for (int i=0; i<= Tabla.n && b; i++){
                Tupla t = new Tupla();
                b       = t.Open(F);
                Tabla.V[i] = t;
            } 
        }
        catch(Exception e){ 
            b = false;
        }
        
        if (!b)
            Tabla = null;   //Hubo error al leer la Tabla.
        
        return Tabla;    
    }

    
 //*******
    private static final String TITLE="TSID";
    private static final String HEADER[]={"Nombre", "Valor", "CantTmp"};
    
    @Override
    public String toString(){ //Para mostrar la TSID usando System.out.print
        if (lenght()==0)
            return "("+TITLE+" Vacía)";
        
        final char   LF ='\n';
        final String PADDLEFT = "   ";
        
        String Result;
        int FieldNombre  = FieldLength(0);
        int FieldValor   = FieldLength(1);
        int FieldCantTmp = FieldLength(2);
        int Total        = FieldNombre + FieldValor + FieldCantTmp;
        
        String Borde = PADDLEFT+"+"+Utils.RL('-', Total)+"+";
        
        String Title = PADDLEFT+Utils.FieldCenter(TITLE, Total);
        
        Result =  Title + LF;
        String Header    = PADDLEFT+"|"+
                           Utils.FieldCenter(HEADER[0], FieldNombre)+
                           Utils.FieldCenter(HEADER[1], FieldValor)+
                           Utils.FieldCenter(HEADER[2], FieldCantTmp)+"|";
        
        Result += Borde + LF +Header + LF + Borde + LF;
            
        for (int i=0; i<=n; i++){
            String Posicion = Utils.FieldRight(""+i, PADDLEFT.length())+"|";
            String Nombre   = Utils.FieldLeft(" "+getElem(i, 0), FieldNombre);
            String Valor    = Utils.FieldCenter(getElem(i, 1), FieldValor);
            String CantTmp  = Utils.FieldCenter(getElem(i, 2), FieldCantTmp)+"|";
            Result += Posicion + Nombre + Valor + CantTmp + LF;
        } //End For 
        
        return Result + Borde + LF;
    }
    
    private int FieldLength(int Col){   //Obtener la mayor length de los string's de la Columna Col.
        int May = HEADER[Col].length();
        for (int i=0; i<=n; i++){
            int Lon = getElem(i, Col).length();
            if (Lon > May)
                May = Lon;
        }
        return May+2;
    }
    
    private String getElem(int Fila, int Col){       
        return V[Fila].FieldToString(Col);
    }
//*******
    
    
    private int addTupla(String NombreID, int Valor, int CantTmp){ //Inserta una nueva tupla, validando NombreID.
        NombreID = toNameID(NombreID);
         if (NombreID.length() == 0)    //Si el NombreID es vacio...
            return -1;                  //...devolver -1, indicando que la tupla no se insertó.
         
        int Pos = indexOf(NombreID);
        if (Pos != -1){  //El ID ya indexOf en la TSID.
            V[Pos].set(NombreID, Valor, CantTmp);
            return Pos;             
        }    
        
        if (n >= MAXIDS)    
            return -1;      //No hay mas espacio en V[]. 
         
        n++;
        if (V[n]== null)
            V[n] = new Tupla(NombreID, Valor, CantTmp); 
        else
            V[n].set(NombreID, Valor, CantTmp);
        
        return n;   //Devolver la posición donde fue insertada la nueva tupla.
    }
    
  
    
    private static final String MAINid="$MAIN";
    
    private String toNameID(String NombreID){ //Realiza un semi validación del NombreID. (Si el usuario de esta class fuese el Compilador, esta función es innecesaria).
        if (NombreID == null)
            return "";
        
        NombreID = NombreID.trim();    //Eliminar espacios iniciales y finales
        if (NombreID.charAt(0)=='$')
            NombreID = MAINid;      
        
        return NombreID.replace(' ', '_');
    }
    
}

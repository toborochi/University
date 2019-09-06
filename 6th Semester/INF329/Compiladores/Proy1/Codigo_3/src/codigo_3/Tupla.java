package codigo_3;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public class Tupla { //Esta class representa la tupla de la TSID.
    private String NombreID;
    private int Valor;      //Si es un proc. es el inicio de su c3; si es una variable aquí la VM almacena su valor.
    private int CantTmp;    //Si cantTmp >=0 es procedimiento; caso contrario es una variable.

    public Tupla(){
        set("", 0, 0);
    }
    
    public Tupla(String NombreID, int Valor, int CantTmp) {
        set(NombreID, Valor, CantTmp);
    }

    public void setNombreID(String NombreID) {
        this.NombreID = NombreID;
    }
    
    public void setValor(int Valor) {
        this.Valor = Valor;
    }
    

    public void setCantTmp(int CantTmp) {
        this.CantTmp = CantTmp;
    }
    

    public String getNombreID() {
        return NombreID;
    }
  
    
    public int getValor() {
        return Valor;
    }
    
    
    public int getCantTmp() {
        return CantTmp;
    }

    public final void set(String NombreID, int Valor, int CantTmp){  //Actualiza TODOS los campos.
        this.NombreID = NombreID;
        this.Valor    = Valor;
        this.CantTmp  = CantTmp;
    }
    
    public boolean isProc(){    //Devuelve true sii la Tupla almacena un procedimiento.
        return (CantTmp >= 0);
    }
    
    public boolean isVar(){
        return !isProc();
    }
    
    
    
    boolean Save(DataOutputStream F){    //Guarda la tupla al flujo F. Si hay error, return false.
        try{
            F.writeUTF(NombreID);
            F.writeInt(Valor);
            F.writeInt(CantTmp);
            return true;
        } catch(Exception e){}
        
        return false;
    }

    
    boolean Open(DataInputStream F){ //Lee del flujo F, una tupla.
        try{
            NombreID = F.readUTF();
            Valor    = F.readInt();
            CantTmp  = F.readInt();
            return true;
        }catch (Exception e){}
        
        return false;
    }

  
    @Override
    public Tupla clone(){
        return new Tupla(NombreID, Valor, CantTmp);
    }
    
    
    public String FieldToString(int NroCampo){     //Para pantalleo.       
        switch (NroCampo){
            case 0  :   return NombreID;      //Devolver el Campo 0 (NombreID)
            case 1  :   return ""+Valor;      //Devolver el Campo 1 (Valor)
        }
        
            //Devolver el Campo 2 (CantTmp)
        if (isProc())   //La Tupla almacena un Proc.
            return ""+CantTmp;        
        
        return (CantTmp==TSID.TIPOBOOLEAN?"TIPOBOOLEAN":"TIPOINT");     //La Tupla almacena una Var.
    }
    
}
 
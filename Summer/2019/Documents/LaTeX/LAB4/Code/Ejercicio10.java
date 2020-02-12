public class Calculadora extends Panel {
    private String m[][] = {
        {"1", "2", "3", "+"},
        {"4", "5", "6", "-"},
        {"7", "8", "9", "x"},
        {"7", "8", "9", "%"},
        {"C", ".", "0", "="},
    };
    
    public Calculadora(String m[][]){
        this.m = m;
    }
    
    public void cargar(){
        for (int i = 0; i < m.length; i++) {
            for (int j = 0; j < m[i].length; j++) {
                this.add(new Button(m[i][j]));
            }
        }
    }
    
    public double  sum(double a, double b){
        return a + b;
    }
    
    public double  mul(double a, double b){
        return a * b;
    }
    
}

package Repasando;

import java.applet.Applet;
import java.awt.*;

public class Juego extends Applet {

    Calculadora cal;
    String m[][] = {
        {"1", "2", "3", "+"},
        {"4", "5", "6", "-"},
        {"7", "8", "9", "x"},
        {"7", "8", "9", "%"},
        {"C", ".", "0", "="}
    };
    @Override
    public void init() {
        this.add(new TextField("INGRESE SU CADENA"));
        this.cal = new Calculadora(m);
        this.cal.setLayout(new GridLayout(5, 4));
        this.cal.cargar();
        this.add(cal);
        this.setBackground(Color.green);
    }
}   //  END CLASS


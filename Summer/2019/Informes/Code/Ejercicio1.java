package cInteraccion;

import java.applet.Applet;
import java.awt.Event;
import java.awt.Label;
import java.awt.TextArea;
import java.awt.TextField;
import java.util.Random;

public class ejercicio1 extends Applet {

    //  VAR
    private int n;
    private int a[];
    private int f[];
    private Label ls;
    private TextField tf;
    private TextArea ta;

    //  METHODS
    @Override
    public void init() {
        this.n = 0;
        this.f = new int[6];
        this.tf = new TextField(20);
        this.ls = new Label("Ingresar nro: ");
        this.ta = new TextArea(10, 20);
        this.add(ls);
        this.add(tf);
        this.add(ta);
    }

    @Override
    public boolean action(Event e, Object o) {
        if (e.target == tf) {
            String number = tf.getText();
            this.n = Integer.valueOf(number);
            randomPool(n, f);
            ta.append("Dato\tFrec\tBarra");
            for (int i = 1; i < f.length; i++) {
                ta.append(fila(i, f[i]));
            }
        }
        return true;
    }

    public String cadena(char ch, int n) {
        String s = "";
        for (int i = 0; i < n; i++) {
            s += ch;
        }
        return s;
    }

    public String fila(int dato, int frec) {
        return "\t" + dato + "\t" + frec + "\t" + cadena('x', frec) + "\n";
    }

    public void randomPool(int n, int f[]) {
        Random random = new Random();
        for (int i = 0; i < n; i++) {
            int index = random.nextInt(5) + 1;
            f[index]++;
        }
    }

}
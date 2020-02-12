package appletstest;

import java.applet.Applet;
import java.awt.Event;
import java.awt.Label;
import java.awt.TextField;

public class Ejercicio9 extends Applet {

    private String s1;
    private Label ls;
    private TextField tf;
    private TextField tf2;
    private Label ls2;

    @Override
    public void init() {
        ls = new Label("Ingresar una cadena");
        tf = new TextField(20);
        ls2 = new Label("Cantidad de vocales en la cadena");
        tf2 = new TextField(20);
        this.add(ls);
        this.add(tf);
        this.add(ls2);
        this.add(tf2);

    }
    private String cad = "En la materia de interaccion hombre computador";
    private int v[] = {0, 0, 0, 0, 0};
    private String vs[] = {"a", "e", "i", "o", "u"};

    @Override
    public boolean action(Event e, Object o) {
        System.out.println("entra");
        if (e.target == tf) {
            s1 = tf.getText();
            cantidadVocales(s1, v);
            String aux = "";
            for (int i = 0, fila = 30; i < v.length; i++, fila += 30) {
                
                aux += vs[i]+" = "+v[i]+"\n";
            }
            tf2.setText(aux);
        }
        return true;
    }

    public void cantidadVocales(String cad, int v[]) {
        cad = cad.toLowerCase();
        for (int i = 0; i < cad.length(); i++) {
            char c = cad.charAt(i);
            switch (c) {
                case 97:
                    v[0]++;
                    break;
                case 101:
                    v[1]++;
                    break;
                case 105:
                    v[2]++;
                    break;
                case 111:
                    v[3]++;
                    break;
                case 117:
                    v[4]++;
                    break;

            }
        }

    }
}
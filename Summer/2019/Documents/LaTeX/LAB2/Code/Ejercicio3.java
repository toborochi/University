/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interaccion;

import java.applet.Applet;
import java.awt.Event;
import java.awt.Label;
import java.awt.TextArea;
import java.awt.TextField;
import java.util.Arrays;
import java.util.Random;

/**
 *
 * @author Milena
 */
public class ejercicio extends Applet {

    int dim;
    int a[];
    private Label ls;
    private TextField tf;
    private TextArea ta;

    @Override
    public void init() {
        this.setSize(500, 500);
        dim = 0;
        a = new int[dim];
        ls = new Label("Ingrese dimension");
        tf = new TextField(20);
        ta = new TextArea(10, 50);
        this.add(ls);
        this.add(tf);
        this.add(ta);
    }

    public void cargarVector(int vector[]) {
        Random random = new Random();
        for (int i = 0; i < vector.length; i++) {
            vector[i] = random.nextInt(100);
        }
    }

    public int[] invertir(int a[]) {
        int[] invertido = new int[a.length];
        for (int i = 0; i < a.length; i++) {
            invertido[i] = a[a.length - 1 - i];
        }
        return invertido;
    }

    @Override
    public boolean action(Event e, Object o) {
        if (e.target == tf) {
            String S1 = tf.getText();
            dim = Integer.valueOf(S1);
            a = new int[dim];
            cargarVector(a);
            ta.append("Arreglo desordenado: \n"+Arrays.toString(a) + "\n");
            Arrays.sort(a);
            ta.append("Arreglo ord asc: \n"+Arrays.toString(a) + "\n");
            
            ta.append("Arreglo ord desc: \n"+Arrays.toString(invertir(a)) + "\n");
            
            
        }
        return true;
    }

}

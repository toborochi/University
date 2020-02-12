package appletstest;

import java.awt.Event;
import java.awt.Label;
import java.awt.TextField;

public class Ejercicio9 extends java.applet.Applet {
private String s1;
    private Label ls;
    private TextField tf;
    private TextField tf2;
    private Label ls2;

	@Override
    public void init() {
        ls = new Label("Palabra Encriptada en 5 Espacios");
        tf = new TextField(20);
        ls2 = new Label("Palabra Desencriptadaa 5 espacios");
        tf2 = new TextField(20);
        this.add(ls);
        this.add(tf);
        this.add(ls2);
        this.add(tf2);
        
    }

    
	@Override
    public boolean action(Event e, Object o) {
        System.out.println("entra");
        if (e.target == tf) {
            s1 = tf.getText();
            tf2.setText(decrypt(s1, 5));
        }
        return true;
    }
    static char[] chars = {
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
        'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
        'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
        'y', 'z', '0', '1', '2', '3', '4', '5',
        '6', '7', '8', '9', 'A', 'B', 'C', 'D',
        'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
        'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
        'U', 'V', 'W', 'X', 'Y', 'Z', '!', '@',
        '#', '$', '%', '^', '&', '(', ')', '+',
        '-', '*', '/', '[', ']', '{', '}', '=',
        '<', '>', '?', '_', '"', '.', ',', ' '
    };
    static String decrypt(String cip, int offset)
    {
        char[] cipher = cip.toCharArray();
        for (int i = 0; i < cipher.length; i++) {
            for (int j = 0; j < chars.length; j++) {
                if (j >= offset && cipher[i] == chars[j]) {
                    cipher[i] = chars[j - offset];
                    break;
                }
                if (cipher[i] == chars[j] && j < offset) {
                    cipher[i] = chars[(chars.length - offset +1) + j];
                    break;
                }
            }
        }
        return String.valueOf(cipher);
    }
    private void initComponents() {

        setLayout(new java.awt.BorderLayout());
    }
}
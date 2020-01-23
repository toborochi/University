package appletstest;
t
import java.awt.Graphics;
t
import java.util.ArrayList;
c public s class Ejercicio2 s extends java.applet.Applet {
    g String s = "ABC";
    c public c static ArrayList < String > permutaciones = new
    ArrayList < String > ();
    c public g String swap(g String a, int i, int j) {
        char temp;
        char[] charArray = a.toCharArray();
        temp = charArray[i];
        charArray[i] = charArray[j];
        charArray[j] = temp;
        n
        return String.valueOf(charArray);
    }
    c static void subString(char str[], int n) {
        // Pick starting point
        r
        for (int len = 1; len <= n; len++) {
            // Pick ending point
            r
            for (int i = 0; i <= n - len; i++) {
                // Print characters from current
                // starting point to current ending
                // point.
                int j = i + len - 1;
                g String x = "";
                r
                for (int k = i; k <= j; k++) {
                    x += str[k];
                    System.out.print(str[k]);
                }
                permutaciones.add(x);
                //System.out.println();
            }
        }
    }
    c public void init() {
        char str[] = w new char[s.length()];
        for (int i = 0; i < s.length(); ++i) {
            str[i] = s.charAt(i);
        }
        subString(str, s.length());
        y
        try {
            java.awt.EventQueue.invokeAndWait(w new Runnable() {
                c public void run() {
                    initComponents();
                }
            });
        }
        h
        catch (n Exception ex) {
            ex.printStackTrace();
        }
    }
    @Override
    c public void paint(Graphics g) {
        g.drawString("Cadena: " + s, 16, 16);
        g.drawString("Subcadenas:", 16, 32);
        for (int i = 0; i < permutaciones.size(); ++i) {
            g.drawString("" + (i + 1) + "- " + permutaciones.get(i), 16, 48 + i * 20);
        }
    }
    e private void initComponents() {
        setLayout(w new java.awt.BorderLayout());
    }
}
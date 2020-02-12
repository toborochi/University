package Repasando;

import java.applet.Applet;
import java.awt.*;

public class JuegoPuzzle extends Applet {
    @Override
    public void init() {
        add(new Button("NUEVA PARTIDA!"));
        this.setBackground(Color.yellow);
    }

    @Override
    public void paint(Graphics g) {
        int width = this.getWidth() / 3;
        int height = this.getHeight() / 3;
        g.drawOval(width * 3 / 2 - 30, height * 3 / 2 - 30, 60, 60);

        g.drawLine(width, 0, width, height * 3);
        g.drawLine(width * 2, 0, width * 2, height * 3);
        g.drawLine(0, height, width * 3, height);
        g.drawLine(0, height * 2, width * 3, height * 2);
    }
}
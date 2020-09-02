package Utils;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Font;
import java.awt.Color;
import java.awt.FontMetrics;
import iagridgrapher.Game;
import java.awt.RenderingHints;



public class Fonts {

    public static void drawString(Graphics2D g, Font f, Color c, String text, int x, int y) {
        g.setColor(c);
        g.setFont(f);
        g.setRenderingHint(
        RenderingHints.KEY_TEXT_ANTIALIASING,
        RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
        g.drawString(text, x, y);
    }

    public static void drawString(Graphics2D g, Font f, Color c, String text) {
        FontMetrics fm = g.getFontMetrics(f);
        int x = (Game.WIDTH - fm.stringWidth(text)) / 2; // Horizontal center
        int y = ((Game.HEIGHT - fm.getHeight()) / 2) + fm.getAscent(); // Vertical center
        drawString(g, f, c, text, x, y);
    }

    public static void drawString(Graphics2D g, Font f, Color c, String text, double x) {
        FontMetrics fm = g.getFontMetrics(f);
        int y = ((Game.HEIGHT - fm.getHeight()) / 2) + fm.getAscent(); // Vertical center
        drawString(g, f, c, text, (int) x, y);
    }

    public static void drawString(Graphics2D g, Font f, Color c, String text, int y) {
        FontMetrics fm = g.getFontMetrics(f);
        int x = (Game.WIDTH - fm.stringWidth(text)) / 2; // Horizontal center
        drawString(g, f, c, text, x, y);
    }
}
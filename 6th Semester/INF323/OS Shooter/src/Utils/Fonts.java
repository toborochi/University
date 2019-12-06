package Utils;

import java.awt.Graphics;
import java.awt.Font;
import java.awt.Color;
import java.awt.FontMetrics;
import os.shooter.OSShooter;

public class Fonts {
    
    public static void drawString(Graphics g,Font f,Color c,String text,int x,int y){
        g.setColor(c);
        g.setFont(f);
        g.drawString(text, x, y);
    }
    
    public static void drawString(Graphics g,Font f,Color c,String text,double x){
        FontMetrics fm = g.getFontMetrics(f);
         // Vertical
        int y = ((OSShooter.HEIGHT - fm.getHeight())/2)+fm.getAscent();
        drawString(g,f,c,text,(int)x,y);
    }
    
    public static void drawString(Graphics g,Font f,Color c,String text,int y){
        FontMetrics fm = g.getFontMetrics(f);
        // Horizontal 
        int x = (OSShooter.WIDTH - fm.stringWidth(text))/2; 
        drawString(g, f, c, text,x, y);
        
    }
}

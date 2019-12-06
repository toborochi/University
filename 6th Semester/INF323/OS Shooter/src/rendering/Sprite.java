/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rendering;

import java.awt.Graphics;
import java.awt.image.BufferedImage;

/**
 *
 * @author Asus
 */
public class Sprite {
    
    private BufferedImage image;
    
    public Sprite(SpriteSheet spriteSheet,int x,int y){
        this.image = spriteSheet.getTexture().getImage().getSubimage( (x*spriteSheet.getWidth())-spriteSheet.getWidth() ,
                (y*spriteSheet.getHeight())-spriteSheet.getHeight(), 
                spriteSheet.getWidth(), 
                spriteSheet.getHeight());
    }
    
    public void render(Graphics g,double x,double y){
        g.drawImage(image, (int)x, (int)y, null);
    }
}

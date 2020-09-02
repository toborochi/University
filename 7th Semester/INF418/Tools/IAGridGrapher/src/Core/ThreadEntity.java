/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Core;

import Rendering.Sprite;
import Rendering.SpriteSheet;
import Rendering.Texture;
import java.awt.Color;
import java.awt.Graphics2D;

public abstract class ThreadEntity extends GameObject{
    protected double x,y,rotation=0;
    protected Texture texture;
    protected SpriteSheet sheet;
    protected Sprite sprite;
    protected double offsetX,offsetY;      
    protected int width,height;
    
    public ThreadEntity(String spriteName, int width,int height, double x, double y) {
      
        this.x = x;
        this.y = y;
        this.width=width;
        this.height=height;
       
        sheet = new SpriteSheet(new Texture(spriteName),width,height);
        sprite = new Sprite(sheet,1,1);
        
    }
          
   
    public abstract void tick();

    public void render(Graphics2D g) {
        sprite.render(g, x, y,0);
        
        /*
        if(GameState.debug){
           g.setColor(Color.green);
           g.drawOval((int)(x-width/4), (int)(y-height/4), width/2, height/2);
        }*/
    }

    public void setX(double x) {
        
        this.x = x;
    }

    public void setY(double y) {
        this.y = y;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }
    
    
    public void setRotation(double angle){
        rotation=angle;
    }
}

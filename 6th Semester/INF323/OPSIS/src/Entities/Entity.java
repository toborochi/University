package Entities;

import Rendering.Texture;
import Rendering.SpriteSheet;
import Rendering.Sprite;
import java.awt.Color;
import java.awt.Graphics2D;

public abstract class Entity {
    protected double x,y;
    protected Texture texture;
    protected SpriteSheet sheet;
    protected Sprite sprite;
    protected double offsetX,offsetY;      
    
    public Entity(String spriteName, int width,int height, double x, double y) {
      
        this.x = x;
        this.y = y;
       
        sheet = new SpriteSheet(new Texture(spriteName),width,height);
        sprite = new Sprite(sheet,1,1);
    }
          
    public abstract void tick();

    public void render(Graphics2D g) {
        sprite.render(g, x-32, y-32);
        
        
        g.setColor(Color.red);
        g.drawRect((int)x-32,(int) y-32,64,64);
        
        
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
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rendering;

/**
 *
 * @author Asus
 */
public class SpriteSheet {
    private Texture texture;
    private int width,height;
    
    public SpriteSheet(Texture texture,int size){
        
        this.texture = texture;
        this.width = this.height = size;
    }
    
    public SpriteSheet(Texture texture,int width,int height){
        
        this.texture = texture;
        this.width = width;
        this.height = height;
    }
    
    public Texture getTexture(){
        return texture;
    }
    
    public int getWidth(){
        return width;
    }
    
    public int getHeight()
    {
        return height;
    }
    }   

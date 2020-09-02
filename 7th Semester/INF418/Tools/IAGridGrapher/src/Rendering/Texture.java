
package Rendering;


import Utils.TextureManager;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.FileNameMap;
import java.util.HashMap;
import java.util.Map;
import javax.imageio.ImageIO;


public class Texture {
    private TextureManager manager;
    private final static Map<String,TextureManager> texMap  = new HashMap<String,TextureManager>();
    private String filename;
  
    
    public Texture(String filename){
        
        TextureManager oldTtexture = texMap.get(filename);
        if(oldTtexture!=null)
        {
            manager = oldTtexture;
            manager.addReference();  
        }else
        {
            try{
                String s = "/resources/images/"+filename+".png";
                manager=new TextureManager(ImageIO.read(Texture.class.getResource(s)));
                texMap.put(filename, manager);
            }catch(IOException e){
                e.printStackTrace();
            }
        }
         
        
       
    }
    
    @Override
    protected void finalize() throws Throwable{
        if(manager.removeReference() && !filename.isEmpty()){
            texMap.remove(filename);
        }
    }
    
    public void render(Graphics g,double x,double y){
        g.drawImage(manager.getImage(), (int)x, (int)y, null);
    }
    
   public BufferedImage getImage(){
       return manager.getImage();
   }
}

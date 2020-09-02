package Utils;

import java.awt.image.BufferedImage;

public class TextureManager extends ResourceManager {
    private BufferedImage image;
    
    public TextureManager(BufferedImage image){
        this.image = image;
    }
    
    public BufferedImage getImage()
    {
        return image;
    }
}

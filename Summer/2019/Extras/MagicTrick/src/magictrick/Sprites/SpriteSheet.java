package magictrick.Sprites;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.List;

public class SpriteSheet {

    private final List<BufferedImage> sprites;

    public SpriteSheet(List<BufferedImage> sprites) {
        this.sprites = new ArrayList<>(sprites);
    }

    public int count() {
        return sprites.size();
    }

    public BufferedImage getSprite(double progress) {
        int frame = (int)progress;
        return sprites.get(frame);
    }

}
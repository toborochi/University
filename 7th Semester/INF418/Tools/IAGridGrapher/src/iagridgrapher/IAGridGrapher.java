
package iagridgrapher;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;

public class IAGridGrapher {

    
    public static void main(String[] args) {
        // Instancia del Juego
        final Game game = new Game();
        JFrame frame = new JFrame(Game.TITTLE);
        frame.add(game);
        frame.setSize(Game.WIDTH, Game.HEIGHT);
        frame.setResizable(false);
        frame.setFocusable(true);
        
        frame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                System.err.println("Bye!");
                game.stop();
            }
        });
        
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        
        //  Iniciamos la ventana
        game.run();
    }
    
}

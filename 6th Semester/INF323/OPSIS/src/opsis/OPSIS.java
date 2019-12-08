
package opsis;

import Audio.MusicPlayer;
import Utils.ThreadPool;
import javax.swing.JFrame;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;


public class OPSIS {

    public static MusicPlayer sfx = new MusicPlayer(false,"PIANO");
    public static MusicPlayer player = new MusicPlayer(true,"VA-11 HALL-A");
  
    public static void main(String[] args) {
        
        ThreadPool pool = new ThreadPool(2);
        final Game game = new Game();
        JFrame frame = new JFrame(Game.TITTLE);
        frame.add(game);
        frame.setSize(Game.WIDTH, Game.HEIGHT);
        frame.setResizable(false);
        frame.setFocusable(true);
        
        frame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                System.err.println("Exiting Game");
                game.stop();
            }
        });
        
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        
       
        
        pool.runTask(player);
        pool.runTask(game);
        
        pool.join();
        
    }
    
}

package Audio;

import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.sound.sampled.DataLine;
import javax.sound.sampled.FloatControl;

import java.io.File;
import java.util.ArrayList;

public class MusicPlayer implements Runnable {
    
    private ArrayList<String> musicFiles;
    private int currentSongIndex;
    private File soundFile;
    private Clip clip;
    private boolean repeatAudio = false;
    
    public MusicPlayer(boolean loop,String... files){
        musicFiles = new ArrayList<String>();
        repeatAudio = loop;
        for(String file : files)
            musicFiles.add("C:\\Users\\Asus\\Desktop\\BiX\\" + file + ".wav");
    }
    
    private void playSound(String fileName){
        try{
            soundFile = new File(fileName);
            AudioInputStream ais = AudioSystem.getAudioInputStream(soundFile);
            AudioFormat format = ais.getFormat();
            DataLine.Info info = new DataLine.Info(Clip.class, format);
            clip = (Clip) AudioSystem.getLine(info);
            clip.open(ais);
            FloatControl gainControl = (FloatControl) clip.getControl(FloatControl.Type.MASTER_GAIN);
            gainControl.setValue(-10);
            clip.start();
            if(repeatAudio){
                clip.loop(Clip.LOOP_CONTINUOUSLY);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        playSound(musicFiles.get(currentSongIndex));
    }
    
    public void playAudio(){
        clip.start(); 
    }

}
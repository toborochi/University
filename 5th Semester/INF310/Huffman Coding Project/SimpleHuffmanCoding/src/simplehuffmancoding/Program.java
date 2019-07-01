
package simplehuffmancoding;

import core.compressor.Compressor;
import java.io.File;

public class Program {

    
    public static void main(String[] args) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new HuffmanCoding().setVisible(true);
            }
        });
    }
    
}

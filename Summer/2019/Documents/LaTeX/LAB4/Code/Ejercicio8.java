package milena;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JOptionPane;


public class Main extends javax.swing.JFrame {


        public ImageIcon imgs[];
        public JButton btns[];
        public String msgs[];
        public int ran;
        public int err;
        public String res[];

        public Main() {
            initComponents();
            imgs = new ImageIcon[6];
            btns = new JButton[27];
            msgs = new String[20];


            imgs[0] = new ImageIcon(getClass().getResource("/MexicanHangedPerson/im1.jpg"));
            imgs[1] = new ImageIcon(getClass().getResource("/MexicanHangedPerson/im2.jpg"));
            imgs[2] = new ImageIcon(getClass().getResource("/MexicanHangedPerson/im3.jpg"));
            imgs[3] = new ImageIcon(getClass().getResource("/MexicanHangedPerson/im4.jpg"));
            imgs[4] = new ImageIcon(getClass().getResource("/MexicanHangedPerson/im5.jpg"));
            imgs[5] = new ImageIcon(getClass().getResource("/MexicanHangedPerson/im6.jpg"));

            //botones para las letras
            btns[1] = jButton2;
            btns[2] = jButton3;
            btns[3] = jButton4;
            btns[4] = jButton5;
            btns[5] = jButton6;
            btns[6] = jButton7;
            btns[7] = jButton8;
            btns[8] = jButton9;
            btns[9] = jButton10;
            btns[10] = jButton11;
            btns[11] = jButton12;
            btns[12] = jButton13;
            btns[13] = jButton14;
            btns[14] = jButton15;
            btns[15] = jButton16;
            btns[16] = jButton17;
            btns[17] = jButton18;
            btns[18] = jButton19;
            btns[19] = jButton20;
            btns[20] = jButton21;
            btns[21] = jButton22;
            btns[22] = jButton23;
            btns[23] = jButton24;
            btns[24] = jButton25;
            btns[25] = jButton26;
            btns[26] = jButton27;


            for (int i = 1; i < 27; i++) {
                btns[i].addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent e) {
                        //checarLetra(e);
                    }
                });
            }
            iniciar();
        }


        public void iniciar() {

            err = 0;
            jButton1.setIcon(imgs[0]);
            jTextPane1.setText("");

            for (int i = 1; i < 27; i++) {
                btns[i].setEnabled(true);
            }

        }


        private void jButton28ActionPerformed(java.awt.event.ActionEvent evt) {
            iniciar();

            private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {

            }

            public static void main(String args[]) {

                try {
                    for (javax.swing.UIManager.LookAndFeelInfo info: javax.swing.UIManager.getInstalledLookAndFeels()) {
                        if ("Nimbus".equals(info.getName())) {
                            javax.swing.UIManager.setLookAndFeel(info.getClassName());
                            break;
                        }
                    }
                } catch (ClassNotFoundException ex) {
                    java.util.logging.Logger.getLogger(Main.class.getName()).
					log(java.util.logging.Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    java.util.logging.Logger.getLogger(Main.class.getName()).
					log(java.util.logging.Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    java.util.logging.Logger.getLogger(Main.class.getName()).
					log(java.util.logging.Level.SEVERE, null, ex);
                } catch (javax.swing.UnsupportedLookAndFeelException ex) {
                    java.util.logging.Logger.getLogger(Main.class.getName()).
					log(java.util.logging.Level.SEVERE, null, ex);
                }

                java.awt.EventQueue.invokeLater(new Runnable() {
                    public void run() {
                        new Main().setVisible(true);
                    }
                });
            }

            private javax.swing.JButton jButton1;
            private javax.swing.JButton jButton10;
            private javax.swing.JButton jButton11;
            private javax.swing.JButton jButton12;
            private javax.swing.JButton jButton13;
            private javax.swing.JButton jButton14;
            private javax.swing.JButton jButton15;
            private javax.swing.JButton jButton16;
            private javax.swing.JButton jButton17;
            private javax.swing.JButton jButton18;
            private javax.swing.JButton jButton19;
            private javax.swing.JButton jButton2;
            private javax.swing.JButton jButton20;
            private javax.swing.JButton jButton21;
            private javax.swing.JButton jButton22;
            private javax.swing.JButton jButton23;
            private javax.swing.JButton jButton24;
            private javax.swing.JButton jButton25;
            private javax.swing.JButton jButton26;
            private javax.swing.JButton jButton27;
            private javax.swing.JButton jButton28;
            private javax.swing.JButton jButton3;
            private javax.swing.JButton jButton4;
            private javax.swing.JButton jButton5;
            private javax.swing.JButton jButton6;
            private javax.swing.JButton jButton7;
            private javax.swing.JButton jButton8;
            private javax.swing.JButton jButton9;
            private javax.swing.JLabel jLabel3;
            private javax.swing.JPanel jPanel1;
            private javax.swing.JScrollPane jScrollPane1;
            private javax.swing.JTextPane jTextPane1;
        }
using CG.Utilidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CG
{
    public partial class CG : Form
    {
        Punto Origen;
        ControladorGrafico Controlador;
        Objeto Objeto;
        bool dibujar = false;

        public CG()
        {
            InitializeComponent();
            Controlador = new ControladorGrafico(this);
            Origen = new Punto(ClientSize.Width / 2, ClientSize.Height / 2);
        }

        private void CG_Resize(object sender, EventArgs e)
        {
            if (Controlador!=null && Objeto!=null)
            {
                Origen = new Punto(ClientSize.Width / 2, ClientSize.Height / 2);

                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto,Origen);

            }
        }

        private void crearToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Objeto = new Objeto();
            Controlador.DibujarEje();

            //textBox1.Text = Objeto.Origen.x.ToString();
            //textBox2.Text = Objeto.Origen.y.ToString();
        }

        private void CG_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (Objeto != null)
            {
                if (!dibujar)
                {
                    Objeto.Poligonos.Add(new Poligono());
                    Punto x = new Punto(e.X,e.Y);
                    x = Matematica.PantallaCoordenada(x,Origen);
                    Objeto.Poligonos[Objeto.Poligonos.Count - 1].AñadirPunto(x);
                    dibujar = true;
                }
                else
                {
                    if(CerrarPoligono.Checked)
                    {
                        Punto x = Objeto.Poligonos[Objeto.Poligonos.Count - 1].PrimerPunto;
                        Objeto.Poligonos[Objeto.Poligonos.Count - 1].AñadirPunto(x);

                        Controlador.DibujarEje();
                        Controlador.DibujarObjeto(Objeto, Origen);
                    }
                    dibujar = false;
                }
            }
       
         
        }

        private void CG_MouseClick(object sender, MouseEventArgs e)
        {
            if(dibujar)
            {
                Punto x = new Punto(e.X, e.Y);
                x = Matematica.PantallaCoordenada(x, Origen);
                Objeto.Poligonos[Objeto.Poligonos.Count - 1].AñadirPunto(x);

                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
               
            }
        }
    }
}

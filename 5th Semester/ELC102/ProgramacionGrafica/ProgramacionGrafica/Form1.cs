using ProgramacionGrafica.Herramientas;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProgramacionGrafica
{
    public partial class Form1 : Form
    {
        Graphics graphics;
        bool Dibujar = false;
        Objeto objeto;


        public Form1()
        {
            InitializeComponent();
        }

        private void crearToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Width = Convert.ToInt32(textBox1.Text);
            Height = Convert.ToInt32(textBox2.Text);
            Refresh();    
            graphics = CreateGraphics();
            ControladorDibujo.DibujarEje(graphics,Width,Height);

            objeto = new Objeto();
        }

        private void Form1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (objeto!=null)
            {
                if (!Dibujar)
                {
                    objeto.Poligonos.Add(new Poligono());
                    Punto tmpPunto = new Punto(e.X,e.Y);
                    tmpPunto = Matematicas.PantallaCoordenada(tmpPunto,Width,Height);
                    tmpPunto = Matematicas.CoordenadaProporcional(tmpPunto, Width, Height);

                    objeto.Poligonos[objeto.Poligonos.Count - 1].Puntos.Add(tmpPunto);
                    label1.Text = objeto.Poligonos[objeto.Poligonos.Count - 1].Puntos.Count.ToString();

                }
                else
                {
                    Punto tmpPunto = new Punto(e.X, e.Y);
                    tmpPunto = Matematicas.PantallaCoordenada(tmpPunto, Width, Height);
                    tmpPunto = Matematicas.CoordenadaProporcional(tmpPunto, Width, Height);

                    objeto.Poligonos[objeto.Poligonos.Count - 1].Puntos.Add(tmpPunto);

                    if(CerrarPoligono.Checked)
                    {
                        tmpPunto = objeto.Poligonos[objeto.Poligonos.Count - 1].Puntos[0];
                        objeto.Poligonos[objeto.Poligonos.Count - 1].Puntos.Add(tmpPunto);
                    }

                    ControladorDibujo.DibujarObjeto(graphics, objeto, Width, Height);
                }

                Dibujar = !Dibujar;
            }
           
        }

        private void Form1_MouseClick(object sender, MouseEventArgs e)
        {
            if (objeto != null)
            {
                if(Dibujar)
                {
                    Punto tmpPunto = new Punto(e.X, e.Y);
                    
                    tmpPunto = Matematicas.PantallaCoordenada(tmpPunto, Width, Height);
                    tmpPunto = Matematicas.CoordenadaProporcional(tmpPunto, Width, Height);

                    objeto.Poligonos[objeto.Poligonos.Count - 1].Puntos.Add(tmpPunto);

                    Refresh();
                    graphics = CreateGraphics();
                    ControladorDibujo.DibujarObjeto(graphics, objeto, Width, Height);
                    ControladorDibujo.DibujarEje(graphics, Width, Height);

                    label1.Text = objeto.Poligonos[objeto.Poligonos.Count - 1].Puntos.Count.ToString();
                }
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            textBox1.Text = Width.ToString();
            textBox2.Text = Height.ToString();
        }

        private void button1_MouseClick(object sender, MouseEventArgs e)
        {
            
        }

        private void Form1_SizeChanged(object sender, EventArgs e)
        {

            if (objeto!=null)
            {
               
                Refresh();
                graphics = CreateGraphics();
                ControladorDibujo.DibujarObjeto(graphics, objeto, Width, Height);
                ControladorDibujo.DibujarEje(graphics, Width, Height);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Width = Convert.ToInt32(textBox1.Text);
            Height = Convert.ToInt32(textBox2.Text);
            if (objeto != null)
            {
                Refresh();
                graphics = CreateGraphics();
                ControladorDibujo.DibujarObjeto(graphics, objeto, Width, Height);
                ControladorDibujo.DibujarEje(graphics, Width, Height);
            }
        }

        private void Form1_ResizeEnd(object sender, EventArgs e)
        {
            textBox1.Text = Width.ToString();
            textBox2.Text = Height.ToString();
        }
    }
}

using Program.Clases;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Pintadorsango
{
    public partial class Pintadorsango : Form
    {
        Entorno Entorno;
        Graphics Edicion;
        Graphics Editor;

        public Pintadorsango()
        {
            InitializeComponent();
            Entorno = new Entorno();
            Edicion = AreaTrabajo.CreateGraphics();
            Editor  = AreaTrabajo.CreateGraphics();
            
        }

        private void Pintadorsango_Load(object sender, EventArgs e)
        {
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
            PB.Parent = AreaTrabajo;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Entorno.AddObjeto();
        }

        bool click = false;
        bool dobleClick = false;
        int x=0, y=0, xx=0, yy=0;

        private void Dibujar(Graphics g)
        {
            Pen LAP = new Pen(Color.Red);
            for(int i=0;i<Entorno.Entidades[0].Poligonos[0].Vertices.Count-1;++i)
            {
                Punto P = Entorno.Entidades[0].Poligonos[0].Vertices[i];
                Punto PSig = Entorno.Entidades[0].Poligonos[0].Vertices[i+1];
                g.DrawLine(LAP,P.x, P.y,PSig.x,PSig.y);
            }
        }

        private void AreaTrabajo_MouseClick(object sender, MouseEventArgs e)
        {
            if(Entorno.Entidades[0].Poligonos.Count==0)
            {
                Poligono pol = new Poligono();
                pol.addVertice(e.X, e.Y);
                Entorno.Entidades[0].Poligonos.Add(pol);                
            }else
            {
                Entorno.Entidades[0].Poligonos[0].addVertice(e.X,e.Y);
            }


            label1.Text = Entorno.Entidades[0].Poligonos[0].Vertices.Count.ToString();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            Edicion = Editor;
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void AreaTrabajo_MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                x = e.Location.X;
                y = e.Location.Y;
                click = false;
                Entorno.Entidades[0].Poligonos[0].addVertice(e.X, e.Y);
            }
            label1.Text = Entorno.Entidades[0].Poligonos[0].Vertices.Count.ToString();

        }

        private void AreaTrabajo_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                x = e.Location.X;
                y = e.Location.Y;
                click = true;
            }
        }

        private void AreaTrabajo_MouseMove(object sender, MouseEventArgs e)
        {
            Pen TrazoDibujo = new Pen(Color.Black);
            Pen TrazoBorrador = new Pen(AreaTrabajo.BackColor);

            label2.Text = e.X.ToString();
            label3.Text = e.Y.ToString();

            if (click)
            {
                
                Edicion.DrawLine(TrazoBorrador,x,y,xx,yy);
                xx = e.X;
                yy = e.Y;
                Edicion.DrawLine(TrazoDibujo, x, y, xx, yy);
            }

           

        }
    }
}

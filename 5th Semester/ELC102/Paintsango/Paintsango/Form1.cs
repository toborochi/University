using Paintsango.Herramientas;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using System.Windows.Forms;

namespace Paintsango
{
    public partial class VentanaPrincipal : Form
    {
        bool dibujar = false;

        Objeto Objeto;
        Poligono P;

        List<Tuple<Point, Point>> Segmentos;
        Point UltimoPunto;
        Point PuntoPrevio;
        Point PrimerPunto;
        Graphics G;

        public VentanaPrincipal()
        {
            InitializeComponent();
        }



        private void pictureBox1_MouseDoubleClick(object sender, MouseEventArgs e)
        {



            if (!dibujar)
            {
                PrimerPunto = new Point(e.X, e.Y);
                P = new Poligono();
            }
            else
            {
                if (CerrarPoligono.Checked == true)
                {
                    Segmentos.Add(new Tuple<Point, Point>(UltimoPunto, PrimerPunto));
                    P.Segmentos.Add(new Segmento(new Punto(PrimerPunto.X, PrimerPunto.Y), new Punto(UltimoPunto.X, UltimoPunto.Y)));
                    G.DrawLine(new Pen(Color.Black), PrimerPunto.X, PrimerPunto.Y, UltimoPunto.X, UltimoPunto.Y);

                }
                Objeto.Poligonos.Add(P);
                label1.Text = Objeto.Poligonos[Objeto.Poligonos.Count - 1].Segmentos.Count.ToString();
            }



            UltimoPunto = new Point(e.X, e.Y);
            PuntoPrevio = new Point(e.X, e.Y);






            dibujar = !dibujar;

        }


        private void pictureBox1_MouseClick(object sender, MouseEventArgs e)
        {

            if (dibujar)
            {
                UltimoPunto = new Point(e.X, e.Y);

                Segmentos.Add(new Tuple<Point, Point>(PuntoPrevio, UltimoPunto));
                P.Segmentos.Add(new Segmento(new Punto(PuntoPrevio.X, PuntoPrevio.Y), new Punto(UltimoPunto.X, UltimoPunto.Y)));

                PuntoPrevio = UltimoPunto;
            }
        }


        private void VentanaPrincipal_Load(object sender, EventArgs e)
        {
            G = AreaTrabajo.CreateGraphics();
            BM = new Bitmap(AreaTrabajo.Width, AreaTrabajo.Height);
            AreaTrabajo.Image = BM;
            GG = Graphics.FromImage(AreaTrabajo.Image);
        }
        Graphics GG;
        Bitmap BM;


        private void AreaTrabajo_MouseMove(object sender, MouseEventArgs e)
        {
            PosicionX.Text = "x: " + e.X.ToString();
            PosicionY.Text = "y: " + e.Y.ToString();

            if (dibujar)
            {
                AreaTrabajo.Refresh();
                BM = new Bitmap(AreaTrabajo.Width, AreaTrabajo.Height);
                AreaTrabajo.Image = BM;
                GG = Graphics.FromImage(AreaTrabajo.Image);

            }


            base.OnMouseMove(e);

            if (dibujar)
            {
                Pen p = new Pen(Color.Red);
                GG.DrawLine(p, UltimoPunto, new Point(e.X, e.Y));
                for (int i = 0; i < Segmentos.Count; ++i)
                {
                    GG.DrawLine(LAP, Segmentos[i].Item1, Segmentos[i].Item2);
                }
            }
        }
        Pen LAP = new Pen(Color.Black);

        private void AreaTrabajo_Paint(object sender, PaintEventArgs e)
        {


        }

        // Crear Objeto
        private void crearObjetoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Objeto = new Objeto();
            Segmentos = new List<Tuple<Point, Point>>();
            Bitmap bmap = new Bitmap(AreaTrabajo.Width, AreaTrabajo.Height);
            AreaTrabajo.Image = bmap;
            GG = Graphics.FromImage(AreaTrabajo.Image);
            AreaTrabajo.Enabled = true;
        }

        void GuardarObjeto(Objeto obj)
        {
            File.WriteAllText("objeto.dat", new JavaScriptSerializer().Serialize(obj));
        }

        private void guardarObjetoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GuardarObjeto(Objeto);
        }

        private Objeto cargarObjeto()
        {
            if (File.Exists("objeto.dat"))
            {
                return new JavaScriptSerializer().Deserialize<Objeto>(File.ReadAllText("objeto.dat"));
            }
            else
            {
                return new Objeto();
            }
        }

        private void cargarObjetoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Segmentos = new List<Tuple<Point, Point>>();
            Objeto = cargarObjeto();
            
            AreaTrabajo.Enabled = true;

            AreaTrabajo.Refresh();
            Bitmap bmap = new Bitmap(AreaTrabajo.Width, AreaTrabajo.Height);
            AreaTrabajo.Image = bmap;
            GG = Graphics.FromImage(AreaTrabajo.Image);

            for (int j=0;j<Objeto.Poligonos.Count;++j)
            {
                for (int i = 0; i < Objeto.Poligonos[j].Segmentos.Count; ++i)
                {
                    int x = (int)Objeto.Poligonos[j].Segmentos[i].a.x;
                    int y = (int)Objeto.Poligonos[j].Segmentos[i].a.y;
                    int xx = (int)Objeto.Poligonos[j].Segmentos[i].b.x;
                    int yy = (int)Objeto.Poligonos[j].Segmentos[i].b.y;
                    Segmentos.Add(new Tuple<Point, Point>(new Point(x, y), new Point(xx, yy)));
                    GG.DrawLine(LAP, new Point(x, y), new Point(xx, yy));
                }
            }

            
        }
    }
}


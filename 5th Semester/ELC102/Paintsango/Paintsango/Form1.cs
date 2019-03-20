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

        void DibujarEje()
        {
            GG.DrawLine(new Pen(Color.Red), 0, AreaTrabajo.Height / 2, AreaTrabajo.Width, AreaTrabajo.Height / 2);
            GG.DrawLine(new Pen(Color.Red),AreaTrabajo.Width/2,0, AreaTrabajo.Width/2, AreaTrabajo.Height);
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

            Punto PP = new Punto(e.X,e.Y);
            Punto CP = new Punto(e.X,e.Y);
            PP = PantallaCoordenada(PP);
            

            PosicionX.Text = "x: " +   PP.x.ToString();
            PosicionY.Text = "y: " +   PP.y.ToString();

            CP = CoordenadaPantalla(PP);

            PosicionX2.Text = "x: " +  CP.x.ToString();
            PosicionY2.Text = "y: " +  CP.y.ToString();

            if (dibujar)
            {
                AreaTrabajo.Refresh();
                BM = new Bitmap(AreaTrabajo.Width, AreaTrabajo.Height);
                AreaTrabajo.Image = BM;
                GG = Graphics.FromImage(AreaTrabajo.Image);
                
            }
            DibujarEje();

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
            DibujarEje();
            AreaTrabajo.Enabled = true;
           
        }

        void GuardarObjeto(Objeto obj,string nombre)
        {
            File.WriteAllText(nombre, new JavaScriptSerializer().Serialize(obj));
        }

        private void guardarObjetoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog1 = new SaveFileDialog();
            saveFileDialog1.Title = "Guardar un Objeto";
            saveFileDialog1.Filter = "Dato|*.dat";
            saveFileDialog1.ShowDialog();

            // Ya se guarda con la extension
            if(saveFileDialog1.FileName!="")
            {
                GuardarObjeto(Objeto, saveFileDialog1.FileName);

            }

        }

        private Objeto cargarObjeto()
        {
            OpenFileDialog OpenFileDialog = new OpenFileDialog();
            
            OpenFileDialog.ShowDialog();

            

            if (OpenFileDialog.FileName!="")
            {
                return new JavaScriptSerializer().Deserialize<Objeto>(File.ReadAllText(OpenFileDialog.FileName));
            }
            else
            {
                return new Objeto();
            }
        }

        #region Metodos para convertir Pantalla-Coordenada
        Punto PantallaCoordenada(Punto p)
        {
            p.x = p.x - AreaTrabajo.Width / 2;
            p.y = AreaTrabajo.Height / 2 - p.y;
            return p;            
        }

        Punto CoordenadaPantalla(Punto p)
        {
            p.x = p.x + AreaTrabajo.Width / 2;
            p.y = - p.y + AreaTrabajo.Height/2;
            return p;
        }
        #endregion

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
            DibujarEje();
            
        }
    }
}


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
        // Bandera que indica cuando dibujar
        bool dibujar = false;

        // Objeto que se quiere crear
        Objeto Objeto;

        // Poligono temporal que se usa cada vez que se comienza un poligono
        Poligono P;

        // Lista de Segmentos temporales que se usan para dibujar en la aplicacion
        List<Segmento> SegmentosTemporales;

        // Puntos necesarios para dibujar
        // Punto previo que conecta con el ultimo punto
        Punto PuntoPrevio;
        // Ultimo punto dibujado
        Punto UltimoPunto;
        // Punto que se utiliza para cerrar el poligono que se este dibujando
        Punto PrimerPunto;

        Graphics G;
        Graphics GG;
        Bitmap BM;

        public VentanaPrincipal()
        {
            InitializeComponent();
        }
        
        private void pictureBox1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (!dibujar)
            {
                PrimerPunto = new Punto(e.X, e.Y);
                P = new Poligono();
            }
            else
            {
                if (CerrarPoligono.Checked == true)
                {
                    SegmentosTemporales.Add(new Segmento(UltimoPunto, PrimerPunto));
                    P.Segmentos.Add(new Segmento(new Punto(PrimerPunto.x, PrimerPunto.y), new Punto(UltimoPunto.x, UltimoPunto.y)));
                    G.DrawLine(new Pen(Color.Black), PrimerPunto.x, PrimerPunto.y, UltimoPunto.x, UltimoPunto.y);

                }
                Objeto.Poligonos.Add(P);
                //label1.Text = Objeto.Poligonos[Objeto.Poligonos.Count - 1].Segmentos.Count.ToString();
            }
            
            UltimoPunto = new Punto(e.X, e.Y);
            PuntoPrevio = new Punto(e.X, e.Y);
            
            dibujar = !dibujar;
        }


        private void pictureBox1_MouseClick(object sender, MouseEventArgs e)
        {
            if (dibujar)
            {
                UltimoPunto = new Punto(e.X, e.Y);

                SegmentosTemporales.Add(new Segmento(PuntoPrevio, UltimoPunto));
                P.Segmentos.Add(new Segmento(new Punto(PuntoPrevio.x, PuntoPrevio.y), new Punto(UltimoPunto.x, UltimoPunto.y)));

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
                GG.DrawLine(p, UltimoPunto.x,UltimoPunto.y, e.X, e.Y);
                for (int i = 0; i < SegmentosTemporales.Count; ++i)
                {
                    GG.DrawLine(LAP, SegmentosTemporales[i].a.x, SegmentosTemporales[i].a.y, SegmentosTemporales[i].b.x, SegmentosTemporales[i].b.y);
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
            SegmentosTemporales = new List<Segmento>();
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
            

            SegmentosTemporales = new List<Segmento>();
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
                    SegmentosTemporales.Add(new Segmento(new Punto(x,y),new Punto(xx,yy)));
                    GG.DrawLine(LAP, new Point(x, y), new Point(xx, yy));
                }
            }
            DibujarEje();
            
        }
    }
}


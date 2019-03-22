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
        bool Dibujar = false;

        // Objeto que se quiere crear
        Objeto Objeto;

        // Poligono temporal que se usa cada vez que se comienza un poligono
        Poligono PoligonoTemporal;

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
            if (!Dibujar)
            {
                PrimerPunto = new Punto(e.X, e.Y);
                PoligonoTemporal = new Poligono();
            }
            else
            {
                // Si esta marcado anade el ultimo punto con el primer punto captado al comenzar el poligono
                if (CerrarPoligono.Checked)
                {
                    SegmentosTemporales.Add(new Segmento(UltimoPunto, PrimerPunto));
                    PoligonoTemporal.Segmentos.Add(new Segmento(PantallaCoordenada(PrimerPunto), PantallaCoordenada(UltimoPunto)));
                    G.DrawLine(new Pen(Color.Black), PrimerPunto.x, PrimerPunto.y, UltimoPunto.x, UltimoPunto.y);

                }
                // Finalmente, como cerramos el poligono lo anadimos a la lista de poligonos del objeto
                Objeto.Poligonos.Add(PoligonoTemporal);
            }

            UltimoPunto = new Punto(e.X, e.Y);
            PuntoPrevio = new Punto(e.X, e.Y);

            Dibujar = !Dibujar;
        }


        private void pictureBox1_MouseClick(object sender, MouseEventArgs e)
        {
            if (Dibujar)
            {
                UltimoPunto = new Punto(e.X, e.Y);

                SegmentosTemporales.Add(new Segmento(PuntoPrevio, UltimoPunto));
                PoligonoTemporal.Segmentos.Add(new Segmento(PantallaCoordenada(PuntoPrevio),PantallaCoordenada(UltimoPunto)));

                PuntoPrevio = UltimoPunto;
            }
        }

        void DibujarEje()
        {
            GG.DrawLine(new Pen(Color.Red), 0, AreaTrabajo.Height / 2, AreaTrabajo.Width, AreaTrabajo.Height / 2);
            GG.DrawLine(new Pen(Color.Red), AreaTrabajo.Width / 2, 0, AreaTrabajo.Width / 2, AreaTrabajo.Height);
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

            Punto PP = new Punto(e.X, e.Y);
            Punto CP = new Punto(e.X, e.Y);
            PP = PantallaCoordenada(PP);


            PosicionX.Text = "x: " + PP.x.ToString();
            PosicionY.Text = "y: " + PP.y.ToString();

            CP = CoordenadaPantalla(PP);

            PosicionX2.Text = "x: " + CP.x.ToString();
            PosicionY2.Text = "y: " + CP.y.ToString();

            if (Dibujar)
            {
                AreaTrabajo.Refresh();
                BM = new Bitmap(AreaTrabajo.Width, AreaTrabajo.Height);
                AreaTrabajo.Image = BM;
                GG = Graphics.FromImage(AreaTrabajo.Image);

            }
            DibujarEje();

            base.OnMouseMove(e);

            if (Dibujar)
            {
                Pen p = new Pen(Color.Red);
                GG.DrawLine(p, UltimoPunto.x, UltimoPunto.y, e.X, e.Y);
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

        void GuardarObjeto(Objeto obj, string nombre)
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
            if (saveFileDialog1.FileName != "")
            {
                GuardarObjeto(Objeto, saveFileDialog1.FileName);

            }

        }

        private Objeto cargarObjeto()
        {
            OpenFileDialog OpenFileDialog = new OpenFileDialog();

            OpenFileDialog.ShowDialog();



            if (OpenFileDialog.FileName != "")
            {
                return new JavaScriptSerializer().Deserialize<Objeto>(File.ReadAllText(OpenFileDialog.FileName));
            }
            else
            {
                return new Objeto();
            }
        }

        #region Metodos para convertir Pantalla-Coordenada
        Punto PantallaCoordenada(Punto a)
        {
            Punto b = new Punto();
            b.x = a.x - AreaTrabajo.Width / 2;
            b.y = AreaTrabajo.Height / 2 - a.y;
            return b;
        }

        Punto CoordenadaPantalla(Punto a)
        {
            Punto b = new Punto();
            b.x = a.x + AreaTrabajo.Width / 2;
            b.y = -a.y + AreaTrabajo.Height / 2;
            return b;
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

            for (int j = 0; j < Objeto.Poligonos.Count; ++j)
            {
                for (int i = 0; i < Objeto.Poligonos[j].Segmentos.Count; ++i)
                {
                    Punto a = Objeto.Poligonos[j].Segmentos[i].a;
                    Punto b = Objeto.Poligonos[j].Segmentos[i].b;

                    a = CoordenadaPantalla(a);
                    b = CoordenadaPantalla(b);

                    int x = (int)a.x;
                    int y = (int)a.y;
                    int xx = (int)b.x;
                    int yy = (int)b.y;
                    SegmentosTemporales.Add(new Segmento(new Punto(x, y), new Punto(xx, yy)));
                    GG.DrawLine(LAP, new Point(x, y), new Point(xx, yy));
                }
            }
            DibujarEje();

        }

        
    }
}


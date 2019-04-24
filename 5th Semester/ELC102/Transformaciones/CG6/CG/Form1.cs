using CG.Utilidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
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

        void InicializarLista()
        {
            for (int i = 0; i < Objeto.Poligonos.Count; ++i)
            {
                ListaPoligonos.Items.Insert(0, Objeto.Poligonos[i].nombre);
            }
        }

        private void crearToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Objeto = new Objeto();

            InicializarLista();

            Controlador.DibujarEje();

            transAngulo.Text = "0";

            transTraslacionX.Text = "0";
            transTraslacionY.Text = "0";

            transEscalaX.Text = "1";
            transEscalaY.Text = "1";

            transReflexionX.Checked = false;
            transReflexionY.Checked = false;

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
                    Objeto.Poligonos[Objeto.Poligonos.Count - 1].AnadirPunto(x);
                    dibujar = true;
                }
                else
                {
                    if(CerrarPoligono.Checked)
                    {
                        Punto x = Objeto.Poligonos[Objeto.Poligonos.Count - 1].PrimerPunto();
                        Objeto.Poligonos[Objeto.Poligonos.Count - 1].AnadirPunto(x);

                        Controlador.DibujarEje();
                        Controlador.DibujarObjeto(Objeto, Origen);
                    }

                    //Controlador.PoligonosSeleccionados.Add(Objeto.Poligonos[Objeto.Poligonos.Count-1]);
                    
                    ListaPoligonos.Items.Insert(ListaPoligonos.Items.Count, Objeto.Poligonos[Objeto.Poligonos.Count - 1].nombre + Objeto.Poligonos.Count.ToString());

                    dibujar = false;
                }
            }
            Controlador.DibujarEje();
            Controlador.DibujarObjeto(Objeto, Origen);


        }

        Punto Base;

        private void CG_MouseClick(object sender, MouseEventArgs e)
        {
            if(dibujar && e.Button==MouseButtons.Left)
            {
                Punto x = new Punto(e.X, e.Y);
                x = Matematica.PantallaCoordenada(x, Origen);
                Objeto.Poligonos[Objeto.Poligonos.Count - 1].AnadirPunto(x);
             
            }
            else
            if(e.Button == MouseButtons.Right)
            {  
                Base = Matematica.PantallaCoordenada(new Punto(e.X,e.Y),Origen);
                Controlador.PuntoReferencia = Base;
            }else
            if(e.Button == MouseButtons.Middle)
            {
                Punto x = Matematica.PantallaCoordenada(new Punto(e.X,e.Y),Origen);
                Controlador.AñadirPunto(x);
            }

            if(Objeto!=null)
            {
                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
            }
                
            
            

        }

        private void transReflexionX_CheckedChanged(object sender, EventArgs e)
        {
            if (Objeto != null)
            {
                Objeto.Transformacion.reflexionX();
                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
            }
        }

        private void transReflexionY_CheckedChanged(object sender, EventArgs e)
        {
            if (Objeto != null)
            {
                Objeto.Transformacion.reflexionY();
                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            float x = float.Parse(transTraslacionX.Text, new CultureInfo("en-US"));
            float y = float.Parse(transTraslacionY.Text, new CultureInfo("en-US"));
            
            if(Base!=null)
            {
                Objeto.Transformacion.trasladarRespecto(x, y, Base.x, Base.y);
            }else
            {
                Objeto.Transformacion.trasladar(x, y);
            }

            Controlador.DibujarEje();
            Controlador.DibujarObjeto(Objeto, Origen);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            float x = float.Parse(transEscalaX.Text, new CultureInfo("en-US"));
            float y = float.Parse(transEscalaY.Text, new CultureInfo("en-US"));
            
            if(Base!=null)
            {
                Objeto.Transformacion.escalarRespecto(x,y,Base.x,Base.y);
            }else
            {
                Objeto.Transformacion.escalar(x, y);
            }
               
            
          
            Controlador.DibujarEje();
            Controlador.DibujarObjeto(Objeto, Origen);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if(Base!=null)
            {
                float angulo = float.Parse(transAngulo.Text, new CultureInfo("en-US"));
                Objeto.Transformacion.rotarRespecto(angulo, Base.x, Base.y);
            }
            else
            {
                float angulo = float.Parse(transAngulo.Text, new CultureInfo("en-US"));
                Objeto.Transformacion.rotar(angulo);
            }

            Controlador.DibujarEje();
            Controlador.DibujarObjeto(Objeto, Origen);
        }
        
        private Objeto cargarObjeto()
        {
            OpenFileDialog OpenFileDialog = new OpenFileDialog();
            OpenFileDialog.ShowDialog();

            if (OpenFileDialog.FileName != "")
            {

                Text = OpenFileDialog.FileName;

                return SistemaGuardado.CargarObjeto(OpenFileDialog.FileName);
                
                // Antiguo sistema de guardado
                //return new JavaScriptSerializer().Deserialize<Objeto>(File.ReadAllText(OpenFileDialog.FileName));
            }
            else
            {
                return new Objeto();
            }
        }

        void GuardarObjeto(Objeto obj, string nombre)
        {
            File.WriteAllText(nombre, new JavaScriptSerializer().Serialize(obj));
        }


        private void cargarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //TODO Ver el antiguo metodo de serializacion, revisar el nuevo
            Objeto = cargarObjeto();
            Controlador.DibujarEje();
            Controlador.DibujarObjeto(Objeto, Origen);
            transAngulo.Text = "0";

            transTraslacionX.Text = "0";
            transTraslacionY.Text = "0";

            transEscalaX.Text = "1";
            transEscalaY.Text = "1";

            transReflexionX.Checked = false;
            transReflexionY.Checked = false;
        }

        private void guardarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog1 = new SaveFileDialog();
            saveFileDialog1.Title = "Guardar un Objeto";
            saveFileDialog1.Filter = "Dato|*.xml";
            saveFileDialog1.ShowDialog();

            // Ya se guarda con la extension
            if (saveFileDialog1.FileName != "")
            {
                // TODO Ver el antiguo metodo de serializacion, revisar el nuevo
                //GuardarObjeto(Objeto, saveFileDialog1.FileName);
                SistemaGuardado.GuardarObjeto(Objeto, saveFileDialog1.FileName);

            }

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (Controlador.RectaReferencia.Item1!=Controlador.RectaReferencia.Item2) 
            {
                Objeto.Transformacion.reflejarRespecto(Controlador.RectaReferencia.Item1, Controlador.RectaReferencia.Item2);
                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
            }

        }

        private void CG_Paint(object sender, PaintEventArgs e)
        {
            
            
        }

        private void CG_Load(object sender, EventArgs e)
        {

        }
        int valorprevio = 0;
        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            
            float angulo = float.Parse(transAngulo.Text, new CultureInfo("en-US"));
            trackBar1.TickFrequency = (int)angulo;
            if(angulo!=0)
            {
                trackBar1.Maximum = 360 / trackBar1.TickFrequency;
            }

            if (trackBar1.Value < valorprevio)
            {
                if (Base != null)
                {

                    Objeto.Transformacion.rotarRespecto(angulo*-1, Base.x, Base.y);
                }
                else
                {

                    Objeto.Transformacion.rotar(angulo*-1);
                }

            }
            else
            {
                if (Base != null)
                {

                    Objeto.Transformacion.rotarRespecto(angulo, Base.x, Base.y);
                }
                else
                {

                    Objeto.Transformacion.rotar(angulo);
                }

            }



            valorprevio = trackBar1.Value;

            Controlador.DibujarEje();
            Controlador.DibujarObjeto(Objeto, Origen);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            var x = ListaPoligonos.SelectedIndices;
            Controlador.PoligonosSeleccionados.Clear();
            for (int i = 0; i < x.Count; ++i)
            {
                int indice = x[i];
                Controlador.PoligonosSeleccionados.Add(Objeto.Poligonos[indice]);

            }

            if(Objeto!=null)
            {
                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
            }
        }
    }
}

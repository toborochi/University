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
        Timer t;

        public CG()
        {
            InitializeComponent();
            Controlador = new ControladorGrafico(this);
            Origen = new Punto(ClientSize.Width / 2, ClientSize.Height / 2);
            Text = "Paintsango " + System.Windows.Forms.Application.ProductVersion;
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
            ListaPoligonos.Clear();
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
                    Objeto.Poligonos[Objeto.Poligonos.Count - 1].nombre = "Poligono" +ListaPoligonos.Items.Count;
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
                if (Controlador.PoligonosSeleccionados.Count > 0)
                {
                    for (int i = 0; i < Controlador.PoligonosSeleccionados.Count; ++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.reflexionX();
                    }
                }
                else
                {
                    Objeto.Transformacion.reflexionX();
                }
                //Objeto.Transformacion.reflexionX();
                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
            }
        }

        private void transReflexionY_CheckedChanged(object sender, EventArgs e)
        {
            if (Objeto != null)
            {
                if (Controlador.PoligonosSeleccionados.Count > 0)
                {
                    for (int i = 0; i < Controlador.PoligonosSeleccionados.Count; ++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.reflexionY();
                    }
                }
                else
                {
                    Objeto.Transformacion.reflexionY();
                }
                //Objeto.Transformacion.reflexionY();
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
                if(Controlador.PoligonosSeleccionados.Count>0)
                {
                    for(int i=0;i<Controlador.PoligonosSeleccionados.Count;++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.trasladarRespecto(x, y, Base.x, Base.y);
                    }
                }else
                {
                    Objeto.Transformacion.trasladarRespecto(x, y, Base.x, Base.y);
                }

              
            }else
            {
                if (Controlador.PoligonosSeleccionados.Count > 0)
                {
                    for (int i = 0; i < Controlador.PoligonosSeleccionados.Count; ++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.trasladar(x, y);
                    }
                }
                else
                {
                    Objeto.Transformacion.trasladar(x, y);
                }
             
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
                if (Controlador.PoligonosSeleccionados.Count > 0)
                {
                    for (int i = 0; i < Controlador.PoligonosSeleccionados.Count; ++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.escalarRespecto(x, y, Base.x, Base.y);
                    }
                }
                else
                {
                    Objeto.Transformacion.escalarRespecto(x, y, Base.x, Base.y);
                }
                //Objeto.Transformacion.escalarRespecto(x,y,Base.x,Base.y);
            }else
            {
                if (Controlador.PoligonosSeleccionados.Count > 0)
                {
                    for (int i = 0; i < Controlador.PoligonosSeleccionados.Count; ++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.escalar(x, y);
                    }
                }
                else
                {
                    Objeto.Transformacion.escalar(x, y);
                }
                //Objeto.Transformacion.escalar(x, y);
            }
               
            
          
            Controlador.DibujarEje();
            Controlador.DibujarObjeto(Objeto, Origen);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if(Base!=null)
            {
                float angulo = float.Parse(transAngulo.Text, new CultureInfo("en-US"));
                if (Controlador.PoligonosSeleccionados.Count > 0)
                {
                    for (int i = 0; i < Controlador.PoligonosSeleccionados.Count; ++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.rotarRespecto(angulo,Base.x, Base.y);
                    }
                }
                else
                {
                    Objeto.Transformacion.rotarRespecto(angulo, Base.x, Base.y);
                }
                
            }
            else
            {
                float angulo = float.Parse(transAngulo.Text, new CultureInfo("en-US"));
                if(Controlador.PoligonosSeleccionados.Count > 0)
                {
                    for (int i = 0; i < Controlador.PoligonosSeleccionados.Count; ++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.rotar(angulo);
                    }
                }
                else
                {
                    Objeto.Transformacion.rotar(angulo);
                }
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

                Text = "Paintsango " + System.Windows.Forms.Application.ProductVersion + " "+ OpenFileDialog.FileName;

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
            Controlador.PoligonosSeleccionados.Clear();
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
            ListaPoligonos.Items.Clear();

            for(int i=0;i<Objeto.Poligonos.Count;++i)
            {
                ListaPoligonos.Items.Insert(ListaPoligonos.Items.Count, Objeto.Poligonos[i].nombre);
            }
          
        }

        private void guardarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ModificarNombrePoligonos(ref Objeto);

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
                if (Controlador.PoligonosSeleccionados.Count > 0)
                {
                    for (int i = 0; i < Controlador.PoligonosSeleccionados.Count; ++i)
                    {
                        int ind = Controlador.PoligonosSeleccionados.ElementAt(i);
                        Objeto.Poligonos[ind].Transformacion.reflejarRespecto(Controlador.RectaReferencia.Item1, Controlador.RectaReferencia.Item2);
                    }
                }
                //Objeto.Transformacion.reflejarRespecto(Controlador.RectaReferencia.Item1, Controlador.RectaReferencia.Item2);
                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
            }

        }

        private void CG_Paint(object sender, PaintEventArgs e)
        {
            
            
        }

        private void CG_Load(object sender, EventArgs e)
        {
            t = new Timer();
            t.Interval = 25;
            t.Tick += new EventHandler(t_tick);

        }

        void Movimiento1(int escala)
        {
            for(int i=0;i<Objeto.Poligonos.Count;++i)
            {
                Objeto.Poligonos[i].Transformacion.trasladar(1*escala, 0);
            }
        }

        void frame1()
        {
            Punto p = Objeto.PrimerPoligono().PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.PrimerPoligono().Transformacion.matTransformacion);
            Objeto.PrimerPoligono().Transformacion.rotarRespecto(-20, p.x, p.y);

            p = Objeto.Poligonos[3].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[3].Transformacion.matTransformacion);
            Objeto.Poligonos[3].Transformacion.rotarRespecto(2, p.x, p.y);

            Objeto.Poligonos[8].Transformacion.rotarRespecto(2, p.x, p.y);

            p = Objeto.Poligonos[1].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[1].Transformacion.matTransformacion);
            Objeto.Poligonos[1].Transformacion.rotarRespecto(20, p.x, p.y);
            Objeto.Poligonos[2].Transformacion.rotarRespecto(20, p.x, p.y);

            p = Objeto.Poligonos[2].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[2].Transformacion.matTransformacion);
            Objeto.Poligonos[2].Transformacion.rotarRespecto(-30,p.x,p.y);

            // Brazo Derecho
            p = Objeto.Poligonos[4].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[4].Transformacion.matTransformacion);
            Objeto.Poligonos[4].Transformacion.rotarRespecto(-40,p.x,p.y);
            Objeto.Poligonos[5].Transformacion.rotarRespecto(-40,p.x,p.y);

            p = Objeto.Poligonos[5].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[5].Transformacion.matTransformacion);
            Objeto.Poligonos[5].Transformacion.rotarRespecto(-30, p.x, p.y);

            // Brazo Izquierdo
            p = Objeto.Poligonos[6].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[6].Transformacion.matTransformacion);
            Objeto.Poligonos[6].Transformacion.rotarRespecto(30, p.x, p.y);
            Objeto.Poligonos[7].Transformacion.rotarRespecto(30, p.x, p.y);

        }

        void frame2()
        {
            Punto p = Objeto.PrimerPoligono().PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.PrimerPoligono().Transformacion.matTransformacion);
            Objeto.PrimerPoligono().Transformacion.rotarRespecto(-20, p.x, p.y);

            p = Objeto.Poligonos[3].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[3].Transformacion.matTransformacion);
            Objeto.Poligonos[3].Transformacion.rotarRespecto(2, p.x, p.y);

            Objeto.Poligonos[8].Transformacion.rotarRespecto(2, p.x, p.y);

            p = Objeto.Poligonos[1].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[1].Transformacion.matTransformacion);
            Objeto.Poligonos[1].Transformacion.rotarRespecto(10, p.x, p.y);
            Objeto.Poligonos[2].Transformacion.rotarRespecto(10, p.x, p.y);

            p = Objeto.Poligonos[2].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[2].Transformacion.matTransformacion);
            Objeto.Poligonos[2].Transformacion.rotarRespecto(50, p.x, p.y);

            // Brazo Derecho

            p = Objeto.Poligonos[4].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[4].Transformacion.matTransformacion);
            Objeto.Poligonos[4].Transformacion.rotarRespecto(-40, p.x, p.y);
            Objeto.Poligonos[5].Transformacion.rotarRespecto(-40, p.x, p.y);

            //p = Objeto.Poligonos[5].PrimerPunto();
            //p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[5].Transformacion.matTransformacion);
            //Objeto.Poligonos[4].Transformacion.rotarRespecto(-30, p.x, p.y);

            // Brazo Izquierdo
            p = Objeto.Poligonos[6].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[6].Transformacion.matTransformacion);
            Objeto.Poligonos[6].Transformacion.rotarRespecto(30, p.x, p.y);
            Objeto.Poligonos[7].Transformacion.rotarRespecto(30, p.x, p.y);

        }

        void frame3()
        {
            Punto p = Objeto.PrimerPoligono().PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.PrimerPoligono().Transformacion.matTransformacion);
            Objeto.PrimerPoligono().Transformacion.rotarRespecto(-20, p.x, p.y);

            p = Objeto.Poligonos[3].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[3].Transformacion.matTransformacion);
            Objeto.Poligonos[3].Transformacion.rotarRespecto(2, p.x, p.y);

            Objeto.Poligonos[8].Transformacion.rotarRespecto(2, p.x, p.y);

            p = Objeto.Poligonos[1].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[1].Transformacion.matTransformacion);
            Objeto.Poligonos[1].Transformacion.rotarRespecto(10, p.x, p.y);
            Objeto.Poligonos[2].Transformacion.rotarRespecto(10, p.x, p.y);

            p = Objeto.Poligonos[2].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[2].Transformacion.matTransformacion);
            Objeto.Poligonos[2].Transformacion.rotarRespecto(50, p.x, p.y);


            p = Objeto.Poligonos[4].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[4].Transformacion.matTransformacion);
            Objeto.Poligonos[4].Transformacion.rotarRespecto(-20, p.x, p.y);
            Objeto.Poligonos[5].Transformacion.rotarRespecto(-20, p.x, p.y);

            //p = Objeto.Poligonos[5].PrimerPunto();
            //p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[5].Transformacion.matTransformacion);
            //Objeto.Poligonos[4].Transformacion.rotarRespecto(-30, p.x, p.y);

            // Brazo Izquierdo
            p = Objeto.Poligonos[6].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[6].Transformacion.matTransformacion);
            Objeto.Poligonos[6].Transformacion.rotarRespecto(30, p.x, p.y);
            Objeto.Poligonos[7].Transformacion.rotarRespecto(30, p.x, p.y);
        }

        void frame0()
        {
            Punto p = Objeto.PrimerPoligono().PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.PrimerPoligono().Transformacion.matTransformacion);
            Objeto.PrimerPoligono().Transformacion.rotarRespecto(60, p.x, p.y);

            p = Objeto.Poligonos[3].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[3].Transformacion.matTransformacion);
            Objeto.Poligonos[3].Transformacion.rotarRespecto(-6, p.x, p.y);

            Objeto.Poligonos[8].Transformacion.rotarRespecto(-6, p.x, p.y);

            p = Objeto.Poligonos[1].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[1].Transformacion.matTransformacion);
            Objeto.Poligonos[1].Transformacion.rotarRespecto(-40, p.x, p.y);
            Objeto.Poligonos[2].Transformacion.rotarRespecto(-40, p.x, p.y);

            p = Objeto.Poligonos[2].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[2].Transformacion.matTransformacion);
            Objeto.Poligonos[2].Transformacion.rotarRespecto(-70, p.x, p.y);

            // Brazo Derecho
            p = Objeto.Poligonos[4].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[4].Transformacion.matTransformacion);
            Objeto.Poligonos[4].Transformacion.rotarRespecto(100, p.x, p.y);
            Objeto.Poligonos[5].Transformacion.rotarRespecto(100, p.x, p.y);

            p = Objeto.Poligonos[5].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[5].Transformacion.matTransformacion);
            Objeto.Poligonos[5].Transformacion.rotarRespecto(30, p.x, p.y);

            // Brazo Izquierdo
            p = Objeto.Poligonos[6].PrimerPunto();
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[6].Transformacion.matTransformacion);
            Objeto.Poligonos[6].Transformacion.rotarRespecto(-90, p.x, p.y);
            Objeto.Poligonos[7].Transformacion.rotarRespecto(-90, p.x, p.y);
        }


        int frame = 1,acum=0;
        float i = 1;
        void t_tick(object sender,EventArgs e)
        {
            Movimiento1((int)i);

            switch(frame)
            {
                case 1: frame1(); break;
                case 2: frame2(); break;
                case 3: frame3(); break;
                case 0: frame0(); break;
            }



            

            Controlador.DibujarEje();
            Controlador.DibujarObjeto(Objeto, Origen);
            i+=0.5f;
            frame++;
            frame %= 4;

            acum += t.Interval;

            if (acum > 2000)
            {
                acum = 0;
                for (int i = 0; i < Objeto.Poligonos.Count; ++i)
                {
                    Objeto.Poligonos[i].Transformacion.matTransformacion = Matematica.Identidad();
                }
                i = 0;
                frame = 1;

            }

            Update();
        }

       

        private void button4_Click(object sender, EventArgs e)
        {
            var x = ListaPoligonos.SelectedIndices;
            Controlador.PoligonosSeleccionados.Clear();

            for(int i=0;i<x.Count;++i)
            {
                Controlador.PoligonosSeleccionados.Add(x[i]);
            }

            if(ListaPoligonos.SelectedIndices.Count==1)
            {
                Base = Matematica.PuntoMedio(Objeto.Poligonos[ ListaPoligonos.SelectedIndices[0] ]);
                Controlador.PuntoReferencia = Base;
            }

            if (Objeto!=null)
            {
                Controlador.DibujarEje();
                Controlador.DibujarObjeto(Objeto, Origen);
            }
        }

        void ModificarNombrePoligonos(ref Objeto Objeto)
        {
            
            List<string> list = ListaPoligonos.Items.Cast<ListViewItem>()
                     .Select(item => item.Text)
                     .ToList();
            if(Objeto!=null)
            { 
                for(int i=0;i<Objeto.Poligonos.Count;++i)
                {
                    Objeto.Poligonos[i].nombre = list[i];
                }
            }
        }

        

        private void ListaPoligonos_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.F2 && ListaPoligonos.SelectedItems.Count > 0)
            {
                ListaPoligonos.SelectedItems[0].BeginEdit();
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            t.Start();
        }

        

        private void button5_Click_2(object sender, EventArgs e)
        {
            t.Stop();
        }
    }
}

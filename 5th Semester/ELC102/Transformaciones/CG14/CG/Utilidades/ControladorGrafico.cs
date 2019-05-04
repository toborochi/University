using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CG.Utilidades
{
    
    public class ControladorGrafico
    {
        
        public Pen LapizGenerico = new Pen(Color.Black);
        
        private Pen LapizEjeX = new Pen(Color.Blue);
        private Pen LapizEjeY = new Pen(Color.Red);
        private Graphics Grafico;
        private Control Controlador;
        public Punto PuntoReferencia;
        public Tuple<Punto, Punto> RectaReferencia;
        public HashSet<int> PoligonosSeleccionados;

        public void AñadirPunto(Punto x)
        {
            if(RectaReferencia.Item1==new Punto())
            {
                RectaReferencia = new Tuple<Punto, Punto>(x,null);
            }else
            if(RectaReferencia.Item2== new Punto())
            {
                Punto p = RectaReferencia.Item1;
                RectaReferencia = new Tuple<Punto, Punto>(x,p);
            }else
            {
                Punto p = RectaReferencia.Item1;
                RectaReferencia = new Tuple<Punto, Punto>(x,p);
            }
        }
            

        public ControladorGrafico(Control Controlador)
        {
            PoligonosSeleccionados = new HashSet<int>();
            RectaReferencia = new Tuple<Punto, Punto>(new Punto(0,0), new Punto(0,0));
            PuntoReferencia = new Punto();
            Controlador.MinimumSize = new Size(300, 300);
            this.Controlador = Controlador;
            Grafico = Controlador.CreateGraphics();
            BitMap = new Bitmap(Controlador.ClientSize.Width, Controlador.ClientSize.Height);
        }

        public void DibujarLinea(Pen p,Punto a,Punto b)
        {
            Grafico.DrawLine(p,a.x,a.y,b.x,b.y);
        }

        private Bitmap BitMap;
        public void DibujarEje()
        {
            //Controlador.Refresh();
            //BitMap = new Bitmap(Controlador.BackgroundImage);
            if(Controlador.ClientSize.Width!=0 && Controlador.ClientSize.Height!=0)
            {
                //Controlador.Update();
                BitMap = new Bitmap(Controlador.ClientSize.Width, Controlador.ClientSize.Height);
                // Controlador.BackgroundImage = BitMap;
                Grafico = Graphics.FromImage(BitMap);
                
            }
           
           

           // Grafico = Controlador.CreateGraphics();
         
            //DibujarLinea(LapizEjeX, new Punto(0, Controlador.ClientSize.Height / 2), new Punto(Controlador.ClientSize.Width, Controlador.ClientSize.Height / 2));
            //DibujarLinea(LapizEjeY, new Punto(Controlador.ClientSize.Width / 2, 0), new Punto(Controlador.ClientSize.Width / 2, Controlador.ClientSize.Height));
            
        }

        public void DibujarPunto(float x,float y,float diametro)
        {
            Grafico.FillEllipse(new SolidBrush(Color.Red), x - diametro / 2, y - diametro / 2, diametro, diametro);
            //Grafico.DrawEllipse(LapizGenerico,x-diametro/2, y-diametro / 2, diametro,diametro);
        }

        private void DibujarPoligono(Poligono pol,Punto Origen,Pen Lap,Transformacion traObj)
        {
            Matriz m = pol.Transformacion.matTransformacion;


            for (int i=0;i<pol.Vertices.Count-1;++i)
            {
                Punto a = pol.Vertices[i];
                Punto b = pol.Vertices[i + 1];
               

                a = Matematica.aplicarTransformacion(a, m);
                b = Matematica.aplicarTransformacion(b, m);

                a = Matematica.CoordenadaPantalla(a, Origen);
                b = Matematica.CoordenadaPantalla(b, Origen);
                DibujarLinea(Lap, a, b);
            }
        }

        public void guardarImagen()
        {
            BitMap.Save("C:/Users/Asus/Documents/MEGAsync Downloads/ima.png", ImageFormat.Png);
        }

        public void DibujarEscenario(Escenario Escenario,Punto Origen)
        {
            for(int i = 0; i < Escenario.Objetos.Count; ++i)
            {
                DibujarObjeto(Escenario.Objetos[i], Origen);
                
            }
            //Controlador.BackgroundImage = BitMap;
        }
       

        public void DibujarObjeto(Objeto Objeto,Punto Origen)
        {


            Punto xx = Matematica.CoordenadaPantalla(PuntoReferencia, Origen);
            Punto aa = Matematica.CoordenadaPantalla(RectaReferencia.Item1, Origen);
            Punto bb = Matematica.CoordenadaPantalla(RectaReferencia.Item2, Origen);

            //DibujarPunto(xx.x, xx.y, 10);
            //DibujarPunto(aa.x, aa.y, 6);
            //DibujarPunto(bb.x, bb.y, 6);
           
            DibujarLinea(new Pen(Color.Red), aa, bb);
          
            for (int i=0;i<Objeto.Poligonos.Count;++i)
            {
                Poligono p = Objeto.Poligonos[i];

                Matriz m = Objeto.Transformacion.matTransformacion;
                Pen Lap = LapizGenerico;

                if (PoligonosSeleccionados.Count > 0)
                {
                    if(PoligonosSeleccionados.Contains(i))
                    {
                        Lap = new Pen(Color.Magenta);
                    
                    }
                }

                DibujarPoligono(p, Origen, Lap,Objeto.Transformacion);
            }
            Controlador.BackgroundImage = BitMap;
        }

    }
}

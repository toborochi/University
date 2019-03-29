using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramacionGrafica.Herramientas
{
    public static class ControladorDibujo
    {
        public static Pen LapizEje = new Pen(Color.Red);
        public static Pen LapizObj = new Pen(Color.Black);

        public static void DibujarEje(Graphics graphics,float Largo,float Alto)
        {
            graphics.DrawLine(LapizEje,0,Alto/2,Largo,Alto/2);
            graphics.DrawLine(LapizEje,Largo/2,0,Largo/2,Alto);
        }

        public static void DibujarObjeto(Graphics graphics,Objeto objeto,float Largo,float Ancho)
        {
            for(int i=0;i<objeto.Poligonos.Count;++i)
            {
                for(int j=0;j<objeto.Poligonos[i].Puntos.Count-1;++j)
                {
                    Punto a = objeto.Poligonos[i].Puntos[j];
                    Punto b = objeto.Poligonos[i].Puntos[j+1];

                    a = Matematicas.ProporcionalCoordenada(a, Largo, Ancho);
                    b = Matematicas.ProporcionalCoordenada(b, Largo, Ancho);

                    a = Matematicas.CoordenadaPantalla(a,Largo,Ancho);
                    b = Matematicas.CoordenadaPantalla(b,Largo,Ancho);

                    graphics.DrawLine(LapizObj, a.x,a.y,b.x,b.y);                        
                }
            }
        }

        public static void DibujarLinea(Graphics graphics, Punto a, Punto b, float Largo, float Ancho)
        {
            a = Matematicas.CoordenadaPantalla(a, Largo, Ancho);
            b = Matematicas.CoordenadaPantalla(b, Largo, Ancho);

            graphics.DrawLine(LapizObj, a.x, a.y, b.x, b.y);
        }

        

    }

}

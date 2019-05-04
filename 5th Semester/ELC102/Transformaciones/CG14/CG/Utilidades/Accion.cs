using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CG.Utilidades
{
    public class Accion
    {
        List<Tuple<Tuple<int, int>, List<Tuple<Transformaciones, List<int>>>>> Acciones;

        public Accion()
        {
            Acciones = new List<Tuple<Tuple<int, int>, List<Tuple<Transformaciones,List<int>>>>>();
        }

        public enum Transformaciones
        {
            Trasladar,
            Rotar,
            Escalar,
            Reflejar
        }

        public void AplicarAccion(ref Objeto Objeto,int indice)
        {
            
            Punto p = Objeto.Poligonos[Acciones[indice].Item1.Item1].Vertices[Acciones[indice].Item1.Item2];
            p = Matematica.aplicarTransformacion(p, Objeto.Poligonos[Acciones[indice].Item1.Item1].Transformacion.matTransformacion);
            for(int i = 0; i < Acciones[indice].Item2.Count;++i)
            {
                switch (Acciones[indice].Item2[i].Item1)
                {
                    case Transformaciones.Trasladar:
                        Objeto.Poligonos[Acciones[indice].Item1.Item1].Transformacion.trasladarRespecto(Acciones[indice].Item2[i].Item2[0], Acciones[indice].Item2[i].Item2[1],p.x, p.y);
                        break;
                    case Transformaciones.Rotar:
                        Objeto.Poligonos[Acciones[indice].Item1.Item1].Transformacion.rotarRespecto(Acciones[indice].Item2[i].Item2[0],p.x, p.y);
                        break;
                    case Transformaciones.Escalar:
                        Objeto.Poligonos[Acciones[indice].Item1.Item1].Transformacion.escalarRespecto(Acciones[indice].Item2[i].Item2[0], Acciones[indice].Item2[i].Item2[1], p.x, p.y);
                        break;
                    case Transformaciones.Reflejar:
                        Objeto.Poligonos[Acciones[indice].Item1.Item1].Transformacion.reflejarRespecto(new Punto(Acciones[indice].Item2[i].Item2[0], Acciones[indice].Item2[i].Item2[1]), p);
                        break;
                }
            }
        }

    }
}

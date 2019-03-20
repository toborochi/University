using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace Program.Clases
{
    [Serializable]
    public class Entorno
    {
        public  List<Objeto> Entidades = new List<Objeto>();

        public Entorno()
        {
            
        }

        public void AddObjeto()
        {
            Objeto nuevoObjeto = new Objeto();
            Entidades.Add(nuevoObjeto);
        }

        public void RemoveObjeto(Objeto Objeto)
        {
            if (Entidades.Contains(Objeto)) Entidades.Remove(Objeto);
        }

        public void GuardarDatos()
        {
            File.WriteAllText("datos.dat", new JavaScriptSerializer().Serialize(Entidades));
        }

        public void CargarDatos()
        {
            if (File.Exists("datos.dat"))
            {
                Entidades =  new JavaScriptSerializer().Deserialize<List<Objeto>>(File.ReadAllText("datos.dat"));
            }else
            {
                Entidades = new List<Objeto>();
            }
        }
    }

}

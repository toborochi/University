using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace CG.Utilidades
{
    public static class SistemaGuardado
    {
        private static XmlSerializer ObjetoSerializado = new XmlSerializer(typeof(Objeto));
        
        public static void GuardarObjeto(Objeto objeto,string lugar)
        {
            StreamWriter write = new StreamWriter(lugar);
            ObjetoSerializado.Serialize(write,objeto);
        }

        
        public static Objeto CargarObjeto(string lugar)
        {
            StreamReader reader = new StreamReader(lugar);
            Objeto obj = (Objeto)ObjetoSerializado.Deserialize(reader);
            if(obj!=null)
            {
                return obj;
            }
            return new Objeto();
        }
    }
}

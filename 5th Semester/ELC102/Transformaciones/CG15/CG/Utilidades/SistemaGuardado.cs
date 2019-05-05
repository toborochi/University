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
        private static XmlSerializer EscenaSerializada = new XmlSerializer(typeof(Escenario));

        public static void GuardarObjeto(Objeto objeto,string lugar)
        {
            StreamWriter write = new StreamWriter(lugar);
            ObjetoSerializado.Serialize(write,objeto);
            write.Close();
        }

        
        public static Objeto CargarObjeto(string lugar)
        {
            StreamReader reader = new StreamReader(lugar);
            Objeto obj = (Objeto)ObjetoSerializado.Deserialize(reader);
            reader.Close();
            if(obj!=null)
            {
                return obj;
            }
            return new Objeto();
        }

        public static void GuardarEscenario(Escenario escenario, string lugar)
        {
            StreamWriter write = new StreamWriter(lugar);
            EscenaSerializada.Serialize(write, escenario);
            write.Close();
        }


        public static Escenario CargarEscenario(string lugar)
        {
            StreamReader reader = new StreamReader(lugar);
            Escenario obj = (Escenario)EscenaSerializada.Deserialize(reader);
            reader.Close();
            if (obj != null)
            {
                return obj;
            }
            return new Escenario();
        }


    }
}

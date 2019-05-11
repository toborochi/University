using Newtonsoft.Json;
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
        private static XmlSerializer AnimacionSerializada = new XmlSerializer(typeof(Escena));

        public static T CloneJson<T>(this T source)
{            
    // Don't serialize a null object, simply return the default for that object
    if (Object.ReferenceEquals(source, null))
    {
        return default(T);
    }

    // initialize inner objects individually
    // for example in default constructor some list property initialized with some values,
    // but in 'source' these items are cleaned -
    // without ObjectCreationHandling.Replace default constructor values will be added to result
    var deserializeSettings = new JsonSerializerSettings {ObjectCreationHandling = ObjectCreationHandling.Replace};

    return JsonConvert.DeserializeObject<T>(JsonConvert.SerializeObject(source), deserializeSettings);
}

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

        public static void GuardarAnimacion(Escena escenario, string lugar)
        {
            StreamWriter write = new StreamWriter(lugar);
            AnimacionSerializada.Serialize(write, escenario);
            write.Close();
        }


        public static Escena CargarAnimacion(string lugar)
        {
            StreamReader reader = new StreamReader(lugar);
            Escena obj = (Escena)AnimacionSerializada.Deserialize(reader);
            reader.Close();
            if (obj != null)
            {
                return obj;
            }
            return new Escena();
        }


    }
}

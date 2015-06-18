using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class ExamenEncabezado
    {
        int examen;
        int expediente;
        string observaciones;

        public string Observaciones
        {
            get { return observaciones; }
            set { observaciones = value; }
        }

        public int Expediente
        {
            get { return expediente; }
            set { expediente = value; }
        }

        public int Examen
        {
            get { return examen; }
            set { examen = value; }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class Cita
    {
        int id_cita;
        int expediente;
        DateTime fecha;
        string observaciones;

        public string Observaciones
        {
            get { return observaciones; }
            set { observaciones = value; }
        }

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        public int Expediente
        {
            get { return expediente; }
            set { expediente = value; }
        }

        public int Id_cita
        {
            get { return id_cita; }
            set { id_cita = value; }
        }
    }
}

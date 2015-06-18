using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class TipoEstadoPieza
    {
        int id_TipoEstadoPieza;
        string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public int Id_TipoEstadoPieza
        {
            get { return id_TipoEstadoPieza; }
            set { id_TipoEstadoPieza = value; }
        }
    }
}

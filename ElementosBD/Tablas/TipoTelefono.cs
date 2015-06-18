using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class TipoTelefono
    {
        int id_TipoTelefono;
        string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }


        public int Id_TipoTelefono
        {
            get { return id_TipoTelefono; }
            set { id_TipoTelefono = value; }
        }
    }
}

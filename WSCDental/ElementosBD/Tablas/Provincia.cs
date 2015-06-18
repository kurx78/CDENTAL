using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class Provincia
    {
        int id_provincia;
        string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public int Id_provincia
        {
            get { return id_provincia; }
            set { id_provincia = value; }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class Canton
    {
        int id_provincia;
        int id_canton;
        string descripcion;

        public int Id_provincia
        {
            get { return id_provincia; }
            set { id_provincia = value; }
        }

        public int Id_canton
        {
            get { return id_canton; }
            set { id_canton = value; }
        }

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
    }
}

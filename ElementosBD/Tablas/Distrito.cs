using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class Distrito
    {
        int id_provincia;
        int id_canton;
        int id_distrito;
        string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public int Id_distrito
        {
            get { return id_distrito; }
            set { id_distrito = value; }
        }

        public int Id_canton
        {
            get { return id_canton; }
            set { id_canton = value; }
        }

        public int Id_provincia
        {
            get { return id_provincia; }
            set { id_provincia = value; }
        }
    }
}

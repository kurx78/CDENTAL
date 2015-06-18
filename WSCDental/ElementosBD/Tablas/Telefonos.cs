using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class Telefonos
    {
        string cedula;
        int tipoTelefono;
        string telefono;
        string extension;

        public string Extension
        {
            get { return extension; }
            set { extension = value; }
        }

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        public int TipoTelefono
        {
            get { return tipoTelefono; }
            set { tipoTelefono = value; }
        }

        public string Cedula
        {
            get { return cedula; }
            set { cedula = value; }
        }
    }
}

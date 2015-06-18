using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class Usuarios
    {
        string usuario;
        string contraseña;
        string cedula;

        public string Cedula
        {
            get { return cedula; }
            set { cedula = value; }
        }

        public string Contraseña
        {
            get { return contraseña; }
            set { contraseña = value; }
        }

        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }
    }
}

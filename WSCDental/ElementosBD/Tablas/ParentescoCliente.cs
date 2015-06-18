using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class ParentescoCliente
    {
        int identificador;
        string cliente1;
        string cliente2;
        int tipoParentesco;

        public int TipoParentesco
        {
            get { return tipoParentesco; }
            set { tipoParentesco = value; }
        }

        public string Cliente2
        {
            get { return cliente2; }
            set { cliente2 = value; }
        }

        public string Cliente1
        {
            get { return cliente1; }
            set { cliente1 = value; }
        }

        public int Identificador
        {
            get { return identificador; }
            set { identificador = value; }
        }
    }
}

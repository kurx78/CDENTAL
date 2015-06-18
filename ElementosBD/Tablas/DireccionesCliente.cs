using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class DireccionesCliente
    {
        string cedula;
        int tipoDireccion;
        int id_pais;
        int id_provincia;
        int id_canton;
        int id_distrito;
        string direccion;

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
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

        public int Id_pais
        {
            get { return id_pais; }
            set { id_pais = value; }
        }

        public int TipoDireccion
        {
            get { return tipoDireccion; }
            set { tipoDireccion = value; }
        }

        public string Cedula
        {
            get { return cedula; }
            set { cedula = value; }
        }
    }
}

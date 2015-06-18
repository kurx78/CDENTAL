using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class ExpedienteOpcional
    {
        int expediente;
        bool embarazada;
        bool lactancia;
        bool trastornosCicloMenstrual;
        string observaciones;

        public string Observaciones
        {
            get { return observaciones; }
            set { observaciones = value; }
        }

        public bool TrastornosCicloMenstrual
        {
            get { return trastornosCicloMenstrual; }
            set { trastornosCicloMenstrual = value; }
        }

        public bool Lactancia
        {
            get { return lactancia; }
            set { lactancia = value; }
        }

        public bool Embarazada
        {
            get { return embarazada; }
            set { embarazada = value; }
        }

        public int Expediente
        {
            get { return expediente; }
            set { expediente = value; }
        }
    }
}

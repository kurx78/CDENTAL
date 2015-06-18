using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class Cuentas
    {
        int codigoCuenta;
        int expediente;
        decimal debe;
        decimal abono;
        decimal saldo;

        public decimal Saldo
        {
            get { return saldo; }
            set { saldo = value; }
        }

        public decimal Abono
        {
            get { return abono; }
            set { abono = value; }
        }

        public decimal Debe
        {
            get { return debe; }
            set { debe = value; }
        }

        public int Expediente
        {
            get { return expediente; }
            set { expediente = value; }
        }

        public int CodigoCuenta
        {
            get { return codigoCuenta; }
            set { codigoCuenta = value; }
        }
    }
}

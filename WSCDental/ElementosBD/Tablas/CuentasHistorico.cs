using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class CuentasHistorico
    {
        int codigoCuenta;
        DateTime fecha;
        string usuario;
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

        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        public int CodigoCuenta
        {
            get { return codigoCuenta; }
            set { codigoCuenta = value; }
        }
    }
}

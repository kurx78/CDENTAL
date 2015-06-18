using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Cuentas
    {
        public List<Tablas.Cuentas> Seleccionar(string strConexion, Tablas.Cuentas Obj)
        {
            List<Tablas.Cuentas> lista = new List<Tablas.Cuentas>();
            try
            {

                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CUENTAS_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCODIGOCUENTA", SqlDbType.Int);
                Query.Parameters["@PCODIGOCUENTA"].Value = Obj.CodigoCuenta;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Cuentas entidad = new Tablas.Cuentas()
                    {
                        CodigoCuenta = Convert.ToInt32(SqlDR["CodigoCuenta"]),
                        Expediente = Convert.ToInt32(SqlDR["Expediente"]),
                        Abono = Convert.ToDecimal(SqlDR["Abono"]),
                        Debe = Convert.ToDecimal(SqlDR["Debe"]),
                        Saldo = Convert.ToDecimal(SqlDR["Saldo"])
                    };
                    lista.Add(entidad);
                }
                SqlDR.Close();
                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return lista;
        }

        public bool Insertar(string strConexion, Tablas.Cuentas Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CUENTAS_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@PDEBE", SqlDbType.Decimal);
                Query.Parameters.Add("@PABONO", SqlDbType.Decimal);
                Query.Parameters.Add("@PSALDO", SqlDbType.Decimal);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
                Query.Parameters["@PDEBE"].Value = Obj.Debe;
                Query.Parameters["@PABONO"].Value = Obj.Abono;
                Query.Parameters["@PSALDO"].Value = Obj.Saldo;
                Query.ExecuteNonQuery();

                retorno = true;

                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return retorno;
        }

        public bool Modificar(string strConexion, Tablas.Cuentas Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CUENTAS_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCODIGOCUENTA", SqlDbType.Int);
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@PDEBE", SqlDbType.Decimal);
                Query.Parameters.Add("@PABONO", SqlDbType.Decimal);
                Query.Parameters.Add("@PSALDO", SqlDbType.Decimal);
                Query.Parameters["@PCODIGOCUENTA"].Value = Obj.CodigoCuenta;
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
                Query.Parameters["@PDEBE"].Value = Obj.Debe;
                Query.Parameters["@PABONO"].Value = Obj.Abono;
                Query.Parameters["@PSALDO"].Value = Obj.Saldo;
                Query.ExecuteNonQuery();

                retorno = true;

                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return retorno;
        }

        public bool Eliminar(string strConexion, Tablas.Cuentas Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CUENTAS_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCODIGOCUENTA", SqlDbType.Int);
                Query.Parameters["@PCODIGOCUENTA"].Value = Obj.CodigoCuenta;
                Query.ExecuteNonQuery();

                retorno = true;

                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return retorno;
        }
    }
}

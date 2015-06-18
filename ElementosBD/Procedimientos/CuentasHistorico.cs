using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class CuentasHistorico
    {
        public List<Tablas.CuentasHistorico> Seleccionar(string strConexion, Tablas.CuentasHistorico Obj)
        {
            List<Tablas.CuentasHistorico> lista = new List<Tablas.CuentasHistorico>();
            try
            {

                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CUENTASHISTORICO_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCODIGOCUENTA", SqlDbType.VarChar);
                Query.Parameters.Add("@PFECHAINI", SqlDbType.DateTime);
                Query.Parameters.Add("@PFECHAFIN", SqlDbType.DateTime);
                Query.Parameters.Add("@PUSUARIO", SqlDbType.VarChar);
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters["@PCODIGOCUENTA"].Value = Obj.CodigoCuenta;
                Query.Parameters["@PFECHAINI"].Value = Obj.FechaInicio;
                Query.Parameters["@PFECHAFIN"].Value = Obj.FechaFin;
                Query.Parameters["@PUSUARIO"].Value = Obj.Usuario;
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.CuentasHistorico entidad = new Tablas.CuentasHistorico()
                    {
                        CodigoCuenta = Convert.ToInt32(SqlDR["CodigoCuenta"]),
                        Fecha   = Convert.ToDateTime(SqlDR["Fecha"]),
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

        public bool Insertar(string strConexion, Tablas.CuentasHistorico Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CUENTASHISTORICO_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCODIGOCUENTA", SqlDbType.VarChar);
                Query.Parameters.Add("@PFECHA", SqlDbType.DateTime);
                Query.Parameters.Add("@PUSUARIO", SqlDbType.VarChar);
                Query.Parameters.Add("@PDEBE", SqlDbType.Decimal);
                Query.Parameters.Add("@PABONO", SqlDbType.Decimal);
                Query.Parameters.Add("@PSALDO", SqlDbType.Decimal);
                Query.Parameters["@PCODIGOCUENTA"].Value = Obj.CodigoCuenta;
                Query.Parameters["@PFECHA"].Value = Obj.Fecha;
                Query.Parameters["@PUSUARIO"].Value = Obj.Usuario;
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
    }
}

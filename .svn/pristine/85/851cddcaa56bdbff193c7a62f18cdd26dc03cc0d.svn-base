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

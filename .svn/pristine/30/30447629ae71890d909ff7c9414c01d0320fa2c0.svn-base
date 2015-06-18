using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class ExpedienteOpcional
    {
        public List<Tablas.ExpedienteOpcional> Seleccionar(string strConexion, Tablas.ExpedienteOpcional Obj)
        {
            List<Tablas.ExpedienteOpcional> lista = new List<Tablas.ExpedienteOpcional>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXPEDIENTEOPCIONAL_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.ExpedienteOpcional entidad = new Tablas.ExpedienteOpcional()
                    {
                        Expediente = Convert.ToInt32(SqlDR["Expediente"]),
                        Embarazada = Convert.ToBoolean(SqlDR["Embarazada"]),
                        Lactancia = Convert.ToBoolean(SqlDR["Lactancia"]),
                        TrastornosCicloMenstrual = Convert.ToBoolean(SqlDR["TrastornosCicloMenstrual"]),
                        Observaciones = Convert.ToString(SqlDR["Observaciones"])
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

        public bool Insertar(string strConexion, Tablas.ExpedienteOpcional Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXPEDIENTEOPCIONAL_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@PEMBARAZADA", SqlDbType.Bit);
                Query.Parameters.Add("@PLACTANCIA", SqlDbType.Bit);
                Query.Parameters.Add("@PTRASTORNOSCICLOMENSUAL", SqlDbType.Bit);
                Query.Parameters.Add("@POBSERVACIONES", SqlDbType.VarChar);
                Query.Parameters["@PEXPEDIENTE"].Value =  Obj.Expediente;
                Query.Parameters["@PEMBARAZADA"].Value = Obj.Embarazada;
                Query.Parameters["@PLACTANCIA"].Value = Obj.Lactancia;
                Query.Parameters["@PTRASTORNOSCICLOMENSUAL"].Value = Obj.TrastornosCicloMenstrual;
                Query.Parameters["@POBSERVACIONES"].Value = Obj.Observaciones;
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

        public bool Modificar(string strConexion, Tablas.ExpedienteOpcional Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXPEDIENTEOPCIONAL_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@PEMBARAZADA", SqlDbType.Bit);
                Query.Parameters.Add("@PLACTANCIA", SqlDbType.Bit);
                Query.Parameters.Add("@PTRASTORNOSCICLOMENSTRUAL", SqlDbType.Bit);
                Query.Parameters.Add("@POBSERVACIONES", SqlDbType.Int);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
                Query.Parameters["@PEMBARAZADA"].Value = Obj.Embarazada;
                Query.Parameters["@PLACTANCIA"].Value = Obj.Lactancia;
                Query.Parameters["@PTRASTORNOSCICLOMENSTRUAL"].Value = Obj.TrastornosCicloMenstrual;
                Query.Parameters["@POBSERVACIONES"].Value = Obj.Observaciones;
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

        public bool Eliminar(string strConexion, Tablas.ExpedienteOpcional Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXPEDIENTEOPCIONAL_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
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

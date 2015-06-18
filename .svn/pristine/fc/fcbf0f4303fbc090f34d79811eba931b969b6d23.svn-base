using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class ExamenEncabezado
    {
        public List<Tablas.ExamenEncabezado> Seleccionar(string strConexion, Tablas.ExamenEncabezado Obj)
        {
            List<Tablas.ExamenEncabezado> lista = new List<Tablas.ExamenEncabezado>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXAMENENCABEZADO_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXAMEN", SqlDbType.Int);
                Query.Parameters["@PEXAMEN"].Value = Obj.Examen;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.ExamenEncabezado entidad = new Tablas.ExamenEncabezado()
                    {
                        Examen = Convert.ToInt32(SqlDR["Examen"]),
                        Expediente = Convert.ToInt32(SqlDR["Expediente"]),
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

        public bool Insertar(string strConexion, Tablas.ExamenEncabezado Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXAMENENCABEZADO_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@POBSERVACIONES", SqlDbType.VarChar);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
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

        public bool Modificar(string strConexion, Tablas.ExamenEncabezado Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXAMENENCABEZADO_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXAMEN", SqlDbType.Int);
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@POBSERVACIONES", SqlDbType.VarChar);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Examen;
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
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

        public bool Eliminar(string strConexion, Tablas.ExamenEncabezado Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXAMENENCABEZADO_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXAMEN", SqlDbType.Int);
                Query.Parameters["@PEXAMEN"].Value = Obj.Examen;
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

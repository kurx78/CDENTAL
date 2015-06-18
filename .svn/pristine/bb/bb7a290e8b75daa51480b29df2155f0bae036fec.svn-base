using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class TipoDireccion
    {
        public List<Tablas.TipoDireccion> Seleccionar(string strConexion, Tablas.TipoDireccion Obj)
        {
            List<Tablas.TipoDireccion> lista = new List<Tablas.TipoDireccion>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPODIRECCION_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPODIRECCION", SqlDbType.Int);
                Query.Parameters["@PTIPODIRECCION"].Value = Obj.Id_TipoDireccion;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.TipoDireccion entidad = new Tablas.TipoDireccion()
                    {
                        Id_TipoDireccion = Convert.ToInt32(SqlDR["TipoDireccion"]),
                        Descripcion = Convert.ToString(SqlDR["Descripcion"])
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

        public bool Insertar(string strConexion, Tablas.TipoDireccion Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPODIRECCION_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PDESCRIPCION", SqlDbType.VarChar);
                Query.Parameters["@PDESCRIPCION"].Value = Obj.Descripcion;
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

        public bool Modificar(string strConexion, Tablas.TipoDireccion Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPODIRECCION_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPODIRECCION", SqlDbType.Int);
                Query.Parameters.Add("@PDESCRIPCION", SqlDbType.VarChar);
                Query.Parameters["@PTIPODIRECCION"].Value = Obj.Id_TipoDireccion;
                Query.Parameters["@PDESCRIPCION"].Value = Obj.Descripcion;
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

        public bool Eliminar(string strConexion, Tablas.TipoDireccion Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPODIRECCION_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPODIRECCION", SqlDbType.Int);
                Query.Parameters["@PTIPODIRECCION"].Value = Obj.Id_TipoDireccion;
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

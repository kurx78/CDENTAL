using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class TipoTelefono
    {
        public List<Tablas.TipoTelefono> Seleccionar(string strConexion, Tablas.TipoTelefono Obj)
        {
            List<Tablas.TipoTelefono> lista = new List<Tablas.TipoTelefono>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOTELEFONO_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.Id_TipoTelefono;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.TipoTelefono entidad = new Tablas.TipoTelefono()
                    {
                        Id_TipoTelefono = Convert.ToInt32(SqlDR["TipoTelefono"]),
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

        public bool Insertar(string strConexion, Tablas.TipoTelefono Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOTELEFONO_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters.Add("@PDESCRIPCION", SqlDbType.VarChar);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.Id_TipoTelefono;
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

        public bool Modificar(string strConexion, Tablas.TipoTelefono Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOTELEFONO_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters.Add("@PDESCRIPCION", SqlDbType.VarChar);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.Id_TipoTelefono;
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

        public bool Eliminar(string strConexion, Tablas.TipoTelefono Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOTELEFONO_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.Id_TipoTelefono;
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class TipoParentesco
    {
        public List<Tablas.TipoParentesco> Seleccionar(string strConexion, Tablas.TipoParentesco Obj)
        {
            List<Tablas.TipoParentesco> lista = new List<Tablas.TipoParentesco>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOPARENTESCO_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOPARENTESCO", SqlDbType.Int);
                Query.Parameters["@PTIPOPARENTESCO"].Value = Obj.Id_TipoParentesco;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.TipoParentesco entidad = new Tablas.TipoParentesco()
                    {
                        Id_TipoParentesco = Convert.ToInt32(SqlDR["TipoParentesco"]),
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

        public bool Insertar(string strConexion, Tablas.TipoParentesco Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOPARENTESCO_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOPARENTESCO", SqlDbType.Int);
                Query.Parameters.Add("@PDESCRIPCION", SqlDbType.VarChar);
                Query.Parameters["@PTIPOPARENTESCO"].Value = Obj.Id_TipoParentesco;
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

        public bool Modificar(string strConexion, Tablas.TipoParentesco Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOPARENTESCO_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOPARENTESCO", SqlDbType.Int);
                Query.Parameters.Add("@PDESCRIPCION", SqlDbType.VarChar);
                Query.Parameters["@PTIPOPARENTESCO"].Value = Obj.Id_TipoParentesco;
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

        public bool Eliminar(string strConexion, Tablas.TipoParentesco Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOPARENTESCO_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.Id_TipoParentesco;
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

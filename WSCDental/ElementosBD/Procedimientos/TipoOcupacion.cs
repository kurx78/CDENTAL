using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class TipoOcupacion
    {
        public List<Tablas.TipoOcupacion> Seleccionar(string strConexion, Tablas.TipoOcupacion Obj)
        {
            List<Tablas.TipoOcupacion> lista = new List<Tablas.TipoOcupacion>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOOCUPACION_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@POCUPACION", SqlDbType.Int);
                Query.Parameters["@POCUPACION"].Value = Obj.Ocupacion;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.TipoOcupacion entidad = new Tablas.TipoOcupacion()
                    {
                        Ocupacion = Convert.ToInt32(SqlDR["Ocupacion"]),
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

        public bool Insertar(string strConexion, Tablas.TipoOcupacion Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOOCUPACION_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@POCUPACION", SqlDbType.Int);
                Query.Parameters.Add("@PDESCRIPCION", SqlDbType.VarChar);
                Query.Parameters["@POCUPACION"].Value = Obj.Ocupacion;
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

        public bool Modificar(string strConexion, Tablas.TipoOcupacion Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOOCUPACION_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@POCUPACION", SqlDbType.Int);
                Query.Parameters.Add("@PDESCRIPCION", SqlDbType.VarChar);
                Query.Parameters["@POCUPACION"].Value = Obj.Ocupacion;
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

        public bool Eliminar(string strConexion, Tablas.TipoOcupacion Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOOCUPACION_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.Ocupacion;
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

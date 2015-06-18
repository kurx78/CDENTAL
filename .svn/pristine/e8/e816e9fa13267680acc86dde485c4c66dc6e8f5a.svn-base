using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class ExamenDetalle
    {
        public List<Tablas.ExamenDetalle> Seleccionar(string strConexion, Tablas.ExamenDetalle Obj)
        {
            List<Tablas.ExamenDetalle> lista = new List<Tablas.ExamenDetalle>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXAMENDETALLE_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXAMEN", SqlDbType.Int);
                Query.Parameters.Add("@PPIEZA", SqlDbType.Int);
                Query.Parameters.Add("@PTIPOPOSICION", SqlDbType.Int);
                Query.Parameters["@PEXAMEN"].Value = Obj.Examen;
                Query.Parameters["@PPIEZA"].Value = Obj.Pieza;
                Query.Parameters["@PTIPOPOSICION"].Value = Obj.TipoPosicion;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.ExamenDetalle entidad = new Tablas.ExamenDetalle()
                    {
                        Examen = Convert.ToInt32(SqlDR["Examen"]),
                        Pieza = Convert.ToInt32(SqlDR["Pieza"]),
                        TipoPosicion = Convert.ToInt32(SqlDR["TipoPosicion"]),
                        TipoEstadoPieza = Convert.ToInt32(SqlDR["TipoEstadoPieza"]),
                        Observaciones = Convert.ToString(SqlDR["Observaciones"]),
                        FechaCambioEstado = Convert.ToDateTime(SqlDR["FechaCambioEstado"])
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

        public bool Insertar(string strConexion, Tablas.ExamenDetalle Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXAMENDETALLE_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXAMEN", SqlDbType.Int);
                Query.Parameters.Add("@PPIEZA", SqlDbType.Int);
                Query.Parameters.Add("@PTIPOPOSICION", SqlDbType.Int);
                Query.Parameters.Add("@PTIPOESTADOPIEZA", SqlDbType.Int);
                Query.Parameters.Add("@POBSERVACIONES", SqlDbType.VarChar);
                Query.Parameters.Add("@PFECHACAMBIOESTADO", SqlDbType.Date);
                Query.Parameters["@PEXAMEN"].Value = Obj.Examen;
                Query.Parameters["@PPIEZA"].Value = Obj.Pieza;
                Query.Parameters["@PTIPOPOSICION"].Value = Obj.TipoPosicion;
                Query.Parameters["@PTIPOESTADOPIEZA"].Value = Obj.TipoEstadoPieza;
                Query.Parameters["@POBSERVACIONES"].Value = Obj.Observaciones;
                Query.Parameters["@PFECHACAMBIOESTADO"].Value = Obj.FechaCambioEstado;
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

        public bool Modificar(string strConexion, Tablas.ExamenDetalle Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXAMENDETALLE_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXAMEN", SqlDbType.Int);
                Query.Parameters.Add("@PPIEZA", SqlDbType.Int);
                Query.Parameters.Add("@PTIPOPOSICION", SqlDbType.Int);
                Query.Parameters.Add("@PTIPOESTADOPIEZA", SqlDbType.Int);
                Query.Parameters.Add("@POBSERVACIONES", SqlDbType.VarChar);
                Query.Parameters["@PEXAMEN"].Value = Obj.Examen;
                Query.Parameters["@PPIEZA"].Value = Obj.Pieza;
                Query.Parameters["@PTIPOPOSICION"].Value = Obj.TipoPosicion;
                Query.Parameters["@PTIPOESTADOPIEZA"].Value = Obj.TipoEstadoPieza;
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

        public bool Eliminar(string strConexion, Tablas.ExamenDetalle Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXAMENDETALLE_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXAMEN", SqlDbType.Int);
                Query.Parameters.Add("@PPIEZA", SqlDbType.Int);
                Query.Parameters.Add("@PTIPOPOSICION", SqlDbType.Int);
                Query.Parameters["@PEXAMEN"].Value = Obj.Examen;
                Query.Parameters["@PPIEZA"].Value = Obj.Pieza;
                Query.Parameters["@PTIPOPOSICION"].Value = Obj.TipoPosicion;
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

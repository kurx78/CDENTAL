using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class TipoEstadoPieza
    {
        public List<Tablas.TipoEstadoPieza> Seleccionar(string strConexion, Tablas.TipoEstadoPieza Obj)
        {
            List<Tablas.TipoEstadoPieza> lista = new List<Tablas.TipoEstadoPieza>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOESTADOPIEZA_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOESTADOPIEZA", SqlDbType.Int);
                Query.Parameters["@PTIPOESTADOPIEZA"].Value = Obj.Id_TipoEstadoPieza;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.TipoEstadoPieza entidad = new Tablas.TipoEstadoPieza()
                    {
                        Id_TipoEstadoPieza = Convert.ToInt32(SqlDR["TipoParentesco"]),
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
    }
}

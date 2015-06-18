using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class TipoPosicion
    {
        public List<Tablas.TipoPosicion> Seleccionar(string strConexion, Tablas.TipoPosicion Obj)
        {
            List<Tablas.TipoPosicion> lista = new List<Tablas.TipoPosicion>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOPOSICION_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOPOSICION", SqlDbType.Int);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.Id_TipoPosicion;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.TipoPosicion entidad = new Tablas.TipoPosicion()
                    {
                        Id_TipoPosicion = Convert.ToInt32(SqlDR["TipoPosicion"]),
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

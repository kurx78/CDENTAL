using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Distrito
    {
        public List<Tablas.Distrito> Seleccionar(string strConexion, Tablas.Distrito Obj)
        {
            List<Tablas.Distrito> lista = new List<Tablas.Distrito>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_DISTRITO_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PID_PROVINCIA", SqlDbType.Int);
                Query.Parameters.Add("@PID_CANTON", SqlDbType.Int);
                Query.Parameters.Add("@PID_DISTRITO", SqlDbType.Int);
                Query.Parameters["@PID_PROVINCIA"].Value = Obj.Id_provincia;
                Query.Parameters["@PID_CANTON"].Value = Obj.Id_canton;
                Query.Parameters["@PID_DISTRITO"].Value = Obj.Id_distrito;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Distrito entidad = new Tablas.Distrito()
                    {
                        Id_provincia = Convert.ToInt32(SqlDR["Id_provincia"]),
                        Id_canton = Convert.ToInt32(SqlDR["Id_Canton"]),
                        Id_distrito = Convert.ToInt32(SqlDR["Id_distrito"]),
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
